#!/bin/bash
# EMAIL='st2@st.com' PASSWORD='stst'
EMAIL='selcuk@testuser.com' PASSWORD='123456'
curl -v "http://localhost:3000/signup" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "user": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo