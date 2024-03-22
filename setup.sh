echo "@ You have invoked the helper script to set things up"

git clone https://github.com/UArizonaCB2/sensorfabric-py.git
git clone https://github.com/UArizonaCB2/sensorkit-mdh.git

mkdir sensorkit-mdh/mdh_exports

pip3 install -r sensorkit-mdh/requirements.txt

python3 createJson.py > sensorkit-mdh/storage.json
