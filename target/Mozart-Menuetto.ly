\header {
	title = "Menuetto"
	subtitle = "From \"Eine Kleine Nachtmusik\""
	composer = "W. A. Mozart"
	arranger = "Transcribed by H. Voxman"
	copyright = \markup { \char ##x00A9 " Copyright 1963 by Rubank, Inc.  Internation Copyright Secured   All Rights Reserved" }
}

partA = \relative c' {
	d'4\f | g a b c2 a4 b g a g8( fis) e( d e fis) g4 a b |
	c b16( a g a) b4 a16( g fis g) a4 fis g r4
}
partB = \relative c' {
	b''4\p a8( g fis e dis fis) e( fis g gis b a ) |
	g8( fis e d cis e) d(\< e fis g a fis) g4-.\f a-. b-. c-. b16( a g a) b4
	a16( g fis g) a4 fis g r4
}

melody = \relative c' {
	\clef treble
	\key g \major
	\time 3/4
	\tempo "Allegretto" 4=110

	\partial 4
	\repeat volta 2 {
		\partA
	}
	\break
	\repeat volta 2 {
		\partB
	}
	\key d \major
	\repeat volta 2 {
		fis'8(\p g a2) b8( cis d4. cis8 b a) |
		g( fis g a ais b) e,4. \breathe dis8( e g) fis( eis fis g gis a) |
		d,8( cis d e eis fis) e( fis g e cis e) | d4 r4
	}
	\repeat volta 2 {
		cis8(\f d e fis g a b a) g( fis e d) e( fis |
		gis a b cis d b) a4.\> g8(\! fis g) a4.(\p ais8 b cis |
		d4.) cis8( b a g fis g a ais b) e,4. \breathe dis8( e g)
		fis8( eis fis g gis a) d,( cis d e eis fis) e( fis g e cis e) | d4 r4
	}
	\key g \major
	\partA
	\bar "||"
	\partB
	\bar"|."
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
