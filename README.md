# docker-buildx-github-actions-bug
This repository tries to answer the following question:

Question: Are Docker images built as part of a Github Actions workflow are accessible to later steps of that same workflow?  
**Answer: No, they're not**.  
Workaround: Use a _local repository_.

For reasons currently impenetrable to me, the `build-push-action` Github Action cannot use images listed in `docker image ls`.  
See [this comment in issue #425](https://github.com/docker/build-push-action/issues/425#issuecomment-892807549).
