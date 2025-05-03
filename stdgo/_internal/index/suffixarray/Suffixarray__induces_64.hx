package stdgo._internal.index.suffixarray;
function _induceS_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1701"
        stdgo._internal.index.suffixarray.Suffixarray__bucketmax_64._bucketMax_64(_text, _freq, _bucket);
        var _cB = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
        var _b = (_bucket[(_cB : stdgo.GoInt)] : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1706"
        {
            var _i = ((_sa.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                var _j = (_sa[(_i : stdgo.GoInt)] : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1708"
                if ((_j >= (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1711"
                    {
                        _i--;
                        continue;
                    };
                };
_j = -_j;
_sa[(_i : stdgo.GoInt)] = (_j : stdgo.GoInt64);
var _k = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
var _c1 = (_text[(_k : stdgo.GoInt)] : stdgo.GoInt64);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1727"
                if ((_k > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1728"
                    {
                        var _c0 = (_text[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt64);
                        if ((_c0 <= _c1 : Bool)) {
                            _k = -_k;
                        };
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1733"
                if (_cB != (_c1)) {
                    _bucket[(_cB : stdgo.GoInt)] = _b;
                    _cB = _c1;
                    _b = _bucket[(_cB : stdgo.GoInt)];
                };
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1738"
                _b--;
_sa[(_b : stdgo.GoInt)] = (_k : stdgo.GoInt64);
                _i--;
            };
        };
    }
