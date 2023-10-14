# ArchInstall

## Change keyboard layout
loadkeys uk

## Check internet connection
`ping gnu.org`

## Synchronise clock
`timedatectl set-ntp true`

## Create partitions
lsblk
cfdisk /dev/sda
- Select dos
- Create a boot partition
  Give it 128M and make it bootable
- Create root partition
- Write changes and quit

## Format the partitions
`mkfs.ext4 /dev/sda1`
`mkfs.ext4 /dev/sda2`

## Mount partitions
`mount /dev/sda2 /mnt`
`mkdir /mnt/boot`
`mount /dev/sda1 /mnt/boot`

`lsblk` to see the partitions and where they are mounted

## Install kernel
`pacstrap /mnt base base-devel linux linux-firmware vim`

## Create fstab file
`genfstab -U /mnt >> /mnt/etc/fstab`

## Change root into the Arch installation
`arch-chroot /mnt/bin/bash`

## 
`systemctl enable NetworkManager`

## Configure grub
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

## Set password for root
passwd

## Set locale
vim /etc/locale.gen
uncomment en_GB
`locale-gen`

`vim /etc/locale.conf`
LANG=en-GB.UTF-8

## Set hostname
`vim /etc/hostname`
type arch

## Set timezone
ln -sf /usr/share/zoneinfo/GB /etc/localtime

## Finish installation
exit chroot 
umount -R /mnt
reboot

## Run your custom install script - install.sh
TODO see if git is installed or not
bash install.sh

