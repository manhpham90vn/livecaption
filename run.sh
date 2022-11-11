# config json
export GOOGLE_APPLICATION_CREDENTIALS=/Users/manh/Works/Self/livecaption/mp-default-project-01fa503e438d.json
echo "export json $GOOGLE_APPLICATION_CREDENTIALS"

# config env
export INPUT=ja-JP # en-US or ja-JP
echo "export input $INPUT"
export OUTPUT=vi
echo "export output $OUTPUT"
export PROJECT=mp-default-project
echo "export project $PROJECT"

# build project
echo "build app"
go build

# run
echo "build success"
gst-launch-1.0 -v osxaudiosrc ! audioconvert ! audioresample ! audio/x-raw,channels=1,rate=16000 ! filesink location=/dev/stdout | ./livecaption