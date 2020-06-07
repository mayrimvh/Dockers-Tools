# biomarkers
this is the Dockerfile for biomarkers modules

Biomarkers Module Version 1.0.1 Montreal Institute and Cuban Center for Neuroscience
author:Eng. Tania Perez Ramirez << tperezdevelopment@gmail.com >> Cuban Center for Neurosciences
<h1>inputs list:</h1>
<h2>data parameters</h2>
<p>dataFile -----------> This is the .mat input file of the data matrix subjects information. A matrix of number of subjects x variables.</p>
<p>labelsFile ---------> This is the .mat input file of the labels for the classification of the data example. A matrix of number of subjects x label.</p>
<p>varIndependentFile -> This is the .mat input file of independent variable. Usually is the age.</p>
<p>dataName ------> data Name to load the data matrix</p>
<p>labelsName ----> labels Name to load the labels matrix</p>
<p>varIndependentName ->variable independent example the age</p>
<p>samefile  -----> if this is not empty so the matrix was saved in the same file </p>

<h2>Indfeat and correction data parameters</h2>
<p>indfeat ------> 1 indicate calculate Indfeat.m routine for selecting independent features for modeling problems</p>

<h2>Samplig parameters</h2>
<p>percent_var ---> % of variable for generate the samples</p>
<p>percent_subj --> % of subjects for generate the samples</p>
<p>Nsamples ------> Number of times for random sample</p>

<h2>Model Estimation parameters</h2>
<p>percent_train_sample->% of the data to train</p>
<p>alphas --------> weight for estimate the lambda<p>

<h2>Selection Model parameters</h2>
<p>mod_percent_selected ----> % of variable selection </p>
<p>mod_nrepet ------> Number of times for generate data train and test data</p>

<h2>Additional parameters</h2>
<p>show_graphs -----> 1 indicate to show graphs (this options is unable for Cbrain)</p>
