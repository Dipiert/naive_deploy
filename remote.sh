#!/bin/bash
SSH_PATH="/tmp/"
WEB_HOME="/var/www/html/"
APP_NAME="hojaruta"
AUX_SUFFIX="_deploy"
DEPLOY_FOLDER=$APP_NAME$AUX_SUFFIX

cd $SSH_PATH
cp -r $DEPLOY_FOLDER/. $WEB_HOME$APP_NAME && rm -r $DEPLOY_FOLDER

