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
var _uint64Tests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(12, 12, ...[
("0" : stdgo.GoString),
("1" : stdgo.GoString),
("4294967295" : stdgo.GoString),
("4294967296" : stdgo.GoString),
("8589934591" : stdgo.GoString),
("8589934592" : stdgo.GoString),
("9223372036854775807" : stdgo.GoString),
("9223372036854775808" : stdgo.GoString),
("0x08000000000000000" : stdgo.GoString),
("0x10000000000000000" : stdgo.GoString),
("-0x08000000000000000" : stdgo.GoString),
("-1" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
