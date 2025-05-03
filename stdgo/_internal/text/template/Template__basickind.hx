package stdgo._internal.text.template;
function _basicKind(_v:stdgo._internal.reflect.Reflect_value.Value):{ var _0 : stdgo._internal.text.template.Template_t_kind.T_kind; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L421"
        {
            final __value__ = _v.kind();
            if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L423"
                return { _0 : (1 : stdgo._internal.text.template.Template_t_kind.T_kind), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L425"
                return { _0 : (3 : stdgo._internal.text.template.Template_t_kind.T_kind), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L427"
                return { _0 : (6 : stdgo._internal.text.template.Template_t_kind.T_kind), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L429"
                return { _0 : (4 : stdgo._internal.text.template.Template_t_kind.T_kind), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L431"
                return { _0 : (2 : stdgo._internal.text.template.Template_t_kind.T_kind), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L433"
                return { _0 : (5 : stdgo._internal.text.template.Template_t_kind.T_kind), _1 : (null : stdgo.Error) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L435"
        return { _0 : (0 : stdgo._internal.text.template.Template_t_kind.T_kind), _1 : stdgo._internal.text.template.Template__errbadcomparisontype._errBadComparisonType };
    }
