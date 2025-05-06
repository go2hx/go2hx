package stdgo._internal.go.types;
function _defPredeclaredFuncs():Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/universe.go#L222"
        for (_i => _ in stdgo._internal.go.types.Types__predeclaredfuncs._predeclaredFuncs.__copy__()) {
            var _id = (_i : stdgo._internal.go.types.Types_t_builtinid.T_builtinId);
            //"file:///home/runner/.go/go1.21.3/src/go/types/universe.go#L224"
            if (((_id == (26 : stdgo._internal.go.types.Types_t_builtinid.T_builtinId)) || (_id == (27 : stdgo._internal.go.types.Types_t_builtinid.T_builtinId)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/universe.go#L225"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/universe.go#L227"
            stdgo._internal.go.types.Types__def._def(stdgo.Go.asInterface(stdgo._internal.go.types.Types__newbuiltin._newBuiltin(_id)));
        };
    }
