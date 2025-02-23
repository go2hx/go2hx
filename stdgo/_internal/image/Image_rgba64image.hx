package stdgo._internal.image;
@:interface typedef RGBA64Image = stdgo.StructType & {
    @:interfacetypeffun
    function rGBA64At(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_rgba64.RGBA64;
    function at(_0:stdgo.GoInt, _1:stdgo.GoInt):stdgo._internal.image.color.Color_color.Color;
    function bounds():stdgo._internal.image.Image_rectangle.Rectangle;
    function colorModel():stdgo._internal.image.color.Color_model.Model;
};
