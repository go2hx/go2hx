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
function testFloatSqrtSpecial(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_69.T__struct_69>(3, 3, ...[({ _x : stdgo._internal.math.big.Big_newFloat.newFloat((0 : stdgo.GoFloat64)), _want : stdgo._internal.math.big.Big_newFloat.newFloat((0 : stdgo.GoFloat64)) } : stdgo._internal.math.big.Big_T__struct_69.T__struct_69), ({ _x : stdgo._internal.math.big.Big_newFloat.newFloat((0 : stdgo.GoFloat64)), _want : stdgo._internal.math.big.Big_newFloat.newFloat((0 : stdgo.GoFloat64)) } : stdgo._internal.math.big.Big_T__struct_69.T__struct_69), ({ _x : stdgo._internal.math.big.Big_newFloat.newFloat(stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt))), _want : stdgo._internal.math.big.Big_newFloat.newFloat(stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt))) } : stdgo._internal.math.big.Big_T__struct_69.T__struct_69)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _x : (null : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>), _want : (null : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>) } : stdgo._internal.math.big.Big_T__struct_69.T__struct_69)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_69.T__struct_69>)) {
            var _got = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).sqrt(_test._x);
            if ((((@:checkr _got ?? throw "null pointer dereference")._neg != (@:checkr _test._want ?? throw "null pointer dereference")._neg) || ((@:checkr _got ?? throw "null pointer dereference")._form != (@:checkr _test._want ?? throw "null pointer dereference")._form) : Bool)) {
                @:check2r _t.errorf(("Sqrt(%v) = %v (neg: %v); want %v (neg: %v)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface((@:checkr _got ?? throw "null pointer dereference")._neg), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._want)), stdgo.Go.toInterface((@:checkr _test._want ?? throw "null pointer dereference")._neg));
            };
        };
    }
