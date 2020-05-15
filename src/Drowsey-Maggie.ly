\header {
	title = "Drowsey Maggie"
	subtitle = "from flutetunes.com"
	composer = "Traditional Irish"
	source = "flutetunes.com"
}

flute_a = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c'' {
		\clef treble
		\key d \major
		\time 4/4
		\tempo "" 2 = 100

		\repeat volta 2 {
			e,4 b'8 e, d' e, b' e, | e4 b'8 e, a fis d fis | e4 b'8 e, d' e, b' e, | b' a b cis d b a fis |
			e4  b'8 e, d' e, b' e, | e4 b'8 e, a fis d fis | e4 b'8 e, d' e, b' e, | b' a b cis d a fis a |
		}
		\break
		\repeat volta 2 {
			d4 e8 d cis4 e8 cis | d e fis g a fis g e | d4 e8 d cis4 e8 cis | b a b cis d a fis a |
			d4 e8 d cis4 e8 cis | d e fis g a fis g e | a8 fis g e fis d e cis | b a b cis d a fis a |
		}
		\break
		\repeat volta 2 {
			d b fis b d b fis b | a4 e'8 a, fis' a, e' a, | d b fis b d b fis b | d e fis gis a e cis fis |
			d b fis b d b fis b | a4 e'8 a, fis' a, e' a, | e g b e a e cis e | d4 cis8 e d a fis a |
		}
		\break
		\repeat volta 2 {
			d fis fis e d fis b, fis' | cis e e4 cis8 e a, e' | d fis fis e d e fis g | a g fis g a e cis e |
			d fis fis e d fis b, fis' | cis e e4 cis8 e a, e' | a fis g e fis d e d | b a b cis d a fis d |
		}
		fis1 |
		\bar "|."
	}
}

\score {
	<<
		\flute_a
	>>
	\layout { }
}
\score {
	\unfoldRepeats
	<<
		\flute_a
	>>
	\midi { }
}
\version "2.18.2"
