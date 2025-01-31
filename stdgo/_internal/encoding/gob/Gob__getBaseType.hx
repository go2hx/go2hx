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
function _getBaseType(_name:stdgo.GoString, _rt:stdgo._internal.reflect.Reflect_Type_.Type_):{ var _0 : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType; var _1 : stdgo.Error; } {
        var _ut = stdgo._internal.encoding.gob.Gob__userType._userType(_rt);
        return stdgo._internal.encoding.gob.Gob__getType._getType(_name?.__copy__(), _ut, (@:checkr _ut ?? throw "null pointer dereference")._base);
    }
