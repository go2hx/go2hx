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
var _badFloatREs : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>> = (new stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>>(17, 17, ...[
stdgo._internal.encoding.json.Json__re._re(("p" : stdgo.GoString)),
stdgo._internal.encoding.json.Json__re._re(("^\\+" : stdgo.GoString)),
stdgo._internal.encoding.json.Json__re._re(("^-?0[^.]" : stdgo.GoString)),
stdgo._internal.encoding.json.Json__re._re(("^-?\\." : stdgo.GoString)),
stdgo._internal.encoding.json.Json__re._re(("\\.(e|$)" : stdgo.GoString)),
stdgo._internal.encoding.json.Json__re._re(("\\.[0-9]+0(e|$)" : stdgo.GoString)),
stdgo._internal.encoding.json.Json__re._re(("^-?(0|[0-9]{2,})\\..*e" : stdgo.GoString)),
stdgo._internal.encoding.json.Json__re._re(("e[0-9]" : stdgo.GoString)),
stdgo._internal.encoding.json.Json__re._re(("e[+-]0" : stdgo.GoString)),
stdgo._internal.encoding.json.Json__re._re(("e-[1-6]$" : stdgo.GoString)),
stdgo._internal.encoding.json.Json__re._re(("e+(.|1.|20)$" : stdgo.GoString)),
stdgo._internal.encoding.json.Json__re._re(("^-?0\\.0000000" : stdgo.GoString)),
stdgo._internal.encoding.json.Json__re._re(("^-?[0-9]{22}" : stdgo.GoString)),
stdgo._internal.encoding.json.Json__re._re(("[1-9][0-9]{16}[1-9]" : stdgo.GoString)),
stdgo._internal.encoding.json.Json__re._re(("[1-9][0-9.]{17}[1-9]" : stdgo.GoString)),
stdgo._internal.encoding.json.Json__re._re(("[1-9][0-9]{8}[1-9]" : stdgo.GoString)),
stdgo._internal.encoding.json.Json__re._re(("[1-9][0-9.]{9}[1-9]" : stdgo.GoString))]) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>>);
