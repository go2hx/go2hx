package stdgo._internal.index.suffixarray;
function _induceSubS_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L869"
        stdgo._internal.index.suffixarray.Suffixarray__bucketmax_64._bucketMax_64(_text, _freq, _bucket);
        var _cB = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
        var _b = (_bucket[(_cB : stdgo.GoInt)] : stdgo.GoInt64);
        var _top = (_sa.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L895"
        {
            var _i = ((_sa.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                var _j = (_sa[(_i : stdgo.GoInt)] : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L897"
                if (_j == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L899"
                    {
                        _i--;
                        continue;
                    };
                };
_sa[(_i : stdgo.GoInt)] = (0i64 : stdgo.GoInt64);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L902"
                if ((_j < (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L904"
                    _top--;
                    _sa[(_top : stdgo.GoInt)] = (-_j : stdgo.GoInt64);
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L906"
                    {
                        _i--;
                        continue;
                    };
                };
var _k = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
var _c1 = (_text[(_k : stdgo.GoInt)] : stdgo.GoInt64);
var _c0 = (_text[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt64);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L916"
                if ((_c0 > _c1 : Bool)) {
                    _k = -_k;
                };
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L920"
                if (_cB != (_c1)) {
                    _bucket[(_cB : stdgo.GoInt)] = _b;
                    _cB = _c1;
                    _b = _bucket[(_cB : stdgo.GoInt)];
                };
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L925"
                _b--;
_sa[(_b : stdgo.GoInt)] = (_k : stdgo.GoInt64);
                _i--;
            };
        };
    }
