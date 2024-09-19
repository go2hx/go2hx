package stdgo._internal.regexp;
function _shouldBacktrack(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>):Bool {
        return ((_prog.inst.length) <= (500 : stdgo.GoInt) : Bool);
    }
