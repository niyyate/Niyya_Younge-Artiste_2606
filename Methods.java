//34. Provide the Java method signatures that correspond to functional requirements in the logical process model
//previously provided. 

void create_user(String userName, String password, String firstName, String lastName, String email, int phoneNumber);
void add_Addr(String userName, String address_1, String address_2, String city, String state, int zip);
void add_Billing(String userName, String b_Address_1, String b_Address_2, String b_City, String b_State, int b_Zip, int ccnum, int sec_code);

String validate(String userName, String userType){
return userType;}

void delete(String userName, String employeeNum);

String[] search_books(String title){
return bookTitle;}
   String[] search_books(int isbn){
   return bookTitle;}

int buy_book(String username, int bookNum, String password){
return transNum;}

String[] search_Trans(String userName, String password){
return transNum;}

int input_book(String bookName, String author, int isbnNum, int usageType, double price){
return bookNum;}
  int input_book(String bookName, String author, int isbnNum, int usageType, double price, int rentTime){
  return bookNum;}

int change_price(String bookNum, double newPrice){
return bookNum;}

String[] search_kiosk(int kioskNum){
return kioskinfo;}
   String[] search_kiosk(int kioskNum, String school){
   return kiosksInTake;}
   
String[] account_hist(String userName, String password){
return new ValueHolder(transNum, bookNum)};   

void process_refund(String username, String employeeNum, int price);




  


