package stdgo._internal.regexp;
function _freeBitState(_b:stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState>):Void {
        @:check2 (@:checkr _b ?? throw "null pointer dereference")._inputs._clear();
        @:check2 stdgo._internal.regexp.Regexp__bitStatePool._bitStatePool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_b)));
    }
