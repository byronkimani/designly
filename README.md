# designly

a simple design based application
## Project setup

### Project prerequisites

1. The **myCareHub** app runs on Flutter version 2.10.5. To check the flutter version and channel installed in your machine run `flutter --version`.

2. To switch from another channel of Flutter to the stable channel run `flutter channel stable`.

3. To install Flutter version 2.10.5 run `flutter version v2.10.5`.

### How to setup and run designly

1. Use `git clone git@github.com:byronkimani/designly.git` to clone this project.

2. Navigate into the project directory.

3. To run the project enter the following on your terminal 
```sh
    flutter run
```

### Application overview

The application consists of just a few pages
1. information page - contains a form for filling in basic information
2. design page - contains a simply designed custom card widget
3. response - makes an api call and displays a list of todos
4. dictionary page - sorts a given Map of data and displays the result

### Architecture
State management option used is bloc due to its robustness nad relative simplicty.

