Java Files:

(Bean)
1. TheaterBean.java - Used for displaying the movies, times, and the title in the Theather jsf page and displaying titles in the ZipSelect after zipcode selection.
2. ZipBean.java - This bean is used for the initial entry of the zip in the main page and the theaters are shown accordingly in the ZipSelect page. 
3. payBean.java - This bean is used for the Payment page to display the validation of the credit card and selection of number of tickets.

(EJB)
4. MovieEJB.java - Executing queries to list the Available Times, Movies, and the Zipcodes against the database.

(Entity)
5. Availablemovies.java - This entity contains the Title, Name, Listimes and the ID of the movie.
6. Movie.java - This entity contains the Title of the movies and the Descriptions of the movies.
7. Theater.java - This entity contains the Names of the theater, the assigned zipcodes, and the assignned movies.

Web Files (JSF Pages):

1. ConfirmationPage.xhtml - This page displays the reciept of the purchase with the selected movie, final charged amount and the number of tickets purchased.
2. MainPage.xhtml - This page displays the available zipcodes on the site. Entering the selected input in the field will navigate to the appropriate display of theaters.
3. Payment.xhtml - This page displays requires the user to input the amount of total tickets and the 16 digit credit card number to purchase the selected movie order.
4. Theater.xhtml - This page display the list of all the movies that are available at the selected theater with its movies title, description, and the showing time.
5. ZipSelect.xhtml - This page displays the list of theaters at the selected zipcode from the MainPage.xhtml. It showcases the name of the theater at the particular zipcode.