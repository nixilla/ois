PREREQUISITES:

1. Netbeans with Groovy and Grails installed and activated.
2. Grails version 1.3.7
3. MySQL database version 4 or above

INSTALLATION:

1.  Unzip the project file
2.  Create database on your MySQL DBMS
3.  Modify file "OIS/grails-app/conf/DataSource.groovy" and change database
    connection setting according to your local environment. More info:
    http://www.grails.org/doc/1.2.x/guide/3.%20Configuration.html#3.2%20Environments
4.  Open project with Netbeans
5.  Click Tools -> Options -> Miscellaneous -> Groovy. Make sure that "Grails
    Home" points to right place. The application uses Grail version 1.2.2
6.  Click Tools -> Options -> Libraries. Make sure you have groovy installed.
7.  Right click on the project name (OIS) in the Projects window and click clean
    to make sure that there are no platform compatibility issues. We've
    developed this on Linux x86_64.
8.  Right click on the project name (OIS) in the Projects window and click run.
9.  If there are no errors, navigate to http://localhost:8080/OIS
10. Load SQL file "OIS/oislive.sql" to your database
    (http://dev.mysql.com/doc/refman/5.0/en/batch-commands.html)

HOW TO USE:

This application is build from 2 parts: frontend (Home) for students and backend
(Institutions, Programmes, Connections) for administrators. Both parts are
accessible by anyone - there is no security in place.

As a student you can:
1. From the drop-down menu, select the institution you've graduated.
2. The website will present you with the list of programmes (drop-down box)
   assigned to the selected institution.
3. From this drop-down, select programme you have completed.
4. The website will present you with the list of institutions, where (and only
   where) your diploma is accepted.
5. Select institution of your choice.
6. The website will present you with the list of available programmes with links
   to their websites.

If there are no links between programme you've completed and other programmes,
the system will issue message "Data not found". To fix this problem, you need to
add the connection on the Connections page.

As a administrator you can:

CRUD the institutions, programmes and connections between them.

The institutions and programmes controllers are using standard scaffold
functionality + some extra functions to support Ajax functionality on
Connections and Home pages.

For this application, the default scaffold for Connections is not very
efficient. That's why we have decided to extend this functionality with Ajax to
make it more user friendly.

On the Connections page you can create links between "incoming" programmes and
"outgoing" programmes. To do this you need to:
1. Select incoming institution on the left hand side.
2. You will be presented with the list of programmes assigned to this
   institution. You can filter Postgraduate and/or Undergraduate programmes
   using checkboxes.
3. Select the programme by clicking the radio button.
4. Select outgoing institution on the right hand side.
5. System will present you with the list of available programmes attached to the
   outgoing institution. The programmes which are selected (checkbox) are
   already connected to programme on the left hand side.
6. Now you can select/unselect programmes to create/delete connection. Once
   you've done that, you must click Save, otherwise the changes will not be
   persistent.

TESTING:

We've written few unit tests for Institution model and controller. These tests
are working and the system passes them successfully. We were trying to write
more complex tests for other entities, but we couldn't make it work with
aggregation association between classes. We suspect bug in the grails.
http://jira.codehaus.org/browse/GRAILS-5064

To run tests you need to issue the command:

grails test-app -unit

DATA:

The data structure provided by lecturer was not very clear to us, so we've
decided to redesign the domain model. The underlaying database model has been
created by GORM (We haven't issue one DDL SQL query).

The data has been collected from the internet by Nima with help from his
family - thank you very much for your help :-)

DESIGN:

We believe, that the website looks cool. The graphic design was taken from one
of Janusz's previous work projects and was slightly modified. Logo has been
designed by Janusz.

OTHER STUFF:

If you can't make this app work, you can see it in action at this URL:

http://ois.herokuapp.com/

