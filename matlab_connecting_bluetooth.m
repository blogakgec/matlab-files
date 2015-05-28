%first to check all the availale bluetooth devices around you

ans=instrhwinfo('bluetooth');

%gives you an array of all available devices around you.. their remote
%names and remote ids

%to access remote ids
ans.RemoteNames
ans.RemoteIds
%gives you the list of all remote names and remote IDS

%to know channel no of your device
instrhwinfo('Bluetooth','remote_name');
%gives you the channel number

%now you need to make an aobject of your bluetooth connection
object_name=bluetooth('remote_name',channel_no);


%connect to the device
fopen(object_name);


%write data to the file
fwrite(b,'data to be written');

%read data 
fread(b,length);
%disconnect device

fclose(b);
