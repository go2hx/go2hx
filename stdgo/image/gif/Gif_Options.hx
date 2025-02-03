package stdgo.image.gif;
@:structInit @:using(stdgo.image.gif.Gif.Options_static_extension) abstract Options(stdgo._internal.image.gif.Gif_Options.Options) from stdgo._internal.image.gif.Gif_Options.Options to stdgo._internal.image.gif.Gif_Options.Options {
    public var numColors(get, set) : StdTypes.Int;
    function get_numColors():StdTypes.Int return this.numColors;
    function set_numColors(v:StdTypes.Int):StdTypes.Int {
        this.numColors = (v : stdgo.GoInt);
        return v;
    }
    public var quantizer(get, set) : stdgo._internal.image.draw.Draw_Quantizer.Quantizer;
    function get_quantizer():stdgo._internal.image.draw.Draw_Quantizer.Quantizer return this.quantizer;
    function set_quantizer(v:stdgo._internal.image.draw.Draw_Quantizer.Quantizer):stdgo._internal.image.draw.Draw_Quantizer.Quantizer {
        this.quantizer = v;
        return v;
    }
    public var drawer(get, set) : stdgo._internal.image.draw.Draw_Drawer.Drawer;
    function get_drawer():stdgo._internal.image.draw.Draw_Drawer.Drawer return this.drawer;
    function set_drawer(v:stdgo._internal.image.draw.Draw_Drawer.Drawer):stdgo._internal.image.draw.Draw_Drawer.Drawer {
        this.drawer = v;
        return v;
    }
    public function new(?numColors:StdTypes.Int, ?quantizer:stdgo._internal.image.draw.Draw_Quantizer.Quantizer, ?drawer:stdgo._internal.image.draw.Draw_Drawer.Drawer) this = new stdgo._internal.image.gif.Gif_Options.Options((numColors : stdgo.GoInt), quantizer, drawer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
