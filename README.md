# bte-trapi-workspace
A npm workspace setup for local development environment with all biothings explorer nodejs packages


### Get started

```
git clone git@github.com:biothings/bte-trapi-workspace.git
cd bte-trapi-workspace

# setup local bte repos under packages folder
npm run clone

# install dependencies
npm i
```

### Start the development

* watch file changes and auto build code

  ```
  npm run watch
  ```

* start a dev server

  ```
  npm run debug --workspace=@biothings-explorer/bte-trapi
  ```

Now when you save your code change, the dev server should restart to reflect the latest change (after a few seconds).
