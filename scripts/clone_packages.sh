current_folder=`pwd`

git clone "git@github.com:biothings/BioThings_Explorer_TRAPI.git" "./packages/@biothings-explorer/bte-trapi"
git clone "git@github.com:biothings/bte_trapi_query_graph_handler.git" "./packages/@biothings-explorer/query_graph_handler"
git clone "git@github.com:biothings/biolink-model.js.git" "./packages/biolink-model"
git clone "git@github.com:biothings/biomedical_id_resolver.js.git" "./packages/biomedical_id_resolver"
git clone "git@github.com:biothings/smartapi-kg.js.git" "./packages/@biothings-explorer/smartapi-kg"
git clone "git@github.com:biothings/call-apis.js.git" "./packages/@biothings-explorer/call-apis"
git clone "git@github.com:biothings/api-respone-transform.js.git" "./packages/@biothings-explorer/api-response-transform"

cd "./packages/@biothings-explorer/call-apis"
ln -s ../../../scripts/tsconfig.json_call-apis ./tsconfig.json
cd $current_folder

cd "./packages/@biothings-explorer/bte-trapi"
ln -s ../../../scripts/tsconfig.json_bte-trapi ./tsconfig.json
# no need to do this after we commit the package name change to the repo
sed -i 's/single-hop-app/bte-trapi/g' package.json
cd $current_folder
