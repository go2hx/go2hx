package stdgo._internal.log.slog;
function _argsToAttrSlice(_args:stdgo.Slice<stdgo.AnyInterface>):stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr> {
        var _attr:stdgo._internal.log.slog.Slog_attr.Attr = ({} : stdgo._internal.log.slog.Slog_attr.Attr), _attrs:stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr> = (null : stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>);
        while (((_args.length) > (0 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = stdgo._internal.log.slog.Slog__argstoattr._argsToAttr(_args);
                _attr = @:tmpset0 __tmp__._0?.__copy__();
                _args = @:tmpset0 __tmp__._1;
            };
            _attrs = (_attrs.__append__(_attr));
        };
        return _attrs;
    }
