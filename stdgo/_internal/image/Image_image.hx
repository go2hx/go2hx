package stdgo._internal.image;
@:interface typedef Image = stdgo.StructType & {
    @:interfacetypeffun
    function colorModel():stdgo._internal.image.color.Color_model.Model;
    @:interfacetypeffun
    function bounds():stdgo._internal.image.Image_rectangle.Rectangle;
    @:interfacetypeffun
    function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_color.Color;
};
