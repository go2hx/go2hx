package stdgo._internal.image.draw;
@:interface typedef Quantizer = stdgo.StructType & {
    /**
        * Quantize appends up to cap(p) - len(p) colors to p and returns the
        * updated palette suitable for converting m to a paletted image.
        
        
    **/
    @:interfacetypeffun
    public dynamic function quantize(_p:stdgo._internal.image.color.Color_palette.Palette, _m:stdgo._internal.image.Image_image.Image):stdgo._internal.image.color.Color_palette.Palette;
};
