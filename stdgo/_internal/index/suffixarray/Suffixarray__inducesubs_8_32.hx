package stdgo._internal.index.suffixarray;
function _induceSubS_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L449"
        stdgo._internal.index.suffixarray.Suffixarray__bucketmax_8_32._bucketMax_8_32(_text, _freq, _bucket);
        _bucket = (_bucket.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        var _cB = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _b = (_bucket[(_cB : stdgo.GoInt)] : stdgo.GoInt32);
        var _top = (_sa.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L476"
        {
            var _i = ((_sa.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                var _j = (_sa[(_i : stdgo.GoInt)] : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L478"
                if (_j == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L480"
                    {
                        _i--;
                        continue;
                    };
                };
_sa[(_i : stdgo.GoInt)] = (0 : stdgo.GoInt32);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L483"
                if ((_j < (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L485"
                    _top--;
                    _sa[(_top : stdgo.GoInt)] = (-_j : stdgo.GoInt32);
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L487"
                    {
                        _i--;
                        continue;
                    };
                };
var _k = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
var _c1 = (_text[(_k : stdgo.GoInt)] : stdgo.GoUInt8);
var _c0 = (_text[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L497"
                if ((_c0 > _c1 : Bool)) {
                    _k = -_k;
                };
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L501"
                if (_cB != (_c1)) {
                    _bucket[(_cB : stdgo.GoInt)] = _b;
                    _cB = _c1;
                    _b = _bucket[(_cB : stdgo.GoInt)];
                };
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L506"
                _b--;
_sa[(_b : stdgo.GoInt)] = (_k : stdgo.GoInt32);
                _i--;
            };
        };
    }
