# biomarkers
this is the Dockerfile for biomarkers modules

Biomarkers Module Version 1.0.1 Montreal Institute and Cuban Center for Neuroscience
author:Eng. Tania Perez Ramirez << tperezdevelopment@gmail.com >> Cuban Center for Neurosciences
<h1>inputs list:</h1>
<h2>data parameters</h2>
<p>dataFile -----------> This is the .mat input file of the data matrix subjects information. A matrix of number of subjects x variables.</p>
%labelsFile ---------> This is the .mat input file of the labels for the classification of the data example. A matrix of number of subjects x label.
%varIndependentFile -> This is the .mat input file of independent variable. Usually is the age.
%dataName ------> data Name to load the data matrix
%labelsName ----> labels Name to load the labels matrix
%varIndependentName ->variable independent example the age
%samefile  -----> if this is not empty so the matrix was saved in the same
                  %file
%%%%%Indfeat and correction data parameters%%%%%%%
%indfeat ------> 1 indicate calculate Indfeat.m routine for selecting
%                 independent features for modeling problems
%%%%%Samplig parameters%%%%%%%%%
%percent_var ---> % of variable for generate the samples
%percent_subj --> % of subjects for generate the samples
%Nsamples ------> Number of times for random sample

%%%%%%%Model Estimation parameters%%%%%
%percent_train_sample->% of the data to train
%alphas --------> weight for estimate the lambda

%%%%Selection Model parameters%%%%%
%mod_percent_selected ----> % of variable selection
%mod_nrepet ------> Number of times for generate data train and test data

%%%Additional parameters%%%%%%%%%%
%show_graphs -----> 1 indicate to show graphs (this options is unable for Cbrain)
