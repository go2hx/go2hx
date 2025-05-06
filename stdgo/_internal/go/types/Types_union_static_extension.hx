package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Union_asInterface) class Union_static_extension {
    @:keep
    @:tdfield
    static public function string( _u:stdgo.Ref<stdgo._internal.go.types.Types_union.Union>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_union.Union> = _u;
        //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L34"
        return stdgo._internal.go.types.Types_typestring.typeString(stdgo.Go.asInterface(_u), null)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function underlying( _u:stdgo.Ref<stdgo._internal.go.types.Types_union.Union>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_union.Union> = _u;
        //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L33"
        return stdgo.Go.asInterface(_u);
    }
    @:keep
    @:tdfield
    static public function term( _u:stdgo.Ref<stdgo._internal.go.types.Types_union.Union>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_term.Term> {
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_union.Union> = _u;
        //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L31"
        return (@:checkr _u ?? throw "null pointer dereference")._terms[(_i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function len( _u:stdgo.Ref<stdgo._internal.go.types.Types_union.Union>):stdgo.GoInt {
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_union.Union> = _u;
        //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L30"
        return ((@:checkr _u ?? throw "null pointer dereference")._terms.length);
    }
}
