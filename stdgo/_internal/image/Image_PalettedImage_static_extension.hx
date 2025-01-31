package stdgo._internal.image;
import stdgo._internal.errors.Errors;
import stdgo._internal.image.color.Color;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.testing.Testing;
import stdgo._internal.strconv.Strconv;
@:keep class PalettedImage_static_extension {
    @:interfacetypeffun
    static public function colorIndexAt(t:stdgo._internal.image.Image_PalettedImage.PalettedImage, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoUInt8 return t.colorIndexAt(_x, _y);
}
