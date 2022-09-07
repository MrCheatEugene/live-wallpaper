String cameraName = "UVC Camera"; // your camera name, for most Action cameras it's UVC Camera 
String mode ="1920x1080"; // resolution of picture
int randVal=parseInt(random(111,999));
void setup(){

  
}
void draw(){new File("c:"+'\\'+"live_wallpaper_"+randVal+".bmp").delete();

  launch("C:"+'\\'+"SilentCMD"+'\\'+"ffmpeg.exe"+" -f dshow -i "+'\"'+"video="+cameraName+'\"'+" -s "+mode+" -frames:v 1 c:/live_wallpaper_"+randVal+".bmp -y"); //taking a picture from camera
launch("reg add "+'"'+"HKEY_CURRENT_USER"+'\\'+"control panel"+'\\'+"desktop"+'"'+" /v wallpaper /t REG_SZ /d "+'"'+""+'"'+" /f"); //set WallpaperStyle to image
delay(1000);//wait for a bit - if not wait, might not work
launch("reg add "+'"'+"HKEY_CURRENT_USER"+'\\'+"Control Panel"+'\\'+"Desktop"+'"'+" /v Wallpaper /t REG_SZ /d c:"+'\\'+"live_wallpaper_"+randVal+".bmp"+" /f");// apply wallpaper
delay(1000);//wait for a bit - if not wait, might not work
launch("reg add "+'"'+"HKEY_CURRENT_USER"+'\\'+"control panel"+'\\'+"desktop"+'"'+" /v WallpaperStyle /t REG_SZ /d 2 /f");//set style again, for me it works for second or third time
  launch("RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters");// refresh wallpaper using RunDLL
delay(1000);//wait for a bit - if not wait, might not work
launch("reg add "+'"'+"HKEY_CURRENT_USER"+'\\'+"control panel"+'\\'+"desktop"+'"'+" /v WallpaperStyle /t REG_SZ /d 2 /f");//set style again, for me it works for second or third time
  launch("RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters");// refresh wallpaper using RunDLL
    delay(1000);//wait for a bit - if not wait, might not work
launch("reg add "+'"'+"HKEY_CURRENT_USER"+'\\'+"control panel"+'\\'+"desktop"+'"'+" /v WallpaperStyle /t REG_SZ /d 2 /f");//set style again, for me it works for second or third time
  launch("RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters");// refresh wallpaper using RunDLL
delay(1000);
new File("c:"+'\\'+"live_wallpaper_"+randVal+".bmp").delete();}
void refresh(){ 
}
