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
function testFloatRat(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_23.T__struct_23>(14, 14, ...[
({ _x : ("0" : stdgo.GoString), _want : ("0/1" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_23.T__struct_23),
({ _x : ("+0" : stdgo.GoString), _want : ("0/1" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_23.T__struct_23),
({ _x : ("-0" : stdgo.GoString), _want : ("0/1" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_23.T__struct_23),
({ _x : ("Inf" : stdgo.GoString), _want : ("nil" : stdgo.GoString), _acc : (-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_23.T__struct_23),
({ _x : ("+Inf" : stdgo.GoString), _want : ("nil" : stdgo.GoString), _acc : (-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_23.T__struct_23),
({ _x : ("-Inf" : stdgo.GoString), _want : ("nil" : stdgo.GoString), _acc : (1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_23.T__struct_23),
({ _x : ("1" : stdgo.GoString), _want : ("1/1" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_23.T__struct_23),
({ _x : ("-1" : stdgo.GoString), _want : ("-1/1" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_23.T__struct_23),
({ _x : ("1.25" : stdgo.GoString), _want : ("5/4" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_23.T__struct_23),
({ _x : ("-1.25" : stdgo.GoString), _want : ("-5/4" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_23.T__struct_23),
({ _x : ("1e10" : stdgo.GoString), _want : ("10000000000/1" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_23.T__struct_23),
({ _x : ("1p10" : stdgo.GoString), _want : ("1024/1" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_23.T__struct_23),
({ _x : ("-1p-10" : stdgo.GoString), _want : ("-1/1024" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_23.T__struct_23),
({ _x : ("3.14159265" : stdgo.GoString), _want : ("7244019449799623199/2305843009213693952" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_23.T__struct_23)].concat([for (i in 14 ... (14 > 14 ? 14 : 14 : stdgo.GoInt).toBasic()) ({ _x : ("" : stdgo.GoString), _want : ("" : stdgo.GoString), _acc : ((0 : stdgo.GoInt8) : stdgo._internal.math.big.Big_Accuracy.Accuracy) } : stdgo._internal.math.big.Big_T__struct_23.T__struct_23)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_23.T__struct_23>)) {
            var _x = @:check2r stdgo._internal.math.big.Big__makeFloat._makeFloat(_test._x?.__copy__()).setPrec((64u32 : stdgo.GoUInt));
            var __tmp__ = @:check2r _x.rat(null), _res:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = __tmp__._0, _acc:stdgo._internal.math.big.Big_Accuracy.Accuracy = __tmp__._1;
            var _got = ("nil" : stdgo.GoString);
            if ((_res != null && ((_res : Dynamic).__nil__ == null || !(_res : Dynamic).__nil__))) {
                _got = (@:check2r _res.string() : stdgo.GoString)?.__copy__();
            };
            if (_got != (_test._want)) {
                @:check2r _t.errorf(("%s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                continue;
            };
            if (_acc != (_test._acc)) {
                @:check2r _t.errorf(("%s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(stdgo.Go.asInterface(_acc)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._acc)));
                continue;
            };
            if ((_res != null && ((_res : Dynamic).__nil__ == null || !(_res : Dynamic).__nil__))) {
                var _got = @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec((64u32 : stdgo.GoUInt)).setRat(_res);
                if (@:check2r _got.cmp(_x) != ((0 : stdgo.GoInt))) {
                    @:check2r _t.errorf(("%s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
                };
            };
        };
        for (__9 => _f in (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("0" : stdgo.GoString), ("1" : stdgo.GoString), ("-1" : stdgo.GoString), ("1234" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var _x = stdgo._internal.math.big.Big__makeFloat._makeFloat(_f?.__copy__());
            var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
            {
                var __tmp__ = @:check2r _x.rat(_r), _res:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = __tmp__._0, __10:stdgo._internal.math.big.Big_Accuracy.Accuracy = __tmp__._1;
                if (_res != (_r)) {
                    @:check2r _t.errorf(("(%s).Rat is not using supplied *Rat" : stdgo.GoString), stdgo.Go.toInterface(_f));
                };
            };
        };
    }
