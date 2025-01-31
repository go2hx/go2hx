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
function _testShiftFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _f:(stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>, stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>, stdgo.GoUInt) -> stdgo._internal.math.big.Big_Word.Word, _a:stdgo._internal.math.big.Big_T_argVU.T_argVU):Void {
        var _b = (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>((_a._d.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>);
        _b.__copyTo__(_a._d);
        var _z = (_b.__slice__(_a._zp, (_a._zp + _a._l : stdgo.GoUInt)) : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>);
        var _x = (_b.__slice__(_a._xp, (_a._xp + _a._l : stdgo.GoUInt)) : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>);
        var _c = (_f(_z, _x, _a._s) : stdgo._internal.math.big.Big_Word.Word);
        for (_i => _zi in _z) {
            if (_zi != (_a._r[(_i : stdgo.GoInt)])) {
                @:check2r _t.errorf(("d := %v, %s(d[%d:%d], d[%d:%d], %d)\n\tgot z[%d] = %#x; want %#x" : stdgo.GoString),
stdgo.Go.toInterface(_a._d),
stdgo.Go.toInterface(_a._m),
stdgo.Go.toInterface(_a._zp),
stdgo.Go.toInterface((_a._zp + _a._l : stdgo.GoUInt)),
stdgo.Go.toInterface(_a._xp),
stdgo.Go.toInterface((_a._xp + _a._l : stdgo.GoUInt)),
stdgo.Go.toInterface(_a._s),
stdgo.Go.toInterface(_i),
stdgo.Go.toInterface(_zi),
stdgo.Go.toInterface(_a._r[(_i : stdgo.GoInt)]));
                break;
            };
        };
        if (_c != (_a._c)) {
            @:check2r _t.errorf(("d := %v, %s(d[%d:%d], d[%d:%d], %d)\n\tgot c = %#x; want %#x" : stdgo.GoString), stdgo.Go.toInterface(_a._d), stdgo.Go.toInterface(_a._m), stdgo.Go.toInterface(_a._zp), stdgo.Go.toInterface((_a._zp + _a._l : stdgo.GoUInt)), stdgo.Go.toInterface(_a._xp), stdgo.Go.toInterface((_a._xp + _a._l : stdgo.GoUInt)), stdgo.Go.toInterface(_a._s), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_a._c));
        };
    }
