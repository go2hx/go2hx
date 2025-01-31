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
function testShiftOverlap(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _a in stdgo._internal.math.big.Big__argshlVU._argshlVU) {
            var _arg = (_a?.__copy__() : stdgo._internal.math.big.Big_T_argVU.T_argVU);
            stdgo._internal.math.big.Big__testShiftFunc._testShiftFunc(_t, stdgo._internal.math.big.Big__shlVU._shlVU, _arg?.__copy__());
        };
        for (__9 => _a in stdgo._internal.math.big.Big__argshrVU._argshrVU) {
            var _arg = (_a?.__copy__() : stdgo._internal.math.big.Big_T_argVU.T_argVU);
            stdgo._internal.math.big.Big__testShiftFunc._testShiftFunc(_t, stdgo._internal.math.big.Big__shrVU._shrVU, _arg?.__copy__());
        };
    }
