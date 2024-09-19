package stdgo._internal.regexp;
function _maxBitStateLen(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>):stdgo.GoInt {
        if (!stdgo._internal.regexp.Regexp__shouldBacktrack._shouldBacktrack(_prog)) {
            return (0 : stdgo.GoInt);
        };
        return ((262144 : stdgo.GoInt) / (_prog.inst.length) : stdgo.GoInt);
    }
