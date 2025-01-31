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
@:keep @:allow(stdgo._internal.encoding.json.Json.T_intWithPtrMarshalText_asInterface) class T_intWithPtrMarshalText_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function unmarshalText( _b:stdgo.Pointer<stdgo._internal.encoding.json.Json_T_intWithPtrMarshalText.T_intWithPtrMarshalText>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        return @:isptr (new stdgo.Pointer<stdgo._internal.encoding.json.Json_T_intWithMarshalText.T_intWithMarshalText>(() -> (_b.value : stdgo._internal.encoding.json.Json_T_intWithMarshalText.T_intWithMarshalText), v -> (_b.value = (v : stdgo._internal.encoding.json.Json_T_intWithPtrMarshalText.T_intWithPtrMarshalText) : stdgo._internal.encoding.json.Json_T_intWithMarshalText.T_intWithMarshalText)) : stdgo._internal.encoding.json.Json_T_intWithMarshalTextPointer.T_intWithMarshalTextPointer).unmarshalText(_data);
    }
    @:keep
    @:pointer
    @:tdfield
    static public function marshalText( _b:stdgo.Pointer<stdgo._internal.encoding.json.Json_T_intWithPtrMarshalText.T_intWithPtrMarshalText>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return (_b.value : stdgo._internal.encoding.json.Json_T_intWithMarshalText.T_intWithMarshalText).marshalText();
    }
}
