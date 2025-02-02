package stdgo._internal.index.suffixarray;
function _map_64(_sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):Void {
        var _w = (_sa.length : stdgo.GoInt);
        {
            var _i = ((_sa.length) / (2 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                var _j = (_sa[(_i : stdgo.GoInt)] : stdgo.GoInt64);
if ((_j > (0i64 : stdgo.GoInt64) : Bool)) {
                    _w--;
                    _sa[(_w : stdgo.GoInt)] = (_j - (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
                };
                _i--;
            };
        };
    }
