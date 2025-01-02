package stdgo._internal.image;
@:keep class Image_static_extension {
    @:interfacetypeffun
    static public function at(t:stdgo._internal.image.Image_Image.Image, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_Color.Color return t.at(_x, _y);
    @:interfacetypeffun
    static public function bounds(t:stdgo._internal.image.Image_Image.Image):stdgo._internal.image.Image_Rectangle.Rectangle return t.bounds();
    @:interfacetypeffun
    static public function colorModel(t:stdgo._internal.image.Image_Image.Image):stdgo._internal.image.color.Color_Model.Model return t.colorModel();
}
