package stdgo._internal.image;
@:interface typedef RGBA64Image = stdgo.StructType & {
    > stdgo._internal.image.Image_image.Image,
    @:interfacetypeffun
    function rGBA64At(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_rgba64.RGBA64;
};
