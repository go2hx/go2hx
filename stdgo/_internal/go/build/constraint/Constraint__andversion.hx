package stdgo._internal.go.build.constraint;
function _andVersion(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L91"
        if ((_x > _y : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L92"
            return _x;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L94"
        return _y;
    }
