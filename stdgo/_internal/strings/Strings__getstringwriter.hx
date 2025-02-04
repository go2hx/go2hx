package stdgo._internal.strings;
function _getStringWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_stringwriter.StringWriter {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo._internal.io.Io_stringwriter.StringWriter)) : stdgo._internal.io.Io_stringwriter.StringWriter), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.Io_stringwriter.StringWriter), _1 : false };
        }, _sw = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _sw = stdgo.Go.asInterface((new stdgo._internal.strings.Strings_t_stringwriter.T_stringWriter(_w) : stdgo._internal.strings.Strings_t_stringwriter.T_stringWriter));
        };
        return _sw;
    }
