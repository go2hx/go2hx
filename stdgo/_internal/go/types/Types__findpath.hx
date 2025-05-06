package stdgo._internal.go.types;
function _findPath(_objMap:stdgo.GoMap<stdgo._internal.go.types.Types_object.Object, stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>>, _from:stdgo._internal.go.types.Types_object.Object, _to:stdgo._internal.go.types.Types_object.Object, _seen:stdgo.GoMap<stdgo._internal.go.types.Types_object.Object, Bool>):stdgo.Slice<stdgo._internal.go.types.Types_object.Object> {
        //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L136"
        if ((_seen[_from] ?? false)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L137"
            return (null : stdgo.Slice<stdgo._internal.go.types.Types_object.Object>);
        };
        _seen[_from] = true;
        //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L141"
        for (_d => _ in (@:checkr (_objMap[_from] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>)) ?? throw "null pointer dereference")._deps) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L142"
            if (stdgo.Go.toInterface(_d) == (stdgo.Go.toInterface(_to))) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L143"
                return (new stdgo.Slice<stdgo._internal.go.types.Types_object.Object>(1, 1, ...[_d]) : stdgo.Slice<stdgo._internal.go.types.Types_object.Object>);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L145"
            {
                var p = stdgo._internal.go.types.Types__findpath._findPath(_objMap, _d, _to, _seen);
                if (p != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L146"
                    return (p.__append__(_d) : stdgo.Slice<stdgo._internal.go.types.Types_object.Object>);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L150"
        return (null : stdgo.Slice<stdgo._internal.go.types.Types_object.Object>);
    }
