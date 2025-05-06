package stdgo._internal.go.printer;
function _reduceDepth(_depth:stdgo.GoInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L736"
        _depth--;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L737"
        if ((_depth < (1 : stdgo.GoInt) : Bool)) {
            _depth = (1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L740"
        return _depth;
    }
