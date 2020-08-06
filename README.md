# GrimR
Greetings. 
This is a **Flutter** and **Dart** project I will be using for testing purposes. It's essentially a playground where I'll just make small little sub-projects, test new [packages](https://pub.dev/), and then try to incorporate whatever I did into the **GrimR** project itself... *in some pointless random way --- most likely.* 

## Objective
The whole point is to learn about new packages, while also getting more and more familiarised with the language. 
I am determined to try and make this project as maintainable as I'm physically able, following the best practices and documenting as much as possible. *Not only because I'd otherwise forget all I did,* but also so it can be used by other people if they are ever curious enough to explore my shenanigans.

## Dev Log
I will also be keeping record of major additions I make to the project, just as a way to have a "log" for changes that involve big overhauls, overshadowing what was previously done. 

### 06/08/20:
- *Major* refactoring on the Themes feature.
  - Much much much less code duplication. 
    - Separated the creation of the ThemeData object to different methods, and themselves also use another private method.
    - This made the themes extremely easy to create and/or modify, and even made it semantically easier to use the ThemeData.from() factory.
- Flutter seems to be moving away from ThemeData and instead focusing on ColorScheme.
  - The refactoring involved using a new constructor (factory) defined for ThemeData which actually uses a ColorScheme instead.
  - Implementation of this factory was confusing. More info about it commented inside the code.

### 05/08/20:
- Started the **GrimR** playground project. 
- Set up some basic BLoc state management.
- Added a manually-made Router class to manage the routes.
	- Tried the **Auto_Route** package, but had some trouble making custom transitions work. I had to ditch it.
- Created a Custom Transitions feature.
	- Purely *Prensentation Layer* stuff. 
	- Learning how to create some basic custom animations when transitioning into different pages. 
	- Looking to try and migrate to **Flutter Hooks** at some point.
- Created a Custom Animation feature. 
	- Again, all *Presentation Layer.*
	- Learned how to create a custom rotation animation that loops. 
	- Gonna keep exploring these as they seem really interesting to work with. 
- Created a Theme Change feature.
	- Even more *Presentation Layer* shenans' !
	- There's a new page that can be accessed from the `SplashScreen` where different colour themes can be chosen, making the app change its colour values to the ones defined in that theme.
	- May look into tweaking the animations to make the colour change transition a bit smoother.

### 04/08/20:
- Started the project :) 
- Experimented with the **Cubit** and **BLoC** packages, trying their different ways of handling state management.
	- Cubit seems like a simpler option, however I do prefer the way BLoC works a lot more.
- Experimented with the **Chopper** library for Dart.
	- There's definitely a lot more I need to learn. I'll be coming back to it in the future, though the basics were pretty easy to work with.

> Credit where credit is due. This readme was written  and is being maintained using [StackEdit](https://stackedit.io/) :) 
