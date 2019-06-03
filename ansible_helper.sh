!/bin/sh

docker run --rm -it \
  -v ~/.ssh/id_rsa:/root/.ssh/id_rsa \
  -v ~/.ssh/id_rsa.pub:/root/.ssh/id_rsa.pub \
  -v ~/.ssh/known_hosts:/root/.ssh/known_hosts \
  -v $(pwd)/playbooks:/ansible/playbooks \
  -v /var/log/ansible/ansible.log \
  vernekarp/ansible-playbook "$@"
  
