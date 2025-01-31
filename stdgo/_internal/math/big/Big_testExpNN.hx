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
function testExpNN(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _test in stdgo._internal.math.big.Big__expNNTests._expNNTests) {
            var _x = (stdgo._internal.math.big.Big__natFromString._natFromString(_test._x?.__copy__()) : stdgo._internal.math.big.Big_T_nat.T_nat);
            var _y = (stdgo._internal.math.big.Big__natFromString._natFromString(_test._y?.__copy__()) : stdgo._internal.math.big.Big_T_nat.T_nat);
            var _out = (stdgo._internal.math.big.Big__natFromString._natFromString(_test._out?.__copy__()) : stdgo._internal.math.big.Big_T_nat.T_nat);
            var _m:stdgo._internal.math.big.Big_T_nat.T_nat = new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0);
            if (((_test._m.length) > (0 : stdgo.GoInt) : Bool)) {
                _m = stdgo._internal.math.big.Big__natFromString._natFromString(_test._m?.__copy__());
            };
            var _z = ((new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._expNN(_x, _y, _m, false) : stdgo._internal.math.big.Big_T_nat.T_nat);
            if (_z._cmp(_out) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("#%d got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_z._utoa((10 : stdgo.GoInt))), stdgo.Go.toInterface(_out._utoa((10 : stdgo.GoInt))));
            };
        };
    }
