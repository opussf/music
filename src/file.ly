\header {
	title = "Song"
	composer = "L. Morris"
}

melody = \relative c' {
	\clef treble
	\key f \major
	\time 4/4

	a' f a f
	c' bes8 a8 c4 g4 bes4~
	g4 bes g4 d'
	c bes
	c a	c a
	c g' f e f d
}

\score {
	\melody
	\layout { }
	\midi { }
}

\version "2.18.2"
