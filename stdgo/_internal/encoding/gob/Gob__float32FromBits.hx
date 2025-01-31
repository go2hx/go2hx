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
function _float32FromBits(_u:stdgo.GoUInt64, _ovfl:stdgo.Error):stdgo.GoFloat64 {
        var _v = (stdgo._internal.encoding.gob.Gob__float64FromBits._float64FromBits(_u) : stdgo.GoFloat64);
        var _av = (_v : stdgo.GoFloat64);
        if ((_av < (0 : stdgo.GoFloat64) : Bool)) {
            _av = -_av;
        };
        if ((((3.4028234663852886e+38 : stdgo.GoFloat64) < _av : Bool) && (_av <= (1.7976931348623157e+308 : stdgo.GoFloat64) : Bool) : Bool)) {
            stdgo._internal.encoding.gob.Gob__error_._error_(_ovfl);
        };
        return _v;
    }
