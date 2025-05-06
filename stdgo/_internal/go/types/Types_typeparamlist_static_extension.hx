package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.TypeParamList_asInterface) class TypeParamList_static_extension {
    @:keep
    @:tdfield
    static public function _list( _l:stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>):stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>> {
        @:recv var _l:stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList> = _l;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typelists.go#L23"
        if (({
            final value = _l;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typelists.go#L24"
            return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typelists.go#L26"
        return (@:checkr _l ?? throw "null pointer dereference")._tparams;
    }
    @:keep
    @:tdfield
    static public function at( _l:stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> {
        @:recv var _l:stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList> = _l;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typelists.go#L17"
        return (@:checkr _l ?? throw "null pointer dereference")._tparams[(_i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function len( _l:stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>):stdgo.GoInt {
        @:recv var _l:stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList> = _l;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typelists.go#L14"
        return (_l._list().length);
    }
}
