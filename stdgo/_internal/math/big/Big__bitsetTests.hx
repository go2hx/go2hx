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
var _bitsetTests : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_43.T__struct_43> = (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_43.T__struct_43>(12, 12, ...[
({ _x : ("0" : stdgo.GoString), _i : (0 : stdgo.GoInt), _b : (0u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_43.T__struct_43),
({ _x : ("0" : stdgo.GoString), _i : (200 : stdgo.GoInt), _b : (0u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_43.T__struct_43),
({ _x : ("1" : stdgo.GoString), _i : (0 : stdgo.GoInt), _b : (1u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_43.T__struct_43),
({ _x : ("1" : stdgo.GoString), _i : (1 : stdgo.GoInt), _b : (0u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_43.T__struct_43),
({ _x : ("-1" : stdgo.GoString), _i : (0 : stdgo.GoInt), _b : (1u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_43.T__struct_43),
({ _x : ("-1" : stdgo.GoString), _i : (200 : stdgo.GoInt), _b : (1u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_43.T__struct_43),
({ _x : ("0x2000000000000000000000000000" : stdgo.GoString), _i : (108 : stdgo.GoInt), _b : (0u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_43.T__struct_43),
({ _x : ("0x2000000000000000000000000000" : stdgo.GoString), _i : (109 : stdgo.GoInt), _b : (1u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_43.T__struct_43),
({ _x : ("0x2000000000000000000000000000" : stdgo.GoString), _i : (110 : stdgo.GoInt), _b : (0u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_43.T__struct_43),
({ _x : ("-0x2000000000000000000000000001" : stdgo.GoString), _i : (108 : stdgo.GoInt), _b : (1u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_43.T__struct_43),
({ _x : ("-0x2000000000000000000000000001" : stdgo.GoString), _i : (109 : stdgo.GoInt), _b : (0u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_43.T__struct_43),
({ _x : ("-0x2000000000000000000000000001" : stdgo.GoString), _i : (110 : stdgo.GoInt), _b : (1u32 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_43.T__struct_43)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({ _x : ("" : stdgo.GoString), _i : (0 : stdgo.GoInt), _b : (0 : stdgo.GoUInt) } : stdgo._internal.math.big.Big_T__struct_43.T__struct_43)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_43.T__struct_43>);
