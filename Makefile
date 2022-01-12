.PHONY: build

build:
	sam build

deploy-infra:
	sam build && sam deploy

deploy-site:
	aws s3 sync ./resume-site s3://my-fantastic-resume
	
invoke-get:
	sam build && sam local invoke GetFunction

invoke-put:
	sam build && sam local invoke PutFunction