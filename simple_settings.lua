text_settings = {
    {
        x=47, y=75,
        font='Impact',
        font_size='12',
        font_colour=0xcccccc,
        font_alpha=1,
        text="Time"
    },
    {
        x=178, y=75,
        font='Impact',
        font_size='12',
        font_colour=0xcccccc,
        font_alpha=1,
        text="CPU"
    },
    {
        x=300, y=75,
        font='Impact',
        font_size='12',
        font_colour=0xcccccc,
        font_alpha=1,
        text="Memory"
    }
}

circle_settings = {
    {
        comment='Hours',
        name='time',
        arg='%I',
        max=12,
        bg_colour=0xcc8844,
        bg_alpha=0.1,
        fg_colour=0xcc6622,
        fg_alpha=0.4,
        x=60, y=70,
        radius=60,
        thickness=10,
        start_angle=0,
        end_angle=360
    },
    {
        comment='Minutes',
        name='time',
        arg='%M',
        max=60,
        bg_colour=0xaa9977,
        bg_alpha=0.1,
        fg_colour=0xaa9933,
        fg_alpha=0.4,
        x=60, y=70,
        radius=50,
        thickness=10,
        start_angle=0,
        end_angle=360
    },
    {
        comment='Seconds',
        name='time',
        arg='%S',
        max=60,
        bg_colour=0xcc9933,
        bg_alpha=0.1,
        fg_colour=0xcc9911,
        fg_alpha=0.4,
        x=60, y=70,
        radius=40,
        thickness=10,
        start_angle=0,
        end_angle=360
    },
    {
        comment='CPU2',
        name='cpu',
        arg='cpu2',
        max=100,
        bg_colour=0xcc8844,
        bg_alpha=0.1,
        fg_colour=0xcc6622,
        fg_alpha=0.4,
        x=190, y=70,
        radius=50,
        thickness=10,
        start_angle=0,
        end_angle=360
    },
    {
        comment='CPU1',
        name='cpu',
        arg='cpu1',
        max=100,
        bg_colour=0xaa9977,
        bg_alpha=0.1,
        fg_colour=0xaa9933,
        fg_alpha=0.4,
        x=190, y=70,
        radius=60,
        thickness=10,
        start_angle=0,
        end_angle=360
    },
    {
        comment='Memory',
        name='memperc',
        arg='',
        max=100,
        bg_colour=0xcc8844,
        bg_alpha=0.1,
        fg_colour=0xcc6622,
        fg_alpha=0.4,
        x=320, y=70,
        radius=50,
        thickness=10,
        start_angle=0,
        end_angle=360
    },
    {
        comment='Swap',
        name='swapperc',
        arg='',
        max=100,
        bg_colour=0xaa9977,
        bg_alpha=0.1,
        fg_colour=0xaa9933,
        fg_alpha=0.4,
        x=320, y=70,
        radius=60,
        thickness=10,
        start_angle=0,
        end_angle=360
    }
}
