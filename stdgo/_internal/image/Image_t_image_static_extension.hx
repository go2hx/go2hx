package stdgo._internal.image;
@:keep class T_image_static_extension {
    @:interfacetypeffun
    static public function subImage(t:stdgo._internal.image.Image_t_image.T_image, _0:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_image.Image return t.subImage(_0);
    @:interfacetypeffun
    static public function set(t:stdgo._internal.image.Image_t_image.T_image, _0:stdgo.GoInt, _1:stdgo.GoInt, _2:stdgo._internal.image.color.Color_color.Color):Void t.set(_0, _1, _2);
    @:interfacetypeffun
    static public function opaque(t:stdgo._internal.image.Image_t_image.T_image):Bool return t.opaque();
}
