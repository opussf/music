\header {
	title = "Yankee Doodle"
	composer = "Traditional American"

}

\score {
	\new Staff \relative c'' {
		\clef treble
		\key bes \major
		\time 2/4
		\tempo "" 4 = 116

		bes8 bes c d
		bes d c f,
		bes bes c d
		bes4 a4
		bes8 bes c d
		ees d c bes
		a f g a
		bes4 bes4

		g'8. a16 g8 f
		g a bes g
		f8. g16 f8 ees
		d4 ees4

		g8. a16 g8 f8
		g a bes g
		f bes a c

		bes4 bes4
	}
	\header {
		piece = "from flute4all.com"
		arranger = "John Bell"
	}
}

\score {
	\new Staff \relative c' {
		\clef treble
		\key ees \major
		\time 2/4
		\tempo "" 4 = 108

		\repeat volta 2 {

			ees'8 ees f g
			ees g f bes,
			ees ees f g
			ees4 d8 bes

			ees8 ees f g
			aes g f ees
			d bes c d
			ees4 ees4

			c8. d16 c8 bes
			c d ees c
			bes8. c16 bes8 aes
			g4 bes4

			c8. d16 c8 bes8
			c d ees c
			bes ees d f
			ees4 ees4

		}
	}
	\header {
		piece = "from flutetunes.com"
	}

}
