#!/bin/bash

#Simple bash script for generating markdown documentation from docstrings

npdoc2md -i ../../pyaws -o ../DocstringGenerated
cd ../DocstringGenerated

rm Errors.md
echo "Deleted Errors.md"
rm Main.md
echo "Deleted Main.md"

mkdir -p aws/
mv Aws.md aws/
echo "Moved Aws.md to aws/"

mkdir -p aws/ec2/
echo "Created directory aws/ec2/"
mv Ec2.md aws/ec2/
echo "Moved Ec2.md to aws/ec2/"
mv Ec2Commands.md aws/ec2/
echo "Moved Ec2Commands.md to aws/ec2/"
mv Ec2Tables.md aws/ec2/
echo "Moved Ec2Tables.md to aws/ec2/"

mkdir -p aws/secretsmanager/
echo "Created directory aws/secretsmanager/"
mv Secretsmanager.md aws/secretsmanager/
echo "Moved Secretsmanager.md to aws/secretsmanager/"
mv SmCommands.md aws/secretsmanager/
echo "Moved SmCommands.md to aws/secretsmanager/"

mkdir -p aws/iam/
echo "Created directory aws/iam/"
mv Iam.md aws/iam/
echo "Moved Iam.md to aws/iam/"
mv IamCommands.md aws/iam/
echo "Moved IamCommands.md to aws/iam/"
mv IamTables.md aws/iam/
echo "Moved IamTables.md to aws/iam/"

mkdir -p aws/systemsmanager/
echo "Created directory aws/systemsmanager/"
mv Systemsmanager.md aws/systemsmanager/
echo "Moved Systemsmanager.md to aws/systemsmanager/"
mv SsmCommands.md aws/systemsmanager/
echo "Moved SsmCommands.md to aws/systemsmanager/"
mv SsmTables.md aws/systemsmanager/
echo "Moved SsmTables.md to aws/systemsmanager/"

mkdir -p aws/route53/
echo "Created directory aws/route53/"
mv Route53.md aws/route53/
echo "Moved Route53.md to aws/route53/"
mv R53Commands.md aws/route53/
echo "Moved R53Commands.md to aws/route53/"
mv R53Tables.md aws/route53/
echo "Moved R53Tables.md to aws/route53/"
