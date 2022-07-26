import 'package:crypto_wallet_app/common_widgets/app_bars.dart';
import 'package:crypto_wallet_app/common_widgets/gradient_button.dart';
import 'package:crypto_wallet_app/common_widgets/text_field_container.dart';
import 'package:crypto_wallet_app/core/colors.dart';
import 'package:crypto_wallet_app/screens/home%20screens/home_screen.dart';
import 'package:crypto_wallet_app/screens/home%20screens/widgets/scanQRcodeWidget.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/widgets/switch_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImportFromSeed extends StatefulWidget {
  static const id = '/importfromseed';
  const ImportFromSeed({Key? key}) : super(key: key);

  @override
  State<ImportFromSeed> createState() => _ImportFromSeedState();
}

class _ImportFromSeedState extends State<ImportFromSeed> {
  bool _isObscure = true;
  bool _isObscure1 = true;
  bool _isObscure2 = true;
  final TextEditingController _controller = TextEditingController();
  bool _isError1 = false;
  bool _isError2 = false;
  bool _isError3 = false;
  bool _isError4 = false;

  String _errorText1 = '';
  String _errorText4 = '';

  String _errorText2 = '';
  String _errorText3 = '';
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmpassword = TextEditingController();

  void verifyPassowrd({required BuildContext context}) {
    _errorText1 = '';
    _errorText2 = '';
    _errorText3 = '';
    _errorText4 = '';

    if (_controller.value.text.isEmpty) {
      setState(() {
        _isError3 = true;
        _errorText3 = "Seed Phrase can't be empty";
      });
    }

    if (_password.value.text.isEmpty) {
      setState(() {
        _isError1 = true;
        _errorText1 = "Password should not be blank";
      });
      return;
    }

    if (_confirmpassword.value.text.isEmpty) {
      setState(() {
        _isError4 = true;
        _errorText4 = "Password should not be blank";
      });
      return;
    }

    if (_password.value.text != _confirmpassword.value.text) {
      setState(() {
        _isError2 = true;
        _errorText2 = "Password doesn't match";
      });
      return;
    }

    setState(() {
      _isError1 = false;
      _isError2 = false;
      _isError3 = false;
      _isError4 = false;
    });

    Navigator.pushReplacementNamed(
      context,
      HomeScreen.id,
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BackAppBar(
        context,
        title: 'Import From Seed',
        actions: [
          IconButton(
            icon:
                const Icon(Icons.qr_code_scanner_rounded, color: Colors.purple),
            onPressed: () {
              Navigator.pushNamed(context, ScanQRCodePage.id);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        'Seed Phrase',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // if (isMandatory)
                      Text(
                        ' *',
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold, color: errorText),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Container(
                  height: size.height * 0.12,
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xffD3DAE0),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          obscureText: _isObscure2 ? false : true,
                          controller: _controller,
                          decoration: const InputDecoration(
                            hintText: 'Seed Phrase',
                            hintStyle: TextStyle(fontSize: 16),
                            border: InputBorder.none,
                          ),
                          //obscureText: true,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          _isObscure2 ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() => _isObscure2 = !_isObscure2);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              if (_isError3)
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 160, 5),
                  child: Text(
                    _errorText3, style: const TextStyle(color: Colors.red),

                    //textAlign: TextAlign.left,
                  ),
                ),
              //const SizedBox(height: 50),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: textFieldContainer(
                  size,
                  'New Password',
                  _password,
                  'New Password',
                  !_isObscure,
                  showTitle: true,
                  isMandatory: true,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() => _isObscure = !_isObscure);
                    },
                    child: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
              if (_isError1)
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 160, 5),
                  child: Text(
                    _errorText1, style: const TextStyle(color: Colors.red),

                    //textAlign: TextAlign.left,
                  ),
                ),

              const SizedBox(height: 20),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: textFieldContainer(
                    size,
                    'Confirm New Password',
                    _confirmpassword,
                    'Confirm New Password',
                    !_isObscure1,
                    showTitle: true,
                    isMandatory: true,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() => _isObscure1 = !_isObscure1);
                      },
                      child: Icon(
                        _isObscure1 ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                  )),
              if (_isError4)
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 160, 5),
                  child: Text(
                    _errorText4,
                    style: const TextStyle(
                      color: Colors.red,
                    ),
                    //textAlign: TextAlign.left,
                  ),
                ),
              if (_isError2)
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 160, 5),
                  child: Text(
                    _errorText2,
                    style: const TextStyle(
                      color: Colors.red,
                    ),
                    //textAlign: TextAlign.left,
                  ),
                ),
              const SizedBox(height: 20),
              const Divider(
                color: Colors.black,
                indent: 20,
                endIndent: 20,
              ),
              const SizedBox(height: 10),
              SwitchTileWidget(
                onChanged: (v) {},
                title: "Sign in with Face Id?",
                value: true,
                horizontalPadding: 25,
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: 'By proceeding, you agree to these',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
                  ),
                  children: const [
                    TextSpan(
                      text: ' Term and Conditions.',
                      style: TextStyle(
                        color: Color.fromARGB(255, 39, 73, 176),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 160),
              GradientButton(
                title: "Import",
                height: size.height * 0.06,
                width: size.width * 0.9,
                onTap: () {
                  verifyPassowrd(context: context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
