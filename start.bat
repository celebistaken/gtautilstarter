@ECHO OFF
@echo off
color a
cls
echo		 **      **   *******   *******   ******* 
echo		/**     /**  **/////** /**////** /**////**
echo		/**     /** **     //**/**   /** /**   /**
echo		//**    ** /**      /**/*******  /******* 
echo		 //**  **  /**      /**/**///**  /**////  
echo		  //****   //**     ** /**  //** /**      
echo		   //**     //*******  /**   //**/**      
echo		    //       ///////   //     // //       

echo -------------------------------------------------------------------
echo 	GTAUtil Shortcut written by ulyes
echo -------------------------------------------------------------------
del /s build
echo ------------------------------------------------------------------- 
ECHO old stream files deleted
echo -------------------------------------------------------------------
gtautil genpeddefs --input project --output build --reserve 0 --reserveprops 0 --fivem
echo -------------------------------------------------------------------
echo -------------------------------------------------------------------
del "D:\ulyes\huemp-server\cfx-server-data-master\resources\clothes\*.*" /s
ECHO old stream files deleted

xcopy /s/e D:\gtautil\build D:\ulyes\huemp-server\cfx-server-data-master\resources\clothes
echo -------------------------------------------------------------------
@ECHO OFF
start C:/Users/ulyes/AppData/Local/FiveM//FiveM.exe
start D:/ulyes/huemp-server//FXServer.exe +set serverProfile "default"

ECHO completed!
PAUSE