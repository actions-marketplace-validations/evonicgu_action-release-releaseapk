#!/bin/bash

hub checkout ${${REPO_BRANCH}:-master}
VERSION_NAME=`grep -oP 'versionName "\K(.*?)(?=")' ./${APP_FOLDER}/build.gradle`
hub release create -a ${PATH_TO_APK} -m "${RELEASE_TITLE} - v${VERSION_NAME}" $(date +%Y%m%d%H%M%S)
