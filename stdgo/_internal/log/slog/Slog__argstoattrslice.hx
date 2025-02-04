package stdgo._internal.log.slog;
function _argsToAttrSlice(_args:stdgo.Slice<stdgo.AnyInterface>):stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr> {
        var __0:stdgo._internal.log.slog.Slog_attr.Attr = ({} : stdgo._internal.log.slog.Slog_attr.Attr), __1:stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr> = (null : stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>);
var _attrs = __1, _attr = __0;
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
