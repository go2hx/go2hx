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
function _karatsubaAdd(_z:stdgo._internal.math.big.Big_T_nat.T_nat, _x:stdgo._internal.math.big.Big_T_nat.T_nat, _n:stdgo.GoInt):Void {
        {
            var _c = (stdgo._internal.math.big.Big__addVV._addVV((_z.__slice__((0 : stdgo.GoInt), _n) : stdgo._internal.math.big.Big_T_nat.T_nat), _z, _x) : stdgo._internal.math.big.Big_Word.Word);
            if (_c != ((0u32 : stdgo._internal.math.big.Big_Word.Word))) {
                stdgo._internal.math.big.Big__addVW._addVW((_z.__slice__(_n, (_n + (_n >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat), (_z.__slice__(_n) : stdgo._internal.math.big.Big_T_nat.T_nat), _c);
            };
        };
    }
