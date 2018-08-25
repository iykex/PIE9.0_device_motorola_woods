#                                       Device Tree for Motorola E4 (9.0 PIE , 3.18.35+)

# W.I P

The Moto E4 (codenamed _"woods"_) is a mid-range smartphone from Motorola.
![Moto E4](https://github.com/dev4wds/local_manifest/raw/los-14.1/device/motorola-moto-e4.jpg "Moto E4")

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Quad-core 1.3 GHz Cortex-A53
Chipset | MediaTek MT6737
GPU     | Mali-T720
Memory  | 2GB RAM
Shipped Android Version | 7.1
Storage | 16GB
MicroSD | Up to 64GB
Battery | Li-Pol 2800mAh battery
Display | 720 x 1280 pixels, 5.0 inches
Camera  | Main 8MP / Front 5MP, autofocus, LED flash

Copyright 2017 - The LineageOS Project.
Thanks to olegsvs, danielhk, Zormax, darklord4822, xcore995, SRT.

### Working:
- [ ] Wifi
- [ ] Sound
- [ ] LiveDisplay
- [ ] Ril
- [ ] Codecs
- [ ] Camera, flashlight
- [ ] Radio
- [ ] Fingerprint
- [ ] Bluetooth
- [ ] Sensors
- [ ] Hotspot
- ...


### NOTE :

_Before you use do the following, keep in mind that you do at your own risk !_


Apply these manual edit to Android 9.0 source
before building the rom

with nano editor, edit these files by Commenting the line :

in ( system/sepolicy/public )
 `domain.te`
 [ line number : `292`  ]



example :

Comment line : `292`  with `#` infront.

`nano +292 system/sepolicy/public/domain.te`


:Sensors HAL (DO ONLY WHEN REQUIRED!)

when building with : `PRODUCT_PACKAGES += android.hardware.sensors@1.0-service` ,it's advisable to locate the `Sensors.cpp` $location :`hardware/interfaces/sensors/1.0/default/Sensors.cpp` and modify it  from`CHECK_GE(getHalDeviceVersion(), SENSORS_DEVICE_API_VERSION_1_3);`  to `CHECK_GE(getHalDeviceVersion(), SENSORS_DEVICE_API_VERSION_1_0);`

`nano +98 hardware/interfaces/sensors/1.0/default/Sensors.cpp`

see line here : https://github.com/LineageOS/android_hardware_interfaces/blob/621821f3191754678125a44a1f9b4dbd69f76541/sensors/1.0/default/Sensors.cpp#L98

- -
