
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
  
  * SSH-Key -> first-key
  * * ssh-keygen -t rsa
  * Assign first-key -> new instance
  * create security group on aws
  * assign group to instance
  
</details>

<!---------------------------------------- SECTION DIVIDER ---------------------------------------->
<details>
  <summary>
    <h2>
      📑 Steps
    </h2>
  </summary>

  Important Commands
  ```bash
    terraform init
    terraform plan -var-file=var.tfvars
    terraform apply -var-file=var.tfvars
    terraform destroy
    terraform destroy -target=resourcename
  ```
  
  Extra Commands
  ```bash
    terraform graph | dot -Tpdf > graph.pdf
    terraform graph | dot -Tpdf > ../'terraform graph'/graph.pdf
  
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

