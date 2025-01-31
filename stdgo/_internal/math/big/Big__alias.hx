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
function _alias(_x:stdgo._internal.math.big.Big_T_nat.T_nat, _y:stdgo._internal.math.big.Big_T_nat.T_nat):Bool {
        return (((_x.capacity > (0 : stdgo.GoInt) : Bool) && (_y.capacity > (0 : stdgo.GoInt) : Bool) : Bool) && (stdgo.Go.pointer((_x.__slice__((0 : stdgo.GoInt), _x.capacity) : stdgo._internal.math.big.Big_T_nat.T_nat)[(_x.capacity - (1 : stdgo.GoInt) : stdgo.GoInt)]) == stdgo.Go.pointer((_y.__slice__((0 : stdgo.GoInt), _y.capacity) : stdgo._internal.math.big.Big_T_nat.T_nat)[(_y.capacity - (1 : stdgo.GoInt) : stdgo.GoInt)])) : Bool);
    }
