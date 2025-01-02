package stdgo._internal.regexp;
function _freeOnePassMachine(_m:stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassMachine.T_onePassMachine>):Void {
        @:check2 (@:checkr _m ?? throw "null pointer dereference")._inputs._clear();
        @:check2 stdgo._internal.regexp.Regexp__onePassPool._onePassPool.put(stdgo.Go.toInterface(_m));
    }
