# eslintjson

eslint container for json validation.

# Usage
Run the image, mounting json files:
```bash
docker run -i --rm cllunsford:eslintjson \
  -v ${PWD}/files:/src/files:ro
  --ext .json files
```
