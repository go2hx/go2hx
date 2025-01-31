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
function _checkIsBestApprox64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _f:stdgo.GoFloat64, _r:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):Bool {
        if ((stdgo._internal.math.Math_abs.abs(_f) >= (1.7976931348623157e+308 : stdgo.GoFloat64) : Bool)) {
            return true;
        };
        var _f0 = (stdgo._internal.math.Math_nextafter.nextafter(_f, stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt))) : stdgo.GoFloat64);
        var _f1 = (stdgo._internal.math.Math_nextafter.nextafter(_f, stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt))) : stdgo.GoFloat64);
        var _df = stdgo._internal.math.big.Big__delta._delta(_r, _f);
        var _df0 = stdgo._internal.math.big.Big__delta._delta(_r, _f0);
        var _df1 = stdgo._internal.math.big.Big__delta._delta(_r, _f1);
        if ((@:check2r _df.cmp(_df0) > (0 : stdgo.GoInt) : Bool)) {
            @:check2r _t.errorf(("Rat(%v).Float64() = %g (%b), but previous float64 %g (%b) is closer" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f0), stdgo.Go.toInterface(_f0));
            return false;
        };
        if ((@:check2r _df.cmp(_df1) > (0 : stdgo.GoInt) : Bool)) {
            @:check2r _t.errorf(("Rat(%v).Float64() = %g (%b), but next float64 %g (%b) is closer" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f1), stdgo.Go.toInterface(_f1));
            return false;
        };
        if (((@:check2r _df.cmp(_df0) == (0 : stdgo.GoInt)) && !stdgo._internal.math.big.Big__isEven64._isEven64(_f) : Bool)) {
            @:check2r _t.errorf(("Rat(%v).Float64() = %g (%b); halfway should have rounded to %g (%b) instead" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f0), stdgo.Go.toInterface(_f0));
            return false;
        };
        if (((@:check2r _df.cmp(_df1) == (0 : stdgo.GoInt)) && !stdgo._internal.math.big.Big__isEven64._isEven64(_f) : Bool)) {
            @:check2r _t.errorf(("Rat(%v).Float64() = %g (%b); halfway should have rounded to %g (%b) instead" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f1), stdgo.Go.toInterface(_f1));
            return false;
        };
        return true;
    }
