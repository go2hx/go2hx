package stdgo._internal.text.template;
function _lt(_arg1:stdgo._internal.reflect.Reflect_value.Value, _arg2:stdgo._internal.reflect.Reflect_value.Value):{ var _0 : Bool; var _1 : stdgo.Error; } {
        _arg1 = stdgo._internal.text.template.Template__indirectinterface._indirectInterface(_arg1?.__copy__())?.__copy__();
        var __tmp__ = stdgo._internal.text.template.Template__basickind._basicKind(_arg1?.__copy__()), _k1:stdgo._internal.text.template.Template_t_kind.T_kind = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L531"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L532"
            return { _0 : false, _1 : _err };
        };
        _arg2 = stdgo._internal.text.template.Template__indirectinterface._indirectInterface(_arg2?.__copy__())?.__copy__();
        var __tmp__ = stdgo._internal.text.template.Template__basickind._basicKind(_arg2?.__copy__()), _k2:stdgo._internal.text.template.Template_t_kind.T_kind = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L536"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L537"
            return { _0 : false, _1 : _err };
        };
        var _truth = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L540"
        if (_k1 != (_k2)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L542"
            if (((_k1 == (3 : stdgo._internal.text.template.Template_t_kind.T_kind)) && (_k2 == (6 : stdgo._internal.text.template.Template_t_kind.T_kind)) : Bool)) {
                _truth = ((_arg1.int_() < (0i64 : stdgo.GoInt64) : Bool) || ((_arg1.int_() : stdgo.GoUInt64) < _arg2.uint() : Bool) : Bool);
            } else if (((_k1 == (6 : stdgo._internal.text.template.Template_t_kind.T_kind)) && (_k2 == (3 : stdgo._internal.text.template.Template_t_kind.T_kind)) : Bool)) {
                _truth = ((_arg2.int_() >= (0i64 : stdgo.GoInt64) : Bool) && (_arg1.uint() < (_arg2.int_() : stdgo.GoUInt64) : Bool) : Bool);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L548"
                return { _0 : false, _1 : stdgo._internal.text.template.Template__errbadcomparison._errBadComparison };
            };
        } else {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L551"
            {
                final __value__ = _k1;
                if (__value__ == ((1 : stdgo._internal.text.template.Template_t_kind.T_kind)) || __value__ == ((2 : stdgo._internal.text.template.Template_t_kind.T_kind))) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L553"
                    return { _0 : false, _1 : stdgo._internal.text.template.Template__errbadcomparisontype._errBadComparisonType };
                } else if (__value__ == ((4 : stdgo._internal.text.template.Template_t_kind.T_kind))) {
                    _truth = (_arg1.float_() < _arg2.float_() : Bool);
                } else if (__value__ == ((3 : stdgo._internal.text.template.Template_t_kind.T_kind))) {
                    _truth = (_arg1.int_() < _arg2.int_() : Bool);
                } else if (__value__ == ((5 : stdgo._internal.text.template.Template_t_kind.T_kind))) {
                    _truth = ((_arg1.string() : stdgo.GoString) < (_arg2.string() : stdgo.GoString) : Bool);
                } else if (__value__ == ((6 : stdgo._internal.text.template.Template_t_kind.T_kind))) {
                    _truth = (_arg1.uint() < _arg2.uint() : Bool);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L563"
                    throw stdgo.Go.toInterface(("invalid kind" : stdgo.GoString));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L566"
        return { _0 : _truth, _1 : (null : stdgo.Error) };
    }
