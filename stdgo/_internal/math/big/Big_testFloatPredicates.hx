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
function testFloatPredicates(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_16.T__struct_16>(6, 6, ...[({ _x : ("-Inf" : stdgo.GoString), _sign : (-1 : stdgo.GoInt), _signbit : true, _inf : true } : stdgo._internal.math.big.Big_T__struct_16.T__struct_16), ({ _x : ("-1" : stdgo.GoString), _sign : (-1 : stdgo.GoInt), _signbit : true, _inf : false } : stdgo._internal.math.big.Big_T__struct_16.T__struct_16), ({ _x : ("-0" : stdgo.GoString), _signbit : true, _sign : (0 : stdgo.GoInt), _inf : false } : stdgo._internal.math.big.Big_T__struct_16.T__struct_16), ({ _x : ("0" : stdgo.GoString), _sign : (0 : stdgo.GoInt), _signbit : false, _inf : false } : stdgo._internal.math.big.Big_T__struct_16.T__struct_16), ({ _x : ("1" : stdgo.GoString), _sign : (1 : stdgo.GoInt), _signbit : false, _inf : false } : stdgo._internal.math.big.Big_T__struct_16.T__struct_16), ({ _x : ("+Inf" : stdgo.GoString), _sign : (1 : stdgo.GoInt), _inf : true, _signbit : false } : stdgo._internal.math.big.Big_T__struct_16.T__struct_16)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _x : ("" : stdgo.GoString), _sign : (0 : stdgo.GoInt), _signbit : false, _inf : false } : stdgo._internal.math.big.Big_T__struct_16.T__struct_16)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_16.T__struct_16>)) {
            var _x = stdgo._internal.math.big.Big__makeFloat._makeFloat(_test._x?.__copy__());
            {
                var _got = (@:check2r _x.signbit() : Bool);
                if (_got != (_test._signbit)) {
                    @:check2r _t.errorf(("(%s).Signbit() = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._signbit));
                };
            };
            {
                var _got = (@:check2r _x.sign() : stdgo.GoInt);
                if (_got != (_test._sign)) {
                    @:check2r _t.errorf(("(%s).Sign() = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._sign));
                };
            };
            {
                var _got = (@:check2r _x.isInf() : Bool);
                if (_got != (_test._inf)) {
                    @:check2r _t.errorf(("(%s).IsInf() = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._inf));
                };
            };
        };
    }
