####################
# Common Variables #
####################
name = "akv-lab" # Required Input

#############
# key vault #
#############
akv-full-object-id = "" # see more in var-akv.tf
akv-read-object-id = "" # see more in var-akv.tf
akv-secrets = {
  # may only contain alphanumeric characters and dashes
  db-pwd-1 = {
    value = "" # define to "" and a password will be generated automatically
  }
  app-pwd-1 = {
    value = "" # define to "" and a password will be generated automatically
  }
  vm-pwd-2 = {
    value = "21PBfpqXzlV5"
  }
}