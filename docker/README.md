
Dockerfile : Full version 
Dockerfile.min : Minimal version (deletes unwanted files)

# Building Pykaldi Image

```bash
docker build --tag pykaldi/pykaldi:latest -f Dockerfile .
```

# Running PyKaldi Image
## Bash

You can run PyKaldi image in interactive mode with the following command.

```bash
docker run -it pykaldi/pykaldi /bin/bash
```
