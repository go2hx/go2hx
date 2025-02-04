package stdgo._internal.text.template;
function _printableValue(_v:stdgo._internal.reflect.Reflect_value.Value):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        if (_v.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            {
                var __tmp__ = stdgo._internal.text.template.Template__indirect._indirect(_v?.__copy__());
                _v = @:tmpset0 __tmp__._0?.__copy__();
            };
        };
        if (!_v.isValid()) {
            return { _0 : stdgo.Go.toInterface(("<no value>" : stdgo.GoString)), _1 : true };
        };
        if ((!_v.type().implements_(stdgo._internal.text.template.Template__errortype._errorType) && !_v.type().implements_(stdgo._internal.text.template.Template__fmtstringertype._fmtStringerType) : Bool)) {
            if ((_v.canAddr() && ((stdgo._internal.reflect.Reflect_pointerto.pointerTo(_v.type()).implements_(stdgo._internal.text.template.Template__errortype._errorType) || stdgo._internal.reflect.Reflect_pointerto.pointerTo(_v.type()).implements_(stdgo._internal.text.template.Template__fmtstringertype._fmtStringerType) : Bool)) : Bool)) {
                _v = _v.addr()?.__copy__();
            } else {
                {
                    final __value__ = _v.kind();
                    if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((19u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        return { _0 : (null : stdgo.AnyInterface), _1 : false };
                    };
                };
            };
        };
        return { _0 : _v.interface_(), _1 : true };
    }
