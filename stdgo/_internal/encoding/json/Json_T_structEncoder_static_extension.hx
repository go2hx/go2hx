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
        var _i_5436367:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5436372_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5436350:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5436267:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5436237:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5436203:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5436203 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5436221i32;
                } else if (__value__ == (5436221i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5436763i32;
                    } else {
                        _gotoNext = 5436767i32;
                    };
                } else if (__value__ == (5436263i32)) {
                    _f_5436267 = (stdgo.Go.setRef(_se._fields._list[(_i_5436237 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5436350 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5436267 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5436520i32;
                    } else {
                        _gotoNext = 5436526i32;
                    };
                } else if (__value__ == (5436386i32)) {
                    _i_5436367 = (@:checkr _f_5436267 ?? throw "null pointer dereference")._index[(_i_5436372_0 : stdgo.GoInt)];
                    if (_fv_5436350.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5436423i32;
                    } else {
                        _gotoNext = 5436502i32;
                    };
                } else if (__value__ == (5436423i32)) {
                    if (_fv_5436350.isNil()) {
                        _gotoNext = 5436443i32;
                    } else {
                        _gotoNext = 5436479i32;
                    };
                } else if (__value__ == (5436443i32)) {
                    _i_5436237++;
                    _gotoNext = 5436764i32;
                } else if (__value__ == (5436479i32)) {
                    _fv_5436350 = _fv_5436350.elem()?.__copy__();
                    _gotoNext = 5436502i32;
                } else if (__value__ == (5436502i32)) {
                    _fv_5436350 = _fv_5436350.field(_i_5436367)?.__copy__();
                    _i_5436372_0++;
                    _gotoNext = 5436521i32;
                } else if (__value__ == (5436520i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5436267 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5436372_0 = __tmp__0;
                        _i_5436367 = __tmp__1;
                    };
                    _gotoNext = 5436521i32;
                } else if (__value__ == (5436521i32)) {
                    if (_i_5436372_0 < ((@:checkr _f_5436267 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5436386i32;
                    } else {
                        _gotoNext = 5436526i32;
                    };
                } else if (__value__ == (5436526i32)) {
                    if (((@:checkr _f_5436267 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5436350?.__copy__()) : Bool)) {
                        _gotoNext = 5436561i32;
                    } else {
                        _gotoNext = 5436581i32;
                    };
                } else if (__value__ == (5436561i32)) {
                    _i_5436237++;
                    _gotoNext = 5436764i32;
                } else if (__value__ == (5436581i32)) {
                    @:check2r _e.writeByte(_next_5436203);
                    _next_5436203 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5436633i32;
                    } else {
                        _gotoNext = 5436676i32;
                    };
                } else if (__value__ == (5436633i32)) {
                    @:check2r _e.writeString((@:checkr _f_5436267 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5436715i32;
                } else if (__value__ == (5436676i32)) {
                    _gotoNext = 5436676i32;
                    @:check2r _e.writeString((@:checkr _f_5436267 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5436715i32;
                } else if (__value__ == (5436715i32)) {
                    _opts._quoted = (@:checkr _f_5436267 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5436267 ?? throw "null pointer dereference")._encoder(_e, _fv_5436350?.__copy__(), _opts?.__copy__());
                    _i_5436237++;
                    _gotoNext = 5436764i32;
                } else if (__value__ == (5436763i32)) {
                    _i_5436237 = 0i32;
                    _gotoNext = 5436764i32;
                } else if (__value__ == (5436764i32)) {
                    if (_i_5436237 < (_se._fields._list.length)) {
                        _gotoNext = 5436263i32;
                    } else {
                        _gotoNext = 5436767i32;
                    };
                } else if (__value__ == (5436767i32)) {
                    if (_next_5436203 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5436782i32;
                    } else {
                        _gotoNext = 5436814i32;
                    };
                } else if (__value__ == (5436782i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5436838i32;
                } else if (__value__ == (5436814i32)) {
                    _gotoNext = 5436814i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5436838i32;
                } else if (__value__ == (5436838i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
