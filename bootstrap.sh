#!/usr/bin/env bash
echo 'starting provisioning'
apt-get install -y git
apt-get install -y python-virtualenv 

virtualenv --no-site-packages env
source env/bin/activate
pip install sphinx
pip install sphinx_rtd_theme
git clone https://github.com/GeoNode/geonode.git

#quick rest retructured text : docutils.sourceforge.net/docs/user/rst/quickref.html
#publish make html onto docs directory
#dont forget source env/bin/activate
#work in /home/vagrant/geonode/docs/
#mv _build/ /setup/_build/ to see it in host