echo "export json"
export GOOGLE_APPLICATION_CREDENTIALS=/Users/manh/Works/Self/livecaption/mp-default-project-01fa503e438d.json
echo "export env"
export INPUT=ja-JP # en-US or ja-JP
echo "build app"
go build
echo "build success"
gst-launch-1.0 -v osxaudiosrc ! audioconvert ! audioresample ! audio/x-raw,channels=1,rate=16000 ! filesink location=/dev/stdout | ./livecaption