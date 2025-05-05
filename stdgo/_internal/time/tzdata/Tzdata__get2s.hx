package stdgo._internal.time.tzdata;
function _get2s(_s:stdgo.GoString):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/time/tzdata/tzdata.go#L48"
        if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/time/tzdata/tzdata.go#L49"
            return (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/time/tzdata/tzdata.go#L51"
        return ((_s[(0 : stdgo.GoInt)] : stdgo.GoInt) | ((_s[(1 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
    }
