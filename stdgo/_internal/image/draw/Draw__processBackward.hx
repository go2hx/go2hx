package stdgo._internal.image.draw;
import stdgo._internal.image.internal.imageutil.Imageutil;
import stdgo._internal.image.color.Color;
function _processBackward(_dst:stdgo._internal.image.Image_Image.Image, _r:stdgo._internal.image.Image_Rectangle.Rectangle, _src:stdgo._internal.image.Image_Image.Image, _sp:stdgo._internal.image.Image_Point.Point):Bool {
        return ((stdgo.Go.toInterface(_dst) == (stdgo.Go.toInterface(_src)) && _r.overlaps(_r.add(_sp.sub(_r.min?.__copy__())?.__copy__())?.__copy__()) : Bool) && (((_sp.y < _r.min.y : Bool) || (((_sp.y == _r.min.y) && (_sp.x < _r.min.x : Bool) : Bool)) : Bool)) : Bool);
    }
