package stdgo._internal.regexp;
function _freeBitState(_b:stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState>):Void {
        _b._inputs._clear();
        stdgo._internal.regexp.Regexp__bitStatePool._bitStatePool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_b)));
    }
