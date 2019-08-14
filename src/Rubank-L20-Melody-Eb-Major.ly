\header {
	title = "Melody in Eb Major"
	subsubtitle="Rubank Elementary  Lesson 20"
}

flute = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c' {
		\clef treble
		\key ees \major
		\time 4/4
		\tempo "" 4 = 110

		\partial 4
		bes' g'2 f4 g ees2 bes4 g' bes2 f4 aes g2 f4 ees c'2 aes4 c bes2 g4 ees aes g f ees f2. bes,4 \break
		g'2 f4 g ees2 g4 bes c2 d4 ees bes2. bes4 c bes aes g f ees f aes g2 f ees2. r4 \break
		d c d ees f d bes d ees d ees f g ees bes r aes' f g ees f d ees g f bes a c bes2. bes,4 \break
		g'2 f4 g ees2 bes4 g' bes2 f4 aes g2. ees4 ees' d c bes aes g f aes g2 f ees2. \break

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

