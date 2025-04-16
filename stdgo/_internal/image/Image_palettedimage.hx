package stdgo._internal.image;
@:interface typedef PalettedImage = stdgo.StructType & {
    /**
        * ColorIndexAt returns the palette index of the pixel at (x, y).
        
        
    **/
    @:interfacetypeffun
    public dynamic function colorIndexAt(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoUInt8;
    public dynamic function at(_0:stdgo.GoInt, _1:stdgo.GoInt):stdgo._internal.image.color.Color_color.Color;
    public dynamic function bounds():stdgo._internal.image.Image_rectangle.Rectangle;
    public dynamic function colorModel():stdgo._internal.image.color.Color_model.Model;
};
