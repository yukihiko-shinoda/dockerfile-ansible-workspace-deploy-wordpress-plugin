# What is Ansible Workspace Deploy WordPress Plugin?

[Ansible Workspace](https://hub.docker.com/r/futureys/ansible-workspace) for deploying WordPress Plugin from Git repository.

# How to use this image

As same as [Ansible Workspace](https://hub.docker.com/r/futureys/ansible-workspace)

## Environment Variables

Additionally, we can use following environment variable:

### ```SVN_USER_NAME```

User name to authenticate for local SubVersion repository for test.
When both ```SVN_USER_NAME``` and ```SVN_USER_PASS``` are presented,
local SubVersion repository will be created.

### ```SVN_USER_PASS```

User password to authenticate for local SubVersion repository for test.
When both ```SVN_USER_NAME``` and ```SVN_USER_PASS``` are presented,
local SubVersion repository will be created.

### ```SVN_REPOSITORY_NAME```

Repository name for local SubVersion repository for test.(default: ```project-in-svn```)
