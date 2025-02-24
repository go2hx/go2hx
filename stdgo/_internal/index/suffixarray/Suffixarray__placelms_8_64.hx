package stdgo._internal.index.suffixarray;
function _placeLMS_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):stdgo.GoInt {
        stdgo._internal.index.suffixarray.Suffixarray__bucketmax_8_64._bucketMax_8_64(_text, _freq, _bucket);
        var _numLMS = (0 : stdgo.GoInt);
        var _lastB = ((-1i64 : stdgo.GoInt64) : stdgo.GoInt64);
        _bucket = (_bucket.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>);
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
if ((_c0 < _c1 : Bool)) {
                    _isTypeS = true;
                } else if (((_c0 > _c1 : Bool) && _isTypeS : Bool)) {
                    _isTypeS = false;
                    var _b = (_bucket[(_c1 : stdgo.GoInt)] - (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    _bucket[(_c1 : stdgo.GoInt)] = _b;
                    _sa[(_b : stdgo.GoInt)] = ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64);
                    _lastB = _b;
                    _numLMS++;
                };
                _i--;
            };
        };
        if ((_numLMS > (1 : stdgo.GoInt) : Bool)) {
            _sa[(_lastB : stdgo.GoInt)] = (0i64 : stdgo.GoInt64);
        };
        return _numLMS;
    }
