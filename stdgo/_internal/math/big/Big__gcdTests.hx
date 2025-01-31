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
var _gcdTests : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_41.T__struct_41> = (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_41.T__struct_41>(13, 13, ...[
({ _d : ("0" : stdgo.GoString), _x : ("0" : stdgo.GoString), _y : ("0" : stdgo.GoString), _a : ("0" : stdgo.GoString), _b : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_41.T__struct_41),
({ _d : ("7" : stdgo.GoString), _x : ("0" : stdgo.GoString), _y : ("1" : stdgo.GoString), _a : ("0" : stdgo.GoString), _b : ("7" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_41.T__struct_41),
({ _d : ("7" : stdgo.GoString), _x : ("0" : stdgo.GoString), _y : ("-1" : stdgo.GoString), _a : ("0" : stdgo.GoString), _b : ("-7" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_41.T__struct_41),
({ _d : ("11" : stdgo.GoString), _x : ("1" : stdgo.GoString), _y : ("0" : stdgo.GoString), _a : ("11" : stdgo.GoString), _b : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_41.T__struct_41),
({ _d : ("7" : stdgo.GoString), _x : ("-1" : stdgo.GoString), _y : ("-2" : stdgo.GoString), _a : ("-77" : stdgo.GoString), _b : ("35" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_41.T__struct_41),
({ _d : ("935" : stdgo.GoString), _x : ("-3" : stdgo.GoString), _y : ("8" : stdgo.GoString), _a : ("64515" : stdgo.GoString), _b : ("24310" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_41.T__struct_41),
({ _d : ("935" : stdgo.GoString), _x : ("-3" : stdgo.GoString), _y : ("-8" : stdgo.GoString), _a : ("64515" : stdgo.GoString), _b : ("-24310" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_41.T__struct_41),
({ _d : ("935" : stdgo.GoString), _x : ("3" : stdgo.GoString), _y : ("-8" : stdgo.GoString), _a : ("-64515" : stdgo.GoString), _b : ("-24310" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_41.T__struct_41),
({ _d : ("1" : stdgo.GoString), _x : ("-9" : stdgo.GoString), _y : ("47" : stdgo.GoString), _a : ("120" : stdgo.GoString), _b : ("23" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_41.T__struct_41),
({ _d : ("7" : stdgo.GoString), _x : ("1" : stdgo.GoString), _y : ("-2" : stdgo.GoString), _a : ("77" : stdgo.GoString), _b : ("35" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_41.T__struct_41),
({ _d : ("935" : stdgo.GoString), _x : ("-3" : stdgo.GoString), _y : ("8" : stdgo.GoString), _a : ("64515" : stdgo.GoString), _b : ("24310" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_41.T__struct_41),
({ _d : ("935000000000000000" : stdgo.GoString), _x : ("-3" : stdgo.GoString), _y : ("8" : stdgo.GoString), _a : ("64515000000000000000" : stdgo.GoString), _b : ("24310000000000000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_41.T__struct_41),
({ _d : ("1" : stdgo.GoString), _x : ("-221" : stdgo.GoString), _y : ("22059940471369027483332068679400581064239780177629666810348940098015901108344" : stdgo.GoString), _a : ("98920366548084643601728869055592650835572950932266967461790948584315647051443" : stdgo.GoString), _b : ("991" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_41.T__struct_41)].concat([for (i in 13 ... (13 > 13 ? 13 : 13 : stdgo.GoInt).toBasic()) ({ _d : ("" : stdgo.GoString), _x : ("" : stdgo.GoString), _y : ("" : stdgo.GoString), _a : ("" : stdgo.GoString), _b : ("" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_41.T__struct_41)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_41.T__struct_41>);
