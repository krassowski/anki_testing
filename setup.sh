sudo apt-get update
sudo apt-get install portaudio19-dev xvfb libqt5x11extras5
pip install pyqt5==5.14 PyQtWebEngine==5.14 # 5.15 has an issue where the wheel module is not getting installed properly (people suggest this may require a pip upgrade)
start-stop-daemon --start --pidfile ~/xvfb.pid --make-pidfile --background --exec /usr/bin/Xvfb -- :99 -screen 0 1024x768x24 -ac +extension GLX +render -noreset
export DISPLAY=:99
if [ -e "install_anki.sh" ]
then
    source install_anki.sh
else
    source anki_testing/install_anki.sh
fi