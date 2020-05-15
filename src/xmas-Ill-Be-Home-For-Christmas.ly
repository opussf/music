\header {
	title = "I'll Be Home For Christmas"
	composer = "Words and Music by KIM GANNON and WALTER KENT"
	poet = "Flutes"
}

flute_a = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c'' {
		\clef treble
		\key bes \major
		\time 4/4
		\override Score.MetronomeMark.padding = #3
		\tempo "Moderately" 4 = 100

		bes'2. a4 | c2. bes4 | f2 f2~ | f2. r4 | g2. f4 |
		aes2. g4 | c,1~ | c2. r4 | c2. d4 | f2. ees4 |
		d2 f | bes r4 a | c2 c | a2. a4 | g1~ |
		g2. r4 | bes2. a4 | c2. bes4 | f2 f2~ | f2. r4 |
		% page 2
		g2. f4 | aes2. g4 | ees1~ | ees2. r4 | c'2. bes4 |
		c2. bes4 | f1 | g2 r4 g | c2 d | bes c |
		bes1~ | bes4 ees, g bes | c2. bes4 | c2. bes4 | f1 |
		g2 r4 g | c2 d | bes c | bes1~ | bes4 r4 r2 |

		\bar "|."
	}
}

flute_b = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c'' {
		\key bes \major
		d2 f | e g | c bes | a2. r4 | d,2 bes' |
		d,2 b' | c bes | a2. r4 | c,2. d4 | f2. c4 |
		bes2 d | g r4 f | e2 e | fis2. ees!4 | ees d c d |
		ees2. r4 | d2 f | e g | c bes | a2. r4 |
		% page 2
		d,2 bes' | d, b' | c4 bes! g ees | g bes c r4 | ees,2. g4 |
		ees2. ges4 | d f a c | b2 r4 f | e2 bes'! | g ees! |
		d1~ | d4 ees g bes | ees,2. g4 | ees2. ges4 | d f a c |
		b2 r4 f | e2 bes' | g ees! | d1~ | d4 r4 r2 |
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
