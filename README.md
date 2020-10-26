 Vehicle-Registration---RESTful-API is a Spring Boot Application that connects to the MySQL server using JPA Repository.
 
• JPA Repository offers abstraction for updating, deleting , inserting object into the database. We
create a list of objects that gets updated in the database.

• The functions that can be used are: JPARepository.save() and JPARepository.get()

• This can be achieved by extending the repository to JPARepository class

• The RESTful API is done by receiving a set of requests and then send appropriate data back to the request.

• The API is then compiled into a JAR file using maven, which adds only the dependencies that are
used, and ignore the ones that are not specified.

• Since we have a MySQL Connection established, we need to provide the service in pivotal
dashboard.

• This is done by enabling ClearMySQL Database service by giving an appropriate Instance Name.

• The API is then hosted on Cloud Foundry by pushing the JAR file to the pivotal dashboard.
