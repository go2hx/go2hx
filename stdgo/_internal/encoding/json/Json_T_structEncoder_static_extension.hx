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
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _next_6063103:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_6063267:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6063272_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_6063250:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_6063167:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_6063137:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_6063103 = (123 : stdgo.GoUInt8);
                    _gotoNext = 6063121i32;
                } else if (__value__ == (6063121i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 6063663i32;
                    } else {
                        _gotoNext = 6063667i32;
                    };
                } else if (__value__ == (6063163i32)) {
                    _f_6063167 = (stdgo.Go.setRef(_se._fields._list[(_i_6063137 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_6063250 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_6063167 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 6063420i32;
                    } else {
                        _gotoNext = 6063426i32;
                    };
                } else if (__value__ == (6063286i32)) {
                    _i_6063267 = (@:checkr _f_6063167 ?? throw "null pointer dereference")._index[(_i_6063272_0 : stdgo.GoInt)];
                    if (_fv_6063250.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 6063323i32;
                    } else {
                        _gotoNext = 6063402i32;
                    };
                } else if (__value__ == (6063323i32)) {
                    if (_fv_6063250.isNil()) {
                        _gotoNext = 6063343i32;
                    } else {
                        _gotoNext = 6063379i32;
                    };
                } else if (__value__ == (6063343i32)) {
                    _i_6063137++;
                    _gotoNext = 6063664i32;
                } else if (__value__ == (6063379i32)) {
                    _fv_6063250 = _fv_6063250.elem()?.__copy__();
                    _gotoNext = 6063402i32;
                } else if (__value__ == (6063402i32)) {
                    _fv_6063250 = _fv_6063250.field(_i_6063267)?.__copy__();
                    _i_6063272_0++;
                    _gotoNext = 6063421i32;
                } else if (__value__ == (6063420i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_6063167 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_6063272_0 = __tmp__0;
                        _i_6063267 = __tmp__1;
                    };
                    _gotoNext = 6063421i32;
                } else if (__value__ == (6063421i32)) {
                    if (_i_6063272_0 < ((@:checkr _f_6063167 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 6063286i32;
                    } else {
                        _gotoNext = 6063426i32;
                    };
                } else if (__value__ == (6063426i32)) {
                    if (((@:checkr _f_6063167 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_6063250?.__copy__()) : Bool)) {
                        _gotoNext = 6063461i32;
                    } else {
                        _gotoNext = 6063481i32;
                    };
                } else if (__value__ == (6063461i32)) {
                    _i_6063137++;
                    _gotoNext = 6063664i32;
                } else if (__value__ == (6063481i32)) {
                    @:check2r _e.writeByte(_next_6063103);
                    _next_6063103 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 6063533i32;
                    } else {
                        _gotoNext = 6063576i32;
                    };
                } else if (__value__ == (6063533i32)) {
                    @:check2r _e.writeString((@:checkr _f_6063167 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 6063615i32;
                } else if (__value__ == (6063576i32)) {
                    _gotoNext = 6063576i32;
                    @:check2r _e.writeString((@:checkr _f_6063167 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 6063615i32;
                } else if (__value__ == (6063615i32)) {
                    _opts._quoted = (@:checkr _f_6063167 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_6063167 ?? throw "null pointer dereference")._encoder(_e, _fv_6063250?.__copy__(), _opts?.__copy__());
                    _i_6063137++;
                    _gotoNext = 6063664i32;
                } else if (__value__ == (6063663i32)) {
                    _i_6063137 = 0i32;
                    _gotoNext = 6063664i32;
                } else if (__value__ == (6063664i32)) {
                    if (_i_6063137 < (_se._fields._list.length)) {
                        _gotoNext = 6063163i32;
                    } else {
                        _gotoNext = 6063667i32;
                    };
                } else if (__value__ == (6063667i32)) {
                    if (_next_6063103 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 6063682i32;
                    } else {
                        _gotoNext = 6063714i32;
                    };
                } else if (__value__ == (6063682i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 6063738i32;
                } else if (__value__ == (6063714i32)) {
                    _gotoNext = 6063714i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 6063738i32;
                } else if (__value__ == (6063738i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
