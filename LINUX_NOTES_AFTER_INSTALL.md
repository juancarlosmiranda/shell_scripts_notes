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

### 1.3 Ubuntu 22.04 (TO COMPLETE)

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
#sudo apt-get install wireshark-qt
#sudo apt-get install -y hping3
#sudo apt-get install -y fping
```

Install common apps
```
sudo apt-get install mlocate
sudo apt-get install locate
sudo apt -y install curl
sudo apt -y install git
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


## Python environments
```
sudo apt install -y python3-dev
sudo apt install -y python3-pip
sudo apt-get install -y python-tk
```

--python3 -m pip install python-venv--
--pip3 install python-venv--

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


## Authorship
Please contact author to report bugs juancarlos.miranda@udl.cat

## Citation
If you find this code useful, please consider citing:
[https://github.com/juancarlosmiranda/shell_scripts_notes/](https://github.com/juancarlosmiranda/shell_scripts_notes/).