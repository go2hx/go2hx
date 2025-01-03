package stdgo._internal.image.draw;
typedef Drawer = stdgo.StructType & {
    /**
        Draw aligns r.Min in dst with sp in src and then replaces the
        rectangle r in dst with the result of drawing src on dst.
        
        
    **/
    @:interfacetypeffun
    public dynamic function draw(_dst:stdgo._internal.image.draw.Draw_Image.Image, _r:stdgo._internal.image.Image_Rectangle.Rectangle, _src:stdgo._internal.image.Image_Image.Image, _sp:stdgo._internal.image.Image_Point.Point):Void;
};
