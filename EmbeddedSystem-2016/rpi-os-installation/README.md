## Installing OS

Image rpi bisa di dapat di-[sini](https://www.raspberrypi.org/downloads/) dan cara installnya bisa dilihat di-[sini](https://www.raspberrypi.org/documentation/installation/installing-images/). Oya buat mirror repo yang ada di kambing cuma buat raspbian aja buat saat ini. 

Buat yang mau coba [archlinuxarm](http://archlinuxarm.org/) pilihannya dibedain buat yang rpi biasa dan rpi 2. Buat rpi biasa dia pakai ARMv6 sedangkan rpi 2 pakai ARMv7.

Untuk rpi 1, setelah membuat 2 partisi yaitu boot dan root pada SD card, bila lakukan ini:

```bash
mkfs.vfat /dev/sdX1
mkdir boot
mount /dev/sdX1 boot
mkfs.ext4 /dev/sdX2
mkdir root
mount /dev/sdX2 root
wget http://archlinuxarm.org/os/ArchLinuxARM-rpi-latest.tar.gz
bsdtar -xpf ArchLinuxARM-rpi-latest.tar.gz -C root
sync
mv root/boot/* boot
umount boot root
```

Detilnya bisa dilihat di-[sini](http://archlinuxarm.org/platforms/armv6/raspberry-pi) sedangkan rpi 2, bisa dilihat di-[sini](http://archlinuxarm.org/platforms/armv7/broadcom/raspberry-pi-2).

## Mirror Repo Lokal

Mirror repo lokal raspbian udah ada di [kambing](http://kambing.ui.ac.id). Seandainya baru install dan belum ada dongle wifi dan pakai LAN kampus bisa pakai repo ini.


