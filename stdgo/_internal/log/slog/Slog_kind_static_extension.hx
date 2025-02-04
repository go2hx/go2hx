package stdgo._internal.log.slog;
@:keep @:allow(stdgo._internal.log.slog.Slog.Kind_asInterface) class Kind_static_extension {
    @:keep
    @:tdfield
    static public function string( _k:stdgo._internal.log.slog.Slog_kind.Kind):stdgo.GoString {
        @:recv var _k:stdgo._internal.log.slog.Slog_kind.Kind = _k;
        if (((_k >= (0 : stdgo._internal.log.slog.Slog_kind.Kind) : Bool) && ((_k : stdgo.GoInt) < (stdgo._internal.log.slog.Slog__kindstrings._kindStrings.length) : Bool) : Bool)) {
            return stdgo._internal.log.slog.Slog__kindstrings._kindStrings[(_k : stdgo.GoInt)]?.__copy__();
        };
        return ("<unknown slog.Kind>" : stdgo.GoString);
    }
}
