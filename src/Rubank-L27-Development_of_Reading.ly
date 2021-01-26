\version "2.18.2"
date = #(strftime "%d %b %Y" (localtime (current-time)))
\header {
	title = "Development of Reading"
	subsubtitle="Rubank Elementary  Lesson 27-1"
	tagline = \markup {
		\line { \date " version: @VERSION@" }
	}
}

flute_a = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c''' {
		\clef treble
		\key g \major
		\time 4/4
		\tempo "" 4 = 100

		g8  g4 a8 b b4 g8 | fis a c e d2 | b8  b4 c8 d g,4 b8 | c  b  a  g  a4. d,8 | \break
		g8  g4 a8 b b4 g8 | fis a c e d2 | g8  e4 e8 e d4  c8 | b[ b] a[ a] g2      | \break
		e'8 e4 g8 d d4 d8 | e   d b g a2 | e'8 e4 g8 d d4  d8 | e  d  c  b  a4. d,8 | \break
		g8  g4 a8 b b4 g8 | fis a c e d2 | g8  g4 e8 d b4  c8 | b4    a     g2      |
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

