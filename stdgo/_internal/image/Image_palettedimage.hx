package stdgo._internal.image;
@:interface typedef PalettedImage = stdgo.StructType & {
    @:interfacetypeffun
    function colorIndexAt(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoUInt8;
    function at(_0:stdgo.GoInt, _1:stdgo.GoInt):stdgo._internal.image.color.Color_color.Color;
    function bounds():stdgo._internal.image.Image_rectangle.Rectangle;
    function colorModel():stdgo._internal.image.color.Color_model.Model;
};
