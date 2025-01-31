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
function testBinomial(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _z:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_35.T__struct_35>(19, 19, ...[
({ _n : (0i64 : stdgo.GoInt64), _k : (0i64 : stdgo.GoInt64), _want : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_35.T__struct_35),
({ _n : (0i64 : stdgo.GoInt64), _k : (1i64 : stdgo.GoInt64), _want : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_35.T__struct_35),
({ _n : (1i64 : stdgo.GoInt64), _k : (0i64 : stdgo.GoInt64), _want : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_35.T__struct_35),
({ _n : (1i64 : stdgo.GoInt64), _k : (1i64 : stdgo.GoInt64), _want : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_35.T__struct_35),
({ _n : (1i64 : stdgo.GoInt64), _k : (10i64 : stdgo.GoInt64), _want : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_35.T__struct_35),
({ _n : (4i64 : stdgo.GoInt64), _k : (0i64 : stdgo.GoInt64), _want : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_35.T__struct_35),
({ _n : (4i64 : stdgo.GoInt64), _k : (1i64 : stdgo.GoInt64), _want : ("4" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_35.T__struct_35),
({ _n : (4i64 : stdgo.GoInt64), _k : (2i64 : stdgo.GoInt64), _want : ("6" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_35.T__struct_35),
({ _n : (4i64 : stdgo.GoInt64), _k : (3i64 : stdgo.GoInt64), _want : ("4" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_35.T__struct_35),
({ _n : (4i64 : stdgo.GoInt64), _k : (4i64 : stdgo.GoInt64), _want : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_35.T__struct_35),
({ _n : (10i64 : stdgo.GoInt64), _k : (1i64 : stdgo.GoInt64), _want : ("10" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_35.T__struct_35),
({ _n : (10i64 : stdgo.GoInt64), _k : (9i64 : stdgo.GoInt64), _want : ("10" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_35.T__struct_35),
({ _n : (10i64 : stdgo.GoInt64), _k : (5i64 : stdgo.GoInt64), _want : ("252" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_35.T__struct_35),
({ _n : (11i64 : stdgo.GoInt64), _k : (5i64 : stdgo.GoInt64), _want : ("462" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_35.T__struct_35),
({ _n : (11i64 : stdgo.GoInt64), _k : (6i64 : stdgo.GoInt64), _want : ("462" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_35.T__struct_35),
({ _n : (100i64 : stdgo.GoInt64), _k : (10i64 : stdgo.GoInt64), _want : ("17310309456440" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_35.T__struct_35),
({ _n : (100i64 : stdgo.GoInt64), _k : (90i64 : stdgo.GoInt64), _want : ("17310309456440" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_35.T__struct_35),
({ _n : (1000i64 : stdgo.GoInt64), _k : (10i64 : stdgo.GoInt64), _want : ("263409560461970212832400" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_35.T__struct_35),
({ _n : (1000i64 : stdgo.GoInt64), _k : (990i64 : stdgo.GoInt64), _want : ("263409560461970212832400" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_35.T__struct_35)].concat([for (i in 19 ... (19 > 19 ? 19 : 19 : stdgo.GoInt).toBasic()) ({ _n : (0 : stdgo.GoInt64), _k : (0 : stdgo.GoInt64), _want : ("" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_35.T__struct_35)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_35.T__struct_35>)) {
            {
                var _got = ((@:check2r @:check2 _z.binomial(_test._n, _test._k).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_got != (_test._want)) {
                    @:check2r _t.errorf(("Binomial(%d, %d) = %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._n), stdgo.Go.toInterface(_test._k), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
