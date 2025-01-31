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
var _lshTests : stdgo.Slice<stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest> = (new stdgo.Slice<stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest>(19, 19, ...[
(new stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest(("0" : stdgo.GoString), (0u32 : stdgo.GoUInt), ("0" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest),
(new stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest(("0" : stdgo.GoString), (1u32 : stdgo.GoUInt), ("0" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest),
(new stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest(("0" : stdgo.GoString), (2u32 : stdgo.GoUInt), ("0" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest),
(new stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest(("1" : stdgo.GoString), (0u32 : stdgo.GoUInt), ("1" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest),
(new stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest(("1" : stdgo.GoString), (1u32 : stdgo.GoUInt), ("2" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest),
(new stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest(("1" : stdgo.GoString), (2u32 : stdgo.GoUInt), ("4" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest),
(new stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest(("2" : stdgo.GoString), (0u32 : stdgo.GoUInt), ("2" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest),
(new stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest(("2" : stdgo.GoString), (1u32 : stdgo.GoUInt), ("4" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest),
(new stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest(("2" : stdgo.GoString), (2u32 : stdgo.GoUInt), ("8" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest),
(new stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest(("-87" : stdgo.GoString), (1u32 : stdgo.GoUInt), ("-174" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest),
(new stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest(("4294967296" : stdgo.GoString), (0u32 : stdgo.GoUInt), ("4294967296" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest),
(new stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest(("4294967296" : stdgo.GoString), (1u32 : stdgo.GoUInt), ("8589934592" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest),
(new stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest(("4294967296" : stdgo.GoString), (2u32 : stdgo.GoUInt), ("17179869184" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest),
(new stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest(("18446744073709551616" : stdgo.GoString), (0u32 : stdgo.GoUInt), ("18446744073709551616" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest),
(new stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest(("9223372036854775808" : stdgo.GoString), (1u32 : stdgo.GoUInt), ("18446744073709551616" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest),
(new stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest(("4611686018427387904" : stdgo.GoString), (2u32 : stdgo.GoUInt), ("18446744073709551616" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest),
(new stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest(("1" : stdgo.GoString), (64u32 : stdgo.GoUInt), ("18446744073709551616" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest),
(new stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest(("18446744073709551616" : stdgo.GoString), (64u32 : stdgo.GoUInt), ("340282366920938463463374607431768211456" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest),
(new stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest(("1" : stdgo.GoString), (128u32 : stdgo.GoUInt), ("340282366920938463463374607431768211456" : stdgo.GoString)) : stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest)].concat([for (i in 19 ... (19 > 19 ? 19 : 19 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest)])) : stdgo.Slice<stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest>);
