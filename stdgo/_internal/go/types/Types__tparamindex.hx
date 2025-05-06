package stdgo._internal.go.types;
function _tparamIndex(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, _tpar:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L762"
        for (_i => _p in _list) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L763"
            if (_p == (_tpar)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L764"
                return _i;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L767"
        return (-1 : stdgo.GoInt);
    }
