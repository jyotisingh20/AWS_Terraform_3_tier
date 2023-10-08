## The challenge_1 folder contains the 3-tier architecture ##
1. The web tier has the VPC , Internet gateway ,security group and public EC2 instances
2. The App tier has ALB which in the user data has the Apache server file with installation commands so this file opens with "Hello world"
3. The Data tier creates the security group with the specific port value of Mysql. Then Mysql data instance is created.