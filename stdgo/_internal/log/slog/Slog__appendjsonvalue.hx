package stdgo._internal.log.slog;
function _appendJSONValue(_s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>, _v:stdgo._internal.log.slog.Slog_value.Value):stdgo.Error {
        {
            final __value__ = _v.kind();
            if (__value__ == ((5 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                @:check2r _s._appendString(_v._str()?.__copy__());
            } else if (__value__ == ((4 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                ((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).__setData__(stdgo._internal.strconv.Strconv_appendint.appendInt(((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer), _v.int64(), (10 : stdgo.GoInt)));
            } else if (__value__ == ((7 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                ((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).__setData__(stdgo._internal.strconv.Strconv_appenduint.appendUint(((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer), _v.uint64(), (10 : stdgo.GoInt)));
            } else if (__value__ == ((3 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                {
                    var _err = (stdgo._internal.log.slog.Slog__appendjsonmarshal._appendJSONMarshal((@:checkr _s ?? throw "null pointer dereference")._buf, stdgo.Go.toInterface(_v.float64())) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            } else if (__value__ == ((1 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                ((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).__setData__(stdgo._internal.strconv.Strconv_appendbool.appendBool(((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer), _v.bool_()));
            } else if (__value__ == ((2 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                ((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).__setData__(stdgo._internal.strconv.Strconv_appendint.appendInt(((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer), (_v.duration() : stdgo.GoInt64), (10 : stdgo.GoInt)));
            } else if (__value__ == ((6 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                @:check2r _s._appendTime(_v.time()?.__copy__());
            } else if (__value__ == ((0 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                var _a = (_v.any() : stdgo.AnyInterface);
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_a : stdgo._internal.encoding.json.Json_marshaler.Marshaler)) : stdgo._internal.encoding.json.Json_marshaler.Marshaler), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.encoding.json.Json_marshaler.Marshaler), _1 : false };
                }, __17 = __tmp__._0, _jm = __tmp__._1;
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_a : stdgo.Error)) : stdgo.Error), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Error), _1 : false };
                    }, _err = __tmp__._0, _ok = __tmp__._1;
                    if ((_ok && !_jm : Bool)) {
                        @:check2r _s._appendString(_err.error()?.__copy__());
                    } else {
                        return stdgo._internal.log.slog.Slog__appendjsonmarshal._appendJSONMarshal((@:checkr _s ?? throw "null pointer dereference")._buf, _a);
                    };
                };
            } else {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("bad kind: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v.kind()))));
            };
        };
        return (null : stdgo.Error);
    }
