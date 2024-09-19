package stdgo._internal.internal.intern;
@:keep @:allow(stdgo._internal.internal.intern.Intern.Value_asInterface) class Value_static_extension {
    @:keep
    static public function get( _v:stdgo.Ref<stdgo._internal.internal.intern.Intern_Value.Value>):stdgo.AnyInterface {
        @:recv var _v:stdgo.Ref<stdgo._internal.internal.intern.Intern_Value.Value> = _v;
        return _v._cmpVal;
    }
}
