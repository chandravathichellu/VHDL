@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 27dfe66923dd43b0a40f38d02c13655f -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot ALUTESTM_behav xil_defaultlib.ALUTESTM -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
