@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 6a65218db4854e76bf0b07733e608953 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot USTEST_behav xil_defaultlib.USTEST -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
