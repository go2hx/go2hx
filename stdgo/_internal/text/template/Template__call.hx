package stdgo._internal.text.template;
function _call(_fn:stdgo._internal.reflect.Reflect_value.Value, _args:haxe.Rest<stdgo._internal.reflect.Reflect_value.Value>):{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(_args.length, 0, ..._args);
        _fn = stdgo._internal.text.template.Template__indirectinterface._indirectInterface(_fn?.__copy__())?.__copy__();
        if (!_fn.isValid()) {
            return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("call of nil" : stdgo.GoString)) };
        };
        var _typ = (_fn.type() : stdgo._internal.reflect.Reflect_type_.Type_);
        if (_typ.kind() != ((19u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("non-function of type %s" : stdgo.GoString), stdgo.Go.toInterface(_typ)) };
        };
        if (!stdgo._internal.text.template.Template__goodfunc._goodFunc(_typ)) {
            return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("function called with %d args; should be 1 or 2" : stdgo.GoString), stdgo.Go.toInterface(_typ.numOut())) };
        };
        var _numIn = (_typ.numIn() : stdgo.GoInt);
        var _dddType:stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
        if (_typ.isVariadic()) {
            if (((_args.length) < (_numIn - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("wrong number of args: got %d want at least %d" : stdgo.GoString), stdgo.Go.toInterface((_args.length)), stdgo.Go.toInterface((_numIn - (1 : stdgo.GoInt) : stdgo.GoInt))) };
            };
            _dddType = _typ.in_((_numIn - (1 : stdgo.GoInt) : stdgo.GoInt)).elem();
        } else {
            if ((_args.length) != (_numIn)) {
                return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("wrong number of args: got %d want %d" : stdgo.GoString), stdgo.Go.toInterface((_args.length)), stdgo.Go.toInterface(_numIn)) };
            };
        };
        var _argv = (new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>((_args.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_args.length : stdgo.GoInt).toBasic() > 0 ? (_args.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)]) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        for (_i => _arg in _args) {
            _arg = stdgo._internal.text.template.Template__indirectinterface._indirectInterface(_arg?.__copy__())?.__copy__();
            var _argType = (_dddType : stdgo._internal.reflect.Reflect_type_.Type_);
            if ((!_typ.isVariadic() || (_i < (_numIn - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                _argType = _typ.in_(_i);
            };
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                {
                    var __tmp__ = stdgo._internal.text.template.Template__preparearg._prepareArg(_arg?.__copy__(), _argType);
                    _argv[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("arg %d: %w" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err)) };
                };
            };
        };
        return stdgo._internal.text.template.Template__safecall._safeCall(_fn?.__copy__(), _argv);
    }
