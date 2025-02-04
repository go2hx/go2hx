package stdgo._internal.log.slog;
@:keep @:allow(stdgo._internal.log.slog.Slog.Source_asInterface) class Source_static_extension {
    @:keep
    @:tdfield
    static public function _group( _s:stdgo.Ref<stdgo._internal.log.slog.Slog_source.Source>):stdgo._internal.log.slog.Slog_value.Value {
        @:recv var _s:stdgo.Ref<stdgo._internal.log.slog.Slog_source.Source> = _s;
        var _as:stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr> = (null : stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>);
        if ((@:checkr _s ?? throw "null pointer dereference").function_ != ((stdgo.Go.str() : stdgo.GoString))) {
            _as = (_as.__append__(stdgo._internal.log.slog.Slog_string.string(("function" : stdgo.GoString), (@:checkr _s ?? throw "null pointer dereference").function_?.__copy__())));
        };
        if ((@:checkr _s ?? throw "null pointer dereference").file != ((stdgo.Go.str() : stdgo.GoString))) {
            _as = (_as.__append__(stdgo._internal.log.slog.Slog_string.string(("file" : stdgo.GoString), (@:checkr _s ?? throw "null pointer dereference").file?.__copy__())));
        };
        if ((@:checkr _s ?? throw "null pointer dereference").line != ((0 : stdgo.GoInt))) {
            _as = (_as.__append__(stdgo._internal.log.slog.Slog_int_.int_(("line" : stdgo.GoString), (@:checkr _s ?? throw "null pointer dereference").line)));
        };
        return stdgo._internal.log.slog.Slog_groupvalue.groupValue(...(_as : Array<stdgo._internal.log.slog.Slog_attr.Attr>))?.__copy__();
    }
}
