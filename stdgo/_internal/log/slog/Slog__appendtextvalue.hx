package stdgo._internal.log.slog;
function _appendTextValue(_s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>, _v:stdgo._internal.log.slog.Slog_value.Value):stdgo.Error {
        {
            final __value__ = _v.kind();
            if (__value__ == ((5 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                @:check2r _s._appendString(_v._str()?.__copy__());
            } else if (__value__ == ((6 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                @:check2r _s._appendTime(_v._time()?.__copy__());
            } else if (__value__ == ((0 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_v._any : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler), _1 : false };
                    }, _tm = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        var __tmp__ = _tm.marshalText(), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return _err;
                        };
                        @:check2r _s._appendString((_data : stdgo.GoString)?.__copy__());
                        return (null : stdgo.Error);
                    };
                };
                {
                    var __tmp__ = stdgo._internal.log.slog.Slog__byteslice._byteSlice(_v._any), _bs:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        @:check2r (@:checkr _s ?? throw "null pointer dereference")._buf.writeString(stdgo._internal.strconv.Strconv_quote.quote((_bs : stdgo.GoString)?.__copy__())?.__copy__());
                        return (null : stdgo.Error);
                    };
                };
                @:check2r _s._appendString(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%+v" : stdgo.GoString), _v.any())?.__copy__());
            } else {
                ((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).__setData__(_v._append(((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer)));
            };
        };
        return (null : stdgo.Error);
    }
