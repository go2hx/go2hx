package stdgo._internal.image.png;
function _filterPaeth(_cdat:stdgo.Slice<stdgo.GoUInt8>, _pdat:stdgo.Slice<stdgo.GoUInt8>, _bytesPerPixel:stdgo.GoInt):Void {
        var _a:stdgo.GoInt = (0 : stdgo.GoInt), _b:stdgo.GoInt = (0 : stdgo.GoInt), _c:stdgo.GoInt = (0 : stdgo.GoInt), _pa:stdgo.GoInt = (0 : stdgo.GoInt), _pb:stdgo.GoInt = (0 : stdgo.GoInt), _pc:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _bytesPerPixel : Bool)) {
                {
                    final __tmp__0 = (0 : stdgo.GoInt);
                    final __tmp__1 = (0 : stdgo.GoInt);
                    _a = @:binopAssign __tmp__0;
                    _c = @:binopAssign __tmp__1;
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
