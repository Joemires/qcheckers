TEMPLATE= app
TARGET	= qcheckers
CONFIG  += qt warn_on

QT += widgets

HEADERS	= pdn.h \
	    checkers.h echeckers.h rcheckers.h \
	    field.h toplevel.h view.h history.h board.h \
	    newgamedlg.h \
	    common.h \
	    player.h humanplayer.h computerplayer.h
	   

SOURCES	= pdn.cc \
	    checkers.cc echeckers.cc rcheckers.cc \
	    field.cc toplevel.cc view.cc history.cc board.cc \
	    main.cc \
	    newgamedlg.cc \
	    humanplayer.cc computerplayer.cc

RESOURCES = ../qcheckers.qrc ../icons.qrc


# prefix can be set in common.h
PREFIX		= $$system(sh ../helpers/extract_prefix.sh)
message(PREFIX: $$PREFIX)

TRANSLATIONS	= ../lang/qcheckers_de.ts ../lang/qcheckers_fr.ts
#		i18n/qcheckers_ru.ts

target.path	= $$PREFIX/bin
INSTALLS	+= target

#DESTDIR	= /usr/local
#message(Destdir: $$DESTDIR)


#
# This hack is needed for i18n support.
#
share.path	+= $$PREFIX/share/qcheckers
share.files	+= qcheckers.pdn ../COPYING ../AUTHORS ../ChangeLog ../README ../themes ../i18n/*
INSTALLS	+= share

