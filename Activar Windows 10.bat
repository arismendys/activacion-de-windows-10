@echo off
title Activacion de Windows 10
color f2
:Process
cls>nul
cls
echo   ::::::::::::::::::::::::::::::::::::::::::::::::::::
echo   :: Activacion de Windows 10                       ::
echo   :: Menu Principal                                 ::
echo   ::::::::::::::::::::::::::::::::::::::::::::::::::::
echo   :: Presione 1 - Eleja su version de Windows 10    ::
echo   :: Presione 2 - Cargar el servidor KMS            ::
echo   :: Presione 3 - Validar Windows 10                ::
echo   :: Presione 4 - Para Salir                        ::
echo   ::::::::::::::::::::::::::::::::::::::::::::::::::::
choice /c 1234 >nul
SET WINOPTION=%ERRORLEVEL%
IF %WINOPTION% EQU 1 (
	goto :VERMENU
)
IF %WINOPTION% EQU 2 (
	goto :MENUSERVER
)
IF %WINOPTION% EQU 3 (
Echo Procederemos a validar se edicion de Windows 10
pause
slmgr /ato
pause
goto :Process
)
IF %WINOPTION% EQU 4 (
Echo Saliendo del sistema
pause
exit
)
:VERMENU
	cls>nul 
	cls
	echo   ::::::::::::::::::::::::::::::::::::::::::::::::::::
	echo   :: Eleja su Edicion de Windows 10                 ::
	echo   :: Sub Menu                                       ::
	echo   ::::::::::::::::::::::::::::::::::::::::::::::::::::
	echo   :: Presione 1 - Home                              ::
	echo   :: Presione 2 - Education                         ::
	echo   :: Presione 3 - Pro                               ::
	echo   :: Presione 4 - Enterprise                        ::
	echo   :: Presione 5 - Volver al Menu anterior           ::	
	echo   ::::::::::::::::::::::::::::::::::::::::::::::::::::
	choice /c 12345 >nul
	SET VERSIONWIN=%ERRORLEVEL%
	IF %VERSIONWIN% EQU 1 (
		goto :MENUHOME
	)
	IF %VERSIONWIN% EQU 2 (
		goto :MENUEDUCATION
	)
	IF %VERSIONWIN% EQU 3 (
		goto :MENUPRO
	)
	IF %VERSIONWIN% EQU 4 (
		goto :MENUENTERPRISE
	)
	IF %VERSIONWIN% EQU 5 (
		goto :Process
	)
:MENUSERVER
	cls>nul
	cls
	echo   ::::::::::::::::::::::::::::::::::::::::::::::::::::
	echo   :: Especificar el servidor deseado                ::
	echo   :: Sub Menu                                       ::
	echo   ::::::::::::::::::::::::::::::::::::::::::::::::::::
	echo   :: Presione 1 - kms.digiboy.ir                    ::
	echo   :: Presione 2 - kms.msguides.com                  ::
	echo   :: Presione 3 - Volver al Menu anterior           ::		
	echo   ::::::::::::::::::::::::::::::::::::::::::::::::::::
	choice /c 123 >nul
	SET SERVID=%ERRORLEVEL%
	IF %SERVID% EQU 1 (
	Echo Procederemos a introducir el servidor kms.digiboy.ir.
	pause
	slmgr /skms kms.digiboy.ir
	pause
	goto :Process
		)
	IF %SERVID% EQU 2 (
	Echo Procederemos a introducir el servidor kms.msguides.com.
	pause
	slmgr /skms kms.msguides.com
	pause
	goto :Process
	)
	IF %SERVID% EQU 3 (
	goto :Process
	)
:MENUHOME
	cls>nul
	cls
	echo   ::::::::::::::::::::::::::::::::::::::::::::::::::::
	echo   :: Especificar cual edicion Home                  ::
	echo   :: Sub Menu                                       ::
	echo   ::::::::::::::::::::::::::::::::::::::::::::::::::::
	echo   :: Presione 1 - Home                              ::
	echo   :: Presione 2 - Home N                            ::
	echo   :: Presione 3 - Home Single Language              ::
	echo   :: Presione 4 - Volver al Menu anterior           ::	
	echo   ::::::::::::::::::::::::::::::::::::::::::::::::::::
	choice /c 1234 >nul
	SET HOME=%ERRORLEVEL%
	IF %HOME% EQU 1 (
	Echo Esta edicion no necesita clave, por favor proceda con la opcion 2 del menu principal.
	pause
	goto :Process
	)
	IF %HOME% EQU 2 (
	Echo Esta edicion no necesita clave, por favor proceda con la opcion 2 del menu principal.
	pause
	goto :Process
	)
	IF %HOME% EQU 3 (
	Echo Esta edicion no necesita clave, por favor proceda con la opcion 2 del menu principal.
	pause
	goto :Process
	)
	IF %HOME% EQU 4 (
	goto :VERMENU
		)
:MENUEDUCATION
	cls>nul
	cls
	echo   ::::::::::::::::::::::::::::::::::::::::::::::::::::
	echo   :: Especificar cual edicion Education             ::
	echo   :: Sub Menu                                       ::
	echo   ::::::::::::::::::::::::::::::::::::::::::::::::::::
	echo   :: Presione 1 - Education                         ::
	echo   :: Presione 2 - Education N                       ::
	echo   :: Presione 3 - Volver al Menu anterior           ::	
	echo   ::::::::::::::::::::::::::::::::::::::::::::::::::::
	choice /c 123 >nul
	SET EDU=%ERRORLEVEL%
	IF %EDU% EQU 1 (
	Echo Procederemos a introducir la clave de edicion Education.
	pause
	slmgr /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
	pause
	goto :Process
	)
	IF %EDU% EQU 2 (
	Echo Procederemos a introducir la clave de edicion Education N.
	pause
	slmgr /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
	pause
	goto :Process
	)
	IF %EDU% EQU 3 (
	goto :VERMENU
	)
:MENUPRO
	cls>nul
	cls
	echo   ::::::::::::::::::::::::::::::::::::::::::::::::::::
	echo   :: Especificar cual edicion Pro                   ::
	echo   :: Sub Menu                                       ::
	echo   ::::::::::::::::::::::::::::::::::::::::::::::::::::
	echo   :: Presione 1 - Pro                               ::
	echo   :: Presione 2 - Pro N                             ::
	echo   :: Presione 3 - Pro Education                     ::
	echo   :: Presione 4 - Pro Education N                   ::
	echo   :: Presione 5 - Pro para Workstations             ::
	echo   :: Presione 6 - Pro para Workstations N           ::
	echo   :: Presione 7 - Volver al Menu anterior           ::	
	echo   ::::::::::::::::::::::::::::::::::::::::::::::::::::
	choice /c 1234567 >nul
	SET PRO=%ERRORLEVEL%
	IF %PRO% EQU 1 (
	Echo Procederemos a introducir la clave de edicion Pro .
	pause
	slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
	pause
	goto :Process
	)
	IF %PRO% EQU 2 (
	Echo Procederemos a introducir la clave de edicion Pro N.
	pause
	slmgr /ipk MH37W-N47XK-V7XM9-C7227-GCQG9
	pause
	goto :Process
	)
	IF %PRO% EQU 3 (
	Echo Procederemos a introducir la clave de edicion Pro Education.
	pause
	slmgr /ipk 6TP4R-GNPTD-KYYHQ-7B7DP-J447Y
	pause
	goto :Process
	)
	IF %PRO% EQU 4 (
	Echo Procederemos a introducir la clave de edicion Pro Education N.
	pause
	slmgr /ipk YVWGF-BXNMC-HTQYQ-CPQ99-66QFC
	pause
	goto :Process
	)
	IF %PRO% EQU 5 (
	Echo Procederemos a introducir la clave de edicion Pro para Workstations.
	pause
	slmgr /ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
	pause
	goto :Process
	)
	IF %PRO% EQU 6 (
	Echo Procederemos a introducir la clave de edicion Pro para Workstations N.
	pause
	slmgr /ipk 9FNHH-K3HBT-3W4TD-6383H-6XYWF
	pause
	goto :Process
	)	
	IF %PRO% EQU 7 (
	goto :VERMENU
	)
:MENUENTERPRISE
	cls>nul
	cls
	echo   ::::::::::::::::::::::::::::::::::::::::::::::::::::
	echo   :: Especificar cual edicion Enterprise            ::
	echo   :: Sub Menu                                       ::
	echo   ::::::::::::::::::::::::::::::::::::::::::::::::::::
	echo   :: Presione 1 - Enterprise                        ::
	echo   :: Presione 2 - Enterprise N                      ::
	echo   :: Presione 3 - Enterprise G                      ::
	echo   :: Presione 4 - Enterprise G N                    ::
	echo   :: Presione 5 - Volver al Menu anterior           ::	
	echo   ::::::::::::::::::::::::::::::::::::::::::::::::::::
	choice /c 12345 >nul
	SET ENTERP=%ERRORLEVEL%
	IF %ENTERP% EQU 1 (
	Echo Procederemos a introducir la clave de edicion para Enterprise.
	pause
	slmgr /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
	pause
	goto :Process
	)
	IF %ENTERP% EQU 2 (
	Echo Procederemos a introducir la clave de edicion para Enterprise N.
	pause
	slmgr /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
	pause
	goto :Process
	)
	IF %ENTERP% EQU 3 (
	Echo Procederemos a introducir la clave de edicion para Enterprise G.
	pause
	slmgr /ipk YYVX9-NTFWV-6MDM3-9PT4T-4M68B
	pause
	goto :Process
	)
	IF %ENTERP% EQU 4 (
	Echo Procederemos a introducir la clave de edicion para Enterprise G N.
	pause
	slmgr /ipk 44RPN-FTY23-9VTTB-MP9BX-T84FV
	pause
	goto :Process
	)
	IF %ENTERP% EQU 5 (
	goto :VERMENU
	)
endlocal
