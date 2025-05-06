package stdgo._internal.go.types;
function newScope(_parent:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _pos:stdgo._internal.go.token.Token_pos.Pos, _end:stdgo._internal.go.token.Token_pos.Pos, _comment:stdgo.GoString):stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> {
        var _s = (stdgo.Go.setRef((new stdgo._internal.go.types.Types_scope.Scope(_parent, (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>>), (0 : stdgo.GoInt), (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.go.types.Types_object.Object>), _pos, _end, _comment?.__copy__(), false) : stdgo._internal.go.types.Types_scope.Scope)) : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L39"
        if ((({
            final value = _parent;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (_parent != stdgo._internal.go.types.Types_universe.universe) : Bool)) {
            (@:checkr _parent ?? throw "null pointer dereference")._children = ((@:checkr _parent ?? throw "null pointer dereference")._children.__append__(_s) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>>);
            (@:checkr _s ?? throw "null pointer dereference")._number = ((@:checkr _parent ?? throw "null pointer dereference")._children.length);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L43"
        return _s;
    }
