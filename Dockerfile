FROM ubuntu:18.04

RUN \
	apt-get update && \
	apt-get -y upgrade && \
	apt-get install -y build-essential git git-lfs subversion && \
	apt-get install -y unzip wget curl vim  && \
	rm -rf /var/lib/apt/lists/*


RUN \
	cd /home && \
	wget https://storage.googleapis.com/google-code-archive-source/v2/code.google.com/word2vec/source-archive.zip && \
	unzip source-archive.zip && \
	cd /home/word2vec/trunk && \
	make && \
	wget -q http://mattmahoney.net/dc/text8.zip -O text8.gz && \
	gzip -d text8.gz -f

ENV PATH="/home/word2vec/trunk:${PATH}"
ADD download_googlenews_vectors.sh /home/word2vec/trunk
WORKDIR /home/word2vec/trunk

CMD ["/bin/bash"]
