#!/bin/bash
LOG_DIR="/tmp"
LOG_FILE="state.log"
DATE=$(date +"%Y%m%d")
ARCHIVE_FILE="statelog.${DATE}"
if [ -f "${LOG_DIR}/${LOG_FILE}" ]; then
    cat "${LOG_DIR}/${LOG_FILE}" >> "${LOG_DIR}/${ARCHIVE_FILE}"
    > "${LOG_DIR}/${LOG_FILE}"
fi
find "${LOG_DIR}" -name "statelog.[0-9]*" -type f -mtime +13 -exec rm -f {} \;