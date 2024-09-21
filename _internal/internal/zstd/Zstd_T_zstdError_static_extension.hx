package _internal.internal.zstd;
@:keep @:allow(_internal.internal.zstd.Zstd.T_zstdError_asInterface) class T_zstdError_static_extension {
    @:keep
    static public function unwrap( _ze:stdgo.Ref<_internal.internal.zstd.Zstd_T_zstdError.T_zstdError>):stdgo.Error {
        @:recv var _ze:stdgo.Ref<_internal.internal.zstd.Zstd_T_zstdError.T_zstdError> = _ze;
        return _ze._err;
    }
    @:keep
    static public function error( _ze:stdgo.Ref<_internal.internal.zstd.Zstd_T_zstdError.T_zstdError>):stdgo.GoString {
        @:recv var _ze:stdgo.Ref<_internal.internal.zstd.Zstd_T_zstdError.T_zstdError> = _ze;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("zstd decompression error at %d: %v" : stdgo.GoString), stdgo.Go.toInterface(_ze._offset), stdgo.Go.toInterface(_ze._err))?.__copy__();
    }
}
