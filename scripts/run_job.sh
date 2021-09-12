sqoop job -libjars /tmp/bindir/ -jt local --fs file:/// \
    --exec ${IPTS_TABLE}
