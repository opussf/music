\header {
	title = "Melody in E Major"
	subsubtitle="Rubank Elementary  Lesson 37"
}

flute = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c' {
		\clef treble
		\key e \major
		\time 6/8
		\tempo "" 4 = 89

		\partial 8
		b'8 gis'4 g8 gis4 e8 dis4 e8 fis4. a4 gis8 a4 fis8 e4 fis8 gis4. cis4 dis8 e4 b8 \break
		a4 b8 cis4 gis8 fis4 dis'8 fis, ais cis b4.~ b8 r r a4 gis8 fis4 eis8 fis4 gis8 a4. \break
		b4 a8 gis4 fisis8 gis4 a8 b4. a4 gis8 fis4 eis8 fis4 gis8 a4. b4 a8 gis4 fisis8 gis4 a8 b4.\break
		cis4 e8 b4 gis8 a4 cis8 gis4. fis8 b dis cis4ais8 b4.~b8[ r8 b,8] gis'4 fis8 gis4 e8 dis4 e8 fis4. \break
		a4 gis8 a4 fis8 e4 fis8 gis4. fis4 cis'8 a4 fis8 b,4 b'8 gis4 e8 dis4 a'8 gis gis fis e4.~ e4
		\bar "|."
	}
}

\score {
	<<
		\flute
	>>
	\layout { }
	\midi { }
}
\version "2.18.2"

