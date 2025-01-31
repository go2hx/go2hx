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
var _floatVals : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(11, 11, ...[
("0" : stdgo.GoString),
("1" : stdgo.GoString),
("0.1" : stdgo.GoString),
("2.71828" : stdgo.GoString),
("1234567890" : stdgo.GoString),
("3.14e1234" : stdgo.GoString),
("3.14e-1234" : stdgo.GoString),
("0.738957395793475734757349579759957975985497e100" : stdgo.GoString),
("0.73895739579347546656564656573475734957975995797598589749859834759476745986795497e100" : stdgo.GoString),
("inf" : stdgo.GoString),
("Inf" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
