sudo tee /usr/bin/runbrowser > /dev/null << 'EOF'
#!/bin/bash
# Read the browser command from config and run it on the first argument
browser_command=$(cat ~/.config/which-browser.txt)
"$browser_command" "$1"
EOF
sudo chmod +x /usr/bin/runbrowser

cd /home/gabib/Desktop/.icons/
wget https://fonts.gstatic.com/s/i/productlogos/calendar_2020q4/v13/192px.svg
mv 192px.svg calendar.svg
echo "runbrowser https://calendar.google.com/" >> /home/gabib/Desktop/.program/calendar.sh
echo "[Desktop Entry]
Name=Calendar
GenericName=
Comment=
Exec=/home/gabib/Desktop/.program/calendar.sh
Type=Application
Icon=/home/gabib/Desktop/.icons/calendar.svg
Terminal=false" >> /home/gabib/Desktop/Calendar.desktop

cd /home/gabib/Desktop/.icons/
wget https://i.ibb.co/gFT8MFJr/deepseek-1.png
mv deepseek-1.png deepseek.png
echo "runbrowser https://chat.deepseek.com/" >> /home/gabib/Desktop/.program/deepseek.sh
echo "[Desktop Entry]
Name=Deepseek
GenericName=
Comment=
Exec=/home/gabib/Desktop/.program/deepseek.sh
Type=Application
Icon=/home/gabib/Desktop/.icons/deepseek.png
Terminal=false" >> /home/gabib/Desktop/Deepseek.desktop

cd ~/Desktop/.icons/
wget https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Google_Drive_icon_%282020%29.svg/1024px-Google_Drive_icon_%282020%29.svg.png
mv 1024px-Google_Drive_icon_%282020%29.svg.png gdrive.png
echo "runbrowser https://drive.google.com/drive/u/0/home/" >> ~/Desktop/.program/gdrive.sh
echo "[Desktop Entry]
Name=Deepseek
GenericName=
Comment=
Exec=~/Desktop/.program/grdrive.sh
Type=Application
Icon=~/Desktop/.icons/gdrive.png
Terminal=false" >> ~/Desktop/Deepseek.desktop

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
rm -f google-chrome-stable_current_amd64.deb
echo "[Desktop Entry]
Name=Google Chrome
GenericName=
Comment=
Exec=google-chrome
Type=Application
Icon=google-chrome
Terminal=false" >> /home/gabib/Desktop/Chrome.desktop
echo 'google-chrome' >> '~/.config/which-browser.txt'

sudo apt install -y kate
echo "[Desktop Entry]
Name=Kate
GenericName=
Comment=
Exec=kate
Type=Application
Icon=kate
Terminal=false" >> ~/Desktop/Kate.desktop

sudo apt install -y kcalc
echo "[Desktop Entry]
Name=Calculator
GenericName=
Comment=
Exec=kcalc
Type=Application
Icon=kcalc
Terminal=false" >> ~Desktop/Calculator.desktop

wget https://github.com/hprobotic/Google-Sans-Font/raw/refs/heads/master/GoogleSans-Regular.ttf
sudo cp GoogleSans-Regular.ttf /usr/share/fonts/truetype/
sudo fc-cache -fv

mkdir ~/.config/lxqt-new
cd ~/.config/lxqt-new
wget https://github.com/codemanticism/lxqt_config/archive/refs/heads/main.zip
unzip main.zip
cd ~/.config
rm -rf lxqt
mv lxqt-new lxqt

sudo apt install -y wine
echo "[Desktop Entry]
Name=Wine
GenericName=
Comment=
Exec=wine
Type=Application
Icon=wine
Terminal=false" >> ~/Desktop/Wine.desktop

sudo apt install -y curl ca-certificates -y
curl -s https://repo.waydro.id | sudo bash
sudo apt install -y waydroid -y
echo "[Desktop Entry]
Name=Waydroid
GenericName=
Comment=
Exec=waydroid
Type=Application
Icon=waydroid
Terminal=false" >> ~/Desktop/Waydroid.desktop

echo "[Desktop Entry]
Name=Terminal
GenericName=
Comment=
Exec=qterminal
Type=Application
Icon=qterminal
Terminal=false" >> ~/Desktop/Qterminal.desktop
sudo apt install -y steam
echo "[Desktop Entry]
Name=Steam
GenericName=
Comment=
Exec=steam
Type=Application
Icon=steam
Terminal=false" >> ~/Desktop/Steam.desktop

cd /home/gabib/Desktop/.icons/
wget https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Microsoft_Excel_2013-2019_logo.svg/587px-Microsoft_Excel_2013-2019_logo.svg.png
mv 587px-Microsoft_Excel_2013-2019_logo.svg.png excel.png
echo "runbrowser https://excel.cloud.microsoft/pt-br/" >> /home/gabib/Desktop/.program/excel.sh
echo "[Desktop Entry]
Name=Excel
GenericName=
Comment=
Exec=/home/gabib/Desktop/.program/excel.sh
Type=Application
Icon=/home/gabib/Desktop/.icons/excel.png
Terminal=false" >> /home/gabib/Desktop/Excel.desktop

cd /home/gabib/Desktop/.icons/
wget https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Microsoft_Word_2013-2019_logo.svg/587px-Microsoft_Word_2013-2019_logo.svg.png
mv https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Microsoft_Word_2013-2019_logo.svg/587px-Microsoft_Word_2013-2019_logo.svg.png word.png
echo "runbrowser https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Microsoft_Word_2013-2019_logo.svg/587px-Microsoft_Word_2013-2019_logo.svg.png" >> /home/gabib/Desktop/.program/word.sh
echo "[Desktop Entry]
Name=Word
GenericName=
Comment=
Exec=/home/gabib/Desktop/.program/word.sh
Type=Application
Icon=/home/gabib/Desktop/.icons/word.png
Terminal=false" >> ~/Desktop/Word.desktop

cd /home/gabib/Desktop/.icons/
wget https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Microsoft_Word_2013-2019_logo.svg/587px-Microsoft_Word_2013-2019_logo.svg.png
mv https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Microsoft_Word_2013-2019_logo.svg/587px-Microsoft_Word_2013-2019_logo.svg.png word.png
echo "runbrowser https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Microsoft_Word_2013-2019_logo.svg/587px-Microsoft_Word_2013-2019_logo.svg.png" >> /home/gabib/Desktop/.program/word.sh
echo "[Desktop Entry]
Name=Word
GenericName=
Comment=
Exec=/home/gabib/Desktop/.program/word.sh
Type=Application
Icon=/home/gabib/Desktop/.icons/word.png
Terminal=false" >> ~/Desktop/Word.desktop

cp -a ~/Desktop ~/.backup
chmod -R u-w ~/.backup

systemctl disable firstboot.service
rm -f /etc/systemd/system/firstboot.service
rm -f /usr/local/bin/firstboot.sh
