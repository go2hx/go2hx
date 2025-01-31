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
function testFunVWW(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _a in stdgo._internal.math.big.Big__prodVWW._prodVWW) {
            var _arg = (_a?.__copy__() : stdgo._internal.math.big.Big_T_argVWW.T_argVWW);
            stdgo._internal.math.big.Big__testFunVWW._testFunVWW(_t, ("mulAddVWW_g" : stdgo.GoString), stdgo._internal.math.big.Big__mulAddVWW_g._mulAddVWW_g, _arg?.__copy__());
            stdgo._internal.math.big.Big__testFunVWW._testFunVWW(_t, ("mulAddVWW" : stdgo.GoString), stdgo._internal.math.big.Big__mulAddVWW._mulAddVWW, _arg?.__copy__());
            if (((_a._y != (0u32 : stdgo._internal.math.big.Big_Word.Word)) && (_a._r < _a._y : Bool) : Bool)) {
                var _arg = (new stdgo._internal.math.big.Big_T_argWVW.T_argWVW(_a._x, _a._c, _a._z, _a._y, _a._r) : stdgo._internal.math.big.Big_T_argWVW.T_argWVW);
                stdgo._internal.math.big.Big__testFunWVW._testFunWVW(_t, ("divWVW" : stdgo.GoString), stdgo._internal.math.big.Big__divWVW._divWVW, _arg?.__copy__());
            };
        };
    }
