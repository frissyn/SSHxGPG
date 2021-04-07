mkdir "~/.ssh"
ssh-keygen -t rsa -C "some_email@host.com"
cat "/home/runner/.ssh/id_rsa.pub"
ssh -T "git@github.com"
eval `ssh-agent -s`
ssh-add "~/.ssh/id_rsa"