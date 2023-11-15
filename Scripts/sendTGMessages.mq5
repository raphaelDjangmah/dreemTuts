//+------------------------------------------------------------------+
//|                                               sendTGMessages.mq5 |
//|                                         Copyright 2022, jnrDreem |
//|                    https://www.mql5.com/en/users/raphaeldjangmah |
//+------------------------------------------------------------------+
#property copyright "Copyright 2022, jnrDreem"
#property link      "https://www.mql5.com/en/users/raphaeldjangmah"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
      string text = "HELLO FROM MT5";
      string id = "Your ChatID Here";
      string token = "YOUR TELEGRAM BOT";
      
      Alert(sendMessage(text,id,token));
   
  }
  
  
int sendMessage(string text, string chatID, string botToken){
   
   string baseUrl = "https://api.telegram.org";
   string headers = "";
   string requestURL = "";
   string requestHeaders = "";
   char resultData[];
   char posData[];
   int timeout = 2000;

   requestURL = StringFormat("%s/bot%s/sendmessage?chat_id=%s&text=%s",baseUrl,botToken,chatID,text);
   int response = WebRequest("POST",requestURL,headers,timeout,posData,resultData,requestHeaders);
   
   string resultMessage = CharArrayToString(resultData);
   Print(resultMessage);
   
   return response;
}




//+------------------------------------------------------------------+
