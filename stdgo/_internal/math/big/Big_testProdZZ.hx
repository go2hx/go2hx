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
function testProdZZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var mulZZ = function(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
            return @:check2r _z.mul(_x, _y);
        };
        for (__8 => _a in stdgo._internal.math.big.Big__prodZZ._prodZZ) {
            var _arg = (_a?.__copy__() : stdgo._internal.math.big.Big_T_argZZ.T_argZZ);
            stdgo._internal.math.big.Big__testFunZZ._testFunZZ(_t, ("MulZZ" : stdgo.GoString), mulZZ, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_T_argZZ.T_argZZ(_a._z, _a._y, _a._x) : stdgo._internal.math.big.Big_T_argZZ.T_argZZ);
            stdgo._internal.math.big.Big__testFunZZ._testFunZZ(_t, ("MulZZ symmetric" : stdgo.GoString), mulZZ, _arg?.__copy__());
        };
    }
