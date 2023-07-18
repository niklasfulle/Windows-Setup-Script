# Driver and tools for the hardware

# install the drivers

winget install -e --id Nvidia.GeForceExperience

cd C:\Users\Niklas\Downloads

# install Samsung Magician

curl --location --request GET 'https://download.semiconductor.samsung.com/resources/software-resources/Samsung_Magician_Installer_Official_7.3.0.1100.zip' --output Samsung_Magician_Installer.zip

Expand-Archive -LiteralPath 'C:\Users\Niklas\Downloads\Samsung_Magician_Installer.zip' -DestinationPath C:\Users\Niklas\Downloads

C:\Users\Niklas\Downloads\Samsung_Magician_installer.exe | Invoke-Expression

# install iCUE

curl --location --request GET 'https://downloads.corsair.com/Files/icue/Install-iCUE.exe' --output Install-iCUE.exe

C:\Users\Niklas\Downloads\Install-iCUE.exe | Invoke-Expression

# install Logitech G HUB

winget install -e --id Logitech.GHUB


# install driver checker

cd C:\Users\Niklas\Downloads

curl --location --request GET 'https://www.drivereasy.com/DriverEasy_Setup.exe' --output DriverEasy_Setup.exe

C:\Users\Niklas\Downloads\DriverEasy_Setup.exe | Invoke-Expression

# install the software

winget install -e --id CPUID.CPU-Z

winget install -e --id REALiX.HWiNFO

winget install -e --id CPUID.HWMonitor

# install wsl 2



