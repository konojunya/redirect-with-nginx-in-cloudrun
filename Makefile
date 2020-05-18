PROJECT_ID := 
SERVICE_NAME := 
DOCKER_IMAGE := gcr.io/$(PROJECT_ID)/$(SERVICE_NAME)

build:
	docker build -t redirect-nginx:latest .

submit:
	gcloud builds submit --project $(PROJECT_ID) --tag $(DOCKER_IMAGE)

deploy: submit
	gcloud run deploy $(SERVICE_NAME) --project $(PROJECT_ID) --image $(DOCKER_IMAGE) --platform managed
