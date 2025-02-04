package stdgo._internal.regexp;
function _maxBitStateLen(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>):stdgo.GoInt {
        if (!stdgo._internal.regexp.Regexp__shouldbacktrack._shouldBacktrack(_prog)) {
            return (0 : stdgo.GoInt);
        };
        return ((262144 : stdgo.GoInt) / ((@:checkr _prog ?? throw "null pointer dereference").inst.length) : stdgo.GoInt);
    }
