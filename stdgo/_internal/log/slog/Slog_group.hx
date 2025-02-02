package stdgo._internal.log.slog;
function group(_key:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.log.slog.Slog_Attr.Attr {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        return (new stdgo._internal.log.slog.Slog_Attr.Attr(_key?.__copy__(), stdgo._internal.log.slog.Slog_groupValue.groupValue(...(stdgo._internal.log.slog.Slog__argsToAttrSlice._argsToAttrSlice(_args) : Array<stdgo._internal.log.slog.Slog_Attr.Attr>))?.__copy__()) : stdgo._internal.log.slog.Slog_Attr.Attr);
    }
