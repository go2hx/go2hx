package stdgo._internal.index.suffixarray;
function _length_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):Void {
        var _end = (0 : stdgo.GoInt);
        var _cx = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var __0 = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8), __1 = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8), __2 = (false : Bool);
var _isTypeS = __2, _c1 = __1, _c0 = __0;
        {
            var _i = ((_text.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = _text[(_i : stdgo.GoInt)];
                    final __tmp__1 = _c0;
                    _c0 = __tmp__0;
                    _c1 = __tmp__1;
                };
_cx = ((_cx << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((_c1 + (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt32) : stdgo.GoUInt32);
if ((_c0 < _c1 : Bool)) {
                    _isTypeS = true;
                } else if (((_c0 > _c1 : Bool) && _isTypeS : Bool)) {
                    _isTypeS = false;
                    var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    var _code:stdgo.GoInt32 = (0 : stdgo.GoInt32);
                    if (_end == ((0 : stdgo.GoInt))) {
                        _code = (0 : stdgo.GoInt32);
                    } else {
                        _code = ((_end - _j : stdgo.GoInt) : stdgo.GoInt32);
                        if (((_code <= (4 : stdgo.GoInt32) : Bool) && ((-1 ^ _cx) >= (_text.length : stdgo.GoUInt32) : Bool) : Bool)) {
                            _code = (-1 ^ _cx : stdgo.GoInt32);
                        };
                    };
                    _sa[(_j >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt)] = _code;
                    _end = (_j + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _cx = ((_c1 + (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt32);
                };
                _i--;
            };
        };
    }
