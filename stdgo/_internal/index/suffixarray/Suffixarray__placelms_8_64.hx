package stdgo._internal.index.suffixarray;
function _placeLMS_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L313"
        stdgo._internal.index.suffixarray.Suffixarray__bucketmax_8_64._bucketMax_8_64(_text, _freq, _bucket);
        var _numLMS = (0 : stdgo.GoInt);
        var _lastB = ((-1i64 : stdgo.GoInt64) : stdgo.GoInt64);
        _bucket = (_bucket.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>);
        var __0 = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8), __1 = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8), __2 = (false : Bool);
var _isTypeS = __2, _c1 = __1, _c0 = __0;
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L345"
        {
            var _i = ((_text.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = _text[(_i : stdgo.GoInt)];
                    final __tmp__1 = _c0;
                    _c0 = @:binopAssign __tmp__0;
                    _c1 = @:binopAssign __tmp__1;
                };
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L347"
                if ((_c0 < _c1 : Bool)) {
                    _isTypeS = true;
                } else if (((_c0 > _c1 : Bool) && _isTypeS : Bool)) {
                    _isTypeS = false;
                    var _b = (_bucket[(_c1 : stdgo.GoInt)] - (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    _bucket[(_c1 : stdgo.GoInt)] = _b;
                    _sa[(_b : stdgo.GoInt)] = ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64);
                    _lastB = _b;
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L357"
                    _numLMS++;
                };
                _i--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L372"
        if ((_numLMS > (1 : stdgo.GoInt) : Bool)) {
            _sa[(_lastB : stdgo.GoInt)] = (0i64 : stdgo.GoInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L375"
        return _numLMS;
    }
