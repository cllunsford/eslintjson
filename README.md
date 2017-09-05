# eslintjson

eslint+prettier container for json validation.

# Usage
Create an .eslintrc.json:
```json
{
  "plugins": [
    "json",
    "prettier"
  ],
  "rules": {
    "prettier/prettier": ["error"]
  }
}
```

Run the image, mounting eslintrc and json files:
```bash
docker run -i --rm cllunsford:eslintjson \
  -v ${PWD}/.eslintrc.json:/src/.eslintrc.json:ro \
  -v ${PWD}/files:/src/files:ro
  --ext .json files
```
