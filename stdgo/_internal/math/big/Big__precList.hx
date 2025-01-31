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
var _precList : stdgo.GoArray<stdgo.GoUInt> = (new stdgo.GoArray<stdgo.GoUInt>(20, 20, ...[
(1u32 : stdgo.GoUInt),
(2u32 : stdgo.GoUInt),
(5u32 : stdgo.GoUInt),
(8u32 : stdgo.GoUInt),
(10u32 : stdgo.GoUInt),
(16u32 : stdgo.GoUInt),
(23u32 : stdgo.GoUInt),
(24u32 : stdgo.GoUInt),
(32u32 : stdgo.GoUInt),
(50u32 : stdgo.GoUInt),
(53u32 : stdgo.GoUInt),
(64u32 : stdgo.GoUInt),
(100u32 : stdgo.GoUInt),
(128u32 : stdgo.GoUInt),
(500u32 : stdgo.GoUInt),
(511u32 : stdgo.GoUInt),
(512u32 : stdgo.GoUInt),
(513u32 : stdgo.GoUInt),
(1000u32 : stdgo.GoUInt),
(10000u32 : stdgo.GoUInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt>);
