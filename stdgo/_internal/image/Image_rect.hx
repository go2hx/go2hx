package stdgo._internal.image;
function rect(_x0:stdgo.GoInt, _y0:stdgo.GoInt, _x1:stdgo.GoInt, _y1:stdgo.GoInt):stdgo._internal.image.Image_rectangle.Rectangle {
        if ((_x0 > _x1 : Bool)) {
            {
                final __tmp__0 = _x1;
                final __tmp__1 = _x0;
                _x0 = __tmp__0;
                _x1 = __tmp__1;
            };
        };
        if ((_y0 > _y1 : Bool)) {
            {
                final __tmp__0 = _y1;
                final __tmp__1 = _y0;
                _y0 = __tmp__0;
                _y1 = __tmp__1;
            };
        };
        return (new stdgo._internal.image.Image_rectangle.Rectangle((new stdgo._internal.image.Image_point.Point(_x0, _y0) : stdgo._internal.image.Image_point.Point), (new stdgo._internal.image.Image_point.Point(_x1, _y1) : stdgo._internal.image.Image_point.Point)) : stdgo._internal.image.Image_rectangle.Rectangle);
    }
