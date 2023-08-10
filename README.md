
# Terraform Template

<!-- --- DEPLOYMENT STATUS CODE ---

Deployment Status: [![Deploy to Heroku](https://github.com/hassanaftab93/REPO-NAME/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/hassanaftab93/REPO-NAME/actions/workflows/main.yml)

-->
<!-- --- FORMAT OF MARK DOWN WITH COLLAPSIBLE MENU ---
<details>
  <summary>
    <h2>
      
    </h2>
  </summary>

</details>
-->
<!---------------------------------------- SECTION DIVIDER ---------------------------------------->
<details>
  <summary>
    <h2>
      🛠 Strategy
    </h2>
  </summary>
  In our build pipeline we specify which environment we're deploying to, copying the relevant backend env.tf file to the project_name terraform folder (as backend.tf)

  The env.tfvars files contain environment specific variables (passed in to terraform with -var-file).

  We also use the ARM environment variables, specific to DEV/PROD, for signing in to Azure (ARM_CLIENT_ID, ARM_CLIENT_SECRET etc), which are grabbed from a KeyVault via an Azure DevOps Library / variable group specific for each environment.

  We occasionally use conditional logic in the terraform code to set things based on which environment it is if it's not as simple as being covered by an environment specific variable. E.g. for our DR environment we are using some of the geo-replicated prod resources so we have a check like this against those resources: count = var.env == "DR" ? 0 : 1
  
</details>

<!---------------------------------------- SECTION DIVIDER ---------------------------------------->
<details>
  <summary>
    <h2>
      📑 Steps
    </h2>
  </summary>

  Step 1
  ```bash
    terraform init
    terraform plan
    terraform apply
    terraform destroy
  ```
</details>

<!---------------------------------------- SECTION DIVIDER ---------------------------------------->
<details>
  <summary>
    <h2>
      📚 Contributing
    </h2>
  </summary>

  Click here to learn more about: [Contributions](./docs/CONTRIBUTING.md)
</details>

<!---------------------------------------- SECTION DIVIDER ---------------------------------------->
<details>
  <summary>
    <h2>
      ✒️ Author
    </h2>
  </summary>

  <!--
  Add More Contributors/Authors here using the following line of code:
  - [@username](https://www.github.com/username)
  -->

  - [@hassanaftab93](https://www.github.com/hassanaftab93)

</details>

<!---------------------------------------- SECTION DIVIDER ---------------------------------------->
<details>
  <summary>
    <h2>
      🔗 Links
    </h2>
  </summary>

<!--

  Add your links here in the table below:
  Remove my Table and use your own links.

  |Type|Link|
  |:--:|:--:|
  |Portfolio| PORTFOLIO_LINK_HERE |
  |LinkedIn| LINKEDIN_LINK_HERE |

-->

  |Type|Link|
  |:--:|:--:|
  | Portfolio | [![portfolio](https://img.shields.io/badge/my_portfolio-000?style=for-the-badge&logo=ko-fi&logoColor=white)](https://linktr.ee/hassanaftab) |
  | LinkedIn | [![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/hassanaftab93/) |
</details>

<!---------------------------------------- SECTION DIVIDER ---------------------------------------->

