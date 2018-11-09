QCheckers README
================

QCheckers (formely known as KCheckers) is a Qt-based checkers board game.
It can play english draughts and russian draughts.

There is some additional information in the FAQ file.

Please address any bug reports or feature requests to [github issue tracker][1].

Formely this program was living at

* http://qcheckers.sourceforge.net/
* http://qcheckers.wibix.de
* http://qcheckers.org

[1]: https://github.com/portnov/qcheckers/issues

PDN format
----------

For storing the positions of games QCheckers uses the 
Portable Draughts Notation (PDN) database format. It is
used by many other checkers programs, and is becoming
the standard way to swap games.

PDN is based on the Portable Game Notation (PGN) standard
which is widely used for Chess.

For details see http://www.chessandcheckers.com/pdn.htm

```
  -----------------------------------------------------------------------
  PDN File:   	[Event "Game 1"]
		[Black "Nemet,A"]
		[White "Terens,B"]
		[Date "11.05.2002"]
		[Result "1-0"]
		[GameType "21"]
		[SetUp "1"]
		[FEN "W:WK4,28:BK11,19."]

		1. 4-8 11x4 2. 28-24 19x28 {black win...} 1-0

  -----------------------------------------------------------------------
  Results:    	1-0	White wins
    		0-1	Black wins
                1/2-1/2 Drawn game
                *       Unfinished game

  -----------------------------------------------------------------------
  Game Types:	0:	Chess
		1:      Chinese chess
		2-19:	Future chess expansion
		20:	International draughts
		21:	English draughts
		22:	Italian draughts
		23:	American pool
		24:	Spanish draughts
		25:	Russian draughts
		26:	Brazilian draughts
		27:	Canadian draughts
		28:	Portugese draughts
		29-49:	Future draughts expansion
		50:	Othello
                
  -----------------------------------------------------------------------
  FEN:		If a game starts from a set-up position, a Forsyth-Edwards 
 		Notation (FEN) header is given with the position.

		W	Turn
		:W	White pieces
		K4	King on field 4
		28	Man on field 28
		:B	Black pieces

  -----------------------------------------------------------------------
  Rules:               	       Board  BackCapture  MoveKing  TakeMax
		International  10x10      +           >1        +
		English         8x8     kings          1        -
		Italian         8x8     kings          1        +
		American pool   8x8       +           >1        -
		Spanish         8x8     kings         >1        +
		Russian         8x8       +           >1        -
		Brasilian       8x8       +           >1        +
		Canadian       12x12      +           >1        +

  -----------------------------------------------------------------------
```


Requirements
------------

Qt library version 5.0 or higher is required.

Installation
------------

To install QCheckers, run the following commands:

```
$ qmake -o Makefile qcheckers.pro
$ make
$ sudo make install
```

Shared files are installed in `/usr/local/share/qcheckers` by default. You can
change this by changing `SHARE_PATH` in `common.h`.


