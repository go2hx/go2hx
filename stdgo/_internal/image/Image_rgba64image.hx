package stdgo._internal.image;
@:interface typedef RGBA64Image = stdgo.StructType & {
    /**
        * RGBA64At returns the RGBA64 color of the pixel at (x, y). It is
        * equivalent to calling At(x, y).RGBA() and converting the resulting
        * 32-bit return values to a color.RGBA64, but it can avoid allocations
        * from converting concrete color types to the color.Color interface type.
        
        
    **/
    @:interfacetypeffun
    public dynamic function rGBA64At(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_rgba64.RGBA64;
    public dynamic function at(_0:stdgo.GoInt, _1:stdgo.GoInt):stdgo._internal.image.color.Color_color.Color;
    public dynamic function bounds():stdgo._internal.image.Image_rectangle.Rectangle;
    public dynamic function colorModel():stdgo._internal.image.color.Color_model.Model;
};
