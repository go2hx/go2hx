package stdgo._internal.image.jpeg;
function _grayToY(_m:stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>, _p:stdgo._internal.image.Image_Point.Point, _yBlock:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>):Void {
        var _b = (_m.bounds()?.__copy__() : stdgo._internal.image.Image_Rectangle.Rectangle);
        var _xmax = (_b.max.x - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _ymax = (_b.max.y - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _pix = _m.pix;
        {
            var _j = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_j < (8 : stdgo.GoInt) : Bool), _j++, {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (8 : stdgo.GoInt) : Bool), _i++, {
                        var _idx = (_m.pixOffset(stdgo._internal.image.jpeg.Jpeg__min._min((_p.x + _i : stdgo.GoInt), _xmax), stdgo._internal.image.jpeg.Jpeg__min._min((_p.y + _j : stdgo.GoInt), _ymax)) : stdgo.GoInt);
                        _yBlock[(((8 : stdgo.GoInt) * _j : stdgo.GoInt) + _i : stdgo.GoInt)] = (_pix[(_idx : stdgo.GoInt)] : stdgo.GoInt32);
                    });
                };
            });
        };
    }
