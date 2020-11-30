# Notes Relevant to the Project

## DO Guides
+ https://www.digitalocean.com/community/tutorials/how-to-structure-a-terraform-project
+ [Multi-stage course](https://www.digitalocean.com/community/tutorial_series/how-to-manage-infrastructure-with-terraform)

## Docker (Compose) Notes
+ From the Docker Compose docs:
    + "By default Compose sets up a single network for your app. Each container for a service joins the default network and is both reachable by other containers on that network, and discoverable by them at a hostname identical to the container name."

## General Notes
+ non-terraform (HCL) scripts you call should go in an "external" directory
+ You can store variables DO needs in terraform by exporting them in bash like `export DO_{VAR_NAME}="some value"`, then adding them as -var parameters in the terraform command
+ You can manually trigger outputs to run with `terraform output`; they will also automatically print when you run an apply
+ Use `Terraform output -json` to output variables in JSON format
+ `jq` is a good tool for manipulating JSON documents available for linux command line via `apt`
+ `jq "."` will parse the input without modifications
+ `jq` will also be able to reference slices of arrays similar to Python, i.e. `jq '.[0:2]'
+ `jq` can output said slice as a JSON array in it of itself via `jq '[.[0:2]]'` or similar
+ Store modules in the 'modules' directory within the project root
