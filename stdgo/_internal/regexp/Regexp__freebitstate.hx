package stdgo._internal.regexp;
function _freeBitState(_b:stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L58"
        (@:checkr _b ?? throw "null pointer dereference")._inputs._clear();
        //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L59"
        stdgo._internal.regexp.Regexp__bitstatepool._bitStatePool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_b)));
    }
