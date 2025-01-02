package stdgo._internal.image;
@:keep class T_image_static_extension {
    @:interfacetypeffun
    static public function subImage(t:stdgo._internal.image.Image_T_image.T_image, _0:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Image.Image return t.subImage(_0);
    @:interfacetypeffun
    static public function set(t:stdgo._internal.image.Image_T_image.T_image, _0:stdgo.GoInt, _1:stdgo.GoInt, _2:stdgo._internal.image.color.Color_Color.Color):Void t.set(_0, _1, _2);
    @:interfacetypeffun
    static public function opaque(t:stdgo._internal.image.Image_T_image.T_image):Bool return t.opaque();
}
