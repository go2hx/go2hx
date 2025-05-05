package stdgo._internal.index.suffixarray;
function _induceSubL_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L665"
        stdgo._internal.index.suffixarray.Suffixarray__bucketmin_64._bucketMin_64(_text, _freq, _bucket);
        var _k = ((_text.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        var __0 = (_text[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt64), __1 = (_text[(_k : stdgo.GoInt)] : stdgo.GoInt64);
var _c1 = __1, _c0 = __0;
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L692"
        if ((_c0 < _c1 : Bool)) {
            _k = -_k;
        };
        var _cB = (_c1 : stdgo.GoInt64);
        var _b = (_bucket[(_cB : stdgo.GoInt)] : stdgo.GoInt64);
        _sa[(_b : stdgo.GoInt)] = (_k : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L705"
        _b++;
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L707"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_sa.length) : Bool)) {
                var _j = (_sa[(_i : stdgo.GoInt)] : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L709"
                if (_j == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L711"
                    {
                        _i++;
                        continue;
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L713"
                if ((_j < (0 : stdgo.GoInt) : Bool)) {
                    _sa[(_i : stdgo.GoInt)] = (-_j : stdgo.GoInt64);
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L716"
                    {
                        _i++;
                        continue;
                    };
                };
_sa[(_i : stdgo.GoInt)] = (0i64 : stdgo.GoInt64);
var _k = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
var __0 = (_text[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt64), __1 = (_text[(_k : stdgo.GoInt)] : stdgo.GoInt64);
var _c1 = __1, _c0 = __0;
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L726"
                if ((_c0 < _c1 : Bool)) {
                    _k = -_k;
                };
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L730"
                if (_cB != (_c1)) {
                    _bucket[(_cB : stdgo.GoInt)] = _b;
                    _cB = _c1;
                    _b = _bucket[(_cB : stdgo.GoInt)];
                };
_sa[(_b : stdgo.GoInt)] = (_k : stdgo.GoInt64);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L736"
                _b++;
                _i++;
            };
        };
    }
