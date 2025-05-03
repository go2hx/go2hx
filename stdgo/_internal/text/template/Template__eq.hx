package stdgo._internal.text.template;
function _eq(_arg1:stdgo._internal.reflect.Reflect_value.Value, _arg2:haxe.Rest<stdgo._internal.reflect.Reflect_value.Value>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _arg2 = new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(_arg2.length, 0, ..._arg2);
        _arg1 = stdgo._internal.text.template.Template__indirectinterface._indirectInterface(_arg1?.__copy__())?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L465"
        if ((_arg2.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L466"
            return { _0 : false, _1 : stdgo._internal.text.template.Template__errnocomparison._errNoComparison };
        };
        var __tmp__ = stdgo._internal.text.template.Template__basickind._basicKind(_arg1?.__copy__()), _k1:stdgo._internal.text.template.Template_t_kind.T_kind = __tmp__._0, __8:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L469"
        for (__9 => _arg in _arg2) {
            _arg = stdgo._internal.text.template.Template__indirectinterface._indirectInterface(_arg?.__copy__())?.__copy__();
            var __tmp__ = stdgo._internal.text.template.Template__basickind._basicKind(_arg?.__copy__()), _k2:stdgo._internal.text.template.Template_t_kind.T_kind = __tmp__._0, __10:stdgo.Error = __tmp__._1;
            var _truth = (false : Bool);
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L473"
            if (_k1 != (_k2)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L475"
                if (((_k1 == (3 : stdgo._internal.text.template.Template_t_kind.T_kind)) && (_k2 == (6 : stdgo._internal.text.template.Template_t_kind.T_kind)) : Bool)) {
                    _truth = ((_arg1.int_() >= (0i64 : stdgo.GoInt64) : Bool) && ((_arg1.int_() : stdgo.GoUInt64) == _arg.uint()) : Bool);
                } else if (((_k1 == (6 : stdgo._internal.text.template.Template_t_kind.T_kind)) && (_k2 == (3 : stdgo._internal.text.template.Template_t_kind.T_kind)) : Bool)) {
                    _truth = ((_arg.int_() >= (0i64 : stdgo.GoInt64) : Bool) && (_arg1.uint() == (_arg.int_() : stdgo.GoUInt64)) : Bool);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L481"
                    if (((stdgo.Go.toInterface(_arg1) != stdgo.Go.toInterface(stdgo._internal.text.template.Template__zero._zero)) && (stdgo.Go.toInterface(_arg) != stdgo.Go.toInterface(stdgo._internal.text.template.Template__zero._zero)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L482"
                        return { _0 : false, _1 : stdgo._internal.text.template.Template__errbadcomparison._errBadComparison };
                    };
                };
            } else {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L486"
                {
                    final __value__ = _k1;
                    if (__value__ == ((1 : stdgo._internal.text.template.Template_t_kind.T_kind))) {
                        _truth = _arg1.bool_() == (_arg.bool_());
                    } else if (__value__ == ((2 : stdgo._internal.text.template.Template_t_kind.T_kind))) {
                        _truth = _arg1.complex() == (_arg.complex());
                    } else if (__value__ == ((4 : stdgo._internal.text.template.Template_t_kind.T_kind))) {
                        _truth = _arg1.float_() == (_arg.float_());
                    } else if (__value__ == ((3 : stdgo._internal.text.template.Template_t_kind.T_kind))) {
                        _truth = _arg1.int_() == (_arg.int_());
                    } else if (__value__ == ((5 : stdgo._internal.text.template.Template_t_kind.T_kind))) {
                        _truth = (_arg1.string() : stdgo.GoString) == ((_arg.string() : stdgo.GoString));
                    } else if (__value__ == ((6 : stdgo._internal.text.template.Template_t_kind.T_kind))) {
                        _truth = _arg1.uint() == (_arg.uint());
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L500"
                        if (!stdgo._internal.text.template.Template__cancompare._canCompare(_arg1?.__copy__(), _arg?.__copy__())) {
                            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L501"
                            return { _0 : false, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("non-comparable types %s: %v, %s: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_arg1)), stdgo.Go.toInterface(_arg1.type()), stdgo.Go.toInterface(_arg.type()), stdgo.Go.toInterface(stdgo.Go.asInterface(_arg))) };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L503"
                        if ((stdgo._internal.text.template.Template__isnil._isNil(_arg1?.__copy__()) || stdgo._internal.text.template.Template__isnil._isNil(_arg?.__copy__()) : Bool)) {
                            _truth = stdgo._internal.text.template.Template__isnil._isNil(_arg?.__copy__()) == (stdgo._internal.text.template.Template__isnil._isNil(_arg1?.__copy__()));
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L506"
                            if (!_arg.type().comparable_()) {
                                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L507"
                                return { _0 : false, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("non-comparable type %s: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_arg)), stdgo.Go.toInterface(_arg.type())) };
                            };
                            _truth = _arg1.interface_() == (_arg.interface_());
                        };
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L513"
            if (_truth) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L514"
                return { _0 : true, _1 : (null : stdgo.Error) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L517"
        return { _0 : false, _1 : (null : stdgo.Error) };
    }
