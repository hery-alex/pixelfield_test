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

## Another information

- Use any packages from pub.dev, but explain, why you used it
- Track your time on test task and send this info to us
- If you find anything in templates, that you wish to change, send to us this info and write, why you think, that your way is better
- Is not necessary to create all templates, but we need to see how flow of the app is implemented (but at least `My collection` + `Details` are required)
- Animations are welcome but not required

## Getting Started

- Routing: -> Using named routes under then PageRouteBuilder to navigate around different screens inside the application alson having transition animation between screens (Slide Transition ) (
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
                             -> Product page -> design and details,history,tasting notes and button to add to collection which will put them in local storage

- Splash Screen -> Android 12 and above doesn't support background Image only color plus the dimensions of logo not appropiate so doesn't look perfect but looks good on Ios and Android under 12 
 
 
- Local Storage to store bottles and will show them when offline (updates UI automatically) -> When online will bring data from Api(Json) and show them. When clicking on product you have the button to add to collection which will add them to local storage. If internet connection is dropped than the list will update with the ones that had been stored , when connection is back up will bring back data from APi(json)
