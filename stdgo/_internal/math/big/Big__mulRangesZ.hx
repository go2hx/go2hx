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
var _mulRangesZ : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_34.T__struct_34> = (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_34.T__struct_34>(14, 14, ...[
({ _a : (-1i64 : stdgo.GoInt64), _b : (1i64 : stdgo.GoInt64), _prod : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_34.T__struct_34),
({ _a : (-2i64 : stdgo.GoInt64), _b : (-1i64 : stdgo.GoInt64), _prod : ("2" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_34.T__struct_34),
({ _a : (-3i64 : stdgo.GoInt64), _b : (-2i64 : stdgo.GoInt64), _prod : ("6" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_34.T__struct_34),
({ _a : (-3i64 : stdgo.GoInt64), _b : (-1i64 : stdgo.GoInt64), _prod : ("-6" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_34.T__struct_34),
({ _a : (1i64 : stdgo.GoInt64), _b : (3i64 : stdgo.GoInt64), _prod : ("6" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_34.T__struct_34),
({ _a : (-10i64 : stdgo.GoInt64), _b : (-10i64 : stdgo.GoInt64), _prod : ("-10" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_34.T__struct_34),
({ _a : (0i64 : stdgo.GoInt64), _b : (-1i64 : stdgo.GoInt64), _prod : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_34.T__struct_34),
({ _a : (-1i64 : stdgo.GoInt64), _b : (-100i64 : stdgo.GoInt64), _prod : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_34.T__struct_34),
({ _a : (-1i64 : stdgo.GoInt64), _b : (1i64 : stdgo.GoInt64), _prod : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_34.T__struct_34),
({ _a : (-1000000000i64 : stdgo.GoInt64), _b : (0i64 : stdgo.GoInt64), _prod : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_34.T__struct_34),
({ _a : (-1000000000i64 : stdgo.GoInt64), _b : (1000000000i64 : stdgo.GoInt64), _prod : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_34.T__struct_34),
({ _a : (-10i64 : stdgo.GoInt64), _b : (-1i64 : stdgo.GoInt64), _prod : ("3628800" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_34.T__struct_34),
({ _a : (-20i64 : stdgo.GoInt64), _b : (-2i64 : stdgo.GoInt64), _prod : ("-2432902008176640000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_34.T__struct_34),
({ _a : (-99i64 : stdgo.GoInt64), _b : (-1i64 : stdgo.GoInt64), _prod : ("-933262154439441526816992388562667004907159682643816214685929638952175999932299156089414639761565182862536979208272237582511852109168640000000000000000000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_34.T__struct_34)].concat([for (i in 14 ... (14 > 14 ? 14 : 14 : stdgo.GoInt).toBasic()) ({ _a : (0 : stdgo.GoInt64), _b : (0 : stdgo.GoInt64), _prod : ("" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_34.T__struct_34)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_34.T__struct_34>);
