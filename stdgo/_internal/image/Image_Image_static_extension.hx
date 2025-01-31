package stdgo._internal.image;
import stdgo._internal.errors.Errors;
import stdgo._internal.image.color.Color;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.testing.Testing;
import stdgo._internal.strconv.Strconv;
@:keep class Image_static_extension {
    @:interfacetypeffun
    static public function at(t:stdgo._internal.image.Image_Image.Image, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_Color.Color return t.at(_x, _y);
    @:interfacetypeffun
    static public function bounds(t:stdgo._internal.image.Image_Image.Image):stdgo._internal.image.Image_Rectangle.Rectangle return t.bounds();
    @:interfacetypeffun
    static public function colorModel(t:stdgo._internal.image.Image_Image.Image):stdgo._internal.image.color.Color_Model.Model return t.colorModel();
}
