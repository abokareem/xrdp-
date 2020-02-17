sudo apt-get update

sudo apt-get install xrdp


sudo apt-get -y install xrdp

sudo nano /etc/xrdp/xrdp.ini

encrypt_level=high

sudo nano /etc/polkit-1/localauthority.conf.d/02-allow-colord.conf
polkit.addRule(function(action, subject) {
if ((action.id == “org.freedesktop.color-manager.create-device” || action.id == “org.freedesktop.color-manager.create-profile” || action.id == “org.freedesktop.color-manager.delete-device” || action.id == “org.freedesktop.color-manager.delete-profile” || action.id == “org.freedesktop.color-manager.modify-device” || action.id == “org.freedesktop.color-manager.modify-profile”) && subject.isInGroup(“{group}”))
{
return polkit.Result.YES;
}
});


sudo /etc/init.d/xrdp restart

sudo apt-get install xfce4

للدخول عبر سطح مكتب بعيد
root
password server
