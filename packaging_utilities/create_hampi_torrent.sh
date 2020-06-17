#!/bin/bash

VERSION=1.0

transmission-create -o "HamPi Image Beta v${VERSION} (compressed).torrent" \
-t udp://tracker.opentrackr.org:1337/announce \
-c "HamPi Image Beta v${VERSION} by W3DJS - Please seed this torrent as long as possible!" \
"HamPi v${VERSION} by W3DJS"
