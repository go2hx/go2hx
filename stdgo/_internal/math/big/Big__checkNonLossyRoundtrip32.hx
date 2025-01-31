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
function _checkNonLossyRoundtrip32(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _f:stdgo.GoFloat32):Void {
        if (!stdgo._internal.math.big.Big__isFinite._isFinite((_f : stdgo.GoFloat64))) {
            return;
        };
        var _r = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setFloat64((_f : stdgo.GoFloat64));
        if ((_r == null || (_r : Dynamic).__nil__)) {
            @:check2r _t.errorf(("Rat.SetFloat64(float64(%g) (%b)) == nil" : stdgo.GoString), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f));
            return;
        };
        var __tmp__ = @:check2r _r.float32(), _f2:stdgo.GoFloat32 = __tmp__._0, _exact:Bool = __tmp__._1;
        if (((_f != _f2) || !_exact : Bool)) {
            @:check2r _t.errorf(("Rat.SetFloat64(float64(%g)).Float32() = %g (%b), %v, want %g (%b), %v; delta = %b" : stdgo.GoString), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f2), stdgo.Go.toInterface(_f2), stdgo.Go.toInterface(_exact), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(true), stdgo.Go.toInterface((_f2 - _f : stdgo.GoFloat32)));
        };
    }
