package stdgo._internal.slices;
function _offByOne(_v1:stdgo.GoInt, _v2:stdgo.GoInt):Bool {
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L87"
        return ((_v1 == (_v2 + (1 : stdgo.GoInt) : stdgo.GoInt)) || (_v1 == (_v2 - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool);
    }
