package stdgo._internal.index.suffixarray;
function _induceS_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1657"
        stdgo._internal.index.suffixarray.Suffixarray__bucketmax_32._bucketMax_32(_text, _freq, _bucket);
        var _cB = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
        var _b = (_bucket[(_cB : stdgo.GoInt)] : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1662"
        {
            var _i = ((_sa.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                var _j = (_sa[(_i : stdgo.GoInt)] : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1664"
                if ((_j >= (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1667"
                    {
                        _i--;
                        continue;
                    };
                };
_j = -_j;
_sa[(_i : stdgo.GoInt)] = (_j : stdgo.GoInt32);
var _k = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
var _c1 = (_text[(_k : stdgo.GoInt)] : stdgo.GoInt32);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1683"
                if ((_k > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1684"
                    {
                        var _c0 = (_text[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
                        if ((_c0 <= _c1 : Bool)) {
                            _k = -_k;
                        };
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1689"
                if (_cB != (_c1)) {
                    _bucket[(_cB : stdgo.GoInt)] = _b;
                    _cB = _c1;
                    _b = _bucket[(_cB : stdgo.GoInt)];
                };
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1694"
                _b--;
_sa[(_b : stdgo.GoInt)] = (_k : stdgo.GoInt32);
                _i--;
            };
        };
    }
