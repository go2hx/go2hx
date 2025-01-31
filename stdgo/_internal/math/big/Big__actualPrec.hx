package stdgo._internal.math.big;
import stdgo._internal.strings.Strings;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.Math;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.testing.quick.Quick;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.encoding.xml.Xml;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.os.Os;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
function _actualPrec(_x:stdgo.GoFloat64):stdgo.GoUInt {
        {
            var _mant = (stdgo._internal.math.Math_float64bits.float64bits(_x) : stdgo.GoUInt64);
            if (((_x != (0 : stdgo.GoFloat64)) && ((_mant & (9218868437227405312i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (0i64 : stdgo.GoUInt64)) : Bool)) {
                return ((64u32 : stdgo.GoUInt) - (stdgo._internal.math.bits.Bits_leadingZeros64.leadingZeros64((_mant & (4503599627370495i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt) : stdgo.GoUInt);
            };
        };
        return (53u32 : stdgo.GoUInt);
    }
