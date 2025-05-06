package stdgo._internal.go.types;
function newContext():stdgo.Ref<stdgo._internal.go.types.Types_context.Context> {
        //"file:///home/runner/.go/go1.21.3/src/go/types/context.go#L58"
        return (stdgo.Go.setRef(({ _typeMap : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo._internal.go.types.Types_t_ctxtentry.T_ctxtEntry>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.go.types.Types_t_ctxtentry.T_ctxtEntry>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.types.Types_t_ctxtentry.T_ctxtEntry>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.types.Types_t_ctxtentry.T_ctxtEntry>>), _originIDs : (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.types.Types_type_.Type_, stdgo.GoInt>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }), false, { get : () -> null }));
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, stdgo.GoInt>) : stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, stdgo.GoInt>) } : stdgo._internal.go.types.Types_context.Context)) : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
    }
