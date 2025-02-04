package stdgo._internal.internal.zstd;
@:keep @:allow(stdgo._internal.internal.zstd.Zstd.T_zstdError_asInterface) class T_zstdError_static_extension {
    @:keep
    @:tdfield
    static public function unwrap( _ze:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_zstderror.T_zstdError>):stdgo.Error {
        @:recv var _ze:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_zstderror.T_zstdError> = _ze;
        return (@:checkr _ze ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function error( _ze:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_zstderror.T_zstdError>):stdgo.GoString {
        @:recv var _ze:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_zstderror.T_zstdError> = _ze;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("zstd decompression error at %d: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _ze ?? throw "null pointer dereference")._offset), stdgo.Go.toInterface((@:checkr _ze ?? throw "null pointer dereference")._err))?.__copy__();
    }
}
