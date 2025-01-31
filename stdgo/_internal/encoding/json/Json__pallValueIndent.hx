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
var _pallValueIndent : stdgo.GoString = ("{\n\t\"Bool\": false,\n\t\"Int\": 0,\n\t\"Int8\": 0,\n\t\"Int16\": 0,\n\t\"Int32\": 0,\n\t\"Int64\": 0,\n\t\"Uint\": 0,\n\t\"Uint8\": 0,\n\t\"Uint16\": 0,\n\t\"Uint32\": 0,\n\t\"Uint64\": 0,\n\t\"Uintptr\": 0,\n\t\"Float32\": 0,\n\t\"Float64\": 0,\n\t\"bar\": \"\",\n\t\"bar2\": \"\",\n        \"IntStr\": \"0\",\n\t\"UintptrStr\": \"0\",\n\t\"PBool\": true,\n\t\"PInt\": 2,\n\t\"PInt8\": 3,\n\t\"PInt16\": 4,\n\t\"PInt32\": 5,\n\t\"PInt64\": 6,\n\t\"PUint\": 7,\n\t\"PUint8\": 8,\n\t\"PUint16\": 9,\n\t\"PUint32\": 10,\n\t\"PUint64\": 11,\n\t\"PUintptr\": 12,\n\t\"PFloat32\": 14.1,\n\t\"PFloat64\": 15.1,\n\t\"String\": \"\",\n\t\"PString\": \"16\",\n\t\"Map\": null,\n\t\"MapP\": null,\n\t\"PMap\": {\n\t\t\"17\": {\n\t\t\t\"Tag\": \"tag17\"\n\t\t},\n\t\t\"18\": {\n\t\t\t\"Tag\": \"tag18\"\n\t\t}\n\t},\n\t\"PMapP\": {\n\t\t\"19\": {\n\t\t\t\"Tag\": \"tag19\"\n\t\t},\n\t\t\"20\": null\n\t},\n\t\"EmptyMap\": null,\n\t\"NilMap\": null,\n\t\"Slice\": null,\n\t\"SliceP\": null,\n\t\"PSlice\": [\n\t\t{\n\t\t\t\"Tag\": \"tag20\"\n\t\t},\n\t\t{\n\t\t\t\"Tag\": \"tag21\"\n\t\t}\n\t],\n\t\"PSliceP\": [\n\t\t{\n\t\t\t\"Tag\": \"tag22\"\n\t\t},\n\t\tnull,\n\t\t{\n\t\t\t\"Tag\": \"tag23\"\n\t\t}\n\t],\n\t\"EmptySlice\": null,\n\t\"NilSlice\": null,\n\t\"StringSlice\": null,\n\t\"ByteSlice\": null,\n\t\"Small\": {\n\t\t\"Tag\": \"\"\n\t},\n\t\"PSmall\": null,\n\t\"PPSmall\": {\n\t\t\"Tag\": \"tag31\"\n\t},\n\t\"Interface\": null,\n\t\"PInterface\": 5.2\n}" : stdgo.GoString);
