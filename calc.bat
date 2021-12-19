::Batch Calculator by Thanasis09
@echo off
color 90
cls
title Batch Calculator
:info
echo info: 
echo       by Thanasis Lanaras
echo        All right reserved, 2021
echo        Copyright Owners: Thanasis Lanaras,
echo                          Thanblog Sites Inc.
    
echo       You are allowed to use that program for personal uses and public uses,
echo       but you are not allowed to copy that program.
echo       you can find the owner of the program, Thanasis Lanaras on
echo       TikTok (@thanasislanaras), On Twitter (@TLanaras), on Youtube (Thanasis09gr) and on Instagram (@thanasis09gr)
echo       Feel free to message about adding something.


echo ---------------------------------------------------------------

echo                     BATCH CALCULATOR

echo ---------------------------------------------------------------

echo Enter Number

echo 1 = + (plus)
echo 2 = - (minus)
echo 3 = * (multiply)
echo 4 = / (divide) 
echo 5 = sqrt (square root), (Doesn't work on all numbers).
echo 6 = help

set /p an="Enter Number>"

if %an% == 1 goto add
if %an% == 2 goto subtract
if %an% == 3 goto multiply
if %an% == 4 goto divide
if %an% == 5 goto sqrt
if %an% == 6 goto help


:add

echo --------------------------------------------

echo                Addition

echo --------------------------------------------

set /p a="Enter Aditioner 1:>"
set /p b="Enter Aditioner 2:>"

set /a c=a+b

echo -------------------------------------------

echo                  Sum

echo -------------------------------------------

echo %a%+%b%=%c%



pause 
cls
goto info

:subtract

echo ------------------------------------------

echo             Subtraction

echo ------------------------------------------

set /p a="Add Decreasor:>"
set /p b="Add Subtrahend:>"

set /a c=a-b

echo ------------------------------------------

echo           Difference

echo ------------------------------------------

echo %a%-%b%=%c%


pause
cls 
goto info

:multiply

echo --------------------------------------------

echo            Multiplication

echo --------------------------------------------


set /p a="Number 1:>"
set /p b="Number 2:>"


set /a c=a*b



echo --------------------------------------------

echo                Product

echo --------------------------------------------


echo %a%*%b%=%c%




pause
cls
goto info


:divide

echo --------------------------------------------

echo                Division 

echo --------------------------------------------


set /p a="Add Divisible:>"
set /p b="Add Divisor:>"

echo --------------------------------------------

echo                Quotient

echo --------------------------------------------


echo %a%/%b%=%c%



pause
cls
goto info


:sqrt
echo --------------------------------------------

echo                Square Root

echo --------------------------------------------
setlocal enabledelayedexpansion
set count=0
set /p dend=Enter Number:>
set num=%dend%
for /l %%i in (%dend%, -1, 1) do (
 set /a sqr=%%i*%%i
 if !sqr! leq %dend% (
  set digit=%%i.
   set root=%%i
  goto out
 )
)

:out
 call set /a count=%%count%%+1
 if %count% GTR 5 goto next
 set /a dend=(%dend%-%sqr%)*100
 set /a div=%root%*2
 for /l %%i in (9,-1,0) do (
  set /a sqr=%div%%%i*%%i
  if !sqr! leq %dend% (
   set root=%root%%%i
   goto out
  )
 )
 
:next 
 set root=%root:~-5%
 if %dend% neq 0 set digit=%digit%%root%
echo --------------------------------------------

echo                Result

echo --------------------------------------------



echo Square Root of %num% is %digit%



pause
cls
goto info

:help 


echo --------------------------------------------

echo                Help

echo --------------------------------------------



echo Enter for what you want help:


echo + = Addition
echo - = Subtraction
echo * = Multiplication
echo / = Division
echo sqrt = Square Root
echo exit = exit help




set /p sym="Enter Symbol:>"

if %sym% == + goto sin
if %sym% == - goto mion
if %sym% == * goto epi
if %sym% == / goto dia
if %sym% == sqrt goto riza


 :exit
  goto info

 :sin
  echo --------------------------------------------

  echo                Help Addition

  echo --------------------------------------------
  

  echo Adition: Adds 1 number to another, (a+b=c)
  echo a and b are named Aditioners and c is named Sum

  pause
  cls
  goto help

 :mion
  echo --------------------------------------------

  echo                Help Subtraction

  echo --------------------------------------------

  echo Subtraction: It removes from a number (a) a number (b).
  echo the number a is called Decreasor or Subtractor and number b is called Subtrahend. The result is called Difference. (a-b=c)


  pause
  cls 
  goto help

 :epi
  
  echo --------------------------------------------

  echo                Help Multiplication

  echo --------------------------------------------

  echo Multiplication: Multiplies a number (a) with a number (b)
  echo number a and b are called multiplicators and the result is called Product. (a*b=c)

  pause
  cls
  goto help

 :dia
  echo --------------------------------------------

  echo                Help Division

  echo --------------------------------------------

  echo Division: Divides a number (a) into number (b)
  echo Number a is called Divisible and number b is called Divisor. the result is called Quotient. (a/b=c)
  

  pause
  cls
  goto help

 :riza

  echo --------------------------------------------

  echo                Help Square Root

  echo --------------------------------------------

  echo  a square root of a number a is a number y such that y^2 is equal to a, In other words
  echo a number y whose square is x. (y*y)

  pause
  cls
  goto help


