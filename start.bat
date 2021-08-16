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
del "insert your fivem stream directory" /s
ECHO old stream files deleted

xcopy /s/e build-folder stream-folder
echo -------------------------------------------------------------------
@ECHO OFF
start C:/Users/user/AppData/Local/FiveM//FiveM.exe
start D:/user/servername//FXServer.exe +set serverProfile "default"

ECHO completed!
PAUSE
