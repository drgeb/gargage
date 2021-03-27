# role awscli

Installs the Amazon Web Services V2 command line client.

### Linux (x86_64)

Requires that `curl` and `unzip` be installed first!

* `awscli_version` : empty = latest.  To pin a specific version, such as 2.0.30, set `awscli_version: '-2.0.30'`
* `awscli_install_dir` : Where aws-cli will be installed, default is `$HOME/.local/aws-cli`
* `awscli_bin_dir` : Where the `aws` executable will be installed, default is `$HOME/.local/bin`
* `awscli_source_url` : Download link for AWS CLI, default is `https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip`

### MacOSX

No config.  Installs with Homebrew.
