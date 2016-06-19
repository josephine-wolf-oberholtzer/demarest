# -*- encoding: utf-8 -*-
import abjad
import consort


unpitched_drone = consort.MusicSpecifier(
    attachment_handler=consort.AttachmentHandler(
        dynamics=consort.DynamicExpression(
            division_period=2,
            dynamic_tokens='p',
            start_dynamic_tokens='niente',
            stop_dynamic_tokens='niente',
            ),
        ),
    rhythm_maker=abjad.rhythmmakertools.NoteRhythmMaker(
        tie_specifier=abjad.rhythmmakertools.TieSpecifier(
            tie_across_divisions=True,
            ),
        ),
    )
