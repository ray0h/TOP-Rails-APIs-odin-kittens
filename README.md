# The Odin Project Kittens API

[Project link](https://www.theodinproject.com/courses/ruby-on-rails/lessons/kittens-api)

Assignment project to increase familiarity with API's and creating your own.  A basic Rails CRUD app with a kittens database (:name, :age, :cuteness, :softness) was generated.  API functionality was added to the backend using `#respond_to` within the Rails controller.  

API can be accessed in irb using `require rest-client` and appropriate url with additional option to get in JSON format:

ex. `response = RestClient.get("http://localhost:3000/kittens", :accept => :json)`.  

The app now has a basic front-end interface as well as a back-end API.

No focus or attention given on CSS/styling.