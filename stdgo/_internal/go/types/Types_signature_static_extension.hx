package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Signature_asInterface) class Signature_static_extension {
    @:keep
    @:tdfield
    static public function string( _t:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/signature.go#L99"
        return stdgo._internal.go.types.Types_typestring.typeString(stdgo.Go.asInterface(_t), null)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function underlying( _t:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/signature.go#L98"
        return stdgo.Go.asInterface(_t);
    }
    @:keep
    @:tdfield
    static public function variadic( _s:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/signature.go#L96"
        return (@:checkr _s ?? throw "null pointer dereference")._variadic;
    }
    @:keep
    @:tdfield
    static public function results( _s:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>):stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/signature.go#L93"
        return (@:checkr _s ?? throw "null pointer dereference")._results;
    }
    @:keep
    @:tdfield
    static public function params( _s:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>):stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/signature.go#L90"
        return (@:checkr _s ?? throw "null pointer dereference")._params;
    }
    @:keep
    @:tdfield
    static public function recvTypeParams( _s:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>):stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/signature.go#L87"
        return (@:checkr _s ?? throw "null pointer dereference")._rparams;
    }
    @:keep
    @:tdfield
    static public function typeParams( _s:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>):stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/signature.go#L84"
        return (@:checkr _s ?? throw "null pointer dereference")._tparams;
    }
    @:keep
    @:tdfield
    static public function recv( _s:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>):stdgo.Ref<stdgo._internal.go.types.Types_var.Var> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/signature.go#L81"
        return (@:checkr _s ?? throw "null pointer dereference")._recv;
    }
}
