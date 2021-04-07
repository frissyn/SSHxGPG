install-pkg gnupg2
gpg --full-generate-key
gpg --list-secret-keys --keyid-format LONG
gpg --armor --export "some_id"
git config --global user.signingkey "some_id"

if [ -r ~/.bash_profile ]; then
    echo 'export GPG_TTY=$(tty)' >> ~/.bash_profile;
else 
    echo 'export GPG_TTY=$(tty)' >> ~/.profile;
fi
