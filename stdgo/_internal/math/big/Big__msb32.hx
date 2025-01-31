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
function _msb32(_x:stdgo._internal.math.big.Big_T_nat.T_nat):stdgo.GoUInt32 {
        var _i = ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            return (0u32 : stdgo.GoUInt32);
        };
        if ((false && ((_x[(_i : stdgo.GoInt)] & (-2147483648u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word) == (0u32 : stdgo._internal.math.big.Big_Word.Word)) : Bool)) {
            throw stdgo.Go.toInterface(("x not normalized" : stdgo.GoString));
        };
        {
            final __value__ = (32 : stdgo.GoInt);
            if (__value__ == ((32 : stdgo.GoInt))) {
                return (_x[(_i : stdgo.GoInt)] : stdgo.GoUInt32);
            } else if (__value__ == ((64 : stdgo.GoInt))) {
                return ((_x[(_i : stdgo.GoInt)] >> (32i64 : stdgo.GoUInt64) : stdgo._internal.math.big.Big_Word.Word) : stdgo.GoUInt32);
            };
        };
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
