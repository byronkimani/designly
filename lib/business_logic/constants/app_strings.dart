const String appName = 'Designly';

// page not found
const String errorOccurredText = 'OOPS! AN ERROR OCCURRED';
const String goBackText = 'GO BACK';

// validation strings
const String pleaseInputValidEmailText = 'Please input a valid email';
const String pleaseEnterNameText = 'Please enter name';
const String pleaseEnterValidPhoneNumberText =
    'Please enter valid phone number';
const String pleaseEnterField = 'Please fill up this field';

// validate email regex
const String emailRegex =
    r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

const String kenyanPhoneRegExp =
    r'''^(?:254|\+254|0)?((7|1)(?:(?:[129][0-9])|(?:0[0-8])|(4[0-1]))[0-9]{6})$''';

// info page
const String tellUsMoreText = 'Tell us more about you';
const String willBeShortText = 'We promise this will be short';
const String nameText = 'Name';
const String nameHint = 'John Doe';
const String emailText = 'Email';
const String emailHintText = 'someone@example.com';
const String phoneNumberText = 'Phone Number';
const String phoneNumberHintText = '0712345678';
const String submitText = 'Submit';
const String informationSubmitted = 'Information submitted successfully';

//design page
const String congratulations = 'Congratulations';
const String yourVirtualCard = 'Your virtual card is ready for use';

//response page
const String todosForTheDay = "Let's look at your todos for the day!";
String getPercentageTasksDone({required int percent}) =>
    'You have completed ${percent.toString()}% of your tasks for today ';

//dictionary page
const String sortingTitle = "Let's do some sorting";
const String belowIsSortedDictionary = 'Below is your sorted dictionary';
