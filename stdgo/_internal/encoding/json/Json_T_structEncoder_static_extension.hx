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
        var _i_5444672:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5444677_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5444655:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5444572:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5444542:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5444508:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5444508 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5444526i32;
                } else if (__value__ == (5444526i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5445068i32;
                    } else {
                        _gotoNext = 5445072i32;
                    };
                } else if (__value__ == (5444568i32)) {
                    _f_5444572 = (stdgo.Go.setRef(_se._fields._list[(_i_5444542 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5444655 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5444572 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5444825i32;
                    } else {
                        _gotoNext = 5444831i32;
                    };
                } else if (__value__ == (5444691i32)) {
                    _i_5444672 = (@:checkr _f_5444572 ?? throw "null pointer dereference")._index[(_i_5444677_0 : stdgo.GoInt)];
                    if (_fv_5444655.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5444728i32;
                    } else {
                        _gotoNext = 5444807i32;
                    };
                } else if (__value__ == (5444728i32)) {
                    if (_fv_5444655.isNil()) {
                        _gotoNext = 5444748i32;
                    } else {
                        _gotoNext = 5444784i32;
                    };
                } else if (__value__ == (5444748i32)) {
                    _i_5444542++;
                    _gotoNext = 5445069i32;
                } else if (__value__ == (5444784i32)) {
                    _fv_5444655 = _fv_5444655.elem()?.__copy__();
                    _gotoNext = 5444807i32;
                } else if (__value__ == (5444807i32)) {
                    _fv_5444655 = _fv_5444655.field(_i_5444672)?.__copy__();
                    _i_5444677_0++;
                    _gotoNext = 5444826i32;
                } else if (__value__ == (5444825i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5444572 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5444677_0 = __tmp__0;
                        _i_5444672 = __tmp__1;
                    };
                    _gotoNext = 5444826i32;
                } else if (__value__ == (5444826i32)) {
                    if (_i_5444677_0 < ((@:checkr _f_5444572 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5444691i32;
                    } else {
                        _gotoNext = 5444831i32;
                    };
                } else if (__value__ == (5444831i32)) {
                    if (((@:checkr _f_5444572 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5444655?.__copy__()) : Bool)) {
                        _gotoNext = 5444866i32;
                    } else {
                        _gotoNext = 5444886i32;
                    };
                } else if (__value__ == (5444866i32)) {
                    _i_5444542++;
                    _gotoNext = 5445069i32;
                } else if (__value__ == (5444886i32)) {
                    @:check2r _e.writeByte(_next_5444508);
                    _next_5444508 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5444938i32;
                    } else {
                        _gotoNext = 5444981i32;
                    };
                } else if (__value__ == (5444938i32)) {
                    @:check2r _e.writeString((@:checkr _f_5444572 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5445020i32;
                } else if (__value__ == (5444981i32)) {
                    _gotoNext = 5444981i32;
                    @:check2r _e.writeString((@:checkr _f_5444572 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5445020i32;
                } else if (__value__ == (5445020i32)) {
                    _opts._quoted = (@:checkr _f_5444572 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5444572 ?? throw "null pointer dereference")._encoder(_e, _fv_5444655?.__copy__(), _opts?.__copy__());
                    _i_5444542++;
                    _gotoNext = 5445069i32;
                } else if (__value__ == (5445068i32)) {
                    _i_5444542 = 0i32;
                    _gotoNext = 5445069i32;
                } else if (__value__ == (5445069i32)) {
                    if (_i_5444542 < (_se._fields._list.length)) {
                        _gotoNext = 5444568i32;
                    } else {
                        _gotoNext = 5445072i32;
                    };
                } else if (__value__ == (5445072i32)) {
                    if (_next_5444508 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5445087i32;
                    } else {
                        _gotoNext = 5445119i32;
                    };
                } else if (__value__ == (5445087i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5445143i32;
                } else if (__value__ == (5445119i32)) {
                    _gotoNext = 5445119i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5445143i32;
                } else if (__value__ == (5445143i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
