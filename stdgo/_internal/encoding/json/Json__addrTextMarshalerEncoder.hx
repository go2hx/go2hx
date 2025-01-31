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
function _addrTextMarshalerEncoder(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        var _va = (_v.addr()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (_va.isNil()) {
            @:check2r _e.writeString(("null" : stdgo.GoString));
            return;
        };
        var _m = (stdgo.Go.typeAssert((_va.interface_() : stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler);
        var __tmp__ = _m.marshalText(), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError(_v.type(), _err, ("MarshalText" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError>)));
        };
        @:check2r _e.write(stdgo._internal.encoding.json.Json__appendString._appendString(@:check2r _e.availableBuffer(), _b, _opts._escapeHTML));
    }
