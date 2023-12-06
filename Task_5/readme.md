1) In **Task number 5**, the goal was to create Cloud SQL instance and learned a bit about networking.
    * Firstly I go to Cloud SQL in Google Console and chose to CREATE INSTANCE.
    * Then I added paramterers of my creted Cloud SQL instance, like:
        * dababase Engine = Chose **PostgreSQL**
        * instance ID = dareit-pg ( added instance-id unique within the GCP project)
        * password
        * database version - **PostgreSQL 14**
        * configuration to start = Sandbox
2) Then I customised the instance, by chose **Connections**:
    * Instance IP assignment = Public IP (want to have Public IP)
    * Under the Authorised Networks section -> ADD NETWORK -> added my IP (ipv4) in the Newtork form followed by /32 -> I used only IPv4, because IPv6 is not supported
3) Then went to my created instance, under the General and copied the Public IP Address.
4) Opened (earlier downloaded)- **Dbeaver** program:
    * chose create New Folder
    * chose PostgreSQL -> type of the database engine that I connected to
    * supplied some information about the instance/host:
        * host - Public IP of the Cloud SQL instance
        * database - database name
        * port - 5432 - port that is used for connecting to Postgres database
        * username - postgres that is the deafult name of the user created on the instance
        * password - provided for the admin user creating the instance
    * then **test the connection**, when it was working I went further steps
5) Created a schema in the database.
6) In the SQL Editor, chose the New SQL script and then:
    * pasted the SQL code in the editor (script created a table called students, that has five columns which can contain different data types)
    * then execute the script and play around with sript options
7) In the final task, I:
    * added one more column to the students table called age with type int
    * added 5 more rows to the table with some proper data -> so information about 5 more students
    * prepare a query that answered the question what is average age of the students in the class
    * extract to txt data from the students table
    * created a new folder in my cloud_challenge repo with name **Task_5**, commited the txt file there (students_202311051610.txt)
    * added into **readme.md** the answer to question (bellow):

        ### QUESTION 3: What is average age of the students in the class?

        **QUERY:** 
        ```
        select avg(age)
        from dareit.students
        ```
        **ANSWER:** 28