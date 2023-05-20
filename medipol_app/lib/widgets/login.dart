
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medipol_app/widgets/background_image.dart';
import 'package:medipol_app/widgets/password-input.dart';
import 'package:medipol_app/widgets/tabs_screen.dart';
import 'package:medipol_app/widgets/text-input.dart';


/*enum authProblems { UserNotFound, PasswordNotValid, NetworkError }

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController displayNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _displayNameValid = true;
  bool _passwordValid = true;
  bool signUp = true;
  bool logging = false;

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: true,
      body: Container(
        color: Colors.white,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: <Widget>[
                    new SizedBox(
                      height: 50,
                    ),
                    new Container(
                      width: 950,
                      height: 140,
                      color: Colors.white,
                      child: new Image.asset('assets/images/logo.png'),
                      alignment: Alignment.center,
                    ),
                    new SizedBox(
                      height: 20,
                    ),
                    buildLoginUI(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildLoginUI() {
    return new Container(
      child: Column(
        children: [
          buildUsernameField(),
          SizedBox(
            height: 10,
          ),
          buildPasswordField(),
          SizedBox(
            height: 10,
          ),
          buildLoginButton(),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Forgotten your login details?",
                style: TextStyle(color: Colors.grey),
              ),
              GestureDetector(
                onTap: () => print('null'),
                child: Text("Get Help",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(children: <Widget>[
            SizedBox(
              width: 30,
            ),
            Expanded(
                child: Divider(
                  color: Colors.grey,
                )),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Text("OR", style: TextStyle(color: Colors.grey)),
            ),
            Expanded(
                child: Divider(
                  color: Colors.grey,
                )),
            SizedBox(
              width: 30,
            ),
          ]),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  Container buildUsernameField(){
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Container(
      width: queryData.size.width / 5 * 4,
      height: 50,
      child: TextField(
          controller: displayNameController,
          decoration: InputDecoration(
            icon: Icon(Icons.mail),
            hintText: "Username",
            hintStyle: TextStyle(color: Colors.black),
            errorText: _displayNameValid ? null : "Invalid username!",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide:
              BorderSide(color: Theme.of(context).primaryColor, width: 1.0),
            ),
          ),
          style: TextStyle(
            color: Colors.black,
          )),
    );
  }

  Container buildPasswordField() {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Container(
      width: queryData.size.width / 5 * 4,
      height: 50,
      child: TextField(
          obscureText: true,
          controller: passwordController,
          decoration: InputDecoration(
            icon: Icon(Icons.password),
            hintText: "Password",
            hintStyle: TextStyle(color: Colors.black),
            errorText: _passwordValid ? null : "Invalid password!",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide:
              BorderSide(color: Theme.of(context).primaryColor, width: 1.0),
            ),
          ),
          style: TextStyle(
            color: Colors.black,
          )),
    );
  }

  Container buildLoginButton() {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Container(
        color: Colors.blue,
        width: queryData.size.width / 5 * 2,
        height: 50,
        child: ElevatedButton(
          //color: Colors.blue,
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => TabScreen()));
          },
          child: Text(
            'Log In',
            style: TextStyle(color: Colors.white,fontSize: 22),
          ),
        ));
  }
}*/

/*class LogInPage extends StatefulWidget {
  const LogInPage({Key?key}):super(key: key);
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State <LogInPage> {
  final _formkey=GlobalKey<FormState>();
  bool _isLogin=false;
  String email='';
  String password='';
  String username='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('email')
      ),
      body: Container(
          margin: EdgeInsets.all(20),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !_isLogin? TextFormField(
                key: ValueKey('username'),
                decoration: InputDecoration(hintText: 'enter username'),
                validator: (value){
                  if(value.toString().length<3){
                    return 'username is so small';
                  }
                  else{
                    return null;
                  }
                },
                onSaved: (value){
                  setState(() {
                    username=value!;
                  });
                },
              )
                  :Container(),

              TextFormField(
                key: ValueKey('email'),
                decoration: InputDecoration(hintText: 'enter email'),
              ),

              TextFormField(
                obscureText: true,
                key: ValueKey('password'),
                decoration: InputDecoration(hintText: 'enter password'),
              ),
              SizedBox(height: 10,),
              Container
                (width: double.infinity,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    if(_formkey.currentState!.validate()){
                      _formkey.currentState!.save();
                      signup(email, password);
                    }
                  },
                      child:_isLogin?Text('login'):Text('sign up'))),
              SizedBox(height: 10,),

              TextButton(
                  onPressed: (){
                    setState(() {
    _isLogin=!_isLogin;
    if(_isLogin==_isLogin){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => TabScreen()));
    }
    else{
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LogInPage()),
    );};
    });
                  },
                  child: _isLogin
                      ?Text('Don t have account')
                     :Text('Already Signed up?Login')),
              ],
          )
      ),
    );
  }
}*/

class LogInPage extends StatelessWidget {
  LogInPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    child: Center(
                      child: Text(
                        'Ankara Medipol Üniversitesi ',
                        style: TextStyle(fontSize:32,fontWeight:FontWeight.w700,color:Colors.grey[50],fontFamily:'Raleway'),
                      ),

                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 42),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextInput(
                              icon: FontAwesomeIcons.envelope,
                              hint: 'Email',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            PasswordInput(
                              icon: FontAwesomeIcons.lock,
                              hint: 'Şifre',
                              inputAction: TextInputAction.done,

                            ),
                            Center(
                              child:Text(
                                'Parolanızı mı unuttunuz?',
                                style: TextStyle(color:Colors.white54,fontSize:21,),
                              ),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            SizedBox(
                              height: 60,
                            ),
                            RoundedButton(
                              buttonText: 'Giriş',
                            ),
                            SizedBox(
                              height: 70,
                            ),
                            /* Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                    bottom:
                                    BorderSide(color: Colors.white, width: 1),
                                  )),*/
                            /*child: Text(
                                'CreateNewAccount',
                                style: kBodyText,
                              ),*/

                            SizedBox(
                              height: 30,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

}

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key?key,
    required this.buttonText, }) :
        super(key: key);
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(14),
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => TabScreen()));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              buttonText,
              style: TextStyle(fontSize:21,color:Colors.white),
            ),
          ),
        ));
  }
}

