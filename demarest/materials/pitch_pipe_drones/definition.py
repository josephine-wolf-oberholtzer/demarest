# -*- encoding: utf-8 -*-
import consort
from abjad.tools import indicatortools
from abjad.tools import selectortools
from demarest.materials import abbreviations


performance_instruction = abbreviations.make_text_spanner('pitch pipe')

swells = consort.DynamicExpression(
    division_period=2,
    dynamic_tokens='ppp',
    start_dynamic_tokens='niente',
    stop_dynamic_tokens='niente',
    )

pitch_pipe_drones = consort.MusicSpecifier(
    attachment_handler=consort.AttachmentHandler(
        performance_instruction=performance_instruction,
        swells=swells,
        )
    )
