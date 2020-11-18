#!/bin/sh
mkdir -p ~/.ssh
curl https://cli-assets.heroku.com/install.sh | sh

cat > ~/.netrc << EOF
machine git.heroku.com
  login $HEROKU_LOGIN
  password $HEROKU_API_KEY
EOF

cat >> ~/.ssh/config << EOF
VerifyHostKeyDNS yes
StrictHostKeyChecking no
EOF
