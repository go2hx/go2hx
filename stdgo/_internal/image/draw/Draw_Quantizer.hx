package stdgo._internal.image.draw;
typedef Quantizer = stdgo.StructType & {
    /**
        Quantize appends up to cap(p) - len(p) colors to p and returns the
        updated palette suitable for converting m to a paletted image.
        
        
    **/
    public dynamic function quantize(_p:stdgo._internal.image.color.Color_Palette.Palette, _m:stdgo._internal.image.Image_Image.Image):stdgo._internal.image.color.Color_Palette.Palette;
};
