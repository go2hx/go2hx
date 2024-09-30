package stdgo._internal.internal.bytealg;
function makeNoZero(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        final s = new stdgo.Slice<stdgo.GoByte>(_n, _n).__setNumber32__();
        return s;
    }
