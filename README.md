# Lord Buckington's Animal Kingdom API

## By **Jay Winebrenner**

### Description
A Ruby-Rails based API that allows users to make calls to Create, Read, Update and Delete Animal shelters and their corresponding Animals housed within.

### Setup/Installation Requirements
![enter image description here](https://i.imgur.com/KW12jKcl.jpg)

## Opening the API and Running the Server
 1. Click the link shown in the above photo and download the file.
 2. Unzip the file and navigate to the folder via your terminal or command line application.
 3. Type $ // Bundle // to install all the gems used in the project.
 4. Type $ // rake db:create // to create a database, followed by // rake db:migrate // to migrate the database.
 5. For purposes of these instructions, anything inside of // is what is to be typed in the terminal. If the instruction says // hello // for example, you'd type just the word hello in the terminal.

## Getting an authorization token to use the API
1. Ensure you are still inside the directory of the project via your terminal and type:
// User.create!(email: 'example@mail.com' , password: '123123123' , password_confirmation: '123123123') //
This will create a user which will authorize to use the API in the next steps.
2. Type $ // rails s  // to start the server, which will be available on your computer locally at localhost:3000.
3. You can make API calls using a free program called [Postman](https://www.getpostman.com/). We hope you are familiar with this program, as this README relies on it's functionality.
4. Type $ // curl -H "Content-Type: application/json" -X POST -d '{"email":"animal@shelter.com","password":"12345678"}' http://localhost:3000/authenticate // into the terminal. The terminal will return an authorization token which will look like this:
{"auth_token":"eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1ODA1OTk5NDZ9.zE899GAz6zCbCrtODoIFrueW9dErRvhLtSc4L9stJS0"}
5. Copy the long string of numbers and letters into Postman into the Token Field. To find the token field, click the "Authorization" tab. Then the drop down menu "Bearer Token" which will reveal a text field that says token. Paste your Authoriztion token there.
6. You are now fully Authorized to use Lord Buckington's Animal Kingdom API

## Making API calls
1. Using the routing specified below, you can make calls to Lord Buckington's Animal Kingdom API to get shelters and their corresponding animals as well and add, update and delete shelters or their corresponding animals.

### Routing Specifications:
|End Point |Output|
|---|---|
| GET /shelters | Returns all available shelters |
| GET shelters/:id | Returns the shelter with the corresponding id |
| POST /shelters | Allows users to post an animal shelter using the parameters of 'name' and 'location'|
| PUT /shelters/:id | Allows users to update an existing animal shelter using the parameters of 'name' and 'location'|
| DELETE /shelters/:id | Allows users to delete an existing animal shelter |
| GET shelters/id/animals/id| Returns the animal with the corresponding shelter id and the corresponding animal id |
| POST shelters/id/animals | Allows user to post an Animal to shelter with the corresponding id |
| PUT shelters/id/animals/id | Allows user to update an Animal to shelter with the corresponding id |
| DELETE shelters/id/animals/id  | Allows user to explore baser instincts by deleting an animal from a corresponding shelter |
| GET /shelters?name= | Allows user to search for Shelters by name |
| GET /shelters?location= | Allows user to search for shelters by location |
| GET /randoms | Allows user to get one random Shelter |
### Technologies Used

 - Ruby
 - Rails
 - Postgres
 - Postman

### Support and Contact

If you have any questions about anything at all, please don't hesitate to get in touch. jaywinebrenner@gmail.com


### License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Copyright (c) 2019 **Jay Winebrenner**
