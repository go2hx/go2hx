package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Pointer__asInterface) class Pointer__static_extension {
    @:keep
    @:tdfield
    static public function string( _p:stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/types/pointer.go#L21"
        return stdgo._internal.go.types.Types_typestring.typeString(stdgo.Go.asInterface(_p), null)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function underlying( _p:stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/types/pointer.go#L20"
        return stdgo.Go.asInterface(_p);
    }
    @:keep
    @:tdfield
    static public function elem( _p:stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/types/pointer.go#L18"
        return (@:checkr _p ?? throw "null pointer dereference")._base;
    }
}
