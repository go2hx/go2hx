package stdgo._internal.image.jpeg;
function _grayToY(_m:stdgo.Ref<stdgo._internal.image.Image_gray.Gray>, _p:stdgo._internal.image.Image_point.Point, _yBlock:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>):Void {
        var _b = (_m.bounds()?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
        var _xmax = (_b.max.x - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _ymax = (_b.max.y - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _pix = (@:checkr _m ?? throw "null pointer dereference").pix;
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L411"
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < (8 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L412"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (8 : stdgo.GoInt) : Bool)) {
                        var _idx = (_m.pixOffset(stdgo._internal.image.jpeg.Jpeg__min._min((_p.x + _i : stdgo.GoInt), _xmax), stdgo._internal.image.jpeg.Jpeg__min._min((_p.y + _j : stdgo.GoInt), _ymax)) : stdgo.GoInt);
_yBlock[(((8 : stdgo.GoInt) * _j : stdgo.GoInt) + _i : stdgo.GoInt)] = (_pix[(_idx : stdgo.GoInt)] : stdgo.GoInt32);
                        _i++;
                    };
                };
                _j++;
            };
        };
    }
