# technical-seminar-topic-selection-for-ISE-SIT
This project was made to ease up the process of Technical seminar's topics selection by students of ISE department.
It was used by 2019 batch's students in 2022 for their 4th year technical seminar's topic selection.

To set this up,
simply create new database and user.
Add user to database and upload database.sql to the database.
Edit config.php file and place your database details.

- If `usn` column of database is empty, user will be allowed to register for that particular subject else, they will be not!

- To set timer, edit :
      
      
      <div class='site-config'
             data-date='11/21/2022 13:00:00' 
             data-date-timezone='+5.5'></div>
             
             
        (LINE 44) on index.php
