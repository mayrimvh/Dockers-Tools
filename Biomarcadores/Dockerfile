#Docker Build file to create the biomarkers module image v1.0.1
from tperezdevelopment90/runtime_matlab:2018a
MAINTAINER tperezdevelopment@gmail.com

RUN apt-get install -y  \
    libxt-dev \
    libglu-dev \	
   libxrandr-dev   
ADD Biomarkers /bin
ADD Biomarkers.sh /bin
RUN chmod 755 /bin/Biomarkers /bin/Biomarkers.sh
