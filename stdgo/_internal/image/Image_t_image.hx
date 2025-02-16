package stdgo._internal.image;
@:interface typedef T_image = stdgo.StructType & {
    > stdgo._internal.image.Image_image.Image,
    @:interfacetypeffun
    function opaque():Bool;
    @:interfacetypeffun
    function set(_0:stdgo.GoInt, _1:stdgo.GoInt, _2:stdgo._internal.image.color.Color_color.Color):Void;
    @:interfacetypeffun
    function subImage(_0:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_image.Image;
};
