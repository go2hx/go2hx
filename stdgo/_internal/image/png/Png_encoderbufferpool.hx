package stdgo._internal.image.png;
@:interface typedef EncoderBufferPool = stdgo.StructType & {
    @:interfacetypeffun
    function get():stdgo.Ref<stdgo._internal.image.png.Png_encoderbuffer.EncoderBuffer>;
    @:interfacetypeffun
    function put(_0:stdgo.Ref<stdgo._internal.image.png.Png_encoderbuffer.EncoderBuffer>):Void;
};
