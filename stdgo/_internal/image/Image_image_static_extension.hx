package stdgo._internal.image;
@:keep class Image_static_extension {
    @:interfacetypeffun
    static public function at(t:stdgo._internal.image.Image_image.Image, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_color.Color return t.at(_x, _y);
    @:interfacetypeffun
    static public function bounds(t:stdgo._internal.image.Image_image.Image):stdgo._internal.image.Image_rectangle.Rectangle return t.bounds();
    @:interfacetypeffun
    static public function colorModel(t:stdgo._internal.image.Image_image.Image):stdgo._internal.image.color.Color_model.Model return t.colorModel();
}
