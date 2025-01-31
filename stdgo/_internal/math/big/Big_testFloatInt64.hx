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
function testFloatInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_20.T__struct_20>(25, 25, ...[
({ _x : ("-Inf" : stdgo.GoString), _out : (-9223372036854775808i64 : stdgo.GoInt64), _acc : (1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20),
({ _x : ("-1e10000" : stdgo.GoString), _out : (-9223372036854775808i64 : stdgo.GoInt64), _acc : (1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20),
({ _x : ("-9223372036854775809" : stdgo.GoString), _out : (-9223372036854775808i64 : stdgo.GoInt64), _acc : (1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20),
({ _x : ("-9223372036854775808.000000000000000000001" : stdgo.GoString), _out : (-9223372036854775808i64 : stdgo.GoInt64), _acc : (1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20),
({ _x : ("-9223372036854775808" : stdgo.GoString), _out : (-9223372036854775808i64 : stdgo.GoInt64), _acc : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20),
({ _x : ("-9223372036854775807.000000000000000000001" : stdgo.GoString), _out : (-9223372036854775807i64 : stdgo.GoInt64), _acc : (1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20),
({ _x : ("-9223372036854775807" : stdgo.GoString), _out : (-9223372036854775807i64 : stdgo.GoInt64), _acc : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20),
({ _x : ("-12345.000000000000000000001" : stdgo.GoString), _out : (-12345i64 : stdgo.GoInt64), _acc : (1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20),
({ _x : ("-12345.0" : stdgo.GoString), _out : (-12345i64 : stdgo.GoInt64), _acc : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20),
({ _x : ("-1.000000000000000000001" : stdgo.GoString), _out : (-1i64 : stdgo.GoInt64), _acc : (1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20),
({ _x : ("-1.5" : stdgo.GoString), _out : (-1i64 : stdgo.GoInt64), _acc : (1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20),
({ _x : ("-1" : stdgo.GoString), _out : (-1i64 : stdgo.GoInt64), _acc : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20),
({ _x : ("-1e-1000" : stdgo.GoString), _out : (0i64 : stdgo.GoInt64), _acc : (1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20),
({ _x : ("0" : stdgo.GoString), _out : (0i64 : stdgo.GoInt64), _acc : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20),
({ _x : ("1e-1000" : stdgo.GoString), _out : (0i64 : stdgo.GoInt64), _acc : (-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20),
({ _x : ("1" : stdgo.GoString), _out : (1i64 : stdgo.GoInt64), _acc : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20),
({ _x : ("1.000000000000000000001" : stdgo.GoString), _out : (1i64 : stdgo.GoInt64), _acc : (-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20),
({ _x : ("1.5" : stdgo.GoString), _out : (1i64 : stdgo.GoInt64), _acc : (-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20),
({ _x : ("12345.0" : stdgo.GoString), _out : (12345i64 : stdgo.GoInt64), _acc : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20),
({ _x : ("12345.000000000000000000001" : stdgo.GoString), _out : (12345i64 : stdgo.GoInt64), _acc : (-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20),
({ _x : ("9223372036854775807" : stdgo.GoString), _out : (9223372036854775807i64 : stdgo.GoInt64), _acc : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20),
({ _x : ("9223372036854775807.000000000000000000001" : stdgo.GoString), _out : (9223372036854775807i64 : stdgo.GoInt64), _acc : (-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20),
({ _x : ("9223372036854775808" : stdgo.GoString), _out : (9223372036854775807i64 : stdgo.GoInt64), _acc : (-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20),
({ _x : ("1e10000" : stdgo.GoString), _out : (9223372036854775807i64 : stdgo.GoInt64), _acc : (-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20),
({ _x : ("+Inf" : stdgo.GoString), _out : (9223372036854775807i64 : stdgo.GoInt64), _acc : (-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20)].concat([for (i in 25 ... (25 > 25 ? 25 : 25 : stdgo.GoInt).toBasic()) ({ _x : ("" : stdgo.GoString), _out : (0 : stdgo.GoInt64), _acc : ((0 : stdgo.GoInt8) : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_20.T__struct_20)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_20.T__struct_20>)) {
            var _x = stdgo._internal.math.big.Big__makeFloat._makeFloat(_test._x?.__copy__());
            var __tmp__ = @:check2r _x.int64(), _out:stdgo.GoInt64 = __tmp__._0, _acc:stdgo._internal.math.big.Big_Accuracy.Accuracy = __tmp__._1;
            if (((_out != _test._out) || (_acc != _test._acc) : Bool)) {
                @:check2r _t.errorf(("%s: got %d (%s); want %d (%s)" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(stdgo.Go.asInterface(_acc)), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._acc)));
            };
        };
    }
