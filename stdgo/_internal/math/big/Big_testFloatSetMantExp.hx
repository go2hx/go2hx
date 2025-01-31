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
function testFloatSetMantExp(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_15.T__struct_15>(16, 16, ...[
({ _frac : ("0" : stdgo.GoString), _exp : (0 : stdgo.GoInt), _z : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_15.T__struct_15),
({ _frac : ("+0" : stdgo.GoString), _exp : (0 : stdgo.GoInt), _z : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_15.T__struct_15),
({ _frac : ("-0" : stdgo.GoString), _exp : (0 : stdgo.GoInt), _z : ("-0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_15.T__struct_15),
({ _frac : ("Inf" : stdgo.GoString), _exp : (1234 : stdgo.GoInt), _z : ("+Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_15.T__struct_15),
({ _frac : ("+Inf" : stdgo.GoString), _exp : (-1234 : stdgo.GoInt), _z : ("+Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_15.T__struct_15),
({ _frac : ("-Inf" : stdgo.GoString), _exp : (-1234 : stdgo.GoInt), _z : ("-Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_15.T__struct_15),
({ _frac : ("0" : stdgo.GoString), _exp : (-2147483648 : stdgo.GoInt), _z : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_15.T__struct_15),
({ _frac : ("0.25" : stdgo.GoString), _exp : (-2147483648 : stdgo.GoInt), _z : ("+0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_15.T__struct_15),
({ _frac : ("-0.25" : stdgo.GoString), _exp : (-2147483648 : stdgo.GoInt), _z : ("-0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_15.T__struct_15),
({ _frac : ("1" : stdgo.GoString), _exp : (2147483647 : stdgo.GoInt), _z : ("+Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_15.T__struct_15),
({ _frac : ("2" : stdgo.GoString), _exp : (2147483646 : stdgo.GoInt), _z : ("+Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_15.T__struct_15),
({ _frac : ("0.75" : stdgo.GoString), _exp : (1 : stdgo.GoInt), _z : ("1.5" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_15.T__struct_15),
({ _frac : ("0.5" : stdgo.GoString), _exp : (11 : stdgo.GoInt), _z : ("1024" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_15.T__struct_15),
({ _frac : ("-0.5" : stdgo.GoString), _exp : (-2 : stdgo.GoInt), _z : ("-0.125" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_15.T__struct_15),
({ _frac : ("32" : stdgo.GoString), _exp : (5 : stdgo.GoInt), _z : ("1024" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_15.T__struct_15),
({ _frac : ("1024" : stdgo.GoString), _exp : (-10 : stdgo.GoInt), _z : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_15.T__struct_15)].concat([for (i in 16 ... (16 > 16 ? 16 : 16 : stdgo.GoInt).toBasic()) ({ _frac : ("" : stdgo.GoString), _exp : (0 : stdgo.GoInt), _z : ("" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_15.T__struct_15)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_15.T__struct_15>)) {
            var _frac = stdgo._internal.math.big.Big__makeFloat._makeFloat(_test._frac?.__copy__());
            var _want = stdgo._internal.math.big.Big__makeFloat._makeFloat(_test._z?.__copy__());
            var _z:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_);
            @:check2 _z.setMantExp(_frac, _test._exp);
            if (!stdgo._internal.math.big.Big__alike._alike((stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>), _want)) {
                @:check2r _t.errorf(("SetMantExp(%s, %d) = %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._frac), stdgo.Go.toInterface(_test._exp), stdgo.Go.toInterface(@:check2 _z.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt))), stdgo.Go.toInterface(_test._z));
            };
            var _mant = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
            if (@:check2r @:check2 _z.setMantExp(_mant, @:check2r _want.mantExp(_mant)).cmp(_want) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("Inverse property not satisfied: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(@:check2 _z.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt))), stdgo.Go.toInterface(_test._z));
            };
        };
    }
