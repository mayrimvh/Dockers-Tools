#!/bin/bash

#Biomarkers.sh v1.0.1
#author:Eng. Tania Perez Ramirez << tperezdevelopment@gmail.com >> Cuban Center for Neurosciences
#Montreal Institute and Cuban Center for Neuroscience

set -u
set -e

function usage {
    echo $0 --dataFile [dataFile] --labelsFile [labelsFile] --varIndependentFile [varIndependentFile] --dataName [dataName] --labelsName [labelsName] --varIndependentName [varIndependentName] --samefile [samefile] [--indfeat] --percent_var [percent_var] --percent_subj [percent_subj] --Nsamples [Nsamples] --percent_train_sample [percent_train_sample]  --alphas [alphas] --mod_percent_selected [mod_percent_selected] --mod_nrepet [mod_nrepet] 0  --output [output]
	

}



 function die {
     echo $*
     exit 1
 }
 
#declare variables of methods but it not necessary in docker and cbrain
show_graphs=0;
 
# Initializes variables and set default values 
 dataName='data';  labelsName='labels';  varIndependentName='age'; samefile=""; indfeat=0; percent_var=70; percent_subj=70;  Nsamples=500; percent_train_sample=70; 
 alphas='0.1;0.2;0.3;0.4;0.5;0.7;1'; mod_percent_selected=70 mod_nrepet=100; output="/Biomarkers_Outputs";


while [ $# != 0 ]
do
    case $1 in       
		"--dataFile")
            dataFile=$2
            shift
            shift
            ;;	
		"--labelsFile")
            labelsFile=$2
            shift
            shift
            ;;
        "--varIndependentFile")
            varIndependentFile=$2
            shift
            shift
            ;; 
		"--dataName")
            dataName=$2
            shift
            shift
            ;;	
		"--labelsName")
            labelsName=$2
            shift
            shift
            ;;
        "--varIndependentName")
            varIndependentName=$2
            shift
            shift
            ;; 
		"--samefile")
            samefile=$2
            shift
            shift
            ;; 			
		"--indfeat")
            indfeat=1
            shift 			
            ;;				
        "--percent_var")
            percent_var=$2
            shift
            shift
            ;;
		"--percent_subj")
            percent_subj=$2
            shift
            shift
            ;;
		"--Nsamples")
            Nsamples=$2
            shift
            shift
            ;;        
		"--percent_train_sample")
            percent_train_sample=$2
            shift
            shift
            ;;		
		"--alphas")
            alphas=$2
            shift
            shift
            ;;		
		"--mod_percent_selected")
            mod_percent_selected=$2
            shift
            shift
            ;;
		"--mod_nrepet")
            mod_nrepet=$2
            shift
            shift
            ;;		
		"--output")
            output=$2
            shift
            shift
            ;;		
         *)
            usage
            die "Unsupported option: $1"
    esac
done

#check the files inputs
if [ -z "$samefile" ] #if is empty
then
      echo Biomarkers ${dataFile} ${labelsFile} ${varIndependentFile} ${dataName} ${labelsName} ${varIndependentName} "" ${indfeat} ${percent_var} ${percent_subj} ${Nsamples} ${percent_train_sample} "${alphas}" ${mod_percent_selected} ${mod_nrepet} ${show_graphs} ${output}
	  
      Biomarkers ${dataFile} ${labelsFile} ${varIndependentFile} ${dataName} ${labelsName} ${varIndependentName} "" ${indfeat} ${percent_var} ${percent_subj} ${Nsamples} ${percent_train_sample} "${alphas}" ${mod_percent_selected} ${mod_nrepet} ${show_graphs} ${output}
else
      echo Biomarkers "" "" "" ${dataName} ${labelsName} ${varIndependentName} ${samefile} ${indfeat} ${percent_var} ${percent_subj} ${Nsamples} ${percent_train_sample} "${alphas}" ${mod_percent_selected} ${mod_nrepet} ${show_graphs} ${output}
     
	 Biomarkers "" "" "" ${dataName} ${labelsName} ${varIndependentName} ${samefile} ${indfeat} ${percent_var} ${percent_subj} ${Nsamples} ${percent_train_sample} "${alphas}" ${mod_percent_selected} ${mod_nrepet} ${show_graphs} ${output}
fi
 
 
