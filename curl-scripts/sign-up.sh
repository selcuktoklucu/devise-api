#!/bin/bash
# EMAIL='st2@st.com' PASSWORD='stst'
EMAIL='s@t.com' PASSWORD='123456'
curl -v "http://localhost:3000/signup/sign_up" \
# curl -v "http://localhost:3000/sign_in" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "user": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo