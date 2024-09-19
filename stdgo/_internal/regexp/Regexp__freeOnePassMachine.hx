package stdgo._internal.regexp;
function _freeOnePassMachine(_m:stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassMachine.T_onePassMachine>):Void {
        _m._inputs._clear();
        stdgo._internal.regexp.Regexp__onePassPool._onePassPool.put(stdgo.Go.toInterface(_m));
    }
