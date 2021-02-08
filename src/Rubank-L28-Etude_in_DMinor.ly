\version "2.18.2"
date = #(strftime "%d %b %Y" (localtime (current-time)))
\header {
	title = "Etude in D Minor"
	subsubtitle="Rubank Elementary  Lesson 28-5"
	tagline = \markup {
		\line { \date " version: @VERSION@" }
	}
}

flute_a = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c'' {
		\clef treble
		\key d \minor
		\time 4/4
		\tempo "" 4 = 50

		\partial 4 a4\f | d4. f8 a4 f | e8( d) e f g4 r4 | e4. g8 bes4 g | f8( e) f g a4 r4 | \break
		bes4.\mf c8 d bes a g | a4. cis8 e bes a g | f4 d d f | a8 cis, e g a4 a,\f | \break
		d4. f8 a4 f | e8( d) e f g4 r4 | e4. g8 bes4 g | f8( e) f g a4 \tuplet 3/2 { a8 a a } | \break
		d4. bes8 g d g bes | cis4. bes8 g e g bes | a4 \tuplet 3/2 { d8 d d } d4 cis | d2. r4 | f4.\mf e8 f( e) d( c) | \break
		d4. c8 d( c) bes( a) | bes4. g8 a4. f8 | g4. f8 e2 | bes'4. a8 bes( a) g( f) | g4. f8 g( f) e( d) | \break
		\tuplet 3/2 { cis8 cis cis } e4 \tuplet 3/2 { g8 g g } bes4 | a2. a,4 | d4. f8 a4 f | e8( d) e f g4 r4 | e4. g8 bes4 g | \break
		f8( e) f g a4 r4 | bes4. c8 d bes a g | f4. g8 a f e d | a4 f' f4. e8 | d4 \tuplet 3/2 { d8 f a } d4 | \break

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

