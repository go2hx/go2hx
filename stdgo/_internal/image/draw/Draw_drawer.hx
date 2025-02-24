package stdgo._internal.image.draw;
@:interface typedef Drawer = stdgo.StructType & {
    @:interfacetypeffun
    function draw(_dst:stdgo._internal.image.draw.Draw_image.Image, _r:stdgo._internal.image.Image_rectangle.Rectangle, _src:stdgo._internal.image.Image_image.Image, _sp:stdgo._internal.image.Image_point.Point):Void;
};
