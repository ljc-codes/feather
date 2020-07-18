gcloud auth configure-docker
docker build -t gcr.io/[PROJECT-ID]/helloworld .
docker push gcr.io/[PROJECT-ID]/helloworld
gcloud run deploy helloworld --image gcr.io/[PROJECT-ID]/helloworld --region us-central1