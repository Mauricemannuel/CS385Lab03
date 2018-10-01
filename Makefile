run-image:
        docker build -t gcr.io/dulcet-abacus-214921/echohost:latest .;
        gcloud auth configure-docker;
        gcloud docker -- push gcr.io/dulcet-abacus-214921/echohost:latest;
        kubectl run echohost --image=gcr.io/dulcet-abacus-214921/echohost:latest
