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
function _testFunVWW(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _msg:stdgo.GoString, _f:stdgo._internal.math.big.Big_T_funVWW.T_funVWW, _a:stdgo._internal.math.big.Big_T_argVWW.T_argVWW):Void {
        var _z = (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>((_a._z.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat);
        var _c = (_f(_z, _a._x, _a._y, _a._r) : stdgo._internal.math.big.Big_Word.Word);
        for (_i => _zi in _z) {
            if (_zi != (_a._z[(_i : stdgo.GoInt)])) {
                @:check2r _t.errorf(("%s%+v\n\tgot z[%d] = %#x; want %#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_zi), stdgo.Go.toInterface(_a._z[(_i : stdgo.GoInt)]));
                break;
            };
        };
        if (_c != (_a._c)) {
            @:check2r _t.errorf(("%s%+v\n\tgot c = %#x; want %#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_a._c));
        };
    }
