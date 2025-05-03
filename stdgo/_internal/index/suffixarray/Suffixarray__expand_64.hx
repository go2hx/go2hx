package stdgo._internal.index.suffixarray;
function _expand_64(_text:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):Void {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1399"
        stdgo._internal.index.suffixarray.Suffixarray__bucketmax_64._bucketMax_64(_text, _freq, _bucket);
        var _x = (_numLMS - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _saX = (_sa[(_x : stdgo.GoInt)] : stdgo.GoInt64);
        var _c = (_text[(_saX : stdgo.GoInt)] : stdgo.GoInt64);
        var _b = (_bucket[(_c : stdgo.GoInt)] - (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
        _bucket[(_c : stdgo.GoInt)] = _b;
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1411"
        {
            var _i = ((_sa.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1412"
                if (_i != ((_b : stdgo.GoInt))) {
                    _sa[(_i : stdgo.GoInt)] = (0i64 : stdgo.GoInt64);
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1414"
                    {
                        _i--;
                        continue;
                    };
                };
_sa[(_i : stdgo.GoInt)] = _saX;
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1419"
                if ((_x > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1420"
                    _x--;
                    _saX = _sa[(_x : stdgo.GoInt)];
                    _c = _text[(_saX : stdgo.GoInt)];
                    _b = (_bucket[(_c : stdgo.GoInt)] - (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    _bucket[(_c : stdgo.GoInt)] = _b;
                };
                _i--;
            };
        };
    }
