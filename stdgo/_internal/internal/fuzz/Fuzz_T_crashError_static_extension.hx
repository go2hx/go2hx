package stdgo._internal.internal.fuzz;
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_crashError_asInterface) class T_crashError_static_extension {
    @:keep
    static public function crashPath( _e:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_crashError.T_crashError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_crashError.T_crashError> = _e;
        return _e._path?.__copy__();
    }
    @:keep
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_crashError.T_crashError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_crashError.T_crashError> = _e;
        return _e._err;
    }
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_crashError.T_crashError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_crashError.T_crashError> = _e;
        return _e._err.error()?.__copy__();
    }
}
