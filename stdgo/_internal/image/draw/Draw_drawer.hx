package stdgo._internal.image.draw;
@:interface typedef Drawer = stdgo.StructType & {
    /**
        * Draw aligns r.Min in dst with sp in src and then replaces the
        * rectangle r in dst with the result of drawing src on dst.
        
        
    **/
    @:interfacetypeffun
    public dynamic function draw(_dst:stdgo._internal.image.draw.Draw_image.Image, _r:stdgo._internal.image.Image_rectangle.Rectangle, _src:stdgo._internal.image.Image_image.Image, _sp:stdgo._internal.image.Image_point.Point):Void;
};
