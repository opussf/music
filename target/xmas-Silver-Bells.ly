\header {
	title = "Silver Bells"
	subtitle="from the Paramount Picture THE LEMON DROP KID"
	composer = "Words and Music by JAY LIVINGSTON and RAY EVENS"
}

flute_a = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c'' {
		\clef treble
		\key bes \major
		\time 3/4
		\override Score.MetronomeMark.padding = #3
		\tempo "Moderately" 4 = 100

		\partial 4
		bes'8 g
		\repeat volta 2 {
			f4 d bes'8 g | f4 d d'8 c | bes4 g g | g2 c8 bes |
			a4 f e | ees! f4. ees8 | ees4 d2~ | d4 r bes'8 g |
			f4 d bes'8 g | f4 d d'8 c | bes4 g g | g2 c8 bes |
			a4 f e | ees! f c | bes2.~ | bes2 r4 |
			% page2
			d8 ees f2~ | f2. | g8 a bes2~ | bes2. |
			a4 a bes | c2 bes8 a | bes4 f2~ | f r4 | d8 ees f2~ |
			f2. | g8 a bes2~ | bes2. | a4 a bes4 |
			c bes a |
		}
		\alternative {
			{ bes2.~ | bes4 r bes8 g }
			{ bes2.~ | bes2 r4 }
		}
		\bar "|."
	}
}

flute_b = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c'' {
		\key bes \major
		r4
		\repeat volta 2 {
			bes'2. | a2 aes4 | g2 f4 | ees2. |
			c'2 bes4 | a2. | bes | bes,4 r r |
			bes'2. | a2 aes4 | g2 f4 | ees2. |
			c'2 bes4 | a f ees | d2. | ees4 d c |
			% page 2
			bes8 c d2 | bes8 c d2 | ees8 f g2 | ees8 f g2 |
			f4 f e | ees!2. | d2. | ees4 d c | bes8 c d2 |
			bes8 c d2 | ees8 f g2 | ees8 f g2 | f4 f e |
			ees!2.
		}
		\alternative {
			{ d2. | bes4 r r }
			{ d2. | bes2 r4 }
		}
	}
}

\score {
	<<
		\flute_a
		\flute_b
	>>
	\layout { }
}
\score {
	\unfoldRepeats
	<<
		\flute_a
		\flute_b
	>>
	\midi { }
}
\version "2.18.2"

