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
function testIsFinite(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _finites = (new stdgo.Slice<stdgo.GoFloat64>(6, 6, ...[(0.3333333333333333 : stdgo.GoFloat64), (4.8915598712767145e+243 : stdgo.GoFloat64), (1.7976931348623157e+308 : stdgo.GoFloat64), (5e-324 : stdgo.GoFloat64), (-1.7976931348623157e+308 : stdgo.GoFloat64), (-5e-324 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        for (__8 => _f in _finites) {
            if (!stdgo._internal.math.big.Big__isFinite._isFinite(_f)) {
                @:check2r _t.errorf(("!IsFinite(%g (%b))" : stdgo.GoString), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f));
            };
        };
        var _nonfinites = (new stdgo.Slice<stdgo.GoFloat64>(3, 3, ...[stdgo._internal.math.Math_naN.naN(), stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)), stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        for (__9 => _f in _nonfinites) {
            if (stdgo._internal.math.big.Big__isFinite._isFinite(_f)) {
                @:check2r _t.errorf(("IsFinite(%g, (%b))" : stdgo.GoString), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f));
            };
        };
    }
