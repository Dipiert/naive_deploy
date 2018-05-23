#!/bin/bash
WEB_HOME="/var/www/html/"
APP_NAME="hojaruta" 
AUX_SUFFIX="_deploy"
APP_HOME=$WEB_HOME$APP_NAME
DEPLOY_FOLDER=$APP_NAME$AUX_SUFFIX

cp -R  $APP_HOME $APP_HOME$AUX_SUFFIX
cd $APP_HOME$AUX_PREFIX && rm -rf .git .idea/ .gitignore sql/
cd .. && scp -r $DEPLOY_FOLDER $REMOTE
rm -rf $DEPLOY_FOLDER
