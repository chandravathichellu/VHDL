@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto d5705aad631443f6a769bbb76f99ce9f -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot SYNUDTEST_behav xil_defaultlib.SYNUDTEST -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
