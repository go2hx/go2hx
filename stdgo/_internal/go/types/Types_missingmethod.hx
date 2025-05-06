package stdgo._internal.go.types;
function missingMethod(v:stdgo._internal.go.types.Types_type_.Type_, t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>, _static:Bool):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>; var _1 : Bool; } {
        var _method = (null : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>), _wrongType = false;
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L326"
        return (null : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>)._missingMethod(v, stdgo.Go.asInterface(t), _static, stdgo._internal.go.types.Types_identical.identical, (null : stdgo.Pointer<stdgo.GoString>));
    }
