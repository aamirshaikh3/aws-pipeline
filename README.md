# aws-pipeline

This AWS-Git pipeline automates the continuous integration and continuous delivery (CI/CD) process for aws-pipeline. The pipeline is designed to streamline the development workflow by integrating AWS services with Git repositories.
Author - Aamir
Beyondkey
Presentation of CICD

**Instead of creating Image on ec2 we can use docker hub as well by changing some configuration**


  `  - name: Log in to Docker Hub
      run: echo "${{ secrets.DOCKER_HUB_PASSWORD }}" | docker login -u "${{ secrets.DOCKER_HUB_USERNAME }}" --password-stdin

    - name: Build and Push Docker Image to Docker Hub
      run: |
        docker build -t my-nginx-image:latest .
        docker tag my-nginx-image:latest ${{ secrets.DOCKER_HUB_USERNAME }}/my-nginx-image:latest
        docker push ${{ secrets.DOCKER_HUB_USERNAME }}/my-nginx-image:latest

# Pull the Docker image from Docker Hub
          sudo docker pull ${{ secrets.DOCKER_HUB_USERNAME }}/my-nginx-image:latest `
         
