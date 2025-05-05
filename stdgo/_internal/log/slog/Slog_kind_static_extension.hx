package stdgo._internal.log.slog;
@:keep @:allow(stdgo._internal.log.slog.Slog.Kind_asInterface) class Kind_static_extension {
    @:keep
    @:tdfield
    static public function string( _k:stdgo._internal.log.slog.Slog_kind.Kind):stdgo.GoString {
        @:recv var _k:stdgo._internal.log.slog.Slog_kind.Kind = _k;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L76"
        if (((_k >= (0 : stdgo._internal.log.slog.Slog_kind.Kind) : Bool) && ((_k : stdgo.GoInt) < (stdgo._internal.log.slog.Slog__kindstrings._kindStrings.length) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L77"
            return stdgo._internal.log.slog.Slog__kindstrings._kindStrings[(_k : stdgo.GoInt)]?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L79"
        return ("<unknown slog.Kind>" : stdgo.GoString);
    }
}
