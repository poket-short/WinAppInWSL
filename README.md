# WinAppInWSL
Create the WLS desktop application of a Windows application

Here's an example with Word

### Step 1: Find your executable 

In Windows, Word path is C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE

In WSL C:\ is /mnt/c/ so the path is "/mnt/c/Program\ Files/Microsoft\ Office/root/Office16/WINWORD.EXE"

### Step 2: byPassApp.sh

Set byPassApp.sh somewhere on your WSL/Windows.
The goal of this file is to use the executable with relative path of argument.
There's seem to be some translation on /mnt/ so don't work with absolute path. (if you have some tips you're welcome)

### Step 3: Create the .desktop file

Create /usr/share/applications/word.desktop
```
Version=1.0
Name=Word
GenericName=Word processor
Comment=Microsoft Word
Exec=sh -c "YOUR/ABSOLUTE/WSL/PATH/OF/byPassApp.sh "/mnt/c/ so /mnt/c/Program\ Files/Microsoft\ Office/root/Office16/WINWORD.EXE" %U"
TryExec=WINWORD.EXE
Icon=/YOUR/ABSOLUTE/WSL/PATH/OF/YOUR/WORD/ICON
Terminal=false
Type=Application
Categories=Office;WordProcessor;
```

So now you can use your Windows application directly on Linux (and make it as default application to file manager)

![Imgur](https://i.imgur.com/044pfRy.png)
![Imgur](https://i.imgur.com/LHPIw0k.png)
