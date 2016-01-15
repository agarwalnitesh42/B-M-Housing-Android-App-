package com.example.estate;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.telephony.SmsManager;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class Contactus extends Activity{
	Button buttonsend;
	Button buttonmail;
	EditText textTo;
	EditText textSubject;
	EditText textMessage;
	EditText textPhoneNo;
	EditText textSms;
	Button buttonweb;
	
public void onCreate(Bundle savedInstanceState)
{
	super.onCreate(savedInstanceState);
	setContentView(R.layout.contact_us);
	buttonmail=(Button)findViewById(R.id.buttonSendmail);
	textTo=(EditText)findViewById(R.id.editTextTo);
	textSubject=(EditText)findViewById(R.id.editTextSubject);
	textMessage=(EditText)findViewById(R.id.editTextMessage);
	buttonsend=(Button)findViewById(R.id.buttonsend);
	textPhoneNo= (EditText)findViewById(R.id.enterphoneno);
	textSms = (EditText)findViewById(R.id.textViewSms);
	buttonweb = (Button)findViewById(R.id.btnweb);
	
	buttonsend.setOnClickListener(new OnClickListener(){
		
		
		@Override
		public void onClick(View v) {
			String phoneNo = textPhoneNo.getText().toString();
			String sms = textSms.getText().toString();
			
			try{
				SmsManager smsManager = SmsManager.getDefault();
				smsManager.sendTextMessage(phoneNo, null , sms , null , null);
				Toast.makeText(getApplicationContext(),"SMS  Sent!",
				Toast.LENGTH_LONG).show();
			}
			catch(Exception e)
			{
				Toast.makeText(getApplicationContext(), "SMS failed, please try again later!", Toast.LENGTH_LONG).show();
	            e.printStackTrace();
			}
			
		}
		
	}
	
			
			);
	
	
	buttonmail.setOnClickListener(new OnClickListener() {
		
		@Override
		public void onClick(View v) {
			String to = textTo.getText().toString();
			String subject = textSubject.getText().toString();
			String message = textMessage.getText().toString();
			
			Intent email = new Intent(Intent.ACTION_SEND);
			email.putExtra(Intent.EXTRA_EMAIL, new String[]{to});
			email.putExtra(Intent.EXTRA_SUBJECT,subject);
			email.putExtra(Intent.EXTRA_TEXT, message);
			email.setType("message/rfc822");
			startActivity(Intent.createChooser(email, "Chhose an Email Client:"));
			
			
		}
	});
	
	
	buttonweb.setOnClickListener(new OnClickListener() {
		
		@Override
		public void onClick(View arg0) {
			Intent intent= new Intent(Intent.ACTION_VIEW, Uri.parse("http://www.bmhousing.com"));
			startActivity(intent);
			
			
		}
	});
	
	
	
}
	
	
	
	
}
