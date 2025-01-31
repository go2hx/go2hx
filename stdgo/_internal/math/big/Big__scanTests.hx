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
var _scanTests : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_51.T__struct_51> = (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_51.T__struct_51>(15, 15, ...[
({ _input : ("1010" : stdgo.GoString), _format : ("%b" : stdgo.GoString), _output : ("10" : stdgo.GoString), _remaining : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_51.T__struct_51),
({ _input : ("0b1010" : stdgo.GoString), _format : ("%v" : stdgo.GoString), _output : ("10" : stdgo.GoString), _remaining : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_51.T__struct_51),
({ _input : ("12" : stdgo.GoString), _format : ("%o" : stdgo.GoString), _output : ("10" : stdgo.GoString), _remaining : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_51.T__struct_51),
({ _input : ("012" : stdgo.GoString), _format : ("%v" : stdgo.GoString), _output : ("10" : stdgo.GoString), _remaining : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_51.T__struct_51),
({ _input : ("10" : stdgo.GoString), _format : ("%d" : stdgo.GoString), _output : ("10" : stdgo.GoString), _remaining : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_51.T__struct_51),
({ _input : ("10" : stdgo.GoString), _format : ("%v" : stdgo.GoString), _output : ("10" : stdgo.GoString), _remaining : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_51.T__struct_51),
({ _input : ("a" : stdgo.GoString), _format : ("%x" : stdgo.GoString), _output : ("10" : stdgo.GoString), _remaining : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_51.T__struct_51),
({ _input : ("0xa" : stdgo.GoString), _format : ("%v" : stdgo.GoString), _output : ("10" : stdgo.GoString), _remaining : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_51.T__struct_51),
({ _input : ("A" : stdgo.GoString), _format : ("%X" : stdgo.GoString), _output : ("10" : stdgo.GoString), _remaining : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_51.T__struct_51),
({ _input : ("-A" : stdgo.GoString), _format : ("%X" : stdgo.GoString), _output : ("-10" : stdgo.GoString), _remaining : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_51.T__struct_51),
({ _input : ("+0b1011001" : stdgo.GoString), _format : ("%v" : stdgo.GoString), _output : ("89" : stdgo.GoString), _remaining : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_51.T__struct_51),
({ _input : ("0xA" : stdgo.GoString), _format : ("%v" : stdgo.GoString), _output : ("10" : stdgo.GoString), _remaining : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_51.T__struct_51),
({ _input : ("0 " : stdgo.GoString), _format : ("%v" : stdgo.GoString), _output : ("0" : stdgo.GoString), _remaining : (1 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_51.T__struct_51),
({ _input : ("2+3" : stdgo.GoString), _format : ("%v" : stdgo.GoString), _output : ("2" : stdgo.GoString), _remaining : (2 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_51.T__struct_51),
({ _input : ("0XABC 12" : stdgo.GoString), _format : ("%v" : stdgo.GoString), _output : ("2748" : stdgo.GoString), _remaining : (3 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_51.T__struct_51)].concat([for (i in 15 ... (15 > 15 ? 15 : 15 : stdgo.GoInt).toBasic()) ({ _input : ("" : stdgo.GoString), _format : ("" : stdgo.GoString), _output : ("" : stdgo.GoString), _remaining : (0 : stdgo.GoInt) } : stdgo._internal.math.big.Big_T__struct_51.T__struct_51)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_51.T__struct_51>);
