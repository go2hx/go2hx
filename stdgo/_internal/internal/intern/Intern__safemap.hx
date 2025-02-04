package stdgo._internal.internal.intern;
function _safeMap():stdgo.GoMap<stdgo._internal.internal.intern.Intern_t_key.T_key, stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>> {
        if (@:check2r stdgo._internal.internal.intern.Intern__intern._intern.value() == (("leaky" : stdgo.GoString))) {
            return ({
                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.internal.intern.Intern_t_key.T_key, stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.intern.Intern_t_key.T_key", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_s", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_cmpVal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "_isString", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }));
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>);
                {};
                cast x;
            } : stdgo.GoMap<stdgo._internal.internal.intern.Intern_t_key.T_key, stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>>);
        };
        return (({
            final x:stdgo.GoMap.GoObjectMap<stdgo._internal.internal.intern.Intern_t_key.T_key, stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>> = null;
            cast x;
        } : stdgo.GoMap<stdgo._internal.internal.intern.Intern_t_key.T_key, stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>>));
    }
