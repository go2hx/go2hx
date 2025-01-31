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
function testFloatMinPrec(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_12.T__struct_12>(11, 11, ...[
({ _x : ("0" : stdgo.GoString), _want : (0u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_12.T__struct_12),
({ _x : ("-0" : stdgo.GoString), _want : (0u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_12.T__struct_12),
({ _x : ("+Inf" : stdgo.GoString), _want : (0u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_12.T__struct_12),
({ _x : ("-Inf" : stdgo.GoString), _want : (0u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_12.T__struct_12),
({ _x : ("1" : stdgo.GoString), _want : (1u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_12.T__struct_12),
({ _x : ("2" : stdgo.GoString), _want : (1u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_12.T__struct_12),
({ _x : ("3" : stdgo.GoString), _want : (2u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_12.T__struct_12),
({ _x : ("0x8001" : stdgo.GoString), _want : (16u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_12.T__struct_12),
({ _x : ("0x8001p-1000" : stdgo.GoString), _want : (16u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_12.T__struct_12),
({ _x : ("0x8001p+1000" : stdgo.GoString), _want : (16u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_12.T__struct_12),
({ _x : ("0.1" : stdgo.GoString), _want : (100u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_12.T__struct_12)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({ _x : ("" : stdgo.GoString), _want : (0 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_12.T__struct_12)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_12.T__struct_12>)) {
            var _x = @:check2r stdgo._internal.math.big.Big__makeFloat._makeFloat(_test._x?.__copy__()).setPrec((100u32 : stdgo.GoUInt));
            {
                var _got = (@:check2r _x.minPrec() : stdgo.GoUInt);
                if (_got != (_test._want)) {
                    @:check2r _t.errorf(("%s.MinPrec() = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
