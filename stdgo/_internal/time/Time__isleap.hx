package stdgo._internal.time;
function _isLeap(_year:stdgo.GoInt):Bool {
        //"file:///home/runner/.go/go1.21.3/src/time/time.go#L1428"
        return (((_year % (4 : stdgo.GoInt) : stdgo.GoInt) == (0 : stdgo.GoInt)) && ((((_year % (100 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) || ((_year % (400 : stdgo.GoInt) : stdgo.GoInt) == (0 : stdgo.GoInt)) : Bool)) : Bool);
    }
