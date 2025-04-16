package stdgo.image.color.palette;
var plan9(get, set) : stdgo.Slice<stdgo._internal.image.color.Color_color.Color>;
private function get_plan9():stdgo.Slice<stdgo._internal.image.color.Color_color.Color> return stdgo._internal.image.color.palette.Palette_plan9.plan9;
private function set_plan9(v:stdgo.Slice<stdgo._internal.image.color.Color_color.Color>):stdgo.Slice<stdgo._internal.image.color.Color_color.Color> {
        stdgo._internal.image.color.palette.Palette_plan9.plan9 = v;
        return v;
    }
var webSafe(get, set) : stdgo.Slice<stdgo._internal.image.color.Color_color.Color>;
private function get_webSafe():stdgo.Slice<stdgo._internal.image.color.Color_color.Color> return stdgo._internal.image.color.palette.Palette_websafe.webSafe;
private function set_webSafe(v:stdgo.Slice<stdgo._internal.image.color.Color_color.Color>):stdgo.Slice<stdgo._internal.image.color.Color_color.Color> {
        stdgo._internal.image.color.palette.Palette_websafe.webSafe = v;
        return v;
    }
/**
    * Package palette provides standard color palettes.
**/
class Palette {

}
