package stdgo._internal.go.types;
function _containsNil(_list:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L424"
        for (__0 => _t in _list) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L425"
            if (_t == null) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L426"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L429"
        return false;
    }
