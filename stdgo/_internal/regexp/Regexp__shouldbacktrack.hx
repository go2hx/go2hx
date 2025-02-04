package stdgo._internal.regexp;
function _shouldBacktrack(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>):Bool {
        return (((@:checkr _prog ?? throw "null pointer dereference").inst.length) <= (500 : stdgo.GoInt) : Bool);
    }
