package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _next_5432962:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5433126:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5433131_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5433109:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5433026:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5432996:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5432962 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5432980i32;
                } else if (__value__ == (5432980i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5433522i32;
                    } else {
                        _gotoNext = 5433526i32;
                    };
                } else if (__value__ == (5433022i32)) {
                    _f_5433026 = (stdgo.Go.setRef(_se._fields._list[(_i_5432996 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5433109 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5433026._index.length)) {
                        _gotoNext = 5433279i32;
                    } else {
                        _gotoNext = 5433285i32;
                    };
                } else if (__value__ == (5433145i32)) {
                    _i_5433126 = _f_5433026._index[(_i_5433131_0 : stdgo.GoInt)];
                    if (_fv_5433109.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5433182i32;
                    } else {
                        _gotoNext = 5433261i32;
                    };
                } else if (__value__ == (5433182i32)) {
                    if (_fv_5433109.isNil()) {
                        _gotoNext = 5433202i32;
                    } else {
                        _gotoNext = 5433238i32;
                    };
                } else if (__value__ == (5433202i32)) {
                    _i_5432996++;
                    _gotoNext = 5433523i32;
                } else if (__value__ == (5433238i32)) {
                    _fv_5433109 = _fv_5433109.elem()?.__copy__();
                    _gotoNext = 5433261i32;
                } else if (__value__ == (5433261i32)) {
                    _fv_5433109 = _fv_5433109.field(_i_5433126)?.__copy__();
                    _i_5433131_0++;
                    _gotoNext = 5433280i32;
                } else if (__value__ == (5433279i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5433026._index[(0i32 : stdgo.GoInt)];
                        _i_5433131_0 = __tmp__0;
                        _i_5433126 = __tmp__1;
                    };
                    _gotoNext = 5433280i32;
                } else if (__value__ == (5433280i32)) {
                    if (_i_5433131_0 < (_f_5433026._index.length)) {
                        _gotoNext = 5433145i32;
                    } else {
                        _gotoNext = 5433285i32;
                    };
                } else if (__value__ == (5433285i32)) {
                    if ((_f_5433026._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5433109?.__copy__()) : Bool)) {
                        _gotoNext = 5433320i32;
                    } else {
                        _gotoNext = 5433340i32;
                    };
                } else if (__value__ == (5433320i32)) {
                    _i_5432996++;
                    _gotoNext = 5433523i32;
                } else if (__value__ == (5433340i32)) {
                    _e.writeByte(_next_5432962);
                    _next_5432962 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5433392i32;
                    } else {
                        _gotoNext = 5433435i32;
                    };
                } else if (__value__ == (5433392i32)) {
                    _e.writeString(_f_5433026._nameEscHTML?.__copy__());
                    _gotoNext = 5433474i32;
                } else if (__value__ == (5433435i32)) {
                    _gotoNext = 5433435i32;
                    _e.writeString(_f_5433026._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5433474i32;
                } else if (__value__ == (5433474i32)) {
                    _opts._quoted = _f_5433026._quoted;
                    _f_5433026._encoder(_e, _fv_5433109?.__copy__(), _opts?.__copy__());
                    _i_5432996++;
                    _gotoNext = 5433523i32;
                } else if (__value__ == (5433522i32)) {
                    _i_5432996 = 0i32;
                    _gotoNext = 5433523i32;
                } else if (__value__ == (5433523i32)) {
                    if (_i_5432996 < (_se._fields._list.length)) {
                        _gotoNext = 5433022i32;
                    } else {
                        _gotoNext = 5433526i32;
                    };
                } else if (__value__ == (5433526i32)) {
                    if (_next_5432962 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5433541i32;
                    } else {
                        _gotoNext = 5433573i32;
                    };
                } else if (__value__ == (5433541i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5433597i32;
                } else if (__value__ == (5433573i32)) {
                    _gotoNext = 5433573i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5433597i32;
                } else if (__value__ == (5433597i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
