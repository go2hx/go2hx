package stdgo._internal.image;
@:interface typedef Image = stdgo.StructType & {
    /**
        * ColorModel returns the Image's color model.
        
        
    **/
    @:interfacetypeffun
    public dynamic function colorModel():stdgo._internal.image.color.Color_model.Model;
    /**
        * Bounds returns the domain for which At can return non-zero color.
        * The bounds do not necessarily contain the point (0, 0).
        
        
    **/
    @:interfacetypeffun
    public dynamic function bounds():stdgo._internal.image.Image_rectangle.Rectangle;
    /**
        * At returns the color of the pixel at (x, y).
        * At(Bounds().Min.X, Bounds().Min.Y) returns the upper-left pixel of the grid.
        * At(Bounds().Max.X-1, Bounds().Max.Y-1) returns the lower-right one.
        
        
    **/
    @:interfacetypeffun
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_color.Color;
};
