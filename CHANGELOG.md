# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

- Added groundwork for hlog curses-based logger
- Added groundwork for TRlog contest logger
- Updated copyright year to 2023

## [3.1 32-bit] - 2022-10-02

### Changed

- Base image: Raspbian OS Buster September 2022 (Full release)
- Now include all four pre-defined sizes of HamClock
  (HamClock now has its own submenu)
- Add HAMRS portable logger
- Add Wireguard VPN
- Add MSHV digital communications app
- Install JTDX from source code now
- Updated D-Rats to John and Maurizio version
- Fix HamPC About Dialog Support URL
- A bunch of minor bugfixes

## [3.0.1b1] - 2022-08-18

### Added

Desktop Launcher for NOAA-APT
Add support for Xubuntu 22 for HamPC

### Changed

- Updated License
- Change hampi to pi user
- Update GridTracker for Xubuntu 22 (Jammy) for HamPC
- Update GQRX for Xubuntu 22 (Jammy) for HamPC
- Update Hamlib dependencies for Xubuntu 22 (Jammy) for HamPC
- acfax is missing from Xubuntu 22 (Jammy) for HamPC
- Update QDMR dependencies for Xubuntu 22 (Jammy) for HamPC
- Update build date for Xubuntu 22 (Jammy) for HamPC

### Removed

- flxmlrpc for now (Contacting Developer)

### Fixed

- Fix Bullseye compatibility
- Prevent missing Python2 dependencies from getting installed on Xubuntu
- Broken path to country-file download

## [3.0] - 2022-03-29

**Add HamPi support for 64-bit ARM**
**Add HamPC support for Xubuntu Impish**

### Added

- Add IQ Receiver panadapter software: F4HTBPanadapter
- Add PiHPSDR application
- Add NOAA Apt Image Decoder
- Add Meteor Decoder
- Add "About HamPi" menu item
- Added Python module "watchdog"

### Changed

- Update WSJT-X
- Update Gridtracker download URL (again)
- Update Radioexplorer database version
- Update version of wxWidgets
- HamPC now installs SDRPlay API3
- Cleanup code: remove redundant code
- Update and fixes for HamPC
- Lots of upgraded software

### Removed

- SDRAngel temporarily removed

### Fixed

- Lots of minor enhancements and fixes for HamPi and HamPC

## [2.0] - 2022-01-25

**Ported HamPi to Raspberry Pi OS Bullseye**

### Added

- Put in new code to disable ORCA screen-reader software on startup

### Changed

- Updated to WSJT-X 2.5.3
- Updated to TQSL 2.5.9 (minor update)
- DroidStar has replaced DUDE-Star
- Tucnak2 is now known as Tucnak
- Many other applications updated from Internet

### Removed

The following apps are unavailable under Raspberry Pi Bullseye:

- morse-simulator
- python3-morse-simulator
- hamfax
- Linpsk
- The following apps are temporarily unavailable:
- SDRAngel

### Fixed

- Added missing dependencies for Patmenu2

## [1.5] - 2021-10-05

### Added

- Added SDR++ -- Brand new cross-platform and open source SDR software
- Added Cqrprop – Small application that displays propagation data from Paul, N0NBH website
- Added 10 10 QSO Logger – Logging software for Ten Ten International Users
- Added Lady Heather – GPS Monitoring software
- Added Atlcl – Arbitrary Transmission Line Calculator
- Added SoapySDRPlay3 - Soapy SDR module for SDRPlay3 API
- Added version check to HamPi startup (to notify for new versions of HamPi)

### Changed

- Updated to WSJT-X 2.5.0
- Updated BlueDV to version 1.0.0.9609 (most current version)

### Fixed

- Fixed Orca screen reading software to be installed, but disabled
- Modified HamPi Ansible sources to retry transient download failures

## [1.4] - 2021-06-20

### Added

- Added DUDE-Star (D-Star, DMR, Fusion, etc.)
- Added wfview (control modern Icom ham radios)
- Added QDMR (DMR radio programming software)
- Added Reverse Beacon Network client
- Added Orca (screen reading software for blind hams)

### Changed

- Base image: Raspbian OS Buster 2021-05-07 (Full release)
- Updated WSJT-X

### Removed

- SDRAngel (temporarily)

### Fixed

- Fixed WSJT-X locale issue
- Fixed one missing Help Menu in Desktop GUI
- Fixed Ansible templating

## [1.3] - 2021-03-22

### Added

- Added Help Menus to Desktop GUI
- Added SKCCLogger
- Added Radio Explorer
- Added QrssPiG
- Added minimodem
- Added update_wsjtx_log.py

### Changed

- Base image: Raspbian OS Buster 2021-01-11 (Full release)
- Updated HamLib to 4.1
- Updated SDRPlay API
- Updated JTDX
- Updated SDRAngel
- Updated WSJT-X
- Many other applications updated from Internet

### Fixed

- Added patches to multiple project sources' for HamLib 4.1 internal name change.

## [1.2a] - 2020-12-09

### Added

- rpitx
- acarsdec software
- Rig Control to CubicSDR
- leansdr software
- CygnusRFI software
- Universal Ham Radio Remote (UHRR)

### Removed

- more unnecessary apps.

### Fixed

- BlueDV crashes on startup
- SDRAngel menu item doesn't function
- Make hampi host name persistent.

## [1.1] - 2020-09-19

Identical to release 1.0

## [1.0] - 2020-09-19

### Added

- Support for OpenWebRx SDR Server
- Applications to GUI that are installed
- QRZ callsign reader
- More documentation
- Add new program: adifmerg
- Add AMBEserver service and configuration files
- Add Lopora
- HamClock by WB0OEW.

### Changed

- Organized files better in the git repo
- Update GridTracker to match current changes in distribution.

### Removed

- Unneeded software

### Fixed

- Add missing modules to run VOACAPL.
- Only attempt to edit /boot/cmdline.txt when it exists
- Apply fix for x86 installation
- Broken Build: DireWolf
- SDRAngel playbook needs minor updates
- SDRangel desktop file not being recognized
- BlueDV doesn't launch as expected
- GPSd/Direwolf version mismatch.

## [0.9] - 2020-06-13

Version 0.9 is the third beta release being distributed to a small group of beta testers.

### Added

- Add HamRadio menu to GUI
- Add DRAWS(tm) HAT documentation to Desktop
- Add dxspider installation
- Add SoapyUHD (Ettus Research) support
- Add WSPR installation
- Add OpenDV installation
- Add CuteSDR installation
- Add SDRAngel installation
- Add ham-radio related desktop pictures

### Changed

- Change hostname to hampi
- Resize (micro)SD card automatically

### Fixed

- Fix GridTracker intallation

## [0.8] - 2020-06-06

Version 0.8 is the second beta release being distributed to a small group of beta testers.

### Added

- Adds HamPi branding to GUI
- Adds HamPi README and LICENSE to Desktop

### Changed

- Includes WSJT-X 2.2.0 (latest build as of June 2020)
- Updates HamLib from 3.3 to 4.0
- Installs and compiles ax.25 from source
- Installs and compiles linpac from source
- Updates Pat Menu from 1.0 to 2.0
- Changes compression format of image from BZip2 to XZ for sizable savings
- Adds support for 64bit ARM image
- Adds support for slimmer versions of Raspberry Pi OS (formerly known as Raspbian)

### Fixed

- Fixes installation of VOACAPL
- Fixes installation of dump1090
- Fixes miscellaneous small bugs

## [0.7] - 2020-05-23

Version 0.7 is the first beta release being distributed to a small group of beta testers.

### Added:
- Initial Chromium Bookmarks for Ham Radio
- Configuration of image to use 64-bit kernel
- Pybombs for GNU Radio
- QSLware nag dialog
- TeamViewer
- AirSpy Driver https://github.com/airspy/airspyone_host
- AirSpy HF Driver https://github.com/airspy/airspyhf
- SoapySDR Driver for AirSpy https://github.com/pothosware/SoapyAirspy
- SoapySDR Driver for FUNcube dongle pro+ https://github.com/pothosware/SoapyFCDPP
- SoapySDR Driver for PlutoSDR https://github.com/pothosware/SoapyPlutoSDR
- SoapySDR Driver for OsmoSDR https://github.com/pothosware/SoapyOsmo
- SoapySDR Driver for Red Pitaya https://github.com/pothosware/SoapyRedPitaya
- SoapySDR Driver for UHD https://github.com/pothosware/SoapyUHD
- SoapySDR Driver for VOLK-based type converters https://github.com/pothosware/SoapyVOLKConverters
- AMBEServer https://github.com/marrold/AMBEServer.git
- PatMenu https://github.com/km4ack/patmenu
- linpac - (dpkg) terminal for packet radio with mail client
- wwl - (dpkg) Calculates distance and azimuth between two Maidenhead locators

### Replaced
- APRS Message App for JS8Call with JS8CallUtilities_V2
- D-Rats 0.3.3 with D-Rats 0.3.8 https://github.com/maurizioandreotti/D-Rats
- AX25 support for Pat WinLink with AX25 support for DXSpider and Pat WinLink

### Removed (temporarily)
- SDRAngel
- Background Images
    Fixed in Git commit
### 2020-05-13

#### Big Picture

Renamed project to HamPi
Converted manually-created (handmade) image creation to Ansible-created (automated) image creation
Set up ~95% of software projects to automagically download latest version from Internet
Add installation of x86 apps (versus ARM apps) in some cases for use with Raspbian x86
Automatic upgrade of Raspbian packages and cleaning apt cache

### 2019-11-12
Initial announcement to QRZ.com for W3DJS Raspberry Pi for Ham Radio Image v2.0

### 2019-10-29
Initial announcement to local ham club for W3DJS Raspberry Pi for Ham Radio Image v2.0

[unreleased]: https://github.com/dslotter/HamPi/compare/3.0...HEAD
[3.1]: https://github.com/dslotter/HamPi/compare/3.0...3.1
[3.0]: https://github.com/dslotter/HamPi/compare/2.0...3.0
[2.0]: https://github.com/dslotter/HamPi/compare/1.5...2.0
[1.5]: https://github.com/dslotter/HamPi/compare/1.4...1.5
[1.4]: https://github.com/dslotter/HamPi/compare/1.3...1.4
[1.3]: https://github.com/dslotter/HamPi/compare/1.2a...1.3
[1.2]: https://github.com/dslotter/HamPi/compare/1.1...1.2a
[1.1]: https://github.com/dslotter/HamPi/compare/1.0...1.1
[1.0]: https://github.com/dslotter/HamPi/compare/0.9...1.0
[0.9]: https://github.com/dslotter/HamPi/compare/0.8...0.9
[0.8]: https://github.com/dslotter/HamPi/compare/0.7...0.8
[0.7]: https://github.com/dslotter/HamPi/releases/tag/0.7
