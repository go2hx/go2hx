package stdgo._internal.sort;
function sort(_data:stdgo._internal.sort.Sort_interface.Interface):Void {
        var _n = (_data.len() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/sort/sort.go#L47"
        if ((_n <= (1 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/sort/sort.go#L48"
            return;
        };
        var _limit = (stdgo._internal.math.bits.Bits_len.len((_n : stdgo.GoUInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/sort/sort.go#L51"
        stdgo._internal.sort.Sort__pdqsort._pdqsort(_data, (0 : stdgo.GoInt), _n, _limit);
    }
