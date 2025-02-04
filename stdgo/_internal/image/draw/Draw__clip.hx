package stdgo._internal.image.draw;
function _clip(_dst:stdgo._internal.image.draw.Draw_image.Image, _r:stdgo.Ref<stdgo._internal.image.Image_rectangle.Rectangle>, _src:stdgo._internal.image.Image_image.Image, _sp:stdgo.Ref<stdgo._internal.image.Image_point.Point>, _mask:stdgo._internal.image.Image_image.Image, _mp:stdgo.Ref<stdgo._internal.image.Image_point.Point>):Void {
        var _orig = ((@:checkr _r ?? throw "null pointer dereference").min?.__copy__() : stdgo._internal.image.Image_point.Point);
        {
            var __tmp__ = (@:checkr _r ?? throw "null pointer dereference").intersect(_dst.bounds()?.__copy__())?.__copy__();
            var x = (_r : stdgo._internal.image.Image_rectangle.Rectangle);
            x.min = __tmp__?.min;
            x.max = __tmp__?.max;
        };
        {
            var __tmp__ = (@:checkr _r ?? throw "null pointer dereference").intersect(_src.bounds().add(_orig.sub((_sp : stdgo._internal.image.Image_point.Point)?.__copy__())?.__copy__())?.__copy__())?.__copy__();
            var x = (_r : stdgo._internal.image.Image_rectangle.Rectangle);
            x.min = __tmp__?.min;
            x.max = __tmp__?.max;
        };
        if (_mask != null) {
            {
                var __tmp__ = (@:checkr _r ?? throw "null pointer dereference").intersect(_mask.bounds().add(_orig.sub((_mp : stdgo._internal.image.Image_point.Point)?.__copy__())?.__copy__())?.__copy__())?.__copy__();
                var x = (_r : stdgo._internal.image.Image_rectangle.Rectangle);
                x.min = __tmp__?.min;
                x.max = __tmp__?.max;
            };
        };
        var _dx = ((@:checkr _r ?? throw "null pointer dereference").min.x - _orig.x : stdgo.GoInt);
        var _dy = ((@:checkr _r ?? throw "null pointer dereference").min.y - _orig.y : stdgo.GoInt);
        if (((_dx == (0 : stdgo.GoInt)) && (_dy == (0 : stdgo.GoInt)) : Bool)) {
            return;
        };
        (@:checkr _sp ?? throw "null pointer dereference").x = ((@:checkr _sp ?? throw "null pointer dereference").x + (_dx) : stdgo.GoInt);
        (@:checkr _sp ?? throw "null pointer dereference").y = ((@:checkr _sp ?? throw "null pointer dereference").y + (_dy) : stdgo.GoInt);
        if ((_mp != null && ((_mp : Dynamic).__nil__ == null || !(_mp : Dynamic).__nil__))) {
            (@:checkr _mp ?? throw "null pointer dereference").x = ((@:checkr _mp ?? throw "null pointer dereference").x + (_dx) : stdgo.GoInt);
            (@:checkr _mp ?? throw "null pointer dereference").y = ((@:checkr _mp ?? throw "null pointer dereference").y + (_dy) : stdgo.GoInt);
        };
    }
