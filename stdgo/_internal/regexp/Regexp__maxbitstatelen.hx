package stdgo._internal.regexp;
function _maxBitStateLen(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L65"
        if (!stdgo._internal.regexp.Regexp__shouldbacktrack._shouldBacktrack(_prog)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L66"
            return (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L68"
        return ((262144 : stdgo.GoInt) / ((@:checkr _prog ?? throw "null pointer dereference").inst.length) : stdgo.GoInt);
    }
