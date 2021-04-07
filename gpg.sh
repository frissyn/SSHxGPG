install-pkg gnupg2
gpg --full-generate-key
gpg --list-secret-keys --keyid-format LONG
gpg --armor --export "some_id"
git config --global user.signingkey "some_id"
export GPG_TTY=$(tty)
