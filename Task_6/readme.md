1) In **Task number 6**, the goal to automate the creation and management of resources in the Google Cloud Platform using IaC tool such as Terraform.
    * Firstly I created Compute Instance using Terraform. In order to made it, I:
        1. installed terraform localy
        2. configured a provider - it is a plugin that enables interaction with an API
        3. added file main.tf with define resources - "google_compute_instance"
        4. initialized terraform
        5. did terraform plan and apply (apply the configuration that I had in the [main.tf]. The configuration was applied in the GCP Project that I specified in the provider config)
        6. played around with a automaticly created state file

2) As a part of the final task I created a few resources using terraform.
    * configured the provider in **provider.tf** file and add configuration to **main.tf** file to create resources such as: 
        - Cloud Storage bucket that has public access configured
        - Compute Instance
        - Cloud SQL instance with Postgres engine. Created database called dareit and a user called dareit_user. Then changed the password of the dareit_user.
    * Finally uploaded manually the index.html file (from Task 1) into the newly created bucket.
    * Copied the URL of the object (index.htm) from my bucket.
    ### URL of the object (index.htm) from my bucket:
    * https://storage.googleapis.com/paulam-dareit-cloud-bucket/index.html

3) Optional Task 🏆:
    * I installed terraform locally on my machine and used Service Account for credentials (generate json key - not commited this JSON file to keep it secure).