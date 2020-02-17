sudo apt-get update

sudo apt-get install xrdp


sudo apt-get -y install xrdp

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

sudo apt-get install xfce4

للدخول عبر سطح مكتب بعيد
root
password server

شرح
http://c-nergy.be/blog/?p=9285
