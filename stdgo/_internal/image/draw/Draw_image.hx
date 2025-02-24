package stdgo._internal.image.draw;
@:interface typedef Image = stdgo.StructType & {
    @:interfacetypeffun
    function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_color.Color):Void;
    function at(_0:stdgo.GoInt, _1:stdgo.GoInt):stdgo._internal.image.color.Color_color.Color;
    function bounds():stdgo._internal.image.Image_rectangle.Rectangle;
    function colorModel():stdgo._internal.image.color.Color_model.Model;
};
