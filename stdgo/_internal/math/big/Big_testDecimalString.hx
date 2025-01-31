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
function testDecimalString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_7.T__struct_7>(6, 6, ...[({ _want : ("0" : stdgo.GoString), _x : ({} : stdgo._internal.math.big.Big_T_decimal.T_decimal) } : stdgo._internal.math.big.Big_T__struct_7.T__struct_7), ({ _x : (new stdgo._internal.math.big.Big_T_decimal.T_decimal((null : stdgo.Slice<stdgo.GoUInt8>), (1000 : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_decimal.T_decimal), _want : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_7.T__struct_7), ({ _x : (new stdgo._internal.math.big.Big_T_decimal.T_decimal((("12345" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_decimal.T_decimal), _want : ("0.12345" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_7.T__struct_7), ({ _x : (new stdgo._internal.math.big.Big_T_decimal.T_decimal((("12345" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (-3 : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_decimal.T_decimal), _want : ("0.00012345" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_7.T__struct_7), ({ _x : (new stdgo._internal.math.big.Big_T_decimal.T_decimal((("12345" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (3 : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_decimal.T_decimal), _want : ("123.45" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_7.T__struct_7), ({ _x : (new stdgo._internal.math.big.Big_T_decimal.T_decimal((("12345" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (10 : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_decimal.T_decimal), _want : ("1234500000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_7.T__struct_7)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _x : ({} : stdgo._internal.math.big.Big_T_decimal.T_decimal), _want : ("" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_7.T__struct_7)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_7.T__struct_7>)) {
            {
                var _got = ((@:check2 _test._x.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_got != (_test._want)) {
                    @:check2r _t.errorf(("%v == %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._x)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
