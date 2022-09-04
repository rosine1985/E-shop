aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 731316457572.dkr.ecr.us-east-2.amazonaws.com
docker tag eshop 731316457572.dkr.ecr.us-east-2.amazonaws.com/eshop-repository:latest 
docker push 731316457572.dkr.ecr.us-east-2.amazonaws.com/eshop-repository:latest
