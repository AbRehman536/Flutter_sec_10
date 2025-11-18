import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class OTP extends StatelessWidget {
  const OTP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Center(child:
            Pinput(
              length: 6,
              showCursor: true,
              onCompleted: (value){
                print(value);
              },
                defaultPinTheme: PinTheme(
                  width: 50, height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black)
                  ),
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: Colors.red
                  )
                ),
            ),),
          Container(
            width: 400,height: 70,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                )
              ]
            ),
            child: Center(
              child: Text("Hello",style: GoogleFonts.kronaOne(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Color(0xff121212),
              ),),
            ),
          ),
          SizedBox(
            width: 400, height: 80,
            child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
                child: Text("Hello",style: GoogleFonts.kronaOne(
              fontSize: 30,
              fontWeight: FontWeight.w900,

            ),)),
          )
        ],
      ),
    );
  }
}
