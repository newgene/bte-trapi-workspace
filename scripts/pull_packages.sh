current_folder=`pwd`

set -x
cd ./packages/@biothings-explorer/bte-trapi
git pull
cd $current_folder

cd ./packages/@biothings-explorer/query_graph_handler
git pull
cd $current_folder

cd ./packages/biolink-model
git pull
cd $current_folder

cd ./packages/biomedical_id_resolver
git pull
cd $current_folder

cd ./packages/@biothings-explorer/smartapi-kg
git pull
cd $current_folder

cd ./packages/@biothings-explorer/call-apis
git pull
cd $current_folder

cd ./packages/@biothings-explorer/api-response-transform
git pull
cd $current_folder

set +x