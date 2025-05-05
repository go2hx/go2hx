package stdgo._internal.expvar;
@:keep @:allow(stdgo._internal.expvar.Expvar.Float__asInterface) class Float__static_extension {
    @:keep
    @:tdfield
    static public function set( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_float_.Float_>, _value:stdgo.GoFloat64):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_float_.Float_> = _v;
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L97"
        (@:checkr _v ?? throw "null pointer dereference")._f.store(stdgo._internal.math.Math_float64bits.float64bits(_value));
    }
    @:keep
    @:tdfield
    static public function add( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_float_.Float_>, _delta:stdgo.GoFloat64):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_float_.Float_> = _v;
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L84"
        while (true) {
            var _cur = ((@:checkr _v ?? throw "null pointer dereference")._f.load() : stdgo.GoUInt64);
            var _curVal = (stdgo._internal.math.Math_float64frombits.float64frombits(_cur) : stdgo.GoFloat64);
            var _nxtVal = (_curVal + _delta : stdgo.GoFloat64);
            var _nxt = (stdgo._internal.math.Math_float64bits.float64bits(_nxtVal) : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L89"
            if ((@:checkr _v ?? throw "null pointer dereference")._f.compareAndSwap(_cur, _nxt)) {
                //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L90"
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function string( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_float_.Float_>):stdgo.GoString {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_float_.Float_> = _v;
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L78"
        return stdgo._internal.strconv.Strconv_formatfloat.formatFloat(stdgo._internal.math.Math_float64frombits.float64frombits((@:checkr _v ?? throw "null pointer dereference")._f.load()), (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function value( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_float_.Float_>):stdgo.GoFloat64 {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_float_.Float_> = _v;
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L74"
        return stdgo._internal.math.Math_float64frombits.float64frombits((@:checkr _v ?? throw "null pointer dereference")._f.load());
    }
}
