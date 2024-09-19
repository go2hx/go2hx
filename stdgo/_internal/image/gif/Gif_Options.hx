package stdgo._internal.image.gif;
@:structInit class Options {
    public var numColors : stdgo.GoInt = 0;
    public var quantizer : stdgo._internal.image.draw.Draw_Quantizer.Quantizer = (null : stdgo._internal.image.draw.Draw_Quantizer.Quantizer);
    public var drawer : stdgo._internal.image.draw.Draw_Drawer.Drawer = (null : stdgo._internal.image.draw.Draw_Drawer.Drawer);
    public function new(?numColors:stdgo.GoInt, ?quantizer:stdgo._internal.image.draw.Draw_Quantizer.Quantizer, ?drawer:stdgo._internal.image.draw.Draw_Drawer.Drawer) {
        if (numColors != null) this.numColors = numColors;
        if (quantizer != null) this.quantizer = quantizer;
        if (drawer != null) this.drawer = drawer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Options(numColors, quantizer, drawer);
    }
}
