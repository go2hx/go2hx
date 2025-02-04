package stdgo._internal.internal.fuzz;
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_crashError_asInterface) class T_crashError_static_extension {
    @:keep
    @:tdfield
    static public function crashPath( _e:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_crasherror.T_crashError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_crasherror.T_crashError> = _e;
        return (@:checkr _e ?? throw "null pointer dereference")._path?.__copy__();
    }
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_crasherror.T_crashError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_crasherror.T_crashError> = _e;
        return (@:checkr _e ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_crasherror.T_crashError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_crasherror.T_crashError> = _e;
        return (@:checkr _e ?? throw "null pointer dereference")._err.error()?.__copy__();
    }
}
