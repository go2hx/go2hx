package stdgo._internal.log.slog;
function _appendTextValue(_s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>, _v:stdgo._internal.log.slog.Slog_value.Value):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/log/slog/text_handler.go#L99"
        {
            final __value__ = _v.kind();
            if (__value__ == ((5 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/log/slog/text_handler.go#L101"
                _s._appendString(_v._str()?.__copy__());
            } else if (__value__ == ((6 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/log/slog/text_handler.go#L103"
                _s._appendTime(_v._time()?.__copy__());
            } else if (__value__ == ((0 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/log/slog/text_handler.go#L105"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_v._any : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler), _1 : false };
                    }, _tm = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        var __tmp__ = _tm.marshalText(), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        //"file:///home/runner/.go/go1.21.3/src/log/slog/text_handler.go#L107"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/log/slog/text_handler.go#L108"
                            return _err;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/log/slog/text_handler.go#L111"
                        _s._appendString((_data : stdgo.GoString)?.__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/log/slog/text_handler.go#L112"
                        return (null : stdgo.Error);
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/log/slog/text_handler.go#L114"
                {
                    var __tmp__ = stdgo._internal.log.slog.Slog__byteslice._byteSlice(_v._any), _bs:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/log/slog/text_handler.go#L116"
                        (@:checkr _s ?? throw "null pointer dereference")._buf.writeString(stdgo._internal.strconv.Strconv_quote.quote((_bs : stdgo.GoString)?.__copy__())?.__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/log/slog/text_handler.go#L117"
                        return (null : stdgo.Error);
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/log/slog/text_handler.go#L119"
                _s._appendString(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%+v" : stdgo.GoString), _v.any())?.__copy__());
            } else {
                ((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).__setData__(_v._append(((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/log/slog/text_handler.go#L123"
        return (null : stdgo.Error);
    }
