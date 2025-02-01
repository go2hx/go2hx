package stdgo._internal.log.slog.internal.slogtest;
function removeTime(_groups:stdgo.Slice<stdgo.GoString>, _a:stdgo._internal.log.slog.Slog_Attr.Attr):stdgo._internal.log.slog.Slog_Attr.Attr {
        if (((_a.key == ("time" : stdgo.GoString)) && (_groups.length == (0 : stdgo.GoInt)) : Bool)) {
            return (new stdgo._internal.log.slog.Slog_Attr.Attr() : stdgo._internal.log.slog.Slog_Attr.Attr);
        };
        return _a?.__copy__();
    }
