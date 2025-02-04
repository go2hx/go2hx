package stdgo._internal.regexp;
function _freeOnePassMachine(_m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine>):Void {
        @:check2 (@:checkr _m ?? throw "null pointer dereference")._inputs._clear();
        @:check2 stdgo._internal.regexp.Regexp__onepasspool._onePassPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_m)));
    }
