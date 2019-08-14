\header {
	title = "Minuet from Orpheus"
	subsubtitle="Rubank Elementary  Page 44"
	composer="GOSSEC"
}

flute_a = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c'' {
		\clef treble
		\key d \major
		\time 4/4
		\tempo "Allegretto" 4 = 115

		\repeat volta 2 {
			a'8-.\p b-. a-. fis-. g-. a-. g-. e-. d4-. d'-. d,-- r g8-. a-. g-. e-. fis-. g-. fis-. d-. e4-. a-. a,-- r a'8-. b-. a-. fis-. g-. a-. g-. e-.
			d4-. d'-. d,-- r fis\< d8 b d4 b8 gis\! a4-. a'-. a,-- r
		}
		e'8-.\p g-. fis-. a-. g-. fis-. e-. d-. cis4-. e-. g -- r
		fis8-.\mf a-. g-. b-. a-. g-. fis-. e-. d4-. fis-. a-- r b8(\f a) a( g) fis( fis) fis( e) e4-.\> g-. b-- r\! a8-. fis-. cis-. d-. g-. e-. b-. cis-. d4-.\< d'-. d,-- r\!
		% looking for // mark
		\break

		\bar "|."
	}
}

flute_b = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c'' {
		\key d \major

		\repeat volta 2 {
			fis8-.\p g-. fis-. d-. cis-. cis-. a-. g-. fis4-. fis'-. fis,-- r e'8-. cis-. e-. cis-. d-. a-. d-. a-. cis4-. e-. a,-- r fis'8-. g-. fis-. d-. cis-. cis-. a-. g-.
			fis4-. fis'-. fis,-- r d' fis, b gis8 b cis4-. cis-. a-- r
		}
		cis8-.\p e-. d-. fis-. a,-.[ r cis-.] r a4-. cis-. e-- r
		d8-. fis-. e-. g-. fis-.[ r a,-.] r a4-. d-. fis-- r g8(\f fis) fis( e) e( d) d( cis) b4-.\> b-. g'-- r\! a,-. a8-. b-. cis4-. g8-. a-. fis4-.\< fis'-. fis,-- r\!
	}
}

\score {
	<<
		\flute_a
		\flute_b
	>>
	\layout { }
	\midi { }
}
\version "2.18.2"

