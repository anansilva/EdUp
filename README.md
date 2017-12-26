 **Edup**
===========================

**Synopsis**
--------------

Edup is a company that distributes learning content from multiple publishers.

These publishers can create content, i.e. courses in a web application.

After the courses are created, they can be distributed to who ever they want through a link with a unique identifier.

Each link contain a list with one or more courses that this publisher created.

Each user will be able to see all the courses in the link.

----------

**How To Use**
---------------

#### Clone this repository
```
 git clone https://github.com/anansilva/edup
 cd edup
```

#### Install dependencies
```
 bundle install
```

#### Create db, migrate schema, seed db

```
 rails db:create
 rails db:migrate
 rails db:seed
```

### Run application

```
 rails s
 http://localhost:3000/
```

 To sign in as:

   Publisher
   ```
   email: courses@lewagon.com
   password: secret
   ```

   Student
   ```
   email: ana@me.com
   password: secret
   ```



> **Note:** There are more students in the db that you can choose from.

**Testing**
---------------
To run tests

```
rails test:system
```

**API**
---------------

## Authentication

### Request Headers

Publisher

```
X-Publisher-Email
X-Publisher-Token
```

