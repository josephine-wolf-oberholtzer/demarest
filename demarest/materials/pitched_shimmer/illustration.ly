% 2016-06-18 22:53

\version "2.19.41"
\language "english"

\include "/Users/joberholtzer/Development/consort/consort/stylesheets/stylesheet.ily"

\score {
    \context Score = "String Quartet Score" <<
        \tag #'time
        \context TimeSignatureContext = "Time Signature Context" {
            {
                \tempo 4=72
                \time 3/8
                s1 * 9/8
            }
            {
                \time 7/8
                s1 * 7/8
            }
            {
                \time 3/8
                s1 * 9/8
            }
        }
        \tag #'violin-1
        \context StringPerformerGroup = "Violin 1 Performer Group" \with {
            instrumentName = \markup {
                \hcenter-in
                    #10
                    "Violin 1"
                }
            shortInstrumentName = \markup {
                \hcenter-in
                    #10
                    "Vln. 1"
                }
        } <<
            \context StringStaff = "Violin 1 Staff" {
                \context Voice = "Violin 1 Voice" {
                    \clef "treble"
                    {
                        % [Violin 1 Voice] Measure 1
                        {
                            % DYNAMIC: fp
                            \once \override Hairpin.circled-tip = ##t
                            <af' b' e'' f''>4. :32 \fp \>
                        }
                        % [Violin 1 Voice] Measure 2
                        {
                            % DYNAMIC: niente
                            <af' b' e'' f''>4 :32 \repeatTie
                        }
                    }
                    {
                        {
                            r8 \!
                        }
                    }
                    {
                        % [Violin 1 Voice] Measure 3
                        {
                            % DYNAMIC: ppp
                            <fs' a' bf' d''>8 :64 \ppp
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                    {
                        % [Violin 1 Voice] Measure 4
                        {
                            % DYNAMIC: fp
                            \once \override Hairpin.circled-tip = ##t
                            <a' b' c'' e''>4. :32 \fp \>
                            <a' b' c'' e''>8 :64 \repeatTie
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5 {
                            <a' b' c'' e''>8 :64 \repeatTie [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <c' ds' gs' a'>8 :64
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <b' d'' ef'' g''>8 :64
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <ef' f' gf' bf'>8 :64
                            \set stemLeftBeamCount = 1
                            <c' ds' gs' a'>8 :64 ]
                        }
                        % [Violin 1 Voice] Measure 5
                        {
                            % DYNAMIC: niente
                            <c' ds' gs' a'>4 :32 \repeatTie
                        }
                    }
                    {
                        {
                            r8 \!
                        }
                        % [Violin 1 Voice] Measure 6
                        {
                            r4
                        }
                    }
                    {
                        {
                            % DYNAMIC: ppp
                            <b d' ef' g'>8 :64 \ppp
                        }
                        % [Violin 1 Voice] Measure 7
                        {
                            <b d' ef' g'>4 :32 \repeatTie
                        }
                    }
                    {
                        {
                            r8
                            \bar "|."
                        }
                    }
                }
            }
        >>
        \tag #'violin-2
        \context StringPerformerGroup = "Violin 2 Performer Group" \with {
            instrumentName = \markup {
                \hcenter-in
                    #10
                    "Violin 2"
                }
            shortInstrumentName = \markup {
                \hcenter-in
                    #10
                    "Vln. 2"
                }
        } <<
            \context StringStaff = "Violin 2 Staff" {
                \context Voice = "Violin 2 Voice" {
                    \clef "treble"
                    {
                        % [Violin 2 Voice] Measure 1
                        {
                            r4
                        }
                    }
                    {
                        {
                            % DYNAMIC: fp
                            \once \override Hairpin.circled-tip = ##t
                            <as cs' fs' g'>8 :64 \fp \>
                        }
                        % [Violin 2 Voice] Measure 2
                        {
                            <as cs' fs' g'>4 :32 \repeatTie
                        }
                        {
                            % DYNAMIC: niente
                            <as cs' fs' g'>8 :64 \repeatTie
                        }
                        % [Violin 2 Voice] Measure 3
                        {
                            <as cs' fs' g'>4 :32 \repeatTie \!
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        % [Violin 2 Voice] Measure 4
                        {
                            % DYNAMIC: ppp
                            <fs' a' bf' d''>4 :32 \ppp
                        }
                    }
                    {
                        {
                            r8
                            r8
                        }
                    }
                    {
                        {
                            % DYNAMIC: fp
                            <e' fs' g' b'>8 :64 \fp \>
                        }
                        \times 2/3 {
                            <e' fs' g' b'>8 :64 \repeatTie [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <c'' ds'' gs'' a''>8 :64
                            \set stemLeftBeamCount = 1
                            <a' c'' df'' f''>8 :64 ]
                        }
                        % [Violin 2 Voice] Measure 5
                        {
                            % DYNAMIC: ppp
                            <a' c'' df'' f''>4 :32 \ppp \repeatTie \<
                        }
                        {
                            <a' c'' df'' f''>8 :64 \repeatTie
                        }
                        % [Violin 2 Voice] Measure 6
                        {
                            % DYNAMIC: mf
                            \once \override Hairpin.circled-tip = ##t
                            <a' c'' df'' f''>4. :32 \mf \repeatTie \>
                        }
                        % [Violin 2 Voice] Measure 7
                        {
                            % DYNAMIC: niente
                            <a' c'' df'' f''>8 :64 \repeatTie
                        }
                    }
                    {
                        {
                            r4 \!
                            \bar "|."
                        }
                    }
                }
            }
        >>
        \tag #'viola
        \context StringPerformerGroup = "Viola Performer Group" \with {
            instrumentName = \markup {
                \hcenter-in
                    #10
                    Viola
                }
            shortInstrumentName = \markup {
                \hcenter-in
                    #10
                    Va.
                }
        } <<
            \context StringStaff = "Viola Staff" {
                \context Voice = "Viola Voice" {
                    \clef "alto"
                    {
                        % [Viola Voice] Measure 1
                        {
                            r8
                        }
                    }
                    {
                        {
                            % DYNAMIC: niente
                            \clef "treble"
                            \once \override Hairpin.circled-tip = ##t
                            <b d' g' af'>4 :32 \<
                        }
                        % [Viola Voice] Measure 2
                        {
                            <b d' g' af'>8 :64 \repeatTie
                        }
                        {
                            % DYNAMIC: p
                            <b d' g' af'>8 :64 \p \repeatTie \<
                        }
                        {
                            <b d' g' af'>8 :64 \repeatTie
                        }
                        % [Viola Voice] Measure 3
                        {
                            % DYNAMIC: f
                            <b d' g' af'>8 :64 \f \repeatTie
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r4
                        }
                        % [Viola Voice] Measure 4
                        {
                            r4
                        }
                    }
                    {
                        {
                            % DYNAMIC: fp
                            \clef "treble"
                            <cs' e' f' a'>8 :64 \fp \>
                            <cs' e' f' a'>4 :32 \repeatTie
                        }
                        {
                            <cs' e' f' a'>4 :32 \repeatTie
                        }
                        % [Viola Voice] Measure 5
                        {
                            % DYNAMIC: ppp
                            \once \override Hairpin.circled-tip = ##t
                            <cs' e' f' a'>8 :64 \ppp \repeatTie \>
                        }
                        \times 2/3 {
                            <cs' e' f' a'>8 :64 \repeatTie [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <g' a' bf' d''>8 :64
                            \set stemLeftBeamCount = 1
                            <a' c'' f'' gf''>8 :64 ]
                        }
                        % [Viola Voice] Measure 6
                        {
                            % DYNAMIC: niente
                            <a' c'' f'' gf''>4 :32 \repeatTie
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r8 \!
                        }
                        % [Viola Voice] Measure 7
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(0)
                            \startStaff
                            R1 * 3/8
                            \bar "|."
                        }
                    }
                }
            }
        >>
        \tag #'cello
        \context StringPerformerGroup = "Cello Performer Group" \with {
            instrumentName = \markup {
                \hcenter-in
                    #10
                    Cello
                }
            shortInstrumentName = \markup {
                \hcenter-in
                    #10
                    Vc.
                }
        } <<
            \context StringStaff = "Cello Staff" {
                \context Voice = "Cello Voice" {
                    \clef "bass"
                    {
                        % [Cello Voice] Measure 1
                        {
                            % DYNAMIC: niente
                            \clef "treble"
                            \once \override Hairpin.circled-tip = ##t
                            <af' b' e'' f''>4. :32 \<
                        }
                        % [Cello Voice] Measure 2
                        {
                            % DYNAMIC: f
                            <af' b' e'' f''>4 :32 \f \repeatTie
                            \clef "bass"
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        % [Cello Voice] Measure 3
                        {
                            % DYNAMIC: fp
                            \clef "treble"
                            \once \override Hairpin.circled-tip = ##t
                            <fs' a' bf' d''>4. :32 \fp \>
                        }
                        % [Cello Voice] Measure 4
                        {
                            % DYNAMIC: niente
                            <fs' a' bf' d''>8 :64 \repeatTie
                            \clef "bass"
                        }
                    }
                    {
                        {
                            r4 \!
                        }
                    }
                    {
                        {
                            % DYNAMIC: niente
                            \clef "treble"
                            \once \override Hairpin.circled-tip = ##t
                            <f' g' af' c''>4 :32 \<
                        }
                        {
                            <f' g' af' c''>4 :32 \repeatTie
                        }
                        % [Cello Voice] Measure 5
                        {
                            % DYNAMIC: f
                            <f' g' af' c''>8 :64 \f \repeatTie
                        }
                        {
                            <f' g' af' c''>4 :32 \repeatTie
                            \clef "bass"
                        }
                    }
                    {
                        % [Cello Voice] Measure 6
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(0)
                            \startStaff
                            R1 * 3/8
                            \stopStaff
                            \startStaff
                        }
                    }
                    {
                        % [Cello Voice] Measure 7
                        {
                            % DYNAMIC: fp
                            \clef "treble"
                            <b' d'' g'' af''>8 :64 \fp
                            \clef "bass"
                        }
                    }
                    {
                        {
                            r4
                            \bar "|."
                        }
                    }
                }
            }
        >>
    >>
}