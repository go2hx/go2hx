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
function _basicMul(_z:stdgo._internal.math.big.Big_T_nat.T_nat, _x:stdgo._internal.math.big.Big_T_nat.T_nat, _y:stdgo._internal.math.big.Big_T_nat.T_nat):Void {
        (_z.__slice__((0 : stdgo.GoInt), ((_x.length) + (_y.length) : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat)._clear();
        for (_i => _d in _y) {
            if (_d != ((0u32 : stdgo._internal.math.big.Big_Word.Word))) {
                _z[((_x.length) + _i : stdgo.GoInt)] = stdgo._internal.math.big.Big__addMulVVW._addMulVVW((_z.__slice__(_i, (_i + (_x.length) : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat), _x, _d);
            };
        };
    }
