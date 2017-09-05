# eslintjson

eslint+prettier container for json validation.

# Usage

```
docker run -i --rm cllunsford:eslintjson \
  -v ${PWD}/.eslintrc.json:/src/.eslintrc.json:ro \
  -v ${PWD}/files:/src/files:ro
  --ext .json files
```
