#!/usr/bin/env sh
set -eu
if [ "${SVN_USER_NAME:-}" != '' ] && [ "${SVN_USER_PASS:-}" != '' ]; then
  # @see https://docs.docker.com/engine/examples/running_ssh_service/#environment-variables
  # @see https://unix.stackexchange.com/a/405254
  # @see https://unix.stackexchange.com/a/191695
  cat >> /etc/profile << EOF
export SVN_USER_NAME='${SVN_USER_NAME}'
export SVN_USER_PASS='${SVN_USER_PASS}'
export SVN_REPOSITORY_NAME='${SVN_REPOSITORY_NAME:-project-in-svn}'
EOF
  # shellcheck disable=SC2093
  init-svn-repository
fi
exec entrypoint-ansible-workspace "${@}"
