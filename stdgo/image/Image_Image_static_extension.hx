package stdgo.image;
class Image_static_extension {
    static public function at(t:stdgo._internal.image.Image_Image.Image, _x:StdTypes.Int, _y:StdTypes.Int):Color {
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_Image_static_extension.Image_static_extension.at(t, _x, _y);
    }
    static public function bounds(t:stdgo._internal.image.Image_Image.Image):Rectangle {
        return stdgo._internal.image.Image_Image_static_extension.Image_static_extension.bounds(t);
    }
    static public function colorModel(t:stdgo._internal.image.Image_Image.Image):Model {
        return stdgo._internal.image.Image_Image_static_extension.Image_static_extension.colorModel(t);
    }
}
