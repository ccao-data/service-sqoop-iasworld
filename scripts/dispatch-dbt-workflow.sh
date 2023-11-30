#!/bin/bash

# These arrays are essentially "rows" of data, where each index (starting
# with 0) represents a set of values this script will iterate through i.e.
# For index 1, run build_and_test_dbt.yaml with model.vw_card_res_input and
# model.vw_pin_condo_input as inputs to the workflow
GH_API_REPOS=(
    "https://api.github.com/repos/ccao-data/data-architecture"
    "https://api.github.com/repos/ccao-data/data-architecture"
)
GH_API_WORKFLOWS=(
    "test_dbt_models.yaml"
    "build_and_test_dbt.yaml"
)
GH_API_WORKFLOW_INPUTS=(
    ""
    "model.vw_card_res_input model.vw_pin_condo_input"
)

# First auth as a GitHub app using JSON Web Token (JWT).
# Uses a local PEM file and python lib to construct the JWT
echo "Generating JWT to send to GitHub auth"
GH_JWT=$(python3 scripts/get-jwt.py)

# Grab the token URL from our current installation
echo "Fetching GitHub tokens URL"
GH_TOKENS_URL=$(curl -s -L \
    -X GET \
    -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer ${GH_JWT}" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
    https://api.github.com/app/installations \
    | jq -r '.[].access_tokens_url')

# Auth against the tokens URL to get a short-lived (60 second) token
echo "Fetching temporary GitHub auth token"
GH_TOKEN=$(curl -s -L \
    -X POST \
    -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer ${GH_JWT}" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
    "$GH_TOKENS_URL" \
    | jq -r '.token')

# Use the token to call the API and dispatch the workflows
echo "Dispatching workflows"
for i in ${!GH_API_REPOS[*]}; do
    GH_API_PARAMS=$(
        if [ -z "${GH_API_WORKFLOW_INPUTS[$i]}" ]; then
            echo '{"ref": "master"}'
        else
            echo "{\"ref\": \"master\", \"inputs\": {\"models\": \"${GH_API_WORKFLOW_INPUTS[$i]}\"}}"
        fi
    )

    curl -s -L \
        -X POST \
        -H "Accept: application/vnd.github+json" \
        -H "Authorization: Bearer ${GH_TOKEN}" \
        -H "X-GitHub-Api-Version: 2022-11-28" \
        "${GH_API_REPOS[$i]}"/actions/workflows/"${GH_API_WORKFLOWS[$i]}"/dispatches \
        -d "${GH_API_PARAMS}"
done
