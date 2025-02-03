package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5457906:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5457911_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5457889:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5457806:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5457776:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5457742:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5457742 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5457760i32;
                } else if (__value__ == (5457760i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5458302i32;
                    } else {
                        _gotoNext = 5458306i32;
                    };
                } else if (__value__ == (5457802i32)) {
                    _f_5457806 = (stdgo.Go.setRef(_se._fields._list[(_i_5457776 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5457889 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5457806 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5458059i32;
                    } else {
                        _gotoNext = 5458065i32;
                    };
                } else if (__value__ == (5457925i32)) {
                    _i_5457906 = (@:checkr _f_5457806 ?? throw "null pointer dereference")._index[(_i_5457911_0 : stdgo.GoInt)];
                    if (_fv_5457889.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5457962i32;
                    } else {
                        _gotoNext = 5458041i32;
                    };
                } else if (__value__ == (5457962i32)) {
                    if (_fv_5457889.isNil()) {
                        _gotoNext = 5457982i32;
                    } else {
                        _gotoNext = 5458018i32;
                    };
                } else if (__value__ == (5457982i32)) {
                    _i_5457776++;
                    _gotoNext = 5458303i32;
                } else if (__value__ == (5458018i32)) {
                    _fv_5457889 = _fv_5457889.elem()?.__copy__();
                    _gotoNext = 5458041i32;
                } else if (__value__ == (5458041i32)) {
                    _fv_5457889 = _fv_5457889.field(_i_5457906)?.__copy__();
                    _i_5457911_0++;
                    _gotoNext = 5458060i32;
                } else if (__value__ == (5458059i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5457806 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5457911_0 = __tmp__0;
                        _i_5457906 = __tmp__1;
                    };
                    _gotoNext = 5458060i32;
                } else if (__value__ == (5458060i32)) {
                    if (_i_5457911_0 < ((@:checkr _f_5457806 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5457925i32;
                    } else {
                        _gotoNext = 5458065i32;
                    };
                } else if (__value__ == (5458065i32)) {
                    if (((@:checkr _f_5457806 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5457889?.__copy__()) : Bool)) {
                        _gotoNext = 5458100i32;
                    } else {
                        _gotoNext = 5458120i32;
                    };
                } else if (__value__ == (5458100i32)) {
                    _i_5457776++;
                    _gotoNext = 5458303i32;
                } else if (__value__ == (5458120i32)) {
                    @:check2r _e.writeByte(_next_5457742);
                    _next_5457742 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5458172i32;
                    } else {
                        _gotoNext = 5458215i32;
                    };
                } else if (__value__ == (5458172i32)) {
                    @:check2r _e.writeString((@:checkr _f_5457806 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5458254i32;
                } else if (__value__ == (5458215i32)) {
                    _gotoNext = 5458215i32;
                    @:check2r _e.writeString((@:checkr _f_5457806 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5458254i32;
                } else if (__value__ == (5458254i32)) {
                    _opts._quoted = (@:checkr _f_5457806 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5457806 ?? throw "null pointer dereference")._encoder(_e, _fv_5457889?.__copy__(), _opts?.__copy__());
                    _i_5457776++;
                    _gotoNext = 5458303i32;
                } else if (__value__ == (5458302i32)) {
                    _i_5457776 = 0i32;
                    _gotoNext = 5458303i32;
                } else if (__value__ == (5458303i32)) {
                    if (_i_5457776 < (_se._fields._list.length)) {
                        _gotoNext = 5457802i32;
                    } else {
                        _gotoNext = 5458306i32;
                    };
                } else if (__value__ == (5458306i32)) {
                    if (_next_5457742 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5458321i32;
                    } else {
                        _gotoNext = 5458353i32;
                    };
                } else if (__value__ == (5458321i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5458377i32;
                } else if (__value__ == (5458353i32)) {
                    _gotoNext = 5458353i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5458377i32;
                } else if (__value__ == (5458377i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
