package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_floatEncoder_asInterface) class T_floatEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _bits:stdgo._internal.encoding.json.Json_t_floatencoder.T_floatEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _bits:stdgo._internal.encoding.json.Json_t_floatencoder.T_floatEncoder = _bits;
        var _f = (_v.float_() : stdgo.GoFloat64);
        if ((stdgo._internal.math.Math_isinf.isInf(_f, (0 : stdgo.GoInt)) || stdgo._internal.math.Math_isnan.isNaN(_f) : Bool)) {
            @:check2r _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError(_v?.__copy__(), stdgo._internal.strconv.Strconv_formatfloat.formatFloat(_f, (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (_bits : stdgo.GoInt))?.__copy__()) : stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError>)));
        };
        var _b = @:check2r _e.availableBuffer();
        _b = stdgo._internal.encoding.json.Json__mayappendquote._mayAppendQuote(_b, _opts._quoted);
        var _abs = (stdgo._internal.math.Math_abs.abs(_f) : stdgo.GoFloat64);
        var _fmt = ((102 : stdgo.GoUInt8) : stdgo.GoUInt8);
        if (_abs != (0 : stdgo.GoFloat64)) {
            if (((_bits == ((64 : stdgo._internal.encoding.json.Json_t_floatencoder.T_floatEncoder)) && (((_abs < (1e-06 : stdgo.GoFloat64) : Bool) || (_abs >= (1e+21 : stdgo.GoFloat64) : Bool) : Bool)) : Bool) || (_bits == ((32 : stdgo._internal.encoding.json.Json_t_floatencoder.T_floatEncoder)) && ((((_abs : stdgo.GoFloat32) < (9.999999974752427e-07 : stdgo.GoFloat64) : Bool) || ((_abs : stdgo.GoFloat32) >= (1.0000000200408773e+21 : stdgo.GoFloat64) : Bool) : Bool)) : Bool) : Bool)) {
                _fmt = (101 : stdgo.GoUInt8);
            };
        };
        _b = stdgo._internal.strconv.Strconv_appendfloat.appendFloat(_b, _f, _fmt, (-1 : stdgo.GoInt), (_bits : stdgo.GoInt));
        if (_fmt == ((101 : stdgo.GoUInt8))) {
            var _n = (_b.length : stdgo.GoInt);
            if (((((_n >= (4 : stdgo.GoInt) : Bool) && _b[(_n - (4 : stdgo.GoInt) : stdgo.GoInt)] == ((101 : stdgo.GoUInt8)) : Bool) && _b[(_n - (3 : stdgo.GoInt) : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)) : Bool) && (_b[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
                _b[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] = _b[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
                _b = (_b.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        _b = stdgo._internal.encoding.json.Json__mayappendquote._mayAppendQuote(_b, _opts._quoted);
        @:check2r _e.write(_b);
    }
}
