FROM gad2103/et2_buildbox

ENV DEBIAN_FRONTEND noninteractive

RUN mkdir /code
RUN apt-get update
RUN apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y unzip
RUN apt-get install -y python-software-properties
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g protobufjs
RUN go get -u github.com/NYTimes/openapi2proto/cmd/openapi2proto
RUN go get -u github.com/golang/protobuf/protoc-gen-go
RUN cd /usr/local && curl -L -o pbc.zip https://github.com/google/protobuf/releases/download/v3.3.0/protoc-3.3.0-linux-x86_64.zip && unzip pbc.zip  && chmod +x /usr/local/bin/protoc
