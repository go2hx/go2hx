package stdgo._internal.go.build.constraint;
function _orVersion(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L101"
        if ((_x < _y : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L102"
            return _x;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L104"
        return _y;
    }
