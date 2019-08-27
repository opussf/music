\header {
	title = "Bizirk Irauteko Arau Luzea"
	subtitle = "(working title)"
	composer = "L. Morris"
}

melody = \relative c' {
	\clef treble
	\key f \major
	\time 4/4
	\tempo "" 4=160

	% comment
	a' f a f
	c' bes8 a8 bes4 g4
	bes4 g4 bes g4
	d' c8 bes c4

	a c a c
	a g' f8 e f4 d

	bes8 b 4ges e8 ees


}

\score {

	\new Staff {
		\set Staff.midiInstrument = #"flute"
		\melody
	}
	\layout { }
	\midi { }
}

\version "2.18.2"
