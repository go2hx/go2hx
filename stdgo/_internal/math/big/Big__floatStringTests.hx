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
var _floatStringTests : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_65.T__struct_65> = (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_65.T__struct_65>(17, 17, ...[
({ _in : ("0" : stdgo.GoString), _prec : (0 : stdgo.GoInt), _out : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_65.T__struct_65),
({ _in : ("0" : stdgo.GoString), _prec : (4 : stdgo.GoInt), _out : ("0.0000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_65.T__struct_65),
({ _in : ("1" : stdgo.GoString), _prec : (0 : stdgo.GoInt), _out : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_65.T__struct_65),
({ _in : ("1" : stdgo.GoString), _prec : (2 : stdgo.GoInt), _out : ("1.00" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_65.T__struct_65),
({ _in : ("-1" : stdgo.GoString), _prec : (0 : stdgo.GoInt), _out : ("-1" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_65.T__struct_65),
({ _in : ("0.05" : stdgo.GoString), _prec : (1 : stdgo.GoInt), _out : ("0.1" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_65.T__struct_65),
({ _in : ("-0.05" : stdgo.GoString), _prec : (1 : stdgo.GoInt), _out : ("-0.1" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_65.T__struct_65),
({ _in : (".25" : stdgo.GoString), _prec : (2 : stdgo.GoInt), _out : ("0.25" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_65.T__struct_65),
({ _in : (".25" : stdgo.GoString), _prec : (1 : stdgo.GoInt), _out : ("0.3" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_65.T__struct_65),
({ _in : (".25" : stdgo.GoString), _prec : (3 : stdgo.GoInt), _out : ("0.250" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_65.T__struct_65),
({ _in : ("-1/3" : stdgo.GoString), _prec : (3 : stdgo.GoInt), _out : ("-0.333" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_65.T__struct_65),
({ _in : ("-2/3" : stdgo.GoString), _prec : (4 : stdgo.GoInt), _out : ("-0.6667" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_65.T__struct_65),
({ _in : ("0.96" : stdgo.GoString), _prec : (1 : stdgo.GoInt), _out : ("1.0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_65.T__struct_65),
({ _in : ("0.999" : stdgo.GoString), _prec : (2 : stdgo.GoInt), _out : ("1.00" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_65.T__struct_65),
({ _in : ("0.9" : stdgo.GoString), _prec : (0 : stdgo.GoInt), _out : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_65.T__struct_65),
({ _in : (".25" : stdgo.GoString), _prec : (-1 : stdgo.GoInt), _out : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_65.T__struct_65),
({ _in : (".55" : stdgo.GoString), _prec : (-1 : stdgo.GoInt), _out : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_65.T__struct_65)].concat([for (i in 17 ... (17 > 17 ? 17 : 17 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _prec : (0 : stdgo.GoInt), _out : ("" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_65.T__struct_65)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_65.T__struct_65>);
