# <div align="center">🛰Clinic  App 🚀</div>

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 Doctor Appointment Booking  App  ](#-clinic-app-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Install](#install)
    - [Usage](#usage)
    - [Run tests](#run-tests)
    - [Run rails](#run-rails)
  - [👥 Authors ](#-authors-)
  - [📆 Kanban Board](#kanban-board)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
      - [Development Team](#development-team)
      - [Institution](#institution)
      - [Reference Design](#reference-design)
  - [📝 License ](#-license-)


# 📖Clinic  App  <a name="clinic-app"></a>
This is a simple wireframe of a clinic app where receptionist can create, update, read and delete patients, also there is an interface for the doctor to graphycally view patients vs day of registration

### Tech Stack <a name="tech-stack"></a>
  <ul>
     <li>
      <a href="https://www.ruby-lang.org/en/">
      <img align="center" width="19" height="auto" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Ruby_logo.svg/198px-Ruby_logo.svg.png?20101129171534" alt="ruby logo" />
     Ruby on Rails >=7
      </a>
    </li>
    <li>
      <a href="https://www.postgresql.org/">
      <img align="center" width="19" height="auto" src="https://wiki.postgresql.org/images/3/30/PostgreSQL_logo.3colors.120x120.png" alt="postgreSQL logo" />
      PostgreSQL
      </a>
    </li>
</ul>



### Key Features <a name="key-features"></a>

- Staff can create patients
- Staff can delete patients
- Staff view patient registration dates

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Run tests
In the project directory, run:

  ```
  rspec .
  ```

### Run rails

To configure the database connection in Rails, you need to update the database.yml file located in the config folder. Follow these steps: Locate the database.yml file in the config folder of your Rails application.

1. Open the database.yml file using a text editor.

2. Find the default: &default section in the file.

3. Add the following lines under the default: &default section:
```
  host: localhost
  username: your_username
  password: your_password
  port: 5432
```
 

4. Replace your_username with your actual database username and your_password with your actual database password.
5. Save the changes to the database.yml file.
6. Run
```
rails db:create
```

```
rails db:migrate
```
```

raisl s
```

<!-- AUTHOR -->
👤 **Falako Omotoyosi**

- GitHub: [@toyman640](https://github.com/toyman640)
- Twitter: [@_toyman](https://twitter.com/_toyman)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/falako-omotoyosi/)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>