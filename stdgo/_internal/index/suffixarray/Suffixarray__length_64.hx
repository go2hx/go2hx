package stdgo._internal.index.suffixarray;
function _length_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):Void {
        var _end = (0 : stdgo.GoInt);
        var __0 = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64), __1 = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64), __2 = (false : Bool);
var _isTypeS = __2, _c1 = __1, _c0 = __0;
        {
            var _i = ((_text.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                {
                    final __tmp__0 = _text[(_i : stdgo.GoInt)];
                    final __tmp__1 = _c0;
                    _c0 = __tmp__0;
                    _c1 = __tmp__1;
                };
                if ((_c0 < _c1 : Bool)) {
                    _isTypeS = true;
                } else if (((_c0 > _c1 : Bool) && _isTypeS : Bool)) {
                    _isTypeS = false;
                    var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    var _code:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                    if (_end == ((0 : stdgo.GoInt))) {
                        _code = (0i64 : stdgo.GoInt64);
                    } else {
                        _code = ((_end - _j : stdgo.GoInt) : stdgo.GoInt64);
                    };
                    _sa[(_j >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt)] = _code;
                    _end = (_j + (1 : stdgo.GoInt) : stdgo.GoInt);
                };
            });
        };
    }