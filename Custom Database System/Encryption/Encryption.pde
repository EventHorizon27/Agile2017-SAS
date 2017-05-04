import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import javax.xml.bind.DatatypeConverter;
String filepath= "/Volumes" + File.separator
                            + "Users" + File.separator
                            + "Cole" + File.separator
                            + "Desktop" +  File.separator
                            + "DatabaseFiles"+ File.seperator
                            +"passwordsTemp.txt";
String filepath2= "/Volumes" + File.separator
+ "Users" + File.separator
+ "Cole" + File.separator
+ "Desktop" +  File.separator
+ "DatabaseFiles"+ File.seperator
+"length.txt";
String tempx;
BufferedReader abc = new BufferedReader(new FileReader(filepath));
BufferedReader length = new BufferedReader(new FileReader(filepath2));

     // <= how can i do that? data = new String[lines.size]






String[] encryptedpasswords = new String[lines.size()];
String[] tempPasswords=new String[lines.size()];
String key = "  8cd82e4af6649117"; // 128 bit key  -this key is processed as ascii values
void setup() {

          try {

    //data = new String[10]; // <= how can i do that? data = new String[lines.size]

    for (int i=0; i<lines.size(); i++) {
        encryptedpasswords[i] = abc.readLine();

    }
    abc.close();





        //Encrypter




       //Decrypter
      }


        }



}

void draw() {
}
void encrypt(){
  try{
  SecretKeySpec skeySpec_encode = new SecretKeySpec(key.getBytes("UTF-8"), "AES");

  Cipher cipher_encode = Cipher.getInstance("AES/ECB/PKCS5PADDING"); //AES-CBC with IV encoding, ECB is used without the IV, example shown on <a href="http://aesencryption.net/" target="_blank" rel="nofollow">http://aesencryption.net/</a>
  cipher_encode.init(Cipher.ENCRYPT_MODE, skeySpec_encode);
for(int z=0;z<length;z++){
  byte[] encrypted = cipher_encode.doFinal(encryptedpasswords[z].getBytes());

          //encode without padding: Base64.getEncoder().withoutPadding().encodeToString(encrypted));
          //encode with padding:  Base64.getEncoder().encodeToString(encrypted));
String tempPasswords[z] = DatatypeConverter.printBase64Binary(encrypted);
if(z==length){

    BufferedWriter outputWriter = null;
    outputWriter = new BufferedWriter(new FileWriter(filepath));

    for(String passw : encryptedpasswords) {

      outputWriter.write(passw);// Here I know i cant just write x[0] or anything. Do i need
                               //to loop in order to write the array?
      outputWriter.newLine();

    }
    outputWriter.flush();
    outputWriter.close();

}
}
}
catch (Exception ex) {
    ex.printStackTrace();
}
}
void decrypt(){
  try{
  SecretKeySpec skeySpec_decode = new SecretKeySpec(key.getBytes("UTF-8"), "AES");

  Cipher cipher_decode = Cipher.getInstance("AES/ECB/PKCS5PADDING");
  cipher_decode.init(Cipher.DECRYPT_MODE, skeySpec_decode);
  for(int z; z<length;z++){

 for(int z=0;z<length;z++){
    byte[] decrypted_original = cipher_decode.doFinal(DatatypeConverter.parseBase64Binary(encryptedpasswords[z]));
    tempPasswords[z] = DatatypeConverter.printBase64Binary(decrypted_original);
    if(z==length){
      BufferedWriter outputWriter = null;
      outputWriter = new BufferedWriter(new FileWriter(filepath));

      for(String passw : encryptedpasswords) {

        outputWriter.write(passw);// Here I know i cant just write x[0] or anything. Do i need
                                 //to loop in order to write the array?
        outputWriter.newLine();

      }
      outputWriter.flush();
      outputWriter.close(); 


    }

  }
 }
}
 catch (Exception ex) {
     ex.printStackTrace();
 }

}
