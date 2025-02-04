package stdgo._internal.sort;
function sort(_data:stdgo._internal.sort.Sort_interface.Interface):Void {
        var _n = (_data.len() : stdgo.GoInt);
        if ((_n <= (1 : stdgo.GoInt) : Bool)) {
            return;
        };
        var _limit = (stdgo._internal.math.bits.Bits_len.len((_n : stdgo.GoUInt)) : stdgo.GoInt);
        stdgo._internal.sort.Sort__pdqsort._pdqsort(_data, (0 : stdgo.GoInt), _n, _limit);
    }
