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
var _exponentTests : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_64.T__struct_64> = (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_64.T__struct_64>(29, 29, ...[
({ _s : stdgo.Go.str()?.__copy__(), _base2ok : false, _sepOk : false, _x : (0i64 : stdgo.GoInt64), _b : (10 : stdgo.GoInt), _err : (null : stdgo.Error), _next : (0 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("1" : stdgo.GoString), _base2ok : false, _sepOk : false, _x : (0i64 : stdgo.GoInt64), _b : (10 : stdgo.GoInt), _err : (null : stdgo.Error), _next : (49 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("e0" : stdgo.GoString), _base2ok : false, _sepOk : false, _x : (0i64 : stdgo.GoInt64), _b : (10 : stdgo.GoInt), _err : (null : stdgo.Error), _next : (0 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("E1" : stdgo.GoString), _base2ok : false, _sepOk : false, _x : (1i64 : stdgo.GoInt64), _b : (10 : stdgo.GoInt), _err : (null : stdgo.Error), _next : (0 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("e+10" : stdgo.GoString), _base2ok : false, _sepOk : false, _x : (10i64 : stdgo.GoInt64), _b : (10 : stdgo.GoInt), _err : (null : stdgo.Error), _next : (0 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("e-10" : stdgo.GoString), _base2ok : false, _sepOk : false, _x : (-10i64 : stdgo.GoInt64), _b : (10 : stdgo.GoInt), _err : (null : stdgo.Error), _next : (0 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("e123456789a" : stdgo.GoString), _base2ok : false, _sepOk : false, _x : (123456789i64 : stdgo.GoInt64), _b : (10 : stdgo.GoInt), _err : (null : stdgo.Error), _next : (97 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("p" : stdgo.GoString), _base2ok : false, _sepOk : false, _x : (0i64 : stdgo.GoInt64), _b : (10 : stdgo.GoInt), _err : (null : stdgo.Error), _next : (112 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("P+100" : stdgo.GoString), _base2ok : false, _sepOk : false, _x : (0i64 : stdgo.GoInt64), _b : (10 : stdgo.GoInt), _err : (null : stdgo.Error), _next : (80 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("p0" : stdgo.GoString), _base2ok : true, _sepOk : false, _x : (0i64 : stdgo.GoInt64), _b : (2 : stdgo.GoInt), _err : (null : stdgo.Error), _next : (0 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("P-123" : stdgo.GoString), _base2ok : true, _sepOk : false, _x : (-123i64 : stdgo.GoInt64), _b : (2 : stdgo.GoInt), _err : (null : stdgo.Error), _next : (0 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("p+0a" : stdgo.GoString), _base2ok : true, _sepOk : false, _x : (0i64 : stdgo.GoInt64), _b : (2 : stdgo.GoInt), _err : (null : stdgo.Error), _next : (97 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("p+123__" : stdgo.GoString), _base2ok : true, _sepOk : false, _x : (123i64 : stdgo.GoInt64), _b : (2 : stdgo.GoInt), _err : (null : stdgo.Error), _next : (95 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("e+1_0" : stdgo.GoString), _base2ok : false, _sepOk : true, _x : (10i64 : stdgo.GoInt64), _b : (10 : stdgo.GoInt), _err : (null : stdgo.Error), _next : (0 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("e-1_0" : stdgo.GoString), _base2ok : false, _sepOk : true, _x : (-10i64 : stdgo.GoInt64), _b : (10 : stdgo.GoInt), _err : (null : stdgo.Error), _next : (0 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("e123_456_789a" : stdgo.GoString), _base2ok : false, _sepOk : true, _x : (123456789i64 : stdgo.GoInt64), _b : (10 : stdgo.GoInt), _err : (null : stdgo.Error), _next : (97 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("P+1_00" : stdgo.GoString), _base2ok : false, _sepOk : true, _x : (0i64 : stdgo.GoInt64), _b : (10 : stdgo.GoInt), _err : (null : stdgo.Error), _next : (80 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("p-1_2_3" : stdgo.GoString), _base2ok : true, _sepOk : true, _x : (-123i64 : stdgo.GoInt64), _b : (2 : stdgo.GoInt), _err : (null : stdgo.Error), _next : (0 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("e" : stdgo.GoString), _base2ok : false, _sepOk : false, _x : (0i64 : stdgo.GoInt64), _b : (10 : stdgo.GoInt), _err : stdgo._internal.math.big.Big__errNoDigits._errNoDigits, _next : (0 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("ef" : stdgo.GoString), _base2ok : false, _sepOk : false, _x : (0i64 : stdgo.GoInt64), _b : (10 : stdgo.GoInt), _err : stdgo._internal.math.big.Big__errNoDigits._errNoDigits, _next : (102 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("e+" : stdgo.GoString), _base2ok : false, _sepOk : false, _x : (0i64 : stdgo.GoInt64), _b : (10 : stdgo.GoInt), _err : stdgo._internal.math.big.Big__errNoDigits._errNoDigits, _next : (0 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("E-x" : stdgo.GoString), _base2ok : false, _sepOk : false, _x : (0i64 : stdgo.GoInt64), _b : (10 : stdgo.GoInt), _err : stdgo._internal.math.big.Big__errNoDigits._errNoDigits, _next : (120 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("p" : stdgo.GoString), _base2ok : true, _sepOk : false, _x : (0i64 : stdgo.GoInt64), _b : (2 : stdgo.GoInt), _err : stdgo._internal.math.big.Big__errNoDigits._errNoDigits, _next : (0 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("P-" : stdgo.GoString), _base2ok : true, _sepOk : false, _x : (0i64 : stdgo.GoInt64), _b : (2 : stdgo.GoInt), _err : stdgo._internal.math.big.Big__errNoDigits._errNoDigits, _next : (0 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("p+e" : stdgo.GoString), _base2ok : true, _sepOk : false, _x : (0i64 : stdgo.GoInt64), _b : (2 : stdgo.GoInt), _err : stdgo._internal.math.big.Big__errNoDigits._errNoDigits, _next : (101 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("e+_x" : stdgo.GoString), _base2ok : false, _sepOk : true, _x : (0i64 : stdgo.GoInt64), _b : (10 : stdgo.GoInt), _err : stdgo._internal.math.big.Big__errNoDigits._errNoDigits, _next : (120 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("e0_" : stdgo.GoString), _base2ok : false, _sepOk : true, _x : (0i64 : stdgo.GoInt64), _b : (10 : stdgo.GoInt), _err : stdgo._internal.math.big.Big__errInvalSep._errInvalSep, _next : (0 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("e_0" : stdgo.GoString), _base2ok : false, _sepOk : true, _x : (0i64 : stdgo.GoInt64), _b : (10 : stdgo.GoInt), _err : stdgo._internal.math.big.Big__errInvalSep._errInvalSep, _next : (0 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64),
({ _s : ("e-1_2__3" : stdgo.GoString), _base2ok : false, _sepOk : true, _x : (-123i64 : stdgo.GoInt64), _b : (10 : stdgo.GoInt), _err : stdgo._internal.math.big.Big__errInvalSep._errInvalSep, _next : (0 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64)].concat([for (i in 29 ... (29 > 29 ? 29 : 29 : stdgo.GoInt).toBasic()) ({ _s : ("" : stdgo.GoString), _base2ok : false, _sepOk : false, _x : (0 : stdgo.GoInt64), _b : (0 : stdgo.GoInt), _err : (null : stdgo.Error), _next : (0 : stdgo.GoInt32) } : stdgo._internal.math.big.Big_T__struct_64.T__struct_64)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_64.T__struct_64>);
