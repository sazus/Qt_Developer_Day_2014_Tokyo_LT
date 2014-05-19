#-------------------------------------------------
#
# Project _demo_raspi_digitalclock
#
#-------------------------------------------------

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = _demo_raspi_digitalclock
TEMPLATE = app

QT += core gui

SOURCES += \
	$$PWD/main.cpp\
	$$PWD/digitalclock.cpp

HEADERS  += \
	$$PWD/digitalclock.h

#FORMS    += \
#	$$PWD/

## Raspberry Pi設定
linux-rasp-pi-g++ {
	DEFINES += RASPBERRY_PI

	# deploy先の設定
	target.path = /home/pi/$${TARGET}
	INSTALLS += target

	export(target.path)
	export(INSTALLS)

	# ゆとり世代なので、debug時は最適化なし
	#QMAKE_CXXFLAGS_DEBUG = -O0
}


