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
var _bitLenTests : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_38.T__struct_38> = (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_38.T__struct_38>(12, 12, ...[
({ _in : ("-1" : stdgo.GoString), _out : (1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_38.T__struct_38),
({ _in : ("0" : stdgo.GoString), _out : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_38.T__struct_38),
({ _in : ("1" : stdgo.GoString), _out : (1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_38.T__struct_38),
({ _in : ("2" : stdgo.GoString), _out : (2 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_38.T__struct_38),
({ _in : ("4" : stdgo.GoString), _out : (3 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_38.T__struct_38),
({ _in : ("0xabc" : stdgo.GoString), _out : (12 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_38.T__struct_38),
({ _in : ("0x8000" : stdgo.GoString), _out : (16 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_38.T__struct_38),
({ _in : ("0x80000000" : stdgo.GoString), _out : (32 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_38.T__struct_38),
({ _in : ("0x800000000000" : stdgo.GoString), _out : (48 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_38.T__struct_38),
({ _in : ("0x8000000000000000" : stdgo.GoString), _out : (64 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_38.T__struct_38),
({ _in : ("0x80000000000000000000" : stdgo.GoString), _out : (80 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_38.T__struct_38),
({ _in : ("-0x4000000000000000000000" : stdgo.GoString), _out : (87 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_38.T__struct_38)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _out : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_38.T__struct_38)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_38.T__struct_38>);
