package stdgo._internal.go.types;
function implements_(v:stdgo._internal.go.types.Types_type_.Type_, t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/types/api.go#L470"
        if (t.empty()) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/api.go#L472"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/api.go#L476"
        if (stdgo.Go.toInterface(v.underlying()) == (stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)])))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/api.go#L477"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/api.go#L479"
        return (null : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>)._implements((0 : stdgo._internal.go.token.Token_pos.Pos), v, stdgo.Go.asInterface(t), false, (null : stdgo.Pointer<stdgo.GoString>));
    }
