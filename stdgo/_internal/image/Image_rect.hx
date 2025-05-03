package stdgo._internal.image;
function rect(_x0:stdgo.GoInt, _y0:stdgo.GoInt, _x1:stdgo.GoInt, _y1:stdgo.GoInt):stdgo._internal.image.Image_rectangle.Rectangle {
        //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L276"
        if ((_x0 > _x1 : Bool)) {
            {
                final __tmp__0 = _x1;
                final __tmp__1 = _x0;
                _x0 = @:binopAssign __tmp__0;
                _x1 = @:binopAssign __tmp__1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L279"
        if ((_y0 > _y1 : Bool)) {
            {
                final __tmp__0 = _y1;
                final __tmp__1 = _y0;
                _y0 = @:binopAssign __tmp__0;
                _y1 = @:binopAssign __tmp__1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L282"
        return (new stdgo._internal.image.Image_rectangle.Rectangle((new stdgo._internal.image.Image_point.Point(_x0, _y0) : stdgo._internal.image.Image_point.Point), (new stdgo._internal.image.Image_point.Point(_x1, _y1) : stdgo._internal.image.Image_point.Point)) : stdgo._internal.image.Image_rectangle.Rectangle);
    }
