\version "2.18.2"
date = #(strftime "%d %b %Y" (localtime (current-time)))
\header {
	title = "Bb Minor Harmonic Slurred"
	tagline = \markup {
		\line { \date " version: @VERSION@" }
	}
}

flute_a = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c'' {
		\clef treble
		\key b \minor
		\time 3/4

		b( b' b,) |
		cis( cis' cis,) |
		d( d' d,) |
		e( e' e,) |
		fis( fis' fis,) |
		gis( gis' gis,) |
		ais( ais' ais,) |
		b( b' b,) | \break

		b( b' b,) |
		a!( a'! a,!) |
		g!( g'! g,!) |
		fis( fis' fis,) |
		e( e' e,) |
		d( d' d,) |
		cis( cis' cis,) |
		b( b' b,) | \break

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

