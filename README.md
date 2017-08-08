# yamlcf-docker
Docker image containing the yamlcf command line tool
See more at [GitHub](https://github.com/komoot/yamlcf).

Usage example update stack (CloudFormation YAML file is in current directory):
`docker run --rm -v $PWD:/data -w /data -v $HOME/.aws:/root/.aws:ro lukaswelte/yamlcf  update my-stack.cf.yaml`

It is quite handy to have a bash alias reducing the boilerplate, like:
`alias yamlcf="docker run --rm -v $PWD:/data -w /data -v $HOME/.aws:/root/.aws:ro lukaswelte/yamlcf:0.3.4"`
Afterwards you can execute the docker container in the shell like you would when installing via pip:
`yamlcf  update my-stack.cf.yaml`
