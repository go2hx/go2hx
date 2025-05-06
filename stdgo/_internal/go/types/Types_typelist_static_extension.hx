package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.TypeList_asInterface) class TypeList_static_extension {
    @:keep
    @:tdfield
    static public function _list( _l:stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList>):stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> {
        @:recv var _l:stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList> = _l;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typelists.go#L51"
        if (({
            final value = _l;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typelists.go#L52"
            return (null : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typelists.go#L54"
        return (@:checkr _l ?? throw "null pointer dereference")._types;
    }
    @:keep
    @:tdfield
    static public function at( _l:stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList>, _i:stdgo.GoInt):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _l:stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList> = _l;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typelists.go#L45"
        return (@:checkr _l ?? throw "null pointer dereference")._types[(_i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function len( _l:stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList>):stdgo.GoInt {
        @:recv var _l:stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList> = _l;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typelists.go#L42"
        return (_l._list().length);
    }
}
