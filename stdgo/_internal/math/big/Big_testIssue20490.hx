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
function testIssue20490(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_24.T__struct_24>(4, 4, ...[({ _a : (4 : stdgo.GoFloat64), _b : (1 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_T__struct_24.T__struct_24), ({ _a : (-4 : stdgo.GoFloat64), _b : (1 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_T__struct_24.T__struct_24), ({ _a : (4 : stdgo.GoFloat64), _b : (-1 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_T__struct_24.T__struct_24), ({ _a : (-4 : stdgo.GoFloat64), _b : (-1 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_T__struct_24.T__struct_24)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _a : (0 : stdgo.GoFloat64), _b : (0 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_T__struct_24.T__struct_24)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_24.T__struct_24>);
        for (__8 => _test in _tests) {
            var __0 = stdgo._internal.math.big.Big_newFloat.newFloat(_test._a), __1 = stdgo._internal.math.big.Big_newFloat.newFloat(_test._b);
var _b = __1, _a = __0;
            var _diff = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).sub(_a, _b);
            @:check2r _b.sub(_a, _b);
            if (@:check2r _b.cmp(_diff) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("got %g - %g = %g; want %g\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.math.big.Big_newFloat.newFloat(_test._b))), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_diff)));
            };
            _b = stdgo._internal.math.big.Big_newFloat.newFloat(_test._b);
            var _sum = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).add(_a, _b);
            @:check2r _b.add(_a, _b);
            if (@:check2r _b.cmp(_sum) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("got %g + %g = %g; want %g\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.math.big.Big_newFloat.newFloat(_test._b))), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_sum)));
            };
        };
    }
