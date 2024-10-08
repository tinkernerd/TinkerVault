#Place this in '/etc/xdg/lxsession/LXDE-pi' named 'autostart' without file extension (basic file not .txt)

@lxpanel --profile LXDE-pi
@pcmanfm --desktop --profile LXDE-pi
@xscreensaver -no-splash

@unclutter -idle 0

@chromium-browser --new-window --user-data-dir=/tmp/browser-2 --window-position="1920,0" --start-fullscreen --kiosk --autoplay-policy=no-user-gesture-required --incognito --noerrdialogs --disable-translate --disable-infobars  https://docs.google.com/presentation/d/e/2PACX-1vSXNiUZ2uTVt7ywnxMsvad9Mk03BnqMBSwLjhx1fskVajsx69FcrIHLkOPgixrQ-gNGfZkU-k9lZ93H/pub?start=false&loop=true&delayms=60000
python3 /home/pi/Desktop/FinalPowerpointClicker.py &
