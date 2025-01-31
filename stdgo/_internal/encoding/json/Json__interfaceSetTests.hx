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
var _interfaceSetTests : stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_8.T__struct_8> = (new stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_8.T__struct_8>(12, 12, ...[
({ _pre : stdgo.Go.toInterface(("foo" : stdgo.GoString)), _json : ("\"bar\"" : stdgo.GoString), _post : stdgo.Go.toInterface(("bar" : stdgo.GoString)) } : stdgo._internal.encoding.json.Json_T__struct_8.T__struct_8),
({ _pre : stdgo.Go.toInterface(("foo" : stdgo.GoString)), _json : ("2" : stdgo.GoString), _post : stdgo.Go.toInterface((2 : stdgo.GoFloat64)) } : stdgo._internal.encoding.json.Json_T__struct_8.T__struct_8),
({ _pre : stdgo.Go.toInterface(("foo" : stdgo.GoString)), _json : ("true" : stdgo.GoString), _post : stdgo.Go.toInterface(true) } : stdgo._internal.encoding.json.Json_T__struct_8.T__struct_8),
({ _pre : stdgo.Go.toInterface(("foo" : stdgo.GoString)), _json : ("null" : stdgo.GoString), _post : (null : stdgo.AnyInterface) } : stdgo._internal.encoding.json.Json_T__struct_8.T__struct_8),
({ _pre : (null : stdgo.AnyInterface), _json : ("null" : stdgo.GoString), _post : (null : stdgo.AnyInterface) } : stdgo._internal.encoding.json.Json_T__struct_8.T__struct_8),
({ _pre : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoInt))), _json : ("null" : stdgo.GoString), _post : (null : stdgo.AnyInterface) } : stdgo._internal.encoding.json.Json_T__struct_8.T__struct_8),
({ _pre : stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoInt>)), _json : ("null" : stdgo.GoString), _post : (null : stdgo.AnyInterface) } : stdgo._internal.encoding.json.Json_T__struct_8.T__struct_8),
({ _pre : stdgo.Go.toInterface(stdgo.Go.pointer((null : stdgo.Pointer<stdgo.GoInt>))), _json : ("null" : stdgo.GoString), _post : stdgo.Go.toInterface(stdgo.Go.pointer((null : stdgo.Pointer<stdgo.GoInt>))) } : stdgo._internal.encoding.json.Json_T__struct_8.T__struct_8),
({ _pre : stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>>)), _json : ("null" : stdgo.GoString), _post : (null : stdgo.AnyInterface) } : stdgo._internal.encoding.json.Json_T__struct_8.T__struct_8),
({ _pre : stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__intp._intp((1 : stdgo.GoInt))), _json : ("null" : stdgo.GoString), _post : (null : stdgo.AnyInterface) } : stdgo._internal.encoding.json.Json_T__struct_8.T__struct_8),
({ _pre : stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__intpp._intpp((null : stdgo.Pointer<stdgo.GoInt>))), _json : ("null" : stdgo.GoString), _post : stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__intpp._intpp((null : stdgo.Pointer<stdgo.GoInt>))) } : stdgo._internal.encoding.json.Json_T__struct_8.T__struct_8),
({ _pre : stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__intpp._intpp(stdgo._internal.encoding.json.Json__intp._intp((1 : stdgo.GoInt)))), _json : ("null" : stdgo.GoString), _post : stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__intpp._intpp((null : stdgo.Pointer<stdgo.GoInt>))) } : stdgo._internal.encoding.json.Json_T__struct_8.T__struct_8)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({ _pre : (null : stdgo.AnyInterface), _json : ("" : stdgo.GoString), _post : (null : stdgo.AnyInterface) } : stdgo._internal.encoding.json.Json_T__struct_8.T__struct_8)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_8.T__struct_8>);
