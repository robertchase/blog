# hugo blog

Hugo blog managed entirely from docker and published in S3.

### get things started

Clone the theme and build a docker image.

`make init`

### serve everything locally

`make` or `make serve`

### serve non-draft (public) locally

See what `push` will publish.

`make serve-public`

### publish to S3 bucket

This uses `awscli`
and mounts `$HOME/.aws` in order to use your credentials from docker.
Only `draft=false` posts will be published.

`make push`