# pixelfield_test

## Requirements

- Use the latest stable Flutter version
- Use null-safety
- Use mockup JSON files instead of REST API
    - This connection should be available only when internet connection is available
    - Data should be stored in the app and “refresh” after fetching if exists
    - When offline, use some solution which will allow “in future” to eg. filter in this “offline” set
- Use BLoC pattern for state management
- Use Git for version control - after you finish, share the link with us

## Getting Started

- Routing: -> Using named routes under the PageRouteBuilder to navigate around different screens inside the application alson having transition animation between screens (Slide Transition ) (
     See: main.dart
        routes_configuration.dart
)

- SignIn Process -> Processing data from Json (jsonDataCredentials.json -> for new user please add there)
                 -> Bloc Pattern with RxDart and InheritedWidget to create own provider ( See : sign_in_bloc.dart, sign_in_provider.dart)
                 -> created a mixin class for input validators that validate Regex for email and password more than 8 characters that checks the validator on input
                 -> combined email stream and passowrd stream to give access to button continue login

- Main Application Dashboard -> Bottom Navigation Bar
                             -> Collection Tab -> Bring data from json with the same Bloc Pattern RxDart and Inherited Widget
                                               -> Creating gridview for products 
                                               -> Using animations as OpenContainer to make Transition to product page 
                             -> Product page -> design and details,history,tasting notes                               
