package stdgo._internal.internal.intern;
@:keep @:allow(stdgo._internal.internal.intern.Intern.T_key_asInterface) class T_key_static_extension {
    @:keep
    @:tdfield
    static public function value( _k:stdgo._internal.internal.intern.Intern_t_key.T_key):stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value> {
        @:recv var _k:stdgo._internal.internal.intern.Intern_t_key.T_key = _k?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/internal/intern/intern.go#L55"
        if (_k._isString) {
            //"file:///home/runner/.go/go1.21.3/src/internal/intern/intern.go#L56"
            return (stdgo.Go.setRef(({ _cmpVal : stdgo.Go.toInterface(_k._s) } : stdgo._internal.internal.intern.Intern_value.Value)) : stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/intern/intern.go#L58"
        return (stdgo.Go.setRef(({ _cmpVal : _k._cmpVal } : stdgo._internal.internal.intern.Intern_value.Value)) : stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>);
    }
}
