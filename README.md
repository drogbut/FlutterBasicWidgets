# Basic Widgets Examples

Here you will find a quick way to customise the basic flutter widgets to your taste. 

## Run this project

**EDIT** : No need of running the project, simply run the code in the new official Flutter online compiler [DartPad](https://dartpad.dartlang.org/flutter).

### Still want to run the project?
- Fork this project.
- Rename the directory to "my_basic_widgets" or something with all_lowercase_and_underscore. (Unfortunately, Flutter does not like capital letters.)
- In your terminal, run flutter create . This will create the android and iOS projects for you.
- Run in your emulator or device.

# A. App Background

## 1. Stack 
If you want to overlay children relatively to a parent, use the Stack widget. In this example, Stack is used to order the appBar and the body relatively to a parent image in background.
<table style="width:800px">
    <tr>
        <td>How to overlay children relatively on an image ?</td>
        <td><a href="https://www.youtube.com/watch?v=liEGSeD3Zt8">Learn more about Stack</a></td>
    </tr>
      <tr>
        <td><pre><code>
 @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network('https://picsum.photos/250?image=9'),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: new MyAppBar(
            widget.title, 20.0, color: Colors.transparent,),
          body:  Container(),         
        ),
      ],
    );
  }
  </code></pre> 
  </td>
        <td><img src="assets/images/Stack.png" width="200"></td>
    </tr>
</table>


## 2. BoxDecoration
By considering colour theory, gradients make an application more visually interesting than a conventional design. To apply gradients to a Flutter application, you will use [BoxDecoration](https://api.flutter.dev/flutter/painting/BoxDecoration-class.html) and [LinearGradient](https://api.flutter.dev/flutter/painting/LinearGradient-class.html). the [ShaderMask](https://api.flutter.dev/flutter/widgets/ShaderMask-class.html) class can also be used for the same result
<table style="width:800px">
    <tr>
        <td>How To Use Gradients in Flutter with BoxDecoration ?</td>
        <td><a href="https://www.youtube.com/watch?v=c1xLMaTUWCY">Learn more about Container</a></td>
    </tr>
      <tr>
        <td><pre><code>
Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(48.0)),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.green,Colors.grenn[900],],
            )
          ),
          child: Center(
            child: Text(
              'Hello Gradient!',
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
  </code></pre> 
  </td>
        <td><img src="assets/images/my_gradient_container.png" width="200"></td>
    </tr>
</table>

# B. AppBar

# C. App Body

### Learn more on Flutter    
[Official Flutter documentation](https://flutter.dev/docs) <br>
[Flutter widget list](https://flutter.dev/docs/development/ui/widgets) <br>
[Flutter youtube channel](https://www.youtube.com/channel/UCwXdFgeE9KYzlDdR7TG9cMw)

### Created & maintained by   
Idriss Tchio ([LinkedIn](https://www.linkedin.com/in/idriss-tchio/))

### Contribution Guidelines    
This project is a fully open source project, and contributions are welcome.

### Support
This project helped you? Buy me a coffee to support me! [PayPal](https://paypal.me/drogbut "PayPal")

### Licence
*Copyright 2021 Idriss Tchio*
