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
var _setStringTests2 : stdgo.Slice<stdgo._internal.math.big.Big_StringTest.StringTest> = (new stdgo.Slice<stdgo._internal.math.big.Big_StringTest.StringTest>(34, 34, ...[
({ _in : ("4/3x" : stdgo.GoString) } : stdgo._internal.math.big.Big_StringTest.StringTest),
({ _in : ("0/-1" : stdgo.GoString) } : stdgo._internal.math.big.Big_StringTest.StringTest),
({ _in : ("-1/-1" : stdgo.GoString) } : stdgo._internal.math.big.Big_StringTest.StringTest),
({ _in : ("10_/1" : stdgo.GoString) } : stdgo._internal.math.big.Big_StringTest.StringTest),
({ _in : ("_10/1" : stdgo.GoString) } : stdgo._internal.math.big.Big_StringTest.StringTest),
({ _in : ("1/1__0" : stdgo.GoString) } : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("0b1000/3" : stdgo.GoString), ("8/3" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("0B1000/0x8" : stdgo.GoString), ("1" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("-010/1" : stdgo.GoString), ("-8" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("-010.0" : stdgo.GoString), ("-10" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("-0o10/1" : stdgo.GoString), ("-8" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("0x10/1" : stdgo.GoString), ("16" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("0x10/0x20" : stdgo.GoString), ("1/2" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("0010" : stdgo.GoString), ("10" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("0x10.0" : stdgo.GoString), ("16" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("0x1.8" : stdgo.GoString), ("3/2" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("0X1.8p4" : stdgo.GoString), ("24" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("0x1.1E2" : stdgo.GoString), ("2289/2048" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("0b1.1E2" : stdgo.GoString), ("150" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("0B1.1P3" : stdgo.GoString), ("12" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("0o10e-2" : stdgo.GoString), ("2/25" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("0O10p-3" : stdgo.GoString), ("1" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("0b_1000/3" : stdgo.GoString), ("8/3" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("0B_10_00/0x8" : stdgo.GoString), ("1" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("0xdead/0B1101_1110_1010_1101" : stdgo.GoString), ("1" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("0B1101_1110_1010_1101/0XD_E_A_D" : stdgo.GoString), ("1" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("1_000.0" : stdgo.GoString), ("1000" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("0x_10.0" : stdgo.GoString), ("16" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("0x1_0.0" : stdgo.GoString), ("16" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("0x1.8_0" : stdgo.GoString), ("3/2" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("0X1.8p0_4" : stdgo.GoString), ("24" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("0b1.1_0E2" : stdgo.GoString), ("150" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("0o1_0e-2" : stdgo.GoString), ("2/25" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest),
(new stdgo._internal.math.big.Big_StringTest.StringTest(("0O_10p-3" : stdgo.GoString), ("1" : stdgo.GoString), true) : stdgo._internal.math.big.Big_StringTest.StringTest)].concat([for (i in 34 ... (34 > 34 ? 34 : 34 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.math.big.Big_StringTest.StringTest)])) : stdgo.Slice<stdgo._internal.math.big.Big_StringTest.StringTest>);
