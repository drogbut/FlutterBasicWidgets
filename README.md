# Basic Widgets Examples

Here you will find a quick way to customise the basic flutter widgets to your taste. 

## Run this project

**EDIT** : No need of running the project, simply run the code in the new official Flutter online compiler [DartPad](https://dartpad.dartlang.org/flutter).

### Still want to run the project?
- Fork this project.
- Rename the directory to "my_basic_widgets" or something with all_lowercase_and_underscore. (Unfortunately, Flutter does not like capital letters.)
- In your terminal, run flutter create . This will create the android and iOS projects for you.
- Run in your emulator or device.

# App Background

## Stack
A widget that positions its children relative to its box.
This widget is useful if you want to overlay children in a simple way, for example overlapping the appBar, the Drawer and the body on a background image.
### Try out Stack widget and it's properties directly from [DartPad](https://dartpad.dev/d548285fd710d4c94cb1ff59835b85bd?null_safety=true) 

<table>
    <tr>
        <td>App Background with image/Gradient</td>
        <td> </td>
    </tr>
      <tr>
        <td><pre><code>
 @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        new MyBackgroundImage(imagePath: "assets/images/image1.jpg",),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: new MyAppBar(widget.title, 20.0, color: Colors.transparent,),
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

## ShaderMask
textfiled 1
textfiled 1
### Try out ShaderMask widget and it's properties directly from [DartPad](https://dartpad.dev/d548285fd710d4c94cb1ff59835b85bd?null_safety=true) 

<table>
    <tr>
        <td>Background Image with Gradient</td>
        <td> </td>
    </tr>
      <tr>
        <td><pre><code>
ShaderMask(
        shaderCallback: (rect) => LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.center,
          colors: [Colors.white, Colors.transparent],
        ).createShader(rect),
        blendMode: BlendMode.darken,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
              //colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
            ),
          ),
        ),
      );
  }
  </code></pre> 
  </td>
        <td><img src="assets/images/Stack.png" width="200"></td>
    </tr>
</table>

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
