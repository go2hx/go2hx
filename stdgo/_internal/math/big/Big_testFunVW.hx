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
function testFunVW(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _a in stdgo._internal.math.big.Big__sumVW._sumVW) {
            var _arg = (_a?.__copy__() : stdgo._internal.math.big.Big_T_argVW.T_argVW);
            stdgo._internal.math.big.Big__testFunVW._testFunVW(_t, ("addVW_g" : stdgo.GoString), stdgo._internal.math.big.Big__addVW_g._addVW_g, _arg?.__copy__());
            stdgo._internal.math.big.Big__testFunVW._testFunVW(_t, ("addVW" : stdgo.GoString), stdgo._internal.math.big.Big__addVW._addVW, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_T_argVW.T_argVW(_a._x, _a._z, _a._y, _a._c) : stdgo._internal.math.big.Big_T_argVW.T_argVW);
            stdgo._internal.math.big.Big__testFunVW._testFunVW(_t, ("subVW_g" : stdgo.GoString), stdgo._internal.math.big.Big__subVW_g._subVW_g, _arg?.__copy__());
            stdgo._internal.math.big.Big__testFunVW._testFunVW(_t, ("subVW" : stdgo.GoString), stdgo._internal.math.big.Big__subVW._subVW, _arg?.__copy__());
        };
        var _shlVW_g = (stdgo._internal.math.big.Big__makeFunVW._makeFunVW(stdgo._internal.math.big.Big__shlVU_g._shlVU_g) : stdgo._internal.math.big.Big_T_funVW.T_funVW);
        var _shlVW = (stdgo._internal.math.big.Big__makeFunVW._makeFunVW(stdgo._internal.math.big.Big__shlVU._shlVU) : stdgo._internal.math.big.Big_T_funVW.T_funVW);
        for (__9 => _a in stdgo._internal.math.big.Big__lshVW._lshVW) {
            var _arg = (_a?.__copy__() : stdgo._internal.math.big.Big_T_argVW.T_argVW);
            stdgo._internal.math.big.Big__testFunVW._testFunVW(_t, ("shlVU_g" : stdgo.GoString), _shlVW_g, _arg?.__copy__());
            stdgo._internal.math.big.Big__testFunVW._testFunVW(_t, ("shlVU" : stdgo.GoString), _shlVW, _arg?.__copy__());
        };
        var _shrVW_g = (stdgo._internal.math.big.Big__makeFunVW._makeFunVW(stdgo._internal.math.big.Big__shrVU_g._shrVU_g) : stdgo._internal.math.big.Big_T_funVW.T_funVW);
        var _shrVW = (stdgo._internal.math.big.Big__makeFunVW._makeFunVW(stdgo._internal.math.big.Big__shrVU._shrVU) : stdgo._internal.math.big.Big_T_funVW.T_funVW);
        for (__10 => _a in stdgo._internal.math.big.Big__rshVW._rshVW) {
            var _arg = (_a?.__copy__() : stdgo._internal.math.big.Big_T_argVW.T_argVW);
            stdgo._internal.math.big.Big__testFunVW._testFunVW(_t, ("shrVU_g" : stdgo.GoString), _shrVW_g, _arg?.__copy__());
            stdgo._internal.math.big.Big__testFunVW._testFunVW(_t, ("shrVU" : stdgo.GoString), _shrVW, _arg?.__copy__());
        };
    }
