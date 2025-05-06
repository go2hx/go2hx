package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Term_asInterface) class Term_static_extension {
    @:keep
    @:tdfield
    static public function string( _t:stdgo.Ref<stdgo._internal.go.types.Types_term.Term>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_term.Term> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L44"
        return ((({
            final e = _t;
            ({ _tilde : e._tilde, _typ : e._typ } : stdgo._internal.go.types.Types_t_term.T_term);
        })).string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function type( _t:stdgo.Ref<stdgo._internal.go.types.Types_term.Term>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_term.Term> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L43"
        return (@:checkr _t ?? throw "null pointer dereference")._typ;
    }
    @:keep
    @:tdfield
    static public function tilde( _t:stdgo.Ref<stdgo._internal.go.types.Types_term.Term>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_term.Term> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L42"
        return (@:checkr _t ?? throw "null pointer dereference")._tilde;
    }
}
