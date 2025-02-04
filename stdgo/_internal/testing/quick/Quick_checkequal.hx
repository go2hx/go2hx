package stdgo._internal.testing.quick;
function checkEqual(_f:stdgo.AnyInterface, _g:stdgo.AnyInterface, _config:stdgo.Ref<stdgo._internal.testing.quick.Quick_config.Config>):stdgo.Error {
        if ((_config == null || (_config : Dynamic).__nil__)) {
            _config = (stdgo.Go.setRef(stdgo._internal.testing.quick.Quick__defaultconfig._defaultConfig) : stdgo.Ref<stdgo._internal.testing.quick.Quick_config.Config>);
        };
        var __tmp__ = stdgo._internal.testing.quick.Quick__functionandtype._functionAndType(_f), _x:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _xType:stdgo._internal.reflect.Reflect_type_.Type_ = __tmp__._1, _ok:Bool = __tmp__._2;
        if (!_ok) {
            return stdgo.Go.asInterface((("f is not a function" : stdgo.GoString) : stdgo._internal.testing.quick.Quick_setuperror.SetupError));
        };
        var __tmp__ = stdgo._internal.testing.quick.Quick__functionandtype._functionAndType(_g), _y:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _yType:stdgo._internal.reflect.Reflect_type_.Type_ = __tmp__._1, _ok:Bool = __tmp__._2;
        if (!_ok) {
            return stdgo.Go.asInterface((("g is not a function" : stdgo.GoString) : stdgo._internal.testing.quick.Quick_setuperror.SetupError));
        };
        if (!((_xType.string() : String) == (_yType.string() : String))) {
            return stdgo.Go.asInterface((("functions have different types" : stdgo.GoString) : stdgo._internal.testing.quick.Quick_setuperror.SetupError));
        };
        var _arguments = (new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>((_xType.numIn() : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_xType.numIn() : stdgo.GoInt).toBasic() > 0 ? (_xType.numIn() : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)]) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        var _rand = @:check2r _config._getRand();
        var _maxCount = (@:check2r _config._getMaxCount() : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _maxCount : Bool)) {
                var _err = (stdgo._internal.testing.quick.Quick__arbitraryvalues._arbitraryValues(_arguments, _xType, _config, _rand) : stdgo.Error);
if (_err != null) {
                    return _err;
                };
var _xOut = stdgo._internal.testing.quick.Quick__tointerfaces._toInterfaces(_x.call(_arguments));
var _yOut = stdgo._internal.testing.quick.Quick__tointerfaces._toInterfaces(_y.call(_arguments));
if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_xOut), stdgo.Go.toInterface(_yOut))) {
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.testing.quick.Quick_checkequalerror.CheckEqualError((new stdgo._internal.testing.quick.Quick_checkerror.CheckError((_i + (1 : stdgo.GoInt) : stdgo.GoInt), stdgo._internal.testing.quick.Quick__tointerfaces._toInterfaces(_arguments)) : stdgo._internal.testing.quick.Quick_checkerror.CheckError), _xOut, _yOut) : stdgo._internal.testing.quick.Quick_checkequalerror.CheckEqualError)) : stdgo.Ref<stdgo._internal.testing.quick.Quick_checkequalerror.CheckEqualError>));
                };
                _i++;
            };
        };
        return (null : stdgo.Error);
    }
