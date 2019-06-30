# Code-Challenge-From-Berkshire-Hathaway-Homestate-Companies
This is a code challege project from Berkshire Hathaway Homestate Companies.  

### Business Requirement
1. Write an application that displays three or more reasons that you would like to work for BHHC.  
2. Interaction between logical layers: Presentation, Services & Persistence
3. Reference specific tools and/or libraries (JQuery, Bootstrap, Entity Framework, etc.)
4. Comment the code to assist us in understanding it.
5. Provide sample automated test cases where appropriate.

My solution mainly divides into 4 layers: Presentation, Services, Persistence and DTO

- - - -
### Presentation Layer
This layer is used for display all information to user interface, it contains 3 pages and a master page.     
##### Company Page     
  * Industry Section    
  * Market Share Section    
    *  Interactive section dynamically pull data from database to presentation layer    
    *  Ajax update panel used for demonstrate partially postback    
  * Benefit Section    
    * Checkable list to assist Ajax partial postback demonstration    
  * Social Network Section
    * Embed Twitter Timeline and Facebook Timeline
##### Candidate Page    
  * Ajax Tab Container Feature
    * Software Development Skills Tab   
    * Data Management Skills Tab   
    * Soft Skills Tab   
##### Contact Us Page    
  * Submission form to demonstrate how data flows from presentation layer to database
##### Site Master Page   
  * Master page file for header and footer
  * Smooth Navigational Menu
  
- - - -  
### Services Layer
This layer is used for executing business logics.
  * Contact Form Manager
    * add global id to contact record
  * Company Rank Manager
  
- - - -   
### Persistence Layer
This layer is used to get data from database.
  * Contact Form Repository
    * convert DTO into Entity Framework Object
    * save new record to database
  * Company Rank Repository
    * use Linq and SQL query to pull data from Entity Framework
    * convert Entity Framework Object into DTO 
  * BHHCDbEntity Entity Framework  
  
- - - -   
### Data Transfer Object (DTO) Layer  
This layer is used to convert Entity Framework Object into ASP.NET object.
* Contact Form DTO
* Company Rank DTO
* IYearlyRankable Interface
  * demonstrate dependency injection 
* ContactTime Enumerator
  * demonstrate how to use enumerator in Entity Framework
