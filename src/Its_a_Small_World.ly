\version "2.18.2"
date = #(strftime "%d %b %Y" (localtime (current-time)))
\header {
	title = "It's a Small World"
	composer = \markup {
		\line { "Richard and Robert Sherman" }
	}
	tagline = \markup {
		\line { \date " version: @VERSION@" }
	}
}

flute = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\new Voice = "melody"  {
		\relative c' {
			\clef treble
			\key d \major
			\time 4/4
			\tempo "" 4 = 240
			\repeat volta 2 {
      \partial 2 fis4 g |
      a2 fis' | d e4 d | d2 cis | cis e,4 fis | g2 e' | cis d4 cis | \break
      b2 a2 | a fis4 g | a2 d4 e | fis2 e4 d | b2 e4 fis4 | g2 fis4 e | a,2 g' | \break
	  fis e | d1( | d2) g,8 a b cis | d2. d4 | fis2 d | e2. e4 | e1 | \break
	  e2. e4 | g2 e | fis2. fis4 | fis1 | fis2. fis4 | a2 fis | g2. g4 | g2 fis4 e | \break
	  a,2 g' | fis e | d1 | r1 | \break
			}


		}
	}
}

guitar = \chordmode {
	\partial 2 s2 |
	d | s2 | a:7 | s2 | s1 | s1 | s1 | s1 |
	d | s1 | d:m7 | d:7 | g | e:m | a:7 |
	s1 | d | s1 | d | s1 | a:7 | s1 |
	s1 | s1 | d | d1 | d1 | d:7 | g | e:m7 |
	a:7 | s1 | d | s1

}

\score {
	<<
		\context ChordNames {
			\set chordChanges = ##t
			\set Staff.midiInstrument = #"acoustic guitar (nylon)"
			\guitar
		}
		\flute
	>>
	\layout { }
}
\score {
	\unfoldRepeats
	<<
		\flute
		\guitar
	>>
	\midi { }
}
