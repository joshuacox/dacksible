Packer builder to make a docker container builder using ansible,
I'm following along this article
http://www.ansible.com/2014/02/12/installing-and-building-docker-with-ansible
and thought I'd share the results in case anyone else can use it.
If you're looking for a mini-PaaS that you push repos at that automatically builds the Dockerfile at the top of said repo go here:
http://octohost.io/
or any of these:
https://flynn.io/
http://deis.io/
https://github.com/progrium/dokku
there be dragons here

# usage
`make vbox`
this will output an image in ../builds

`vagrant box add dacksible ../builds/dacksible.box`
then make a new vagrant file
`mkdir /tmp/dacksible;cd /tmp/dacksible/; vagrant init dacksible`
