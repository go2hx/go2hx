package stdgo._internal.image.gif;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.image.Image;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.image.draw.Draw;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.compress.lzw.Lzw;
import stdgo._internal.bytes.Bytes;
@:structInit @:using(stdgo._internal.image.gif.Gif_Options_static_extension.Options_static_extension) class Options {
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
