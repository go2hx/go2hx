package stdgo.strconv;
class T_decimal_static_extension {
    static public function roundedInteger(_a:T_decimal):haxe.UInt64 {
        final _a = (_a : stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>);
        return stdgo._internal.strconv.Strconv_T_decimal_static_extension.T_decimal_static_extension.roundedInteger(_a);
    }
    static public function roundUp(_a:T_decimal, _nd:StdTypes.Int):Void {
        final _a = (_a : stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>);
        final _nd = (_nd : stdgo.GoInt);
        stdgo._internal.strconv.Strconv_T_decimal_static_extension.T_decimal_static_extension.roundUp(_a, _nd);
    }
    static public function roundDown(_a:T_decimal, _nd:StdTypes.Int):Void {
        final _a = (_a : stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>);
        final _nd = (_nd : stdgo.GoInt);
        stdgo._internal.strconv.Strconv_T_decimal_static_extension.T_decimal_static_extension.roundDown(_a, _nd);
    }
    static public function round(_a:T_decimal, _nd:StdTypes.Int):Void {
        final _a = (_a : stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>);
        final _nd = (_nd : stdgo.GoInt);
        stdgo._internal.strconv.Strconv_T_decimal_static_extension.T_decimal_static_extension.round(_a, _nd);
    }
    static public function shift(_a:T_decimal, _k:StdTypes.Int):Void {
        final _a = (_a : stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>);
        final _k = (_k : stdgo.GoInt);
        stdgo._internal.strconv.Strconv_T_decimal_static_extension.T_decimal_static_extension.shift(_a, _k);
    }
    static public function assign(_a:T_decimal, _v:haxe.UInt64):Void {
        final _a = (_a : stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>);
        final _v = (_v : stdgo.GoUInt64);
        stdgo._internal.strconv.Strconv_T_decimal_static_extension.T_decimal_static_extension.assign(_a, _v);
    }
    static public function string(_a:T_decimal):String {
        final _a = (_a : stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>);
        return stdgo._internal.strconv.Strconv_T_decimal_static_extension.T_decimal_static_extension.string(_a);
    }
    static public function _floatBits(_d:T_decimal, _flt:T_floatInfo):stdgo.Tuple<haxe.UInt64, Bool> {
        final _d = (_d : stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>);
        final _flt = (_flt : stdgo.Ref<stdgo._internal.strconv.Strconv_T_floatInfo.T_floatInfo>);
        return {
            final obj = stdgo._internal.strconv.Strconv_T_decimal_static_extension.T_decimal_static_extension._floatBits(_d, _flt);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _set(_b:T_decimal, _s:String):Bool {
        final _b = (_b : stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strconv.Strconv_T_decimal_static_extension.T_decimal_static_extension._set(_b, _s);
    }
}
