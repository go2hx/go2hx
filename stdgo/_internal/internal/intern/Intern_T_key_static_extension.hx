package stdgo._internal.internal.intern;
@:keep @:allow(stdgo._internal.internal.intern.Intern.T_key_asInterface) class T_key_static_extension {
    @:keep
    static public function value( _k:stdgo._internal.internal.intern.Intern_T_key.T_key):stdgo.Ref<stdgo._internal.internal.intern.Intern_Value.Value> {
        @:recv var _k:stdgo._internal.internal.intern.Intern_T_key.T_key = _k?.__copy__();
        if (_k._isString) {
            return (stdgo.Go.setRef(({ _cmpVal : stdgo.Go.toInterface(_k._s) } : stdgo._internal.internal.intern.Intern_Value.Value)) : stdgo.Ref<stdgo._internal.internal.intern.Intern_Value.Value>);
        };
        return (stdgo.Go.setRef(({ _cmpVal : _k._cmpVal } : stdgo._internal.internal.intern.Intern_Value.Value)) : stdgo.Ref<stdgo._internal.internal.intern.Intern_Value.Value>);
    }
}