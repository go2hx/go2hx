package stdgo._internal.image;
typedef PalettedImage = stdgo.StructType & {
    > stdgo._internal.image.Image_Image.Image,
    /**
        ColorIndexAt returns the palette index of the pixel at (x, y).
        
        
    **/
    public dynamic function colorIndexAt(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoUInt8;
};
