package stdgo._internal.index.suffixarray;
function _map_32(_sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):Void {
        var _w = (_sa.length : stdgo.GoInt);
        {
            var _i = ((_sa.length) / (2 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                var _j = (_sa[(_i : stdgo.GoInt)] : stdgo.GoInt32);
if ((_j > (0 : stdgo.GoInt32) : Bool)) {
                    _w--;
                    _sa[(_w : stdgo.GoInt)] = (_j - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                };
                _i--;
            };
        };
    }
