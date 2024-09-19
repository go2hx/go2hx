package stdgo._internal.image.draw;
function _clip(_dst:stdgo._internal.image.draw.Draw_Image.Image, _r:stdgo.Ref<stdgo._internal.image.Image_Rectangle.Rectangle>, _src:stdgo._internal.image.Image_Image.Image, _sp:stdgo.Ref<stdgo._internal.image.Image_Point.Point>, _mask:stdgo._internal.image.Image_Image.Image, _mp:stdgo.Ref<stdgo._internal.image.Image_Point.Point>):Void {
        var _orig = (_r.min?.__copy__() : stdgo._internal.image.Image_Point.Point);
        {
            var __tmp__ = _r.intersect(_dst.bounds()?.__copy__())?.__copy__();
            (_r : stdgo._internal.image.Image_Rectangle.Rectangle).min = __tmp__.min;
            (_r : stdgo._internal.image.Image_Rectangle.Rectangle).max = __tmp__.max;
        };
        {
            var __tmp__ = _r.intersect(_src.bounds().add(_orig.sub((_sp : stdgo._internal.image.Image_Point.Point)?.__copy__())?.__copy__())?.__copy__())?.__copy__();
            (_r : stdgo._internal.image.Image_Rectangle.Rectangle).min = __tmp__.min;
            (_r : stdgo._internal.image.Image_Rectangle.Rectangle).max = __tmp__.max;
        };
        if (_mask != null) {
            {
                var __tmp__ = _r.intersect(_mask.bounds().add(_orig.sub((_mp : stdgo._internal.image.Image_Point.Point)?.__copy__())?.__copy__())?.__copy__())?.__copy__();
                (_r : stdgo._internal.image.Image_Rectangle.Rectangle).min = __tmp__.min;
                (_r : stdgo._internal.image.Image_Rectangle.Rectangle).max = __tmp__.max;
            };
        };
        var _dx = (_r.min.x - _orig.x : stdgo.GoInt);
        var _dy = (_r.min.y - _orig.y : stdgo.GoInt);
        if (((_dx == (0 : stdgo.GoInt)) && (_dy == (0 : stdgo.GoInt)) : Bool)) {
            return;
        };
        _sp.x = (_sp.x + (_dx) : stdgo.GoInt);
        _sp.y = (_sp.y + (_dy) : stdgo.GoInt);
        if (_mp != null && ((_mp : Dynamic).__nil__ == null || !(_mp : Dynamic).__nil__)) {
            _mp.x = (_mp.x + (_dx) : stdgo.GoInt);
            _mp.y = (_mp.y + (_dy) : stdgo.GoInt);
        };
    }
