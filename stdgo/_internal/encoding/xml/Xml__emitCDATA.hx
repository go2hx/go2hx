package stdgo._internal.encoding.xml;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function _emitCDATA(_w:stdgo._internal.io.Io_Writer.Writer, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        {
            var __tmp__ = _w.write(stdgo._internal.encoding.xml.Xml__cdataStart._cdataStart), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        while (true) {
            var __tmp__ = stdgo._internal.bytes.Bytes_cut.cut(_s, stdgo._internal.encoding.xml.Xml__cdataEnd._cdataEnd), _before:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _after:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _ok:Bool = __tmp__._2;
            if (!_ok) {
                break;
            };
            {
                var __tmp__ = _w.write(_before), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = _w.write(stdgo._internal.encoding.xml.Xml__cdataEscape._cdataEscape), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            _s = _after;
        };
        {
            var __tmp__ = _w.write(_s), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _w.write(stdgo._internal.encoding.xml.Xml__cdataEnd._cdataEnd), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
