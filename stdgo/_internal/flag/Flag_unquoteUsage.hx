package stdgo._internal.flag;
function unquoteUsage(_flag:stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _name = ("" : stdgo.GoString), _usage = ("" : stdgo.GoString);
        _usage = _flag.usage?.__copy__();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_usage.length) : Bool), _i++, {
                if (_usage[(_i : stdgo.GoInt)] == ((96 : stdgo.GoUInt8))) {
                    {
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.cfor((_j < (_usage.length) : Bool), _j++, {
                            if (_usage[(_j : stdgo.GoInt)] == ((96 : stdgo.GoUInt8))) {
                                _name = (_usage.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt), _j) : stdgo.GoString)?.__copy__();
                                _usage = (((_usage.__slice__(0, _i) : stdgo.GoString) + _name?.__copy__() : stdgo.GoString) + (_usage.__slice__((_j + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                                return { _0 : _name?.__copy__(), _1 : _usage?.__copy__() };
                            };
                        });
                    };
                    break;
                };
            });
        };
        _name = ("value" : stdgo.GoString);
        {
            final __type__ = _flag.value;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.flag.Flag_T_boolFlag.T_boolFlag))) {
                var _fv:stdgo._internal.flag.Flag_T_boolFlag.T_boolFlag = __type__ == null ? (null : stdgo._internal.flag.Flag_T_boolFlag.T_boolFlag) : cast __type__;
                if (_fv.isBoolFlag()) {
                    _name = stdgo.Go.str()?.__copy__();
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo._internal.flag.Flag_T_durationValue.T_durationValue>))) {
                var _fv:stdgo.Pointer<stdgo._internal.flag.Flag_T_durationValue.T_durationValue> = __type__ == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_T_durationValue.T_durationValue>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_T_durationValue.T_durationValue>) : __type__ == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_T_durationValue.T_durationValue>) : __type__.__underlying__().value;
                _name = ("duration" : stdgo.GoString);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo._internal.flag.Flag_T_float64Value.T_float64Value>))) {
                var _fv:stdgo.Pointer<stdgo._internal.flag.Flag_T_float64Value.T_float64Value> = __type__ == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_T_float64Value.T_float64Value>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_T_float64Value.T_float64Value>) : __type__ == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_T_float64Value.T_float64Value>) : __type__.__underlying__().value;
                _name = ("float" : stdgo.GoString);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo._internal.flag.Flag_T_intValue.T_intValue>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo._internal.flag.Flag_T_int64Value.T_int64Value>))) {
                var _fv:stdgo._internal.flag.Flag_Value.Value = __type__ == null ? (null : stdgo._internal.flag.Flag_Value.Value) : cast __type__;
                _name = ("int" : stdgo.GoString);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo._internal.flag.Flag_T_stringValue.T_stringValue>))) {
                var _fv:stdgo.Pointer<stdgo._internal.flag.Flag_T_stringValue.T_stringValue> = __type__ == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_T_stringValue.T_stringValue>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_T_stringValue.T_stringValue>) : __type__ == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_T_stringValue.T_stringValue>) : __type__.__underlying__().value;
                _name = ("string" : stdgo.GoString);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo._internal.flag.Flag_T_uintValue.T_uintValue>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo._internal.flag.Flag_T_uint64Value.T_uint64Value>))) {
                var _fv:stdgo._internal.flag.Flag_Value.Value = __type__ == null ? (null : stdgo._internal.flag.Flag_Value.Value) : cast __type__;
                _name = ("uint" : stdgo.GoString);
            };
        };
        return { _0 : _name, _1 : _usage };
    }
