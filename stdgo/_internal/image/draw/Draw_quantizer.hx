package stdgo._internal.image.draw;
@:interface typedef Quantizer = stdgo.StructType & {
    @:interfacetypeffun
    function quantize(_p:stdgo._internal.image.color.Color_palette.Palette, _m:stdgo._internal.image.Image_image.Image):stdgo._internal.image.color.Color_palette.Palette;
};
