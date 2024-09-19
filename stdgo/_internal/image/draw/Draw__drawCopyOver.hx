package stdgo._internal.image.draw;
function _drawCopyOver(_dst:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>, _r:stdgo._internal.image.Image_Rectangle.Rectangle, _src:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>, _sp:stdgo._internal.image.Image_Point.Point):Void {
        var __0 = (_r.dx() : stdgo.GoInt), __1 = (_r.dy() : stdgo.GoInt);
var _dy = __1, _dx = __0;
        var _d0 = (_dst.pixOffset(_r.min.x, _r.min.y) : stdgo.GoInt);
        var _s0 = (_src.pixOffset(_sp.x, _sp.y) : stdgo.GoInt);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), __2:stdgo.GoInt = (0 : stdgo.GoInt), __3:stdgo.GoInt = (0 : stdgo.GoInt), __4:stdgo.GoInt = (0 : stdgo.GoInt);
var _idelta = __4, _i1 = __3, _i0 = __2, _sdelta = __1, _ddelta = __0;
        if (((_r.min.y < _sp.y : Bool) || (_r.min.y == (_sp.y) && (_r.min.x <= _sp.x : Bool) : Bool) : Bool)) {
            _ddelta = _dst.stride;
            _sdelta = _src.stride;
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = (_dx * (4 : stdgo.GoInt) : stdgo.GoInt);
                final __tmp__2 = (4 : stdgo.GoInt);
                _i0 = __tmp__0;
                _i1 = __tmp__1;
                _idelta = __tmp__2;
            };
        } else {
            _d0 = (_d0 + ((((_dy - (1 : stdgo.GoInt) : stdgo.GoInt)) * _dst.stride : stdgo.GoInt)) : stdgo.GoInt);
            _s0 = (_s0 + ((((_dy - (1 : stdgo.GoInt) : stdgo.GoInt)) * _src.stride : stdgo.GoInt)) : stdgo.GoInt);
            _ddelta = -_dst.stride;
            _sdelta = -_src.stride;
            {
                final __tmp__0 = (((_dx - (1 : stdgo.GoInt) : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt);
                final __tmp__1 = (-4 : stdgo.GoInt);
                final __tmp__2 = (-4 : stdgo.GoInt);
                _i0 = __tmp__0;
                _i1 = __tmp__1;
                _idelta = __tmp__2;
            };
        };
        stdgo.Go.cfor((_dy > (0 : stdgo.GoInt) : Bool), _dy--, {
            var _dpix = (_dst.pix.__slice__(_d0) : stdgo.Slice<stdgo.GoUInt8>);
            var _spix = (_src.pix.__slice__(_s0) : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _i = (_i0 : stdgo.GoInt);
                stdgo.Go.cfor(_i != (_i1), _i = (_i + (_idelta) : stdgo.GoInt), {
                    var _s = (_spix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    var _sr = ((_s[(0 : stdgo.GoInt)] : stdgo.GoUInt32) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                    var _sg = ((_s[(1 : stdgo.GoInt)] : stdgo.GoUInt32) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                    var _sb = ((_s[(2 : stdgo.GoInt)] : stdgo.GoUInt32) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                    var _sa = ((_s[(3 : stdgo.GoInt)] : stdgo.GoUInt32) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                    var _a = ((((65535u32 : stdgo.GoUInt32) - _sa : stdgo.GoUInt32)) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                    var _d = (_dpix.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt), (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _d[(0 : stdgo.GoInt)] = (((((((_d[(0 : stdgo.GoInt)] : stdgo.GoUInt32) * _a : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + _sr : stdgo.GoUInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
                    _d[(1 : stdgo.GoInt)] = (((((((_d[(1 : stdgo.GoInt)] : stdgo.GoUInt32) * _a : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + _sg : stdgo.GoUInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
                    _d[(2 : stdgo.GoInt)] = (((((((_d[(2 : stdgo.GoInt)] : stdgo.GoUInt32) * _a : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + _sb : stdgo.GoUInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
                    _d[(3 : stdgo.GoInt)] = (((((((_d[(3 : stdgo.GoInt)] : stdgo.GoUInt32) * _a : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + _sa : stdgo.GoUInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
                });
            };
            _d0 = (_d0 + (_ddelta) : stdgo.GoInt);
            _s0 = (_s0 + (_sdelta) : stdgo.GoInt);
        });
    }