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
function testMulBits(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_4.T__struct_4>(7, 7, ...[({ _x : null, _y : null, _want : null } : stdgo._internal.math.big.Big_T__struct_4.T__struct_4), ({ _x : (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits), _y : (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits), _want : null } : stdgo._internal.math.big.Big_T__struct_4.T__struct_4), ({ _x : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(0 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits), _y : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(0 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits), _want : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(0 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits) } : stdgo._internal.math.big.Big_T__struct_4.T__struct_4), ({ _x : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(0 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits), _y : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(1 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits), _want : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(1 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits) } : stdgo._internal.math.big.Big_T__struct_4.T__struct_4), ({ _x : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(1 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits), _y : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits), _want : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits) } : stdgo._internal.math.big.Big_T__struct_4.T__struct_4), ({ _x : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(-1 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits), _y : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(1 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits), _want : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(0 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits) } : stdgo._internal.math.big.Big_T__struct_4.T__struct_4), ({ _x : (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(-10 : stdgo.GoInt), (-1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt), (10 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits), _y : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits), _want : (new stdgo.Slice<stdgo.GoInt>(15, 15, ...[
(-9 : stdgo.GoInt),
(-8 : stdgo.GoInt),
(-7 : stdgo.GoInt),
(0 : stdgo.GoInt),
(1 : stdgo.GoInt),
(2 : stdgo.GoInt),
(1 : stdgo.GoInt),
(2 : stdgo.GoInt),
(3 : stdgo.GoInt),
(2 : stdgo.GoInt),
(3 : stdgo.GoInt),
(4 : stdgo.GoInt),
(11 : stdgo.GoInt),
(12 : stdgo.GoInt),
(13 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits) } : stdgo._internal.math.big.Big_T__struct_4.T__struct_4)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({ _x : new stdgo._internal.math.big.Big_Bits.Bits(0, 0), _y : new stdgo._internal.math.big.Big_Bits.Bits(0, 0), _want : new stdgo._internal.math.big.Big_Bits.Bits(0, 0) } : stdgo._internal.math.big.Big_T__struct_4.T__struct_4)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_4.T__struct_4>)) {
            var _got = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._x._mul(_test._y))))?.__copy__() : stdgo.GoString);
            var _want = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._want)))?.__copy__() : stdgo.GoString);
            if (_got != (_want)) {
                @:check2r _t.errorf(("%v * %v = %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._y)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
