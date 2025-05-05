package stdgo._internal.internal.fuzz;
function _min(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutator.go#L48"
        if ((_a < _b : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutator.go#L49"
            return _a;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutator.go#L51"
        return _b;
    }
