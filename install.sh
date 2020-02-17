sudo apt update
sudo apt install xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils
sudo apt install xrdp

ضف فى هذا المسار
/etc/xrdp/xrdp.ini
هذا السطر
exec startxfce4 

احفظ وطبق هذا الامر
sudo systemctl restart xrdp






sudo nano /etc/xrdp/xrdp.ini

encrypt_level=high

انشى ملف فى هذا المسار
sudo nano /etc/polkit-1/localauthority.conf.d/02-allow-colord.conf
انسخ بداخله
polkit.addRule(function(action, subject) {
if ((action.id == “org.freedesktop.color-manager.create-device” || action.id == “org.freedesktop.color-manager.create-profile” || action.id == “org.freedesktop.color-manager.delete-device” || action.id == “org.freedesktop.color-manager.delete-profile” || action.id == “org.freedesktop.color-manager.modify-device” || action.id == “org.freedesktop.color-manager.modify-profile”) && subject.isInGroup(“{group}”))
{
return polkit.Result.YES;
}
});

قم بعمل ريستارت
sudo /etc/init.d/xrdp restart


للدخول عبر سطح مكتب بعيد
root
password server

شرح
http://c-nergy.be/blog/?p=9285
