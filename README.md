This project is about the integration of machine learning with devops (jenkins,git,docker) to automate the process of deploying model and testing.

![devops-to-mlops](https://user-images.githubusercontent.com/64701398/83324663-8fca3d00-a284-11ea-9409-2b453b477ad6.jpg)

Workflow \ \
Developer who is working on a machine learning model say for example FashionMNIST model creates a model and upload the code on github.
From there the role of jenkins starts. \
Jenkins job1 continously monoitors github and as soon as developer pushes code to github it automatically downloads the code to testing machine. \
Then another jenkins job ie job2 check for the code to find out that the code is of which purpose ie is it machine learning code or a simple python code likewise and triggers one docker container based on the type of code. \
Next an another jenkins job3 simply runs that code on the container that has the environment setup already and check for the accuracy of the code. If the accuracy of model comes out to be greater than 90% it accepts the model otherwise next job triggers ,that calls the python script to make some changes on the model hyperparameters like number of epochs. Again call for job2 . \
Jenkins also send the mail to the operation guys if any job fails during the flow. \
Job4 is simply for monitoring the overall process. \

Steps
1. Creating the docker dockerfile to build one image for launching container. \
![Screenshot (65)](https://user-images.githubusercontent.com/64701398/83325159-eab16380-a287-11ea-9bec-cb32d53f0dd0.png) \\

2. Creating docker images using docker build. \

![dockrimage](https://user-images.githubusercontent.com/64701398/83325275-bb4f2680-a288-11ea-81fa-d23b0a0efbc9.png) \\

3. Giving privelages to jenkins same as root so that we can execute commands from jenkins later on . \

![Screenshot from 2020-05-26 05-50-16](https://user-images.githubusercontent.com/64701398/83325301-f6515a00-a288-11ea-8efd-3d9105fce003.png) \\

4. Jenkins JOB1: \
![Screenshot from 2020-05-29 14-38-37](https://user-images.githubusercontent.com/64701398/83325332-357fab00-a289-11ea-8caa-ede8c205d86d.png) \\

![Screenshot from 2020-05-29 14-38-45](https://user-images.githubusercontent.com/64701398/83325336-3adcf580-a289-11ea-8668-78ec60c87072.png) \\

4. Jenkins JOB2: \

![Screenshot from 2020-05-29 14-39-27](https://user-images.githubusercontent.com/64701398/83325371-6cee5780-a289-11ea-9486-779608c2d82c.png) \\

5. JENKINS JOB3: \

![Screenshot from 2020-05-29 14-39-45](https://user-images.githubusercontent.com/64701398/83325400-90b19d80-a289-11ea-8424-0b6fe16618d2.png) \\

6. JENKINS JOB4: \

![Screenshot from 2020-05-29 14-39-58](https://user-images.githubusercontent.com/64701398/83325417-afb02f80-a289-11ea-8dc8-a771673e32f9.png) \\

![Screenshot from 2020-05-29 14-40-03](https://user-images.githubusercontent.com/64701398/83325420-b3dc4d00-a289-11ea-9754-9751c4ede30a.png) \\






