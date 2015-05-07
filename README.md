Packer builder to make a docker container builder using ansible,
I'm following along this article
http://www.ansible.com/2014/02/12/installing-and-building-docker-with-ansible
and thought I'd share the results in case anyone else can use it.
I have a very specific use case that I might use this for.
Mainly giving a dockerized FreeIPA a VM where it can have port 80 and 443 directly.
This way I can run some other containers on that VM as well and not have to dedicate an entire VM to FreeIPA as I am now``
So if you're looking for a mini-PaaS that you push repos at that automatically builds the Dockerfile at the top of said repo go here:
http://octohost.io/
or any of these:
https://flynn.io/
http://deis.io/
https://github.com/progrium/dokku

