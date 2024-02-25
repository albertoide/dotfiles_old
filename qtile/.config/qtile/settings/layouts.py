from libqtile import layout

layouts = [
    layout.Columns(
        num_columns=4,
        border_focus="#8be9fd",
        border_normal="#44475a",
        border_focus_stack=["#6272a4", "#6272a4"],
        border_width=4,
        margin=8,
        border_on_single=True,
    ),
    # layout.Max(),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=3),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.MonadThreeCol(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]
