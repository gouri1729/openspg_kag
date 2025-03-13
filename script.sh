#!/bin/bash
# A simple calculator script
# to execute this bash file execute the following commands (NOTE:some steps require sudo access)
# requirements
_______
# miniconda or conda 
# docker 
# curl

# $cd <location of script.sh>

# $sudo chmod +x ./script.sh

# $source script.sh <project name>

#------------------CREATING THE SERVER IN DOCKER ----------------------------------------#
# comment this section incase the server is already up

#c

##########################################################################################


#-------------------creating an environment-------------------#
if [ "$#" -lt 1 ]; then
    echo "INVALID NUMBER OF ARGUMENTS !!!!\n"
    echo "Syntax:\n"
    echo "  $ sudo ./script.sh <projectname>"
    exit 1
fi

pname=$1

source ~/miniconda3/etc/profile.d/conda.sh


echo "Creating env $pname"
conda create -n $pname python=3.10 -y

echo "Activating env $pname"
source ~/miniconda3/etc/profile.d/conda.sh
conda activate "$pname"

# echo "Exiting env $pname"
# conda deactivate

echo "cloning from  git"
git clone https://github.com/OpenSPG/KAG.git
cd ./KAG
pip install -e .

knext --version
knext --help

cd kag/examples
code ./example_config.yaml

cd ~/OpenSPG/Making