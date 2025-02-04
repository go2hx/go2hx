package stdgo._internal.log.slog;
function _argsToAttr(_args:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo._internal.log.slog.Slog_attr.Attr; var _1 : stdgo.Slice<stdgo.AnyInterface>; } {
        {
            final __type__ = _args[(0 : stdgo.GoInt)];
            if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                var _x:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                if ((_args.length) == ((1 : stdgo.GoInt))) {
                    return { _0 : stdgo._internal.log.slog.Slog_string.string(("!BADKEY" : stdgo.GoString), _x?.__copy__())?.__copy__(), _1 : (null : stdgo.Slice<stdgo.AnyInterface>) };
                };
                return { _0 : stdgo._internal.log.slog.Slog_any.any(_x?.__copy__(), _args[(1 : stdgo.GoInt)])?.__copy__(), _1 : (_args.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.AnyInterface>) };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.log.slog.Slog_attr.Attr))) {
                var _x:stdgo._internal.log.slog.Slog_attr.Attr = __type__ == null ? ({} : stdgo._internal.log.slog.Slog_attr.Attr) : __type__.__underlying__() == null ? ({} : stdgo._internal.log.slog.Slog_attr.Attr) : __type__ == null ? ({} : stdgo._internal.log.slog.Slog_attr.Attr) : __type__.__underlying__().value;
                return { _0 : _x?.__copy__(), _1 : (_args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.AnyInterface>) };
            } else {
                var _x:stdgo.AnyInterface = __type__?.__underlying__();
                return { _0 : stdgo._internal.log.slog.Slog_any.any(("!BADKEY" : stdgo.GoString), _x)?.__copy__(), _1 : (_args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.AnyInterface>) };
            };
        };
    }
