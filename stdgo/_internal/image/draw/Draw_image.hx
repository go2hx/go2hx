package stdgo._internal.image.draw;
@:interface typedef Image = stdgo.StructType & {
    > stdgo._internal.image.Image_image.Image,
    @:interfacetypeffun
    function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_color.Color):Void;
};
