# Tools to create Meveo videos

Screen recording : https://www.awesomescreenshot.com

Video editing : https://www.canva.com/

Text to speech : google API (below)

## To create voice for your video

this tool use google test-to-speech API to create mp3 for presentation videos.

You must have `gcloud` installed, configured the authentication via oauth and have activated the test-to-speech API in your google developer console.

create a directory, let say `myVideo` in this directory and a file `myVideo1.json` in it
```
{
    "input":{
      "text":"Write her the text you want to convert to voice."
    },
    "voice":{
      "languageCode":"en-gb",
      "name":"en-GB-Standard-A",
      "ssmlGender":"MALE"
    },
    "audioConfig":{
      "audioEncoding":"MP3"
    }
}
```

then edit [`tts.sh`](./tts.sh) to set the json file to send to google API and the mp3 audio file to create

![image](https://user-images.githubusercontent.com/16659140/148720577-f47899a2-74aa-47a9-817e-1179ab1b5b2a.png)


