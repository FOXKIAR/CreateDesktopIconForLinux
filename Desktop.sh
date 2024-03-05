echo "Please enter real file name. (idea.desktop)"
echo "请输入真实的文件名（如：idea.desktop）"
read fileName

touch ./${fileName}
desktopFilePath="./${fileName}"


echo "[Desktop Entry]" >> ${desktopFilePath}
echo "Type=Application" >> ${desktopFilePath}
echo "Terminal=false" >> ${desktopFilePath}
echo "Version=1.0" >> ${desktopFilePath}
echo "Encoding=UTF-8" >> ${desktopFilePath}

echo "Please enter start script path. (/opt/idea/idea.sh)"
echo "请输入运行脚本路径（如：/opt/idea/idea.sh）"
read shellPath

echo "Exec=${shellPath}" >> ${desktopFilePath}

echo "Please enter icon file path. (/opt/idea/idea.png)"
echo "请输入图标文件路径（如：/opt/idea/idea.png）"
read iconPath

echo "Icon=${iconPath}" >> ${desktopFilePath}

echo "Please enter you want display to desktop file name. (IDEA)"
echo "请输入你想在桌面显示的文件名（如：IDEA）"
read name

echo "Name=${name}" >> ${desktopFilePath}