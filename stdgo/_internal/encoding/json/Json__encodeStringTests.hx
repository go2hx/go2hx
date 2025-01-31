package stdgo._internal.encoding.json;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.Math;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.os.Os;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.math.big.Big;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.testing.Testing;
import stdgo._internal.log.Log;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.net.Net;
import stdgo._internal.net.http.httptest.Httptest;
import stdgo._internal.net.http.Http;
var _encodeStringTests : stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6> = (new stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6>(32, 32, ...[
({ _in : stdgo.Go.str(0)?.__copy__(), _out : ("\"\\u0000\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : stdgo.Go.str(1)?.__copy__(), _out : ("\"\\u0001\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : stdgo.Go.str(2)?.__copy__(), _out : ("\"\\u0002\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : stdgo.Go.str(3)?.__copy__(), _out : ("\"\\u0003\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : stdgo.Go.str(4)?.__copy__(), _out : ("\"\\u0004\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : stdgo.Go.str(5)?.__copy__(), _out : ("\"\\u0005\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : stdgo.Go.str(6)?.__copy__(), _out : ("\"\\u0006\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : ("\x07" : stdgo.GoString), _out : ("\"\\u0007\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : ("\x08" : stdgo.GoString), _out : ("\"\\u0008\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : ("\t" : stdgo.GoString), _out : ("\"\\t\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : ("\n" : stdgo.GoString), _out : ("\"\\n\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : ("\x0B" : stdgo.GoString), _out : ("\"\\u000b\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : ("\x0C" : stdgo.GoString), _out : ("\"\\u000c\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : ("\r" : stdgo.GoString), _out : ("\"\\r\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : stdgo.Go.str(14)?.__copy__(), _out : ("\"\\u000e\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : stdgo.Go.str(15)?.__copy__(), _out : ("\"\\u000f\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : stdgo.Go.str(16)?.__copy__(), _out : ("\"\\u0010\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : stdgo.Go.str(17)?.__copy__(), _out : ("\"\\u0011\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : stdgo.Go.str(18)?.__copy__(), _out : ("\"\\u0012\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : stdgo.Go.str(19)?.__copy__(), _out : ("\"\\u0013\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : stdgo.Go.str(20)?.__copy__(), _out : ("\"\\u0014\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : stdgo.Go.str(21)?.__copy__(), _out : ("\"\\u0015\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : stdgo.Go.str(22)?.__copy__(), _out : ("\"\\u0016\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : stdgo.Go.str(23)?.__copy__(), _out : ("\"\\u0017\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : stdgo.Go.str(24)?.__copy__(), _out : ("\"\\u0018\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : stdgo.Go.str(25)?.__copy__(), _out : ("\"\\u0019\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : stdgo.Go.str(26)?.__copy__(), _out : ("\"\\u001a\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : stdgo.Go.str(27)?.__copy__(), _out : ("\"\\u001b\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : stdgo.Go.str(28)?.__copy__(), _out : ("\"\\u001c\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : stdgo.Go.str(29)?.__copy__(), _out : ("\"\\u001d\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : stdgo.Go.str(30)?.__copy__(), _out : ("\"\\u001e\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6),
({ _in : stdgo.Go.str(31)?.__copy__(), _out : ("\"\\u001f\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6)].concat([for (i in 32 ... (32 > 32 ? 32 : 32 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _out : ("" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6>);
