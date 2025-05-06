package stdgo._internal.go.types;
function _newTypeHasher(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _ctxt:stdgo.Ref<stdgo._internal.go.types.Types_context.Context>):stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter> {
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L84"
        stdgo._internal.go.types.Types__assert._assert(({
            final value = _ctxt;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }));
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L85"
        return (stdgo.Go.setRef((new stdgo._internal.go.types.Types_t_typewriter.T_typeWriter(_buf, (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.types.Types_type_.Type_, Bool>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }), false, { get : () -> null }));
            x.__defaultValue__ = () -> false;
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>) : stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>), null, _ctxt, null, false, false, false) : stdgo._internal.go.types.Types_t_typewriter.T_typeWriter)) : stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>);
    }
