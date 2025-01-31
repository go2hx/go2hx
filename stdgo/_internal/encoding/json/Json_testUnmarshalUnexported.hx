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
function testUnmarshalUnexported(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _input = ("{\"Name\": \"Bob\", \"m\": {\"x\": 123}, \"m2\": {\"y\": 456}, \"abcd\": {\"z\": 789}, \"s\": [2, 3]}" : stdgo.GoString);
        var _want = (stdgo.Go.setRef(({ name : ("Bob" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T_unexportedFields.T_unexportedFields)) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_unexportedFields.T_unexportedFields>);
        var _out = (stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_T_unexportedFields.T_unexportedFields() : stdgo._internal.encoding.json.Json_T_unexportedFields.T_unexportedFields)) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_unexportedFields.T_unexportedFields>);
        var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((_input : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface(stdgo.Go.asInterface(_out))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.errorf(("got error %v, expected nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_out)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)))) {
            @:check2r _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_out)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
        };
    }
