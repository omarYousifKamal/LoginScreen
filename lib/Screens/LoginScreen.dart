import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _textEditingControllerPassword =
      TextEditingController();
  String phoneNo = '', password = '';
  bool checkRemember = false;
  @override
  Widget build(BuildContext context) {
    //lo goreny text la chap lo rast44
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            centerTitle: true,
            backgroundColor: Colors.yellow[600],
            automaticallyImplyLeading: false,
            title: Text(
              'صفحة التسجيل',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 0.02 * MediaQuery.of(context).size.width,
                ),
                SizedBox(
                  width: 0.9 * MediaQuery.of(context).size.width,
                  child: TextFormField(
                    controller: _textEditingController,
                    //nrxy text Value darwata naw PhoneNo
                    onChanged: (textValue) {
                      // lo goreny nrxaka la haman kat
                      setState(
                        () {
                          phoneNo = textValue;
                        },
                      );
                    },
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                    //lo goreny jore type ka tanha daway raqam talafon daka
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'رقم الهاتف',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                // passwordPart
                SizedBox(
                  height: 0.02 * MediaQuery.of(context).size.width,
                ),
                SizedBox(
                  width: 0.9 * MediaQuery.of(context).size.width,
                  child: TextFormField(
                    controller: _textEditingControllerPassword,
                    //nrxy text Value darwata naw PhoneNo
                    onChanged: (textValue) {
                      // lo goreny nrxaka la haman kat
                      setState(
                        () {
                          password = _textEditingControllerPassword.text;
                        },
                      );
                    },
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                    //lo goreny jore type ka tanha daway raqam talafon daka
                    keyboardType: TextInputType.text,
                    // lo zead krdne nuqtakan
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'كلمة السر',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                // Text(phoneNo),
                SizedBox(
                  height: 0.02 * MediaQuery.of(context).size.width,
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: 0.9 * MediaQuery.of(context).size.width,
                    height: 0.19 * MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.yellow[600],
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.02 * MediaQuery.of(context).size.width,
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: 0.9 * MediaQuery.of(context).size.width,
                    height: 0.19 * MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.blue[800],
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'تسجيل الاشتراك',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'الدخول كضيف',
                    style: TextStyle(
                        color: Colors.yellow[600],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                SizedBox(
                  width: 0.92 * MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.blue[800],
                        checkColor: Colors.white,
                        value: checkRemember,
                        onChanged: (value) {
                          setState(
                            () {
                              checkRemember = value;
                            },
                          );
                        },
                      ),
                      Text(
                        'تذكرني',
                        style: TextStyle(color: Colors.blue[800], fontSize: 16),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'نسيت كلمة السر؟',
                          style:
                              TextStyle(color: Colors.blue[800], fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//
