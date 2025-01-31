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
var _invalidUnmarshalTextTests : stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_12.T__struct_12> = (new stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_12.T__struct_12>(4, 4, ...[({ _v : (null : stdgo.AnyInterface), _want : ("json: Unmarshal(nil)" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_12.T__struct_12), ({ _v : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue() : stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue))), _want : ("json: Unmarshal(non-pointer struct {})" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_12.T__struct_12), ({ _v : stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoInt>)), _want : ("json: Unmarshal(nil *int)" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_12.T__struct_12), ({ _v : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(new stdgo._internal.net.Net_IP.IP(0, 0)) : stdgo.Ref<stdgo._internal.net.Net_IP.IP>))), _want : ("json: cannot unmarshal number into Go value of type *net.IP" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_12.T__struct_12)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _v : (null : stdgo.AnyInterface), _want : ("" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_12.T__struct_12)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_12.T__struct_12>);
