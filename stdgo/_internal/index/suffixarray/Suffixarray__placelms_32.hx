package stdgo._internal.index.suffixarray;
function _placeLMS_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L379"
        stdgo._internal.index.suffixarray.Suffixarray__bucketmax_32._bucketMax_32(_text, _freq, _bucket);
        var _numLMS = (0 : stdgo.GoInt);
        var _lastB = ((-1 : stdgo.GoInt32) : stdgo.GoInt32);
        var __0 = ((0 : stdgo.GoInt32) : stdgo.GoInt32), __1 = ((0 : stdgo.GoInt32) : stdgo.GoInt32), __2 = (false : Bool);
var _isTypeS = __2, _c1 = __1, _c0 = __0;
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L410"
        {
            var _i = ((_text.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = _text[(_i : stdgo.GoInt)];
                    final __tmp__1 = _c0;
                    _c0 = @:binopAssign __tmp__0;
                    _c1 = @:binopAssign __tmp__1;
                };
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L412"
                if ((_c0 < _c1 : Bool)) {
                    _isTypeS = true;
                } else if (((_c0 > _c1 : Bool) && _isTypeS : Bool)) {
                    _isTypeS = false;
                    var _b = (_bucket[(_c1 : stdgo.GoInt)] - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                    _bucket[(_c1 : stdgo.GoInt)] = _b;
                    _sa[(_b : stdgo.GoInt)] = ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32);
                    _lastB = _b;
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L422"
                    _numLMS++;
                };
                _i--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L437"
        if ((_numLMS > (1 : stdgo.GoInt) : Bool)) {
            _sa[(_lastB : stdgo.GoInt)] = (0 : stdgo.GoInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L440"
        return _numLMS;
    }
