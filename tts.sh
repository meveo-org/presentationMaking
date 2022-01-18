export GOOGLE_APPLICATION_CREDENTIALS=./service_key.json

echo "Call google tts service."
curl -X POST \
-H "Authorization: Bearer "$(gcloud auth application-default print-access-token) \
-H "Content-Type: application/json; charset=utf-8" \
-d @installModuleFromGitRepo/installModuleFromGitRepo7.json \
"https://texttospeech.googleapis.com/v1/text:synthesize" > json_response.json


echo "Extract base64 audio content."
jq  -r .audioContent json_response.json > audio_base64.txt

echo "Decode base64 to mp3."
base64 audio_base64.txt -d > installModuleFromGitRepo/installModuleFromGitRepo7.mp3