package stdgo._internal.index.suffixarray;
function _expand_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):Void {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L758"
        stdgo._internal.index.suffixarray.Suffixarray__bucketmax_8_32._bucketMax_8_32(_text, _freq, _bucket);
        _bucket = (_bucket.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        var _x = (_numLMS - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _saX = (_sa[(_x : stdgo.GoInt)] : stdgo.GoInt32);
        var _c = (_text[(_saX : stdgo.GoInt)] : stdgo.GoUInt8);
        var _b = (_bucket[(_c : stdgo.GoInt)] - (1 : stdgo.GoInt32) : stdgo.GoInt32);
        _bucket[(_c : stdgo.GoInt)] = _b;
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L771"
        {
            var _i = ((_sa.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L772"
                if (_i != ((_b : stdgo.GoInt))) {
                    _sa[(_i : stdgo.GoInt)] = (0 : stdgo.GoInt32);
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L774"
                    {
                        _i--;
                        continue;
                    };
                };
_sa[(_i : stdgo.GoInt)] = _saX;
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L779"
                if ((_x > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L780"
                    _x--;
                    _saX = _sa[(_x : stdgo.GoInt)];
                    _c = _text[(_saX : stdgo.GoInt)];
                    _b = (_bucket[(_c : stdgo.GoInt)] - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                    _bucket[(_c : stdgo.GoInt)] = _b;
                };
                _i--;
            };
        };
    }
