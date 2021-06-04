import 'package:core_box/custom_widgets/custom_login_button.dart';
import 'package:core_box/models/user_model.dart';
import 'package:core_box/screens/adding_welcome/adding_welcome_screen.dart';
import 'package:core_box/screens/code_entering/code_entering_screen.dart';
import 'package:core_box/utils/navigation_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pay/pay.dart';

class PaymentScreen extends StatefulWidget {
  final UserModel currentUser;

  const PaymentScreen({@required this.currentUser});

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final _paymentItems = [
    PaymentItem(
      label: 'Total',
      amount: '29.99',
      status: PaymentItemStatus.final_price,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        clipBehavior: Clip.antiAlias,
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            top: 111,
            left: -123,
            child: Container(
              width: 253,
              height: 253,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(32, 32, 32, 0.6),
              ),
            ),
          ),
          // Positioned(
          //   top: 600,
          //   left: 242,
          //   child: Container(
          //     width: 253,
          //     height: 253,
          //     decoration: BoxDecoration(
          //       shape: BoxShape.circle,
          //       color: Color.fromRGBO(32, 32, 32, 0.6),
          //     ),
          //   ),
          // ),
          Positioned(
            height: MediaQuery.of(context).size.height,
            top: 0,
            left: 0,
            width: MediaQuery.of(context).size.width,
            child: SizedBox(
              height: 800,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 30,
                            height: 30,
                          ),
                          Text(
                            'Add new system!',
                            style: GoogleFonts.sourceSansPro(
                                color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          if (widget.currentUser.imageUrl.isNotEmpty)
                            Container(
                              width: 35,
                              height: 35,
                              child: ClipRRect(
                                child: Image.network(
                                  widget.currentUser.imageUrl,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(90)),
                              ),
                            ),
                        ]),
                    Image.asset('assets/pay.png'),
                    Column(
                      children: <Widget>[
                        Text(
                          'If you want to add a new system to this account,',
                          style: GoogleFonts.sourceSansPro(
                              fontSize: 16,
                              color: Color.fromRGBO(169, 169, 169, 1)),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'then pay for the addition of a new system.',
                          style: GoogleFonts.sourceSansPro(
                            fontSize: 16,
                            color: Color.fromRGBO(169, 169, 169, 1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    GooglePayButton(
                        paymentConfigurationAsset: 'gpay.json',
                        onPaymentResult: (data) {
                          print(data);
                          NavigationUtils.toScreen(context, screen: AddWelcome(currentUser: widget.currentUser));
                        },
                        width: 250,
                        height: 80,
                        style: GooglePayButtonStyle.black,
                        type: GooglePayButtonType.pay,
                        margin: const EdgeInsets.only(top: 15.0),
                        loadingIndicator: const Center(
                          child: CircularProgressIndicator(),
                        ),
                        paymentItems: _paymentItems),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
