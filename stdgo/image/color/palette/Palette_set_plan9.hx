package stdgo.image.color.palette;
private function set_plan9(v:Array<stdgo._internal.image.color.Color_Color.Color>):Array<stdgo._internal.image.color.Color_Color.Color> {
        stdgo._internal.image.color.palette.Palette_plan9.plan9 = ([for (i in v) i] : stdgo.Slice<stdgo._internal.image.color.Color_Color.Color>);
        return v;
    }
