bytewise fellowship week1

Overview

The purpose of the project was to learn how to use state management and learn working with rest apis.


In this project I used two state managements, bloc for fetching apis, and provider for api fetching and learning state management with it.

*************  Fetching Api with Bloc *********************

Technologies Used
Bloc
Cubit
Equatable
dio (for api services)


Bloc and State

The Bloc class is post_fetch_bloc.dart
the state of it is post_fetch_state.dart


API

I used a public post fetching api.
https://jsonplaceholder.typicode.com/posts/

Screen

My Home Screen fetches apis from the url and shows it on the screen.



Cubit

Extending Cubit from BlocBase allows us to use ChangeNotifier functionality like notifyListeners() to
update the UI, while also allowing you to use Stream functionality like yield to emit new states
 in response to events.


Equatable

In a Bloc-based architecture, the state of the application is represented by a state object that extends the Equatable class.

Equatable is a library that helps to simplify the process of implementing the == and hashCode methods in Dart. These methods are used to compare objects for equality and to generate a hash code that is used to store objects in data structures like Set and Map.

By extending Equatable, we can easily compare two instances of the same class for equality based on the values of their properties, rather than just their memory locations.
This is especially useful when working with complex objects that have many properties, as it makes it much easier to write tests and avoid bugs caused by object reference errors.

Overall, extending our Bloc state objects from Equatable can help to simplify our code, reduce the likelihood of bugs caused by object reference errors, and make it easier to test and debug your application.



********************Provider******************

Technologies Used

Provider
http


class and providers

class name is login.dart and it's provider name is login_provider.dart
class name is fav.dart and it's provider name is fav_provider.dart

API

I used a public post fetching api.
https://reqres.in/ (login)

credentials:
 "email": "eve.holt@reqres.in",
    "password": "cityslicka"


Screens working
We login from login screen and go to favourite screen there we select our fav products and those products are saved in the next screen.





