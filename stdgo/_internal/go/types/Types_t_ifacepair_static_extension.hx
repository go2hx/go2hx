package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_ifacePair_asInterface) class T_ifacePair_static_extension {
    @:keep
    @:tdfield
    static public function _identical( _p:stdgo.Ref<stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair>, _q:stdgo.Ref<stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L212"
        return (((@:checkr _p ?? throw "null pointer dereference")._x == ((@:checkr _q ?? throw "null pointer dereference")._x) && (@:checkr _p ?? throw "null pointer dereference")._y == ((@:checkr _q ?? throw "null pointer dereference")._y) : Bool) || ((@:checkr _p ?? throw "null pointer dereference")._x == ((@:checkr _q ?? throw "null pointer dereference")._y) && (@:checkr _p ?? throw "null pointer dereference")._y == ((@:checkr _q ?? throw "null pointer dereference")._x) : Bool) : Bool);
    }
}
