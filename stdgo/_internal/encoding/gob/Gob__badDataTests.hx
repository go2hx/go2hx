package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
var _badDataTests : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest> = (new stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest>(9, 9, ...[(new stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest(stdgo.Go.str()?.__copy__(), ("EOF" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest), (new stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest(("7F6869" : stdgo.GoString), ("unexpected EOF" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest), (new stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest(("036e6f77206973207468652074696d6520666f7220616c6c20676f6f64206d656e" : stdgo.GoString), ("unknown type id" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_ET2.ET2)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET2.ET2>)))) : stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest), (new stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest(("0424666f6f" : stdgo.GoString), ("field numbers out of bounds" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_ET2.ET2)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET2.ET2>)))) : stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest), (new stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest(("05100028557b02027f8302" : stdgo.GoString), ("interface encoding" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest), (new stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest(("130a00fb5dad0bf8ff020263e70002fa28020202a89859" : stdgo.GoString), ("slice length too large" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest), (new stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest(("0f1000fb285d003316020735ff023a65c5" : stdgo.GoString), ("interface encoding" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest), (new stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest(("03fffb0616fffc00f902ff02ff03bf005d02885802a311a8120228022c028ee7" : stdgo.GoString), ("GobDecoder" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest), (new stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest(("10fe010f020102fe01100001fe010e000016fe010d030102fe010e00010101015801fe01100000000bfe011000f85555555555555555" : stdgo.GoString), ("exceeds input size" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest)])) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_badDataTest.T_badDataTest>);
