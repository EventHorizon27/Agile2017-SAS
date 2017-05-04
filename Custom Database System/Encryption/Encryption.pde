import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import javax.xml.bind.DatatypeConverter;
String length = loadStrings(/Users/colechristini/Desktop/DatabaseFiles/length.txt);
String[] encryptedpasswords = new String[int(length)];
String[] tempPasswords=new String[int(length)];
String key = "  8cd82e4af6649117"; // 128 bit key  -this key is processed as ascii values
void setup() {

          try {

        encryptedpasswords = loadStrings(/Users/colechristini/Desktop/DatabaseFiles/passwordsTemp.txt);




        //Encrypter




       //Decrypter
      }


        }

        catch (Exception ex) {
            ex.printStackTrace();
        }

}

void draw() {
}
void encrypt(){
  SecretKeySpec skeySpec_encode = new SecretKeySpec(key.getBytes("UTF-8"), "AES");

  Cipher cipher_encode = Cipher.getInstance("AES/ECB/PKCS5PADDING"); //AES-CBC with IV encoding, ECB is used without the IV, example shown on <a href="http://aesencryption.net/" target="_blank" rel="nofollow">http://aesencryption.net/</a>
  cipher_encode.init(Cipher.ENCRYPT_MODE, skeySpec_encode);
for(int z=0;z<length;z++){
  byte[] encrypted = cipher_encode.doFinal(encryptedpasswords[z].getBytes());

          //encode without padding: Base64.getEncoder().withoutPadding().encodeToString(encrypted));
          //encode with padding:  Base64.getEncoder().encodeToString(encrypted));
String tempPasswords[z] = DatatypeConverter.printBase64Binary(encrypted);
if(z==length){
  saveStrings(/Users/colechristini/Desktop/DatabaseFiles/passwordsTemp.txt);


}
}

}
void decrypt(){
  SecretKeySpec skeySpec_decode = new SecretKeySpec(key.getBytes("UTF-8"), "AES");

  Cipher cipher_decode = Cipher.getInstance("AES/ECB/PKCS5PADDING");
  cipher_decode.init(Cipher.DECRYPT_MODE, skeySpec_decode);
  for(int z; z<length;z++){

 for(int z=0;z<length;z++){
    byte[] decrypted_original = cipher_decode.doFinal(DatatypeConverter.parseBase64Binary(encryptedpasswords[z]));
    tempPasswords[z] = DatatypeConverter.printBase64Binary(decrypted_original);
    if(z==length){
      saveStrings(/Users/colechristini/Desktop/DatabaseFiles/passwordsTemp.txt);


    }

 }

}
