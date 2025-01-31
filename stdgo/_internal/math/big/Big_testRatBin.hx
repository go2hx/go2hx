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
function testRatBin(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _test in stdgo._internal.math.big.Big__ratBinTests._ratBinTests) {
            var _arg = (new stdgo._internal.math.big.Big_T_ratBinArg.T_ratBinArg(_test._x?.__copy__(), _test._y?.__copy__(), _test._sum?.__copy__()) : stdgo._internal.math.big.Big_T_ratBinArg.T_ratBinArg);
            stdgo._internal.math.big.Big__testRatBin._testRatBin(_t, _i, ("Add" : stdgo.GoString), stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.add, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_T_ratBinArg.T_ratBinArg(_test._y?.__copy__(), _test._x?.__copy__(), _test._sum?.__copy__()) : stdgo._internal.math.big.Big_T_ratBinArg.T_ratBinArg);
            stdgo._internal.math.big.Big__testRatBin._testRatBin(_t, _i, ("Add symmetric" : stdgo.GoString), stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.add, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_T_ratBinArg.T_ratBinArg(_test._sum?.__copy__(), _test._x?.__copy__(), _test._y?.__copy__()) : stdgo._internal.math.big.Big_T_ratBinArg.T_ratBinArg);
            stdgo._internal.math.big.Big__testRatBin._testRatBin(_t, _i, ("Sub" : stdgo.GoString), stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.sub, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_T_ratBinArg.T_ratBinArg(_test._sum?.__copy__(), _test._y?.__copy__(), _test._x?.__copy__()) : stdgo._internal.math.big.Big_T_ratBinArg.T_ratBinArg);
            stdgo._internal.math.big.Big__testRatBin._testRatBin(_t, _i, ("Sub symmetric" : stdgo.GoString), stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.sub, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_T_ratBinArg.T_ratBinArg(_test._x?.__copy__(), _test._y?.__copy__(), _test._prod?.__copy__()) : stdgo._internal.math.big.Big_T_ratBinArg.T_ratBinArg);
            stdgo._internal.math.big.Big__testRatBin._testRatBin(_t, _i, ("Mul" : stdgo.GoString), stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.mul, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_T_ratBinArg.T_ratBinArg(_test._y?.__copy__(), _test._x?.__copy__(), _test._prod?.__copy__()) : stdgo._internal.math.big.Big_T_ratBinArg.T_ratBinArg);
            stdgo._internal.math.big.Big__testRatBin._testRatBin(_t, _i, ("Mul symmetric" : stdgo.GoString), stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.mul, _arg?.__copy__());
            if (_test._x != (("0" : stdgo.GoString))) {
                _arg = (new stdgo._internal.math.big.Big_T_ratBinArg.T_ratBinArg(_test._prod?.__copy__(), _test._x?.__copy__(), _test._y?.__copy__()) : stdgo._internal.math.big.Big_T_ratBinArg.T_ratBinArg);
                stdgo._internal.math.big.Big__testRatBin._testRatBin(_t, _i, ("Quo" : stdgo.GoString), stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.quo, _arg?.__copy__());
            };
            if (_test._y != (("0" : stdgo.GoString))) {
                _arg = (new stdgo._internal.math.big.Big_T_ratBinArg.T_ratBinArg(_test._prod?.__copy__(), _test._y?.__copy__(), _test._x?.__copy__()) : stdgo._internal.math.big.Big_T_ratBinArg.T_ratBinArg);
                stdgo._internal.math.big.Big__testRatBin._testRatBin(_t, _i, ("Quo symmetric" : stdgo.GoString), stdgo._internal.math.big.Big_Rat_static_extension.Rat_static_extension.quo, _arg?.__copy__());
            };
        };
    }
