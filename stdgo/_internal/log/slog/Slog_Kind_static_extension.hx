package stdgo._internal.log.slog;
@:keep @:allow(stdgo._internal.log.slog.Slog.Kind_asInterface) class Kind_static_extension {
    @:keep
    @:tdfield
    static public function string( _k:stdgo._internal.log.slog.Slog_Kind.Kind):stdgo.GoString {
        @:recv var _k:stdgo._internal.log.slog.Slog_Kind.Kind = _k;
        if (((_k >= (0 : stdgo._internal.log.slog.Slog_Kind.Kind) : Bool) && ((_k : stdgo.GoInt) < (stdgo._internal.log.slog.Slog__kindStrings._kindStrings.length) : Bool) : Bool)) {
            return stdgo._internal.log.slog.Slog__kindStrings._kindStrings[(_k : stdgo.GoInt)]?.__copy__();
        };
        return ("<unknown slog.Kind>" : stdgo.GoString);
    }
}
