@echo off
color F0
title The Kingdom of Kovalor
type Titlescreen.txt
pause >nul
goto MainMenu

:MainMenu
cls
type mainmenu.txt
echo.
echo Type an option and press Enter.
Set /p menu=
if "%menu%" equ "newgame" goto NewGame
if %menu% equ credits goto Credits
if "%menu%" equ "loadgame" goto LGame
echo Try again.
if %menu% neq new game goto MainMenu
if %menu% neq credits goto MainMenu
if %menu% neq load game goto MainMenu
pause >nul

:Credits
cls
echo Made by XXXXXXXXX
echo.
echo.
echo Press any key to return to Main Menu.
pause >nul
goto MainMenu

:NewGame
cls
echo What is your name, adventurer?
echo.
Set /p name=
echo.
goto Stats

:SaveGame
@echo @ECHO OFF                 > save%name%.bat
@echo SET name=%name%           >> save%name%.bat
@echo SET sex=%sex%             >> save%name%.bat
@echo SET playerHP=%playerHP%   >> save%name%.bat
@echo SET playerATK=%playerATK% >> save%name%.bat
@echo SET playerDEF=%playerDEF% >> save%name%.bat
@echo SET playerLVL=%playerLVL% >> save%name%.bat
echo.
echo Game saved correctly.
echo Press any key to continue.
pause >n
exit

:LGame
cls
echo.
echo What's your name?
echo.
Set /p sname=
start cmd /c "name.bat"
echo Load successful.
pause >nul
goto option0

:Stats
cls
set /a playerHP = 25
set /a playerATK = 5
set /a playerDEF = 0
set /a playerLVL = 1
echo These are your stats.
echo Health, when it depletes, you die.                       %playerHP%
echo Attack. The ammount of damage you deal.                  %playerATK%
echo Defense. Armor which reduces the damage you take.        %playerDEF%
echo Level dictates the experience you have as an adventurer. %playerLVL%
echo You can improve these as you go.
echo For now you have no weapons nor armor.
pause >nul
goto StartAdventure


:StartAdventure
cls
echo Kovalor wasn't always like this. There was a time where one could
echo walk around town without being disturbed. The so-called king has
echo placed himself on the throne with the help of twisted creatures.
echo.
echo TUTORIAL *Press Space Bar to continue narrative.*
pause >nul
echo.
echo There have been talks about a coup or silent assasinations but 
echo nothing has been proven to be but a rumor.
echo Nonetheless, the King must fall.
pause >nul
echo.
echo %name% got out of bed that morning with a headache born from heavy
echo drinking the previous night. He got dressed and left for the tool
echo shed outside his house. The cold early-spring air snipping at his 
echo bare arms. His best hoe laid on the floor.
pause >nul
goto PickUpHoe

:StartAdventureWoman
cls
echo Kovalor wasn't always like this. There was a time where one could
echo walk around town without being disturbed. The so-called king has
echo placed himself on the throne with the help of twisted creatures.
echo.
echo TUTORIAL *Press Space Bar to continue narrative.*
pause >nul
echo.
echo There have been talks about a coup or silent assasinations but 
echo nothing has been proven to be but a rumor.
echo Nonetheless, the King must fall.
pause >nul
echo.
echo %name% got out of bed that morning with a headache born from heavy
echo drinking the previous night. She got dressed and left for the tool
echo shed outside her house. The cold early-spring air snipping at her 
echo bare arms. Her best hoe laid on the floor.
pause >nul
goto PickUpHoe

:PickUpHoe
echo.
echo TUTORIAL *Type take followed by an object and press enter in order 
echo to pick it up and add it to your inventory.*
echo TUTORIAL *Type take hoe followed by Enter.*
set /p action0=
if "%action0%" equ "take hoe" goto SaveTutorial else goto PickUpHoe
echo TUTORIAL *Type take hoe followed by Enter.*

:SaveTutorial
echo.
echo *Picked up hoe.*
pause >nul
echo TUTORIAL *You can save progress whenever you can type by typing Save Game.*
echo *Try saving now.*
Set /p action2=
if "%action2%" equ "Save Game" goto SaveGame
if "%action2%" neq "Save Game" goto SaveTutorial
goto mainmenu

:option0
echo *Where would you like to go?*
type optionlist0.txt

