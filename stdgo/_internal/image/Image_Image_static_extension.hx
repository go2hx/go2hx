package stdgo._internal.image;
@:keep class Image_static_extension {
    static public function at(t:Image, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_Color.Color return t.at(_x, _y);
    static public function bounds(t:Image):stdgo._internal.image.Image_Rectangle.Rectangle return t.bounds();
    static public function colorModel(t:Image):stdgo._internal.image.color.Color_Model.Model return t.colorModel();
}