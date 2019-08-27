\include "predefined-guitar-fretboards.ly"

\header {
	title = "Over the Rainbow"
	subtitle="from The Wizard of Oz"
	author="Harold Arlan (1905 - 1986)"
}

flute = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\relative c' {
		\clef treble
		\key a \major
		\time 4/4
		\tempo "" 4 = 104

		\repeat volta 2 {
			a'2 a'2 | gis4 e8 fis8 gis4 a4
			a,2 fis'2 | e1

			c

		}
		\alternative {
			{ c2.~ c2 c8 d8  }
			{ c2.~ c2 r4  }
		}
	}
}

guitar = \chordmode {

	\repeat volta 2 {
		a2 f2:m g:m
	}
	\alternative {
		{}
		{}
	}
}


\score {
	<<
		\context ChordNames {
			\set chordChanges = ##t
			\set Staff.midiInstrument = #"acoustic guitar (nylon)"
			\guitar
		}
		\context FretBoards {
			\set chordChanges = ##t
			\guitar
		}

		\flute
		\addlyrics {
			Some-- where | o-- ver the rainbow,
		}
	>>
	\layout { }
	\midi { }
}
\version "2.18.2"



%{




[Intro]

G D Em     C

G D Em Em7 C



[Intro]

G     D     C     G

Oooo, oooo, oooo, oooo...

C     B7    Em    C

Oooo, oooo, oooo, oooo...



[Chorus]

G          D

Somewhere over the rainbow,

C        G

  Way up high

C       G

There's a land that I heard of,

D               Em         C

Once in a lullaby...

     G          D

Oh, somewhere over the rainbow

C           G

  Skies are blue

C       G

And the dreams that you  dare to dream

D                        Em         C

Really do come true...



[Verse]

    G

Someday I'll wish upon a star

D                                Em     C

Wake up where the clouds are far behind me

      G

Where trouble melts like lemon drops

D

High above the chimney tops

       Em           C

That's where you'll find me



[Chorus]

     G          D

Oh, somewhere over the rainbow

C           G

 Blue birds fly

C         G

Birds fly over the rainbow

D                Em         C

Why then,oh why can't I...



[Verse]

    G

Someday I'll wish upon a star

D                                Em      C

Wake up where the clouds are far behind me

      G

Where trouble melts like lemon drops

D

High above the chimney tops

       Em           C

That's where you'll find me



[Chorus]

     G          D

Oh, somewhere over the rainbow

C        G

  Way up high

C       G

And the dream that you dare to

D                Em         C

Why oh why can't I...



[Outro]

G     D     C     G

Oooo, oooo, oooo, oooo...

C     B7    Em    C        G

Oooo, oooo, oooo, oooo...

%)