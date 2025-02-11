package stdgo._internal.io;
function writeString(_w:stdgo._internal.io.Io_writer.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo._internal.io.Io_stringwriter.StringWriter)) : stdgo._internal.io.Io_stringwriter.StringWriter), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_stringwriter.StringWriter), _1 : false };
            }, _sw = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return {
                    final __tmp__ = _sw.writeString(_s?.__copy__());
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    { _0 : _n, _1 : _err };
                };
            };
        };
        return {
            final __tmp__ = _w.write((_s : stdgo.Slice<stdgo.GoUInt8>));
            _n = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _n, _1 : _err };
        };
    }
