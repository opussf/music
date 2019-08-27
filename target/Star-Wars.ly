\header {
	title = "Star Wars"
	subtitle = "{Main Theme)"
	composer="Music by John Williams"
	arranger="Arranged by Carl Strommen"
	copyright = \markup { \char ##x00A9 "1977" }
}

flute_a = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c'' {
		\clef treble
		\key bes \major
		\time 4/4
		\tempo "Moderatly" 4 = 160
		\compressFullBarRests
		R1*4 bes2\mp f'~ f ees4 d8 c8 bes'2 f2~
		f2 ees4 d8 c8 bes'2 f~ f ees4 d8 ees c1~ c
		R1*7 r2 r4 f,\mf g2. g4 ees' d c bes bes c8 d c4 g
		a2. f4 g2. g4 ees' d c bes f'2 c~ c2. f,4
		g2. g4 ees' d c bes bes c8 d c4 g a2. f4
		g2. bes4 ees d c bes f'1~\< f bes,2\f f'~
		f ees4 d8 c bes'2 f~ f ees4 d8 c bes'2 f~
		f ees4 d8 ees c1~\> c\< bes2\! f'2~ f ees4 d8 c
		bes'2 f~ f ees4 d8 c bes'2 f~ f ees4 d8 c
		bes1 c ees g bes~ bes2 bes8 r r4


		\bar "|."
	}
}

\score {
	<<
		\flute_a
	>>
	\layout { }
	\midi { }
}
\version "2.18.2"

