package stdgo._internal.image;
import stdgo._internal.errors.Errors;
import stdgo._internal.image.color.Color;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.testing.Testing;
import stdgo._internal.strconv.Strconv;
@:keep class T_image_static_extension {
    @:interfacetypeffun
    static public function subImage(t:stdgo._internal.image.Image_T_image.T_image, _0:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Image.Image return t.subImage(_0);
    @:interfacetypeffun
    static public function set(t:stdgo._internal.image.Image_T_image.T_image, _0:stdgo.GoInt, _1:stdgo.GoInt, _2:stdgo._internal.image.color.Color_Color.Color):Void t.set(_0, _1, _2);
    @:interfacetypeffun
    static public function opaque(t:stdgo._internal.image.Image_T_image.T_image):Bool return t.opaque();
}
