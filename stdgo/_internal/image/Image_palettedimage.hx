package stdgo._internal.image;
@:interface typedef PalettedImage = stdgo.StructType & {
    > stdgo._internal.image.Image_image.Image,
    @:interfacetypeffun
    function colorIndexAt(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoUInt8;
};
