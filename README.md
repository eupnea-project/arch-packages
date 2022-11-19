# arch-packages

Pre-packaged cgpt + vboot packages for arch linux

# Explanation

Why does this repo exist?

Unfortunately the only way to install vboot and cgpt on arch is through the AUR, which needs to be run as
non-root. Most of the Eupnea scripts need to run as root, therefore makepkg was interfering with the scripts and making
them more complex due to the need to run makepkg as non-root.

Then one day the aur repo broke and since then the Eupnea Project packages their own arch cgpt and vboot
packages, in order to be independent of the AUR.
