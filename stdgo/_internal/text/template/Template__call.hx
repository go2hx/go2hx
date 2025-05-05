package stdgo._internal.text.template;
function _call(_fn:stdgo._internal.reflect.Reflect_value.Value, _args:haxe.Rest<stdgo._internal.reflect.Reflect_value.Value>):{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(_args.length, 0, ..._args);
        _fn = stdgo._internal.text.template.Template__indirectinterface._indirectInterface(_fn?.__copy__())?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L316"
        if (!_fn.isValid()) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L317"
            return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("call of nil" : stdgo.GoString)) };
        };
        var _typ = (_fn.type() : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L320"
        if (_typ.kind() != ((19u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L321"
            return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("non-function of type %s" : stdgo.GoString), stdgo.Go.toInterface(_typ)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L323"
        if (!stdgo._internal.text.template.Template__goodfunc._goodFunc(_typ)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L324"
            return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("function called with %d args; should be 1 or 2" : stdgo.GoString), stdgo.Go.toInterface(_typ.numOut())) };
        };
        var _numIn = (_typ.numIn() : stdgo.GoInt);
        var _dddType:stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L328"
        if (_typ.isVariadic()) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L329"
            if (((_args.length) < (_numIn - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L330"
                return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("wrong number of args: got %d want at least %d" : stdgo.GoString), stdgo.Go.toInterface((_args.length)), stdgo.Go.toInterface((_numIn - (1 : stdgo.GoInt) : stdgo.GoInt))) };
            };
            _dddType = _typ.in_((_numIn - (1 : stdgo.GoInt) : stdgo.GoInt)).elem();
        } else {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L334"
            if ((_args.length) != (_numIn)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L335"
                return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("wrong number of args: got %d want %d" : stdgo.GoString), stdgo.Go.toInterface((_args.length)), stdgo.Go.toInterface(_numIn)) };
            };
        };
        var _argv = (new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>((_args.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_args.length : stdgo.GoInt).toBasic() > 0 ? (_args.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)]) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L339"
        for (_i => _arg in _args) {
            _arg = stdgo._internal.text.template.Template__indirectinterface._indirectInterface(_arg?.__copy__())?.__copy__();
            var _argType = (_dddType : stdgo._internal.reflect.Reflect_type_.Type_);
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L343"
            if ((!_typ.isVariadic() || (_i < (_numIn - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                _argType = _typ.in_(_i);
            };
            var _err:stdgo.Error = (null : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L348"
            {
                {
                    var __tmp__ = stdgo._internal.text.template.Template__preparearg._prepareArg(_arg?.__copy__(), _argType);
                    _argv[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L349"
                    return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("arg %d: %w" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err)) };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L352"
        return stdgo._internal.text.template.Template__safecall._safeCall(_fn?.__copy__(), _argv);
    }
