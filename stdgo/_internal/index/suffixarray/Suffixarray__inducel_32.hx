package stdgo._internal.index.suffixarray;
function _induceL_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1492"
        stdgo._internal.index.suffixarray.Suffixarray__bucketmin_32._bucketMin_32(_text, _freq, _bucket);
        var _k = ((_text.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        var __0 = (_text[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32), __1 = (_text[(_k : stdgo.GoInt)] : stdgo.GoInt32);
var _c1 = __1, _c0 = __0;
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1506"
        if ((_c0 < _c1 : Bool)) {
            _k = -_k;
        };
        var _cB = (_c1 : stdgo.GoInt32);
        var _b = (_bucket[(_cB : stdgo.GoInt)] : stdgo.GoInt32);
        _sa[(_b : stdgo.GoInt)] = (_k : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1514"
        _b++;
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1516"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_sa.length) : Bool)) {
                var _j = (_sa[(_i : stdgo.GoInt)] : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1518"
                if ((_j <= (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1520"
                    {
                        _i++;
                        continue;
                    };
                };
var _k = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
var _c1 = (_text[(_k : stdgo.GoInt)] : stdgo.GoInt32);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1534"
                if ((_k > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1535"
                    {
                        var _c0 = (_text[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
                        if ((_c0 < _c1 : Bool)) {
                            _k = -_k;
                        };
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1540"
                if (_cB != (_c1)) {
                    _bucket[(_cB : stdgo.GoInt)] = _b;
                    _cB = _c1;
                    _b = _bucket[(_cB : stdgo.GoInt)];
                };
_sa[(_b : stdgo.GoInt)] = (_k : stdgo.GoInt32);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1546"
                _b++;
                _i++;
            };
        };
    }
