package stdgo._internal.index.suffixarray;
function _induceS_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1612"
        stdgo._internal.index.suffixarray.Suffixarray__bucketmax_8_64._bucketMax_8_64(_text, _freq, _bucket);
        _bucket = (_bucket.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>);
        var _cB = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _b = (_bucket[(_cB : stdgo.GoInt)] : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1618"
        {
            var _i = ((_sa.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                var _j = (_sa[(_i : stdgo.GoInt)] : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1620"
                if ((_j >= (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1623"
                    {
                        _i--;
                        continue;
                    };
                };
_j = -_j;
_sa[(_i : stdgo.GoInt)] = (_j : stdgo.GoInt64);
var _k = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
var _c1 = (_text[(_k : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1639"
                if ((_k > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1640"
                    {
                        var _c0 = (_text[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                        if ((_c0 <= _c1 : Bool)) {
                            _k = -_k;
                        };
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1645"
                if (_cB != (_c1)) {
                    _bucket[(_cB : stdgo.GoInt)] = _b;
                    _cB = _c1;
                    _b = _bucket[(_cB : stdgo.GoInt)];
                };
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1650"
                _b--;
_sa[(_b : stdgo.GoInt)] = (_k : stdgo.GoInt64);
                _i--;
            };
        };
    }
