#!/bin/bash
pipPackageList="matplotlib numpy scipy pandas ipython scikit-learn theano tensorflow scrappy nltk pattern seaborn bokeh basemap networkx requests"
for pipItem in $pipPackageList
do
	sudo -u anand pip install --user ${pipItem}
	sudo -u anand pip3 install --user ${pipItem}		
done
