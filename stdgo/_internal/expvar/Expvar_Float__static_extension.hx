package stdgo._internal.expvar;
@:keep @:allow(stdgo._internal.expvar.Expvar.Float__asInterface) class Float__static_extension {
    @:keep
    static public function set( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Float_.Float_>, _value:stdgo.GoFloat64):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Float_.Float_> = _v;
        _v._f.store(stdgo._internal.math.Math_float64bits.float64bits(_value));
    }
    @:keep
    static public function add( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Float_.Float_>, _delta:stdgo.GoFloat64):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Float_.Float_> = _v;
        while (true) {
            var _cur = (_v._f.load() : stdgo.GoUInt64);
            var _curVal = (stdgo._internal.math.Math_float64frombits.float64frombits(_cur) : stdgo.GoFloat64);
            var _nxtVal = (_curVal + _delta : stdgo.GoFloat64);
            var _nxt = (stdgo._internal.math.Math_float64bits.float64bits(_nxtVal) : stdgo.GoUInt64);
            if (_v._f.compareAndSwap(_cur, _nxt)) {
                return;
            };
        };
    }
    @:keep
    static public function string( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Float_.Float_>):stdgo.GoString {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Float_.Float_> = _v;
        return stdgo._internal.strconv.Strconv_formatFloat.formatFloat(stdgo._internal.math.Math_float64frombits.float64frombits(_v._f.load()), (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    static public function value( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Float_.Float_>):stdgo.GoFloat64 {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Float_.Float_> = _v;
        return stdgo._internal.math.Math_float64frombits.float64frombits(_v._f.load());
    }
}
