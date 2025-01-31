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
function testFloatMantExp(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_14.T__struct_14>(9, 9, ...[({ _x : ("0" : stdgo.GoString), _mant : ("0" : stdgo.GoString), _exp : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_14.T__struct_14), ({ _x : ("+0" : stdgo.GoString), _mant : ("0" : stdgo.GoString), _exp : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_14.T__struct_14), ({ _x : ("-0" : stdgo.GoString), _mant : ("-0" : stdgo.GoString), _exp : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_14.T__struct_14), ({ _x : ("Inf" : stdgo.GoString), _mant : ("+Inf" : stdgo.GoString), _exp : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_14.T__struct_14), ({ _x : ("+Inf" : stdgo.GoString), _mant : ("+Inf" : stdgo.GoString), _exp : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_14.T__struct_14), ({ _x : ("-Inf" : stdgo.GoString), _mant : ("-Inf" : stdgo.GoString), _exp : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_14.T__struct_14), ({ _x : ("1.5" : stdgo.GoString), _mant : ("0.75" : stdgo.GoString), _exp : (1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_14.T__struct_14), ({ _x : ("1.024e3" : stdgo.GoString), _mant : ("0.5" : stdgo.GoString), _exp : (11 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_14.T__struct_14), ({ _x : ("-0.125" : stdgo.GoString), _mant : ("-0.5" : stdgo.GoString), _exp : (-2 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_14.T__struct_14)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _x : ("" : stdgo.GoString), _mant : ("" : stdgo.GoString), _exp : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_14.T__struct_14)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_14.T__struct_14>)) {
            var _x = stdgo._internal.math.big.Big__makeFloat._makeFloat(_test._x?.__copy__());
            var _mant = stdgo._internal.math.big.Big__makeFloat._makeFloat(_test._mant?.__copy__());
            var _m = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
            var _e = (@:check2r _x.mantExp(_m) : stdgo.GoInt);
            if ((!stdgo._internal.math.big.Big__alike._alike(_m, _mant) || (_e != _test._exp) : Bool)) {
                @:check2r _t.errorf(("%s.MantExp() = %s, %d; want %s, %d" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(@:check2r _m.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt))), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_test._mant), stdgo.Go.toInterface(_test._exp));
            };
        };
    }
