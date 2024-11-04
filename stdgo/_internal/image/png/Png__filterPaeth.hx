package stdgo._internal.image.png;
function _filterPaeth(_cdat:stdgo.Slice<stdgo.GoUInt8>, _pdat:stdgo.Slice<stdgo.GoUInt8>, _bytesPerPixel:stdgo.GoInt):Void {
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), __2:stdgo.GoInt = (0 : stdgo.GoInt), __3:stdgo.GoInt = (0 : stdgo.GoInt), __4:stdgo.GoInt = (0 : stdgo.GoInt), __5:stdgo.GoInt = (0 : stdgo.GoInt);
var _pc = __5, _pb = __4, _pa = __3, _c = __2, _b = __1, _a = __0;
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _bytesPerPixel : Bool)) {
                {
                    final __tmp__0 = (0 : stdgo.GoInt);
                    final __tmp__1 = (0 : stdgo.GoInt);
                    _a = __tmp__0;
                    _c = __tmp__1;
                };
{
                    var _j = (_i : stdgo.GoInt);
                    while ((_j < (_cdat.length) : Bool)) {
                        _b = (_pdat[(_j : stdgo.GoInt)] : stdgo.GoInt);
_pa = (_b - _c : stdgo.GoInt);
_pb = (_a - _c : stdgo.GoInt);
_pc = stdgo._internal.image.png.Png__abs._abs((_pa + _pb : stdgo.GoInt));
_pa = stdgo._internal.image.png.Png__abs._abs(_pa);
_pb = stdgo._internal.image.png.Png__abs._abs(_pb);
if (((_pa <= _pb : Bool) && (_pa <= _pc : Bool) : Bool)) {} else if ((_pb <= _pc : Bool)) {
                            _a = _b;
                        } else {
                            _a = _c;
                        };
_a = (_a + ((_cdat[(_j : stdgo.GoInt)] : stdgo.GoInt)) : stdgo.GoInt);
_a = (_a & ((255 : stdgo.GoInt)) : stdgo.GoInt);
_cdat[(_j : stdgo.GoInt)] = (_a : stdgo.GoUInt8);
_c = _b;
                        _j = (_j + (_bytesPerPixel) : stdgo.GoInt);
                    };
                };
                _i++;
            };
        };
    }
