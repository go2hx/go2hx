package stdgo._internal.image.gif;
@:structInit @:using(stdgo._internal.image.gif.Gif_options_static_extension.Options_static_extension) class Options {
    public var numColors : stdgo.GoInt = 0;
    public var quantizer : stdgo._internal.image.draw.Draw_quantizer.Quantizer = (null : stdgo._internal.image.draw.Draw_quantizer.Quantizer);
    public var drawer : stdgo._internal.image.draw.Draw_drawer.Drawer = (null : stdgo._internal.image.draw.Draw_drawer.Drawer);
    public function new(?numColors:stdgo.GoInt, ?quantizer:stdgo._internal.image.draw.Draw_quantizer.Quantizer, ?drawer:stdgo._internal.image.draw.Draw_drawer.Drawer) {
        if (numColors != null) this.numColors = numColors;
        if (quantizer != null) this.quantizer = quantizer;
        if (drawer != null) this.drawer = drawer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Options(numColors, quantizer, drawer);
    }
}
