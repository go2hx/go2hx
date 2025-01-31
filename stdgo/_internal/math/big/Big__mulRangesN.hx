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
var _mulRangesN : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_53.T__struct_53> = (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_53.T__struct_53>(12, 12, ...[
({ _a : (0i64 : stdgo.GoUInt64), _b : (0i64 : stdgo.GoUInt64), _prod : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_53.T__struct_53),
({ _a : (1i64 : stdgo.GoUInt64), _b : (1i64 : stdgo.GoUInt64), _prod : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_53.T__struct_53),
({ _a : (1i64 : stdgo.GoUInt64), _b : (2i64 : stdgo.GoUInt64), _prod : ("2" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_53.T__struct_53),
({ _a : (1i64 : stdgo.GoUInt64), _b : (3i64 : stdgo.GoUInt64), _prod : ("6" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_53.T__struct_53),
({ _a : (10i64 : stdgo.GoUInt64), _b : (10i64 : stdgo.GoUInt64), _prod : ("10" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_53.T__struct_53),
({ _a : (0i64 : stdgo.GoUInt64), _b : (100i64 : stdgo.GoUInt64), _prod : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_53.T__struct_53),
({ _a : (0i64 : stdgo.GoUInt64), _b : (1000000000i64 : stdgo.GoUInt64), _prod : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_53.T__struct_53),
({ _a : (1i64 : stdgo.GoUInt64), _b : (0i64 : stdgo.GoUInt64), _prod : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_53.T__struct_53),
({ _a : (100i64 : stdgo.GoUInt64), _b : (1i64 : stdgo.GoUInt64), _prod : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_53.T__struct_53),
({ _a : (1i64 : stdgo.GoUInt64), _b : (10i64 : stdgo.GoUInt64), _prod : ("3628800" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_53.T__struct_53),
({ _a : (1i64 : stdgo.GoUInt64), _b : (20i64 : stdgo.GoUInt64), _prod : ("2432902008176640000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_53.T__struct_53),
({ _a : (1i64 : stdgo.GoUInt64), _b : (100i64 : stdgo.GoUInt64), _prod : ("93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_53.T__struct_53)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({ _a : (0 : stdgo.GoUInt64), _b : (0 : stdgo.GoUInt64), _prod : ("" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_53.T__struct_53)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_53.T__struct_53>);
