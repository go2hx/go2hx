package stdgo._internal.image.draw;
@:keep @:allow(stdgo._internal.image.draw.Draw.T_floydSteinberg_asInterface) class T_floydSteinberg_static_extension {
    @:keep
    static public function draw( _:stdgo._internal.image.draw.Draw_T_floydSteinberg.T_floydSteinberg, _dst:stdgo._internal.image.draw.Draw_Image.Image, _r:stdgo._internal.image.Image_Rectangle.Rectangle, _src:stdgo._internal.image.Image_Image.Image, _sp:stdgo._internal.image.Image_Point.Point):Void {
        @:recv var _:stdgo._internal.image.draw.Draw_T_floydSteinberg.T_floydSteinberg = _?.__copy__();
        stdgo._internal.image.draw.Draw__clip._clip(_dst, (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.image.Image_Rectangle.Rectangle>), _src, (stdgo.Go.setRef(_sp) : stdgo.Ref<stdgo._internal.image.Image_Point.Point>), (null : stdgo._internal.image.Image_Image.Image), null);
        if (_r.empty()) {
            return;
        };
        stdgo._internal.image.draw.Draw__drawPaletted._drawPaletted(_dst, _r?.__copy__(), _src, _sp?.__copy__(), true);
    }
}