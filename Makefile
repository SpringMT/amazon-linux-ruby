PREFIX = springmt

build27:
	cd 2.7 && docker build --pull --build-arg ruby_version=2.7.4 -t ${PREFIX}/amazon-linux2-ruby:2.7 .

push27: build27
	docker push ${PREFIX}/amazon-linux2-ruby:2.7
