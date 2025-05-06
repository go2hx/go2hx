package stdgo._internal.go.types;
function _identicalInstance(_xorig:stdgo._internal.go.types.Types_type_.Type_, _xargs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>, _yorig:stdgo._internal.go.types.Types_type_.Type_, _yargs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L480"
        if ((_xargs.length) != ((_yargs.length))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L481"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L484"
        for (_i => _xa in _xargs) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L485"
            if (!stdgo._internal.go.types.Types_identical.identical(_xa, _yargs[(_i : stdgo.GoInt)])) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L486"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L490"
        return stdgo._internal.go.types.Types_identical.identical(_xorig, _yorig);
    }
