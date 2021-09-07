Please follow below instructions

1. Pull below docker image
	docker pull infracloudio/csvserver:latest

2. Clone this respository

3. Run "gencsv.sh" shellscript to create "inputFile"
	./gencsv.sh
	
4. Verify "inputFile" containing index and randomNos

5. Run docker container with below command (make sure you present working directory should be the one which contains inputFile)
	docker run -d --name csvserver --env CSVSERVER_BORDER=Orange -v ${PWD}/inputFile:/csvserver/inputdata -p 9393:9300 infracloudio/csvserver:latest

6. Launch http://localhost:9393/ to verify the raw data form input file is being displayed.
