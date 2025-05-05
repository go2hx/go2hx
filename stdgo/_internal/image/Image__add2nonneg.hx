package stdgo._internal.image;
function _add2NonNeg(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L309"
        if ((((_x < (0 : stdgo.GoInt) : Bool)) || ((_y < (0 : stdgo.GoInt) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L310"
            return (-1 : stdgo.GoInt);
        };
        var _a = (_x + _y : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L313"
        if ((_a < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L314"
            return (-1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L316"
        return _a;
    }
