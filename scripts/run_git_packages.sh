current_folder=`pwd`

set -x
cd ./packages/@biothings-explorer/bte-trapi
git $*
cd $current_folder

cd ./packages/@biothings-explorer/query_graph_handler
git $*
cd $current_folder

cd ./packages/biolink-model
git $*
cd $current_folder

cd ./packages/biomedical_id_resolver
git $*
cd $current_folder

cd ./packages/@biothings-explorer/smartapi-kg
git $*
cd $current_folder

cd ./packages/@biothings-explorer/call-apis
git $*
cd $current_folder

cd ./packages/@biothings-explorer/api-response-transform
git $*
cd $current_folder

set +x