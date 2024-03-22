echo "@ You have invoked the helper script to set things up"

git clone https://github.com/UArizonaCB2/sensorfabric-py.git
git clone https://github.com/UArizonaCB2/sensorkit-mdh.git

mkdir sensorkit-mdh/mdh_exports

export PYTHONPATH=/home/jovyan/superset-py/

pip3 install -r sensorkit-mdh/requirements.txt

python3 createJson.py > sensorkit-mdh/storage.json

cd sensorkit-mdh/

echo "@ Hold tight starting the ingestion process, hold tight"

python3 main.py schema/schema.json storage.json
