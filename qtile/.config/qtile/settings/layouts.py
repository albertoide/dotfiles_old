from libqtile import layout

layouts = [
    layout.Columns(
        num_columns=4,
        border_focus="#bd93f9",
        border_normal="#44475a",
        border_focus_stack=["#ff79c6", "#ff79c6"],
        border_width=1,
        margin=4,
        border_on_single=True,
    ),
    layout.Max(),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=3),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]
