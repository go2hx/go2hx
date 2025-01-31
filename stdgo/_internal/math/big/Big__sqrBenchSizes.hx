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
var _sqrBenchSizes : stdgo.Slice<stdgo.GoInt> = (new stdgo.Slice<stdgo.GoInt>(18, 18, ...[
(1 : stdgo.GoInt),
(2 : stdgo.GoInt),
(3 : stdgo.GoInt),
(5 : stdgo.GoInt),
(8 : stdgo.GoInt),
(10 : stdgo.GoInt),
(20 : stdgo.GoInt),
(30 : stdgo.GoInt),
(50 : stdgo.GoInt),
(80 : stdgo.GoInt),
(100 : stdgo.GoInt),
(200 : stdgo.GoInt),
(300 : stdgo.GoInt),
(500 : stdgo.GoInt),
(800 : stdgo.GoInt),
(1000 : stdgo.GoInt),
(10000 : stdgo.GoInt),
(100000 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
