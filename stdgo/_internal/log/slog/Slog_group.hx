package stdgo._internal.log.slog;
function group(_key:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.log.slog.Slog_attr.Attr {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        return (new stdgo._internal.log.slog.Slog_attr.Attr(_key?.__copy__(), stdgo._internal.log.slog.Slog_groupvalue.groupValue(...(stdgo._internal.log.slog.Slog__argstoattrslice._argsToAttrSlice(_args) : Array<stdgo._internal.log.slog.Slog_attr.Attr>))?.__copy__()) : stdgo._internal.log.slog.Slog_attr.Attr);
    }
