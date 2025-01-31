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
function _indirect(_vf:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        while (((_vf.kind() == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || (_vf.kind() == (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool)) {
            if (_vf.isNil()) {
                return _vf?.__copy__();
            };
            _vf = _vf.elem()?.__copy__();
        };
        return _vf?.__copy__();
    }
