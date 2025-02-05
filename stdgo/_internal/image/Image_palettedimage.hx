package stdgo._internal.image;
@:interface typedef PalettedImage = stdgo.StructType & {
    > stdgo._internal.image.Image_image.Image,
    /**
        * ColorIndexAt returns the palette index of the pixel at (x, y).
        
        
    **/
    @:interfacetypeffun
    public dynamic function colorIndexAt(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoUInt8;
};
