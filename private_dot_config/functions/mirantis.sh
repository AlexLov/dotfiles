#!/bin/sh

GERRIT_DIR=${MIRANTIS_GERRIT_DIR:-"${HOME}/mirantis/gerrit"}

# Enter gerrit project dir
rcd() {
  ## TODO autocomplition
  cd "${GERRIT_DIR}/$1"
}

# Clone mirantis repo from gerrit.mcp.mirantis.com
mclone() {
  local repo_name=$1
  test -z "${repo_name}" && echo "ERROR: repo_name has not been provided" && return 1

  pushd $GERRIT_DIR
  git clone --depth 1 ssh://gerrit.mcp.mirantis.com:29418/${repo_name} ${repo_name}
  pushd ${repo_name}
  git review -s
  popd; popd
}
