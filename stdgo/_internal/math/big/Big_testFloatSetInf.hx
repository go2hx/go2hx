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
function testFloatSetInf(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _f:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_);
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_18.T__struct_18>(4, 4, ...[({ _signbit : false, _prec : (0u32 : stdgo.GoUInt), _want : ("+Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_18.T__struct_18), ({ _signbit : true, _prec : (0u32 : stdgo.GoUInt), _want : ("-Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_18.T__struct_18), ({ _signbit : false, _prec : (10u32 : stdgo.GoUInt), _want : ("+Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_18.T__struct_18), ({ _signbit : true, _prec : (30u32 : stdgo.GoUInt), _want : ("-Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_18.T__struct_18)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _signbit : false, _prec : (0 : stdgo.GoUInt), _want : ("" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_18.T__struct_18)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_18.T__struct_18>)) {
            var _x = @:check2r @:check2 _f.setPrec(_test._prec).setInf(_test._signbit);
            {
                var _got = ((@:check2r _x.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (((_got != _test._want) || (@:check2r _x.prec() != _test._prec) : Bool)) {
                    @:check2r _t.errorf(("SetInf(%v) = %s (prec = %d); want %s (prec = %d)" : stdgo.GoString), stdgo.Go.toInterface(_test._signbit), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(@:check2r _x.prec()), stdgo.Go.toInterface(_test._want), stdgo.Go.toInterface(_test._prec));
                };
            };
        };
    }
