import 'dart:developer';

import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController{
  var googleSignIn = GoogleSignIn();
  var googleAccount = Rx<GoogleSignInAccount?>(null);
  
  login()async{
     googleSignIn.signIn();
  googleAccount.value = await googleSignIn.signIn();

    if(googleAccount.value==null){
                      return log('error');
                     }else{
                      log(googleAccount.value.toString());
                       
                     }
                    
  }

   logOut()async{
     googleSignIn.signIn();
  googleAccount.value = await googleSignIn.signOut();

    
  }
}