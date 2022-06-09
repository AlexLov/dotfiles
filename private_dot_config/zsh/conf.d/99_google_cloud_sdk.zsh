
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/alex/.local/share/google-cloud-sdk/path.zsh.inc' ]; then . '/home/alex/.local/share/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/alex/.local/share/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/alex/.local/share/google-cloud-sdk/completion.zsh.inc'; fi

# https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
export USE_GKE_GCLOUD_AUTH_PLUGIN=True
