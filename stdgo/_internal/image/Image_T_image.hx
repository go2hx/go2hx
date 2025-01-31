package stdgo._internal.image;
import stdgo._internal.errors.Errors;
import stdgo._internal.image.color.Color;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.testing.Testing;
import stdgo._internal.strconv.Strconv;
@:interface typedef T_image = stdgo.StructType & {
    > stdgo._internal.image.Image_Image.Image,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function opaque():Bool;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function set(_0:stdgo.GoInt, _1:stdgo.GoInt, _2:stdgo._internal.image.color.Color_Color.Color):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function subImage(_0:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Image.Image;
};
