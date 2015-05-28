%%taking the basic data in
prompt1='Enter your email address:(works only for gmail account)';
mail=input(prompt1,'s');

prompt2='Enter your password:';
password=input(prompt2,'s');

prompt3='Enter recivers address:';
email_sender=input(prompt3,'s');

prompt4='Enter msg:';
msg=input(prompt4,'s');

%%confugring client side application
setpref('Internet','E_mail',mail);
%here smptp is different for differnt senders
% for gmail it is 'smtp.gmail.com'
%for outllok it 'smtp.live.com'
setpref('Internet','SMTP_Server','smtp.gmail.com');
setpref('Internet','SMTP_Username',mail);
setpref('Internet','SMTP_Password',password);
props = java.lang.System.getProperties;
props.setProperty('mail.smtp.auth','true');
props.setProperty('mail.smtp.socketFactory.class', 'javax.net.ssl.SSLSocketFactory');
props.setProperty('mail.smtp.socketFactory.port','465');

%% finally send email function to send data 
sendmail(email_sender,msg);
