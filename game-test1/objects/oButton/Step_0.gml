/// @description Button press functionality

if(mouseClick&&mouseHover) halfPress = true;
if(!mouseHover) halfPress = false;
if(halfPress && !mouseClick){
	script_execute(clickScript);
}