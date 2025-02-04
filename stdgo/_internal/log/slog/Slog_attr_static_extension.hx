package stdgo._internal.log.slog;
@:keep @:allow(stdgo._internal.log.slog.Slog.Attr_asInterface) class Attr_static_extension {
    @:keep
    @:tdfield
    static public function _isEmpty( _a:stdgo._internal.log.slog.Slog_attr.Attr):Bool {
        @:recv var _a:stdgo._internal.log.slog.Slog_attr.Attr = _a?.__copy__();
        return ((_a.key == ((stdgo.Go.str() : stdgo.GoString)) && _a.value._num == ((0i64 : stdgo.GoUInt64)) : Bool) && (_a.value._any == null) : Bool);
    }
    @:keep
    @:tdfield
    static public function string( _a:stdgo._internal.log.slog.Slog_attr.Attr):stdgo.GoString {
        @:recv var _a:stdgo._internal.log.slog.Slog_attr.Attr = _a?.__copy__();
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s=%s" : stdgo.GoString), stdgo.Go.toInterface(_a.key), stdgo.Go.toInterface(stdgo.Go.asInterface(_a.value)))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function equal( _a:stdgo._internal.log.slog.Slog_attr.Attr, _b:stdgo._internal.log.slog.Slog_attr.Attr):Bool {
        @:recv var _a:stdgo._internal.log.slog.Slog_attr.Attr = _a?.__copy__();
        return ((_a.key == _b.key) && _a.value.equal(_b.value?.__copy__()) : Bool);
    }
}
