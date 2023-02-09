# Linux notes

This document contains instructions/notes on how to install Linux packages.
## TODO - LIST
Load and ftp
Copy using ssh
Load with menu


## 1. After install in Linux systems
In Linux systems you can install packages using Bash scripts, tested in Ubuntu 20.04. A super fast script for impatient people, copy and paste it!!!

### 1.1 Ubuntu 18.04 (TO COMPLETE)


### 1.2 Ubuntu 20.04 (TO COMPLETE)

Remove old packages and make cleaning of the system. 
```
sudo apt-get update
sudo apt-get autoremove
sudo apt-get autoclean
sudo ubuntu-drivers autoinstall
```

Install network tools (08/02/2023)
```
sudo apt-get install -y net-tools
sudo apt-get install -y openssh-server
sudo systemctl enable ssh --now
sudo systemctl start ssh
#sudo apt-get install -y wireshark-qt
#sudo apt-get install -y hping3
#sudo apt-get install -y fping
```

Install common apps
```
sudo apt-get install mlocate
sudo apt-get install -y mlocate
sudo apt-get install -y locate
sudo apt -y install -y curl
sudo apt -y install -y git
sudo apt-get install -y ffmpeg
sudo apt-get install -y dialog
```

Install essential tools that are not part of package.
```
sudo apt-get install -y build-essential
sudo apt-get install -y cmake
sudo apt-get install -y libgtk2.0-dev
sudo apt-get install -y libusb-1.0
sudo apt install -y libssl-dev
sudo apt install -y libffi-dev
```

## Development environments

## C/C++ development
sudo apt install -y gcc

## Python environments
```
sudo apt-get install -y python3-dev
sudo apt-get install -y python3.8-venv
sudo apt-get install -y python3-pip
sudo apt-get install -y python-tk
```

In Linux systems execute as follows:

Create and activate environment.
```
python3 -m venv ./server_rest_api-venv
source ./server_rest_api-venv/bin/activate
pip install --upgrade pip
```

Install requirements.
```
pip install -r requirements_linux.txt
```

Save requirements.
```
pip freeze > requirements_my.txt
```

For Windows systems follow these steps from command line CMD
```
%userprofile%"\AppData\Local\Programs\Python\Python38\python.exe" -m venv .\remote_client_generic-venv\Scripts\activate.bat
pip install --upgrade pip
pip install -r requirements_win.txt
```

clean old repositories to delete sources lists
```
/etc/apt/sources.list.d
```

## CUDA support
Deleting any NVIDIA/CUDA packages you may already have installed
```
sudo apt remove --autoremove nvidia-cuda-toolkit
sudo apt remove --autoremove nvidia-*
sudo apt-get purge nvidia*
sudo rm /etc/apt/sources.list.d/cuda*
sudo rm -rf /usr/local/cuda*
```

Link to download NVIDIA CUDA drivers [here](https://developer.nvidia.com/cuda-11-7-0-download-archive)
Linux -- Ubuntu -- 20.04
```
mkdir cuda_driver
cd cuda_driver
sudo apt-get install nvidia-driver-515
wget https://developer.download.nvidia.com/compute/cuda/11.7.0/local_installers/cuda_11.7.0_515.43.04_linux.run
sudo sh cuda_11.7.0_515.43.04_linux.run
```





### Conflicts with CUDA installation
https://askubuntu.com/questions/1392998/cuda-installation-uncomprehensible-conflicts
https://forums.developer.nvidia.com/t/cuda-installation-problem-for-nvidia-a40-linux-x86-64-ubuntu-20-04/219149
https://linuxconfig.org/how-to-install-the-nvidia-drivers-on-ubuntu-20-04-focal-fossa-linux



### CUDA toolkit
sudo apt install nvidia-cuda-toolkit

| Command  | Description | Example |
|---------------------------|---------------------------|-------------------------|
| nvidia-smi | .  | ```nvidia-smi ``` |
| nvcc |   | ``` nvcc --version ``` |

Checking in Python the use of GPU
```
import torch
device_selected = torch.device('cuda') if torch.cuda.is_available() else torch.device('cpu')
```


## Authorship
Please contact author to report bugs juancarlos.miranda@udl.cat

## Citation
If you find this code useful, please consider citing:
[https://github.com/juancarlosmiranda/shell_scripts_notes/](https://github.com/juancarlosmiranda/shell_scripts_notes/).