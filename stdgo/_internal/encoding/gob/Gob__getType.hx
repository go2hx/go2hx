package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
function _getType(_name:stdgo.GoString, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>, _rt:stdgo._internal.reflect.Reflect_Type_.Type_):{ var _0 : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType; var _1 : stdgo.Error; } {
        var __tmp__ = (stdgo._internal.encoding.gob.Gob__types._types != null && stdgo._internal.encoding.gob.Gob__types._types.exists(_rt) ? { _0 : stdgo._internal.encoding.gob.Gob__types._types[_rt], _1 : true } : { _0 : (null : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType), _1 : false }), _typ:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType = __tmp__._0, _present:Bool = __tmp__._1;
        if (_present) {
            return { _0 : _typ, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.encoding.gob.Gob__newTypeObject._newTypeObject(_name?.__copy__(), _ut, _rt), _typ:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            stdgo._internal.encoding.gob.Gob__types._types[_rt] = _typ;
        };
        return { _0 : _typ, _1 : _err };
    }
