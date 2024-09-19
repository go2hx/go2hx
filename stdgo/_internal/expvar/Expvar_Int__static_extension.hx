package stdgo._internal.expvar;
@:keep @:allow(stdgo._internal.expvar.Expvar.Int__asInterface) class Int__static_extension {
    @:keep
    static public function set( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_>, _value:stdgo.GoInt64):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_> = _v;
        stdgo._internal.sync.atomic_.Atomic__storeInt64.storeInt64(stdgo.Go.pointer(_v._i), _value);
    }
    @:keep
    static public function add( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_>, _delta:stdgo.GoInt64):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_> = _v;
        stdgo._internal.sync.atomic_.Atomic__addInt64.addInt64(stdgo.Go.pointer(_v._i), _delta);
    }
    @:keep
    static public function string( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_>):stdgo.GoString {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_> = _v;
        return stdgo._internal.strconv.Strconv_formatInt.formatInt(stdgo._internal.sync.atomic_.Atomic__loadInt64.loadInt64(stdgo.Go.pointer(_v._i)), (10 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    static public function value( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_>):stdgo.GoInt64 {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_> = _v;
        return stdgo._internal.sync.atomic_.Atomic__loadInt64.loadInt64(stdgo.Go.pointer(_v._i));
    }
}
