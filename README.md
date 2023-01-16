# GitOps - Infrastructure as Code - Using GitHub Actions & Terraform
## Author - Prayag Sangode

## Diagram

<img src="https://github.com/prayag-sangode/cloudbuild-cloudrun-html-app/blob/master/cloudrun-cloudbuild.png" alt="Alt text" title="CI/CD Pipeline using Cloud Build & Cloud Run">

## Services -

- Cloud Source Repositories - Mirrored a GitHub repository to Cloud Source Repositories. With this configuration, commits that we push to the GitHub repository are copied, or mirrored, into a repository hosted in Cloud Source Repositories. 
- Cloud Run to deploy html app
- Artifact Registry to store docker images
- CloudBuild to build CI/CD pipeline - trigger is created

## Add github repo as external repo in GCP cloud source repo && Create Cloud Build trigger

## Create Artifact Registry
```sh
gcloud artifacts repositories create apps-repo --repository-format=docker --location=asia-south1-b --description="Docker repository for html app"
gcloud artifacts repositories list
```
