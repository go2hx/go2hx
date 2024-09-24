package stdgo.image.color.palette;
var plan9(get, set) : Array<stdgo._internal.image.color.Color_Color.Color>;
private function get_plan9():Array<stdgo._internal.image.color.Color_Color.Color> return [for (i in stdgo._internal.image.color.palette.Palette_plan9.plan9) i];
private function set_plan9(v:Array<stdgo._internal.image.color.Color_Color.Color>):Array<stdgo._internal.image.color.Color_Color.Color> {
        stdgo._internal.image.color.palette.Palette_plan9.plan9 = ([for (i in v) i] : stdgo.Slice<stdgo._internal.image.color.Color_Color.Color>);
        return v;
    }
var webSafe(get, set) : Array<stdgo._internal.image.color.Color_Color.Color>;
private function get_webSafe():Array<stdgo._internal.image.color.Color_Color.Color> return [for (i in stdgo._internal.image.color.palette.Palette_webSafe.webSafe) i];
private function set_webSafe(v:Array<stdgo._internal.image.color.Color_Color.Color>):Array<stdgo._internal.image.color.Color_Color.Color> {
        stdgo._internal.image.color.palette.Palette_webSafe.webSafe = ([for (i in v) i] : stdgo.Slice<stdgo._internal.image.color.Color_Color.Color>);
        return v;
    }
/**
    Package palette provides standard color palettes.
**/
class Palette {

}
