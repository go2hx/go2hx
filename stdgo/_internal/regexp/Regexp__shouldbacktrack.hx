package stdgo._internal.regexp;
function _shouldBacktrack(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L74"
        return (((@:checkr _prog ?? throw "null pointer dereference").inst.length) <= (500 : stdgo.GoInt) : Bool);
    }
