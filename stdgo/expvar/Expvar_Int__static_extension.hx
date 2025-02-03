package stdgo.expvar;
class Int__static_extension {
    static public function set(_v:Int_, _value:haxe.Int64):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_>);
        final _value = (_value : stdgo.GoInt64);
        stdgo._internal.expvar.Expvar_Int__static_extension.Int__static_extension.set(_v, _value);
    }
    static public function add(_v:Int_, _delta:haxe.Int64):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_>);
        final _delta = (_delta : stdgo.GoInt64);
        stdgo._internal.expvar.Expvar_Int__static_extension.Int__static_extension.add(_v, _delta);
    }
    static public function string(_v:Int_):String {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_>);
        return stdgo._internal.expvar.Expvar_Int__static_extension.Int__static_extension.string(_v);
    }
    static public function value(_v:Int_):haxe.Int64 {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_>);
        return stdgo._internal.expvar.Expvar_Int__static_extension.Int__static_extension.value(_v);
    }
}
