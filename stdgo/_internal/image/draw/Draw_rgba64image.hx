package stdgo._internal.image.draw;
@:interface typedef RGBA64Image = stdgo.StructType & {
    > stdgo._internal.image.Image_rgba64image.RGBA64Image,
    @:interfacetypeffun
    function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_color.Color):Void;
    @:interfacetypeffun
    function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_rgba64.RGBA64):Void;
};
