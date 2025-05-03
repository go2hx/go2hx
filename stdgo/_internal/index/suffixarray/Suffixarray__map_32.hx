package stdgo._internal.index.suffixarray;
function _map_32(_sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):Void {
        var _w = (_sa.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L642"
        {
            var _i = ((_sa.length) / (2 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                var _j = (_sa[(_i : stdgo.GoInt)] : stdgo.GoInt32);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L644"
                if ((_j > (0 : stdgo.GoInt32) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L645"
                    _w--;
                    _sa[(_w : stdgo.GoInt)] = (_j - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                };
                _i--;
            };
        };
    }
