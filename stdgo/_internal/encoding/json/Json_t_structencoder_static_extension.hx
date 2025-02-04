package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _next_5370888:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5371052:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5371057_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5371035:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_5370952:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_5370922:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5370888 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5370906i32;
                } else if (__value__ == (5370906i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5371448i32;
                    } else {
                        _gotoNext = 5371452i32;
                    };
                } else if (__value__ == (5370948i32)) {
                    _f_5370952 = (stdgo.Go.setRef(_se._fields._list[(_i_5370922 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5371035 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5370952 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5371205i32;
                    } else {
                        _gotoNext = 5371211i32;
                    };
                } else if (__value__ == (5371071i32)) {
                    _i_5371052 = (@:checkr _f_5370952 ?? throw "null pointer dereference")._index[(_i_5371057_0 : stdgo.GoInt)];
                    if (_fv_5371035.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5371108i32;
                    } else {
                        _gotoNext = 5371187i32;
                    };
                } else if (__value__ == (5371108i32)) {
                    if (_fv_5371035.isNil()) {
                        _gotoNext = 5371128i32;
                    } else {
                        _gotoNext = 5371164i32;
                    };
                } else if (__value__ == (5371128i32)) {
                    _i_5370922++;
                    _gotoNext = 5371449i32;
                } else if (__value__ == (5371164i32)) {
                    _fv_5371035 = _fv_5371035.elem()?.__copy__();
                    _gotoNext = 5371187i32;
                } else if (__value__ == (5371187i32)) {
                    _fv_5371035 = _fv_5371035.field(_i_5371052)?.__copy__();
                    _i_5371057_0++;
                    _gotoNext = 5371206i32;
                } else if (__value__ == (5371205i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5370952 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5371057_0 = __tmp__0;
                        _i_5371052 = __tmp__1;
                    };
                    _gotoNext = 5371206i32;
                } else if (__value__ == (5371206i32)) {
                    if (_i_5371057_0 < ((@:checkr _f_5370952 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5371071i32;
                    } else {
                        _gotoNext = 5371211i32;
                    };
                } else if (__value__ == (5371211i32)) {
                    if (((@:checkr _f_5370952 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5371035?.__copy__()) : Bool)) {
                        _gotoNext = 5371246i32;
                    } else {
                        _gotoNext = 5371266i32;
                    };
                } else if (__value__ == (5371246i32)) {
                    _i_5370922++;
                    _gotoNext = 5371449i32;
                } else if (__value__ == (5371266i32)) {
                    @:check2r _e.writeByte(_next_5370888);
                    _next_5370888 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5371318i32;
                    } else {
                        _gotoNext = 5371361i32;
                    };
                } else if (__value__ == (5371318i32)) {
                    @:check2r _e.writeString((@:checkr _f_5370952 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5371400i32;
                } else if (__value__ == (5371361i32)) {
                    _gotoNext = 5371361i32;
                    @:check2r _e.writeString((@:checkr _f_5370952 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5371400i32;
                } else if (__value__ == (5371400i32)) {
                    _opts._quoted = (@:checkr _f_5370952 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5370952 ?? throw "null pointer dereference")._encoder(_e, _fv_5371035?.__copy__(), _opts?.__copy__());
                    _i_5370922++;
                    _gotoNext = 5371449i32;
                } else if (__value__ == (5371448i32)) {
                    _i_5370922 = 0i32;
                    _gotoNext = 5371449i32;
                } else if (__value__ == (5371449i32)) {
                    if (_i_5370922 < (_se._fields._list.length)) {
                        _gotoNext = 5370948i32;
                    } else {
                        _gotoNext = 5371452i32;
                    };
                } else if (__value__ == (5371452i32)) {
                    if (_next_5370888 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5371467i32;
                    } else {
                        _gotoNext = 5371499i32;
                    };
                } else if (__value__ == (5371467i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5371523i32;
                } else if (__value__ == (5371499i32)) {
                    _gotoNext = 5371499i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5371523i32;
                } else if (__value__ == (5371523i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
