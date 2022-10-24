# Miniconda Installer for Linux

A series of sripts that automatically download and installs Miniconda with several image processing libraries on Linux.

## Installation

1. Execute installer.sh
2. Installing Packages
    1. Execute packageInstallerGPU.sh if you have a NVidia GPU.
    2. Execute packageInstallerCPU.sh otherwise.
3. We're done! 

Now you should have an enviroment called env_pdi with Numpy, Matplotlib, Scikit-image, Open CV, SKlearn and Tensorflow with GPU support.

## FAQ

### I can't execute installer.sh

- You should add permission to execute installer.sh. The easiest way to do this is by opening your terminal in the folder that installer.sh is and typing `chmod +x installer.sh`
- Alternatively, you could use the GUI to mark the file as executable. For more information read [this thread](https://askubuntu.com/questions/229589/how-to-make-a-file-e-g-a-sh-script-executable-so-it-can-be-run-from-a-termi)
