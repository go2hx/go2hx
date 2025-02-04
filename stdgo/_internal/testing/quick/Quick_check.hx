package stdgo._internal.testing.quick;
function check(_f:stdgo.AnyInterface, _config:stdgo.Ref<stdgo._internal.testing.quick.Quick_config.Config>):stdgo.Error {
        if ((_config == null || (_config : Dynamic).__nil__)) {
            _config = (stdgo.Go.setRef(stdgo._internal.testing.quick.Quick__defaultconfig._defaultConfig) : stdgo.Ref<stdgo._internal.testing.quick.Quick_config.Config>);
        };
        var __tmp__ = stdgo._internal.testing.quick.Quick__functionandtype._functionAndType(_f), _fVal:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _fType:stdgo._internal.reflect.Reflect_type_.Type_ = __tmp__._1, _ok:Bool = __tmp__._2;
        if (!_ok) {
            return stdgo.Go.asInterface((("argument is not a function" : stdgo.GoString) : stdgo._internal.testing.quick.Quick_setuperror.SetupError));
        };
        if (_fType.numOut() != ((1 : stdgo.GoInt))) {
            return stdgo.Go.asInterface((("function does not return one value" : stdgo.GoString) : stdgo._internal.testing.quick.Quick_setuperror.SetupError));
        };
        if (_fType.out((0 : stdgo.GoInt)).kind() != ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            return stdgo.Go.asInterface((("function does not return a bool" : stdgo.GoString) : stdgo._internal.testing.quick.Quick_setuperror.SetupError));
        };
        var _arguments = (new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>((_fType.numIn() : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_fType.numIn() : stdgo.GoInt).toBasic() > 0 ? (_fType.numIn() : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)]) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        var _rand = @:check2r _config._getRand();
        var _maxCount = (@:check2r _config._getMaxCount() : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _maxCount : Bool)) {
                var _err = (stdgo._internal.testing.quick.Quick__arbitraryvalues._arbitraryValues(_arguments, _fType, _config, _rand) : stdgo.Error);
if (_err != null) {
                    return _err;
                };
if (!_fVal.call(_arguments)[(0 : stdgo.GoInt)].bool_()) {
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.testing.quick.Quick_checkerror.CheckError((_i + (1 : stdgo.GoInt) : stdgo.GoInt), stdgo._internal.testing.quick.Quick__tointerfaces._toInterfaces(_arguments)) : stdgo._internal.testing.quick.Quick_checkerror.CheckError)) : stdgo.Ref<stdgo._internal.testing.quick.Quick_checkerror.CheckError>));
                };
                _i++;
            };
        };
        return (null : stdgo.Error);
    }
