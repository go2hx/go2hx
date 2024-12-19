package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _fv_5197062:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5196979:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5196949:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5196915:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5197079:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5197084_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5196915 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5196933i32;
                } else if (__value__ == (5196933i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5197475i32;
                    } else {
                        _gotoNext = 5197479i32;
                    };
                } else if (__value__ == (5196975i32)) {
                    _f_5196979 = (stdgo.Go.setRef(_se._fields._list[(_i_5196949 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5197062 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5196979._index.length)) {
                        _gotoNext = 5197232i32;
                    } else {
                        _gotoNext = 5197238i32;
                    };
                } else if (__value__ == (5197098i32)) {
                    _i_5197079 = _f_5196979._index[(_i_5197084_0 : stdgo.GoInt)];
                    if (_fv_5197062.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5197135i32;
                    } else {
                        _gotoNext = 5197214i32;
                    };
                } else if (__value__ == (5197135i32)) {
                    if (_fv_5197062.isNil()) {
                        _gotoNext = 5197155i32;
                    } else {
                        _gotoNext = 5197191i32;
                    };
                } else if (__value__ == (5197155i32)) {
                    _i_5196949++;
                    _gotoNext = 5197476i32;
                } else if (__value__ == (5197191i32)) {
                    _fv_5197062 = _fv_5197062.elem()?.__copy__();
                    _gotoNext = 5197214i32;
                } else if (__value__ == (5197214i32)) {
                    _fv_5197062 = _fv_5197062.field(_i_5197079)?.__copy__();
                    _i_5197084_0++;
                    _gotoNext = 5197233i32;
                } else if (__value__ == (5197232i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5196979._index[(0i32 : stdgo.GoInt)];
                        _i_5197084_0 = __tmp__0;
                        _i_5197079 = __tmp__1;
                    };
                    _gotoNext = 5197233i32;
                } else if (__value__ == (5197233i32)) {
                    if (_i_5197084_0 < (_f_5196979._index.length)) {
                        _gotoNext = 5197098i32;
                    } else {
                        _gotoNext = 5197238i32;
                    };
                } else if (__value__ == (5197238i32)) {
                    if ((_f_5196979._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5197062?.__copy__()) : Bool)) {
                        _gotoNext = 5197273i32;
                    } else {
                        _gotoNext = 5197293i32;
                    };
                } else if (__value__ == (5197273i32)) {
                    _i_5196949++;
                    _gotoNext = 5197476i32;
                } else if (__value__ == (5197293i32)) {
                    _e.writeByte(_next_5196915);
                    _next_5196915 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5197345i32;
                    } else {
                        _gotoNext = 5197388i32;
                    };
                } else if (__value__ == (5197345i32)) {
                    _e.writeString(_f_5196979._nameEscHTML?.__copy__());
                    _gotoNext = 5197427i32;
                } else if (__value__ == (5197388i32)) {
                    _gotoNext = 5197388i32;
                    _e.writeString(_f_5196979._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5197427i32;
                } else if (__value__ == (5197427i32)) {
                    _opts._quoted = _f_5196979._quoted;
                    _f_5196979._encoder(_e, _fv_5197062?.__copy__(), _opts?.__copy__());
                    _i_5196949++;
                    _gotoNext = 5197476i32;
                } else if (__value__ == (5197475i32)) {
                    _i_5196949 = 0i32;
                    _gotoNext = 5197476i32;
                } else if (__value__ == (5197476i32)) {
                    if (_i_5196949 < (_se._fields._list.length)) {
                        _gotoNext = 5196975i32;
                    } else {
                        _gotoNext = 5197479i32;
                    };
                } else if (__value__ == (5197479i32)) {
                    if (_next_5196915 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5197494i32;
                    } else {
                        _gotoNext = 5197526i32;
                    };
                } else if (__value__ == (5197494i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5197550i32;
                } else if (__value__ == (5197526i32)) {
                    _gotoNext = 5197526i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5197550i32;
                } else if (__value__ == (5197550i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
