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
function _rndNat1(_n:stdgo.GoInt):stdgo._internal.math.big.Big_T_nat.T_nat {
        var _x = ((stdgo._internal.math.big.Big__rndV._rndV(_n) : stdgo._internal.math.big.Big_T_nat.T_nat)._norm() : stdgo._internal.math.big.Big_T_nat.T_nat);
        if ((_x.length) == ((0 : stdgo.GoInt))) {
            _x._setWord((1u32 : stdgo._internal.math.big.Big_Word.Word));
        };
        return _x;
    }
