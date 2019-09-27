# docker-tags

List tags related to one or more Docker images.

Usage:
```shell
docker run --rm gautaz/docker-tags busybox alpine gautaz/docker-tags
```

You can also filter tags by using a regular expression:
```shell
docker run --rm gautaz/docker-tags 'alpine:^3\\.[89]'
```

> To escape a character in the regular expression, you will need to surround the expression with quotes and also use `\\` instead of `\`.
> This is due to the fact that the `\` character needs to be left uninterpreted by the shell and escaped from [the `jq` expression](https://github.com/stedolan/jq/issues/1250).
>
> You might not quote the expression but this means you will also have to escape the `\` character for the shell (`\\\\`).

Credits: [RobV8R](https://stackoverflow.com/questions/28320134/how-to-list-all-tags-for-a-docker-image-on-a-remote-registry/51921869#51921869)
