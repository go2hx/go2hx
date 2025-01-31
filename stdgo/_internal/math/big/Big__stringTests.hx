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
var _stringTests : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_49.T__struct_49> = (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_49.T__struct_49>(58, 58, ...[
({ _in : stdgo.Go.str()?.__copy__(), _out : ("" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (0 : stdgo.GoInt64), _ok : false } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("a" : stdgo.GoString), _out : ("" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (0 : stdgo.GoInt64), _ok : false } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("z" : stdgo.GoString), _out : ("" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (0 : stdgo.GoInt64), _ok : false } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("+" : stdgo.GoString), _out : ("" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (0 : stdgo.GoInt64), _ok : false } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("-" : stdgo.GoString), _out : ("" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (0 : stdgo.GoInt64), _ok : false } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("0b" : stdgo.GoString), _out : ("" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (0 : stdgo.GoInt64), _ok : false } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("0o" : stdgo.GoString), _out : ("" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (0 : stdgo.GoInt64), _ok : false } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("0x" : stdgo.GoString), _out : ("" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (0 : stdgo.GoInt64), _ok : false } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("0y" : stdgo.GoString), _out : ("" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (0 : stdgo.GoInt64), _ok : false } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("2" : stdgo.GoString), _base : (2 : stdgo.GoInt), _out : ("" : stdgo.GoString), _val : (0 : stdgo.GoInt64), _ok : false } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("0b2" : stdgo.GoString), _base : (0 : stdgo.GoInt), _out : ("" : stdgo.GoString), _val : (0 : stdgo.GoInt64), _ok : false } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("08" : stdgo.GoString), _out : ("" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (0 : stdgo.GoInt64), _ok : false } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("8" : stdgo.GoString), _base : (8 : stdgo.GoInt), _out : ("" : stdgo.GoString), _val : (0 : stdgo.GoInt64), _ok : false } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("0xg" : stdgo.GoString), _base : (0 : stdgo.GoInt), _out : ("" : stdgo.GoString), _val : (0 : stdgo.GoInt64), _ok : false } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("g" : stdgo.GoString), _base : (16 : stdgo.GoInt), _out : ("" : stdgo.GoString), _val : (0 : stdgo.GoInt64), _ok : false } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("_" : stdgo.GoString), _out : ("" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (0 : stdgo.GoInt64), _ok : false } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("0_" : stdgo.GoString), _out : ("" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (0 : stdgo.GoInt64), _ok : false } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("_0" : stdgo.GoString), _out : ("" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (0 : stdgo.GoInt64), _ok : false } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("-1__0" : stdgo.GoString), _out : ("" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (0 : stdgo.GoInt64), _ok : false } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("0x10_" : stdgo.GoString), _out : ("" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (0 : stdgo.GoInt64), _ok : false } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("1_000" : stdgo.GoString), _base : (10 : stdgo.GoInt), _out : ("" : stdgo.GoString), _val : (0 : stdgo.GoInt64), _ok : false } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("d_e_a_d" : stdgo.GoString), _base : (16 : stdgo.GoInt), _out : ("" : stdgo.GoString), _val : (0 : stdgo.GoInt64), _ok : false } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("0" : stdgo.GoString), _out : ("0" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (0i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("0" : stdgo.GoString), _out : ("0" : stdgo.GoString), _base : (10 : stdgo.GoInt), _val : (0i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("0" : stdgo.GoString), _out : ("0" : stdgo.GoString), _base : (16 : stdgo.GoInt), _val : (0i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("+0" : stdgo.GoString), _out : ("0" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (0i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("-0" : stdgo.GoString), _out : ("0" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (0i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("10" : stdgo.GoString), _out : ("10" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (10i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("10" : stdgo.GoString), _out : ("10" : stdgo.GoString), _base : (10 : stdgo.GoInt), _val : (10i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("10" : stdgo.GoString), _out : ("10" : stdgo.GoString), _base : (16 : stdgo.GoInt), _val : (16i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("-10" : stdgo.GoString), _out : ("-10" : stdgo.GoString), _base : (16 : stdgo.GoInt), _val : (-16i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("+10" : stdgo.GoString), _out : ("10" : stdgo.GoString), _base : (16 : stdgo.GoInt), _val : (16i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("0b10" : stdgo.GoString), _out : ("2" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (2i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("0o10" : stdgo.GoString), _out : ("8" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (8i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("0x10" : stdgo.GoString), _out : ("16" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (16i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("0x10" : stdgo.GoString), _base : (16 : stdgo.GoInt), _out : ("" : stdgo.GoString), _val : (0 : stdgo.GoInt64), _ok : false } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("-0x10" : stdgo.GoString), _out : ("-16" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (-16i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("+0x10" : stdgo.GoString), _out : ("16" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (16i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("00" : stdgo.GoString), _out : ("0" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (0i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("0" : stdgo.GoString), _out : ("0" : stdgo.GoString), _base : (8 : stdgo.GoInt), _val : (0i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("07" : stdgo.GoString), _out : ("7" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (7i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("7" : stdgo.GoString), _out : ("7" : stdgo.GoString), _base : (8 : stdgo.GoInt), _val : (7i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("023" : stdgo.GoString), _out : ("19" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (19i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("23" : stdgo.GoString), _out : ("23" : stdgo.GoString), _base : (8 : stdgo.GoInt), _val : (19i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("cafebabe" : stdgo.GoString), _out : ("cafebabe" : stdgo.GoString), _base : (16 : stdgo.GoInt), _val : (3405691582i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("0b0" : stdgo.GoString), _out : ("0" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (0i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("-111" : stdgo.GoString), _out : ("-111" : stdgo.GoString), _base : (2 : stdgo.GoInt), _val : (-7i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("-0b111" : stdgo.GoString), _out : ("-7" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (-7i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("0b1001010111" : stdgo.GoString), _out : ("599" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (599i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("1001010111" : stdgo.GoString), _out : ("1001010111" : stdgo.GoString), _base : (2 : stdgo.GoInt), _val : (599i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("A" : stdgo.GoString), _out : ("a" : stdgo.GoString), _base : (36 : stdgo.GoInt), _val : (10i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("A" : stdgo.GoString), _out : ("A" : stdgo.GoString), _base : (37 : stdgo.GoInt), _val : (36i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("ABCXYZ" : stdgo.GoString), _out : ("abcxyz" : stdgo.GoString), _base : (36 : stdgo.GoInt), _val : (623741435i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("ABCXYZ" : stdgo.GoString), _out : ("ABCXYZ" : stdgo.GoString), _base : (62 : stdgo.GoInt), _val : (33536793425i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("1_000" : stdgo.GoString), _out : ("1000" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (1000i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("0b_1010" : stdgo.GoString), _out : ("10" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (10i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("+0o_660" : stdgo.GoString), _out : ("432" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (432i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49),
({ _in : ("-0xF00D_1E" : stdgo.GoString), _out : ("-15731998" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (-15731998i64 : stdgo.GoInt64), _ok : true } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49)].concat([for (i in 58 ... (58 > 58 ? 58 : 58 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _out : ("" : stdgo.GoString), _base : (0 : stdgo.GoInt), _val : (0 : stdgo.GoInt64), _ok : false } : stdgo._internal.math.big.Big_T__struct_49.T__struct_49)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_49.T__struct_49>);
