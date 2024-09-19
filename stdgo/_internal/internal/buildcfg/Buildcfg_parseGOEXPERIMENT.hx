package stdgo._internal.internal.buildcfg;
function parseGOEXPERIMENT(_goos:stdgo.GoString, _goarch:stdgo.GoString, _goexp:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags>; var _1 : stdgo.Error; } {
        var __0:Bool = false, __1:Bool = false;
var _regabiAlwaysOn = __1, _regabiSupported = __0;
        {
            final __value__ = _goarch;
            if (__value__ == (("amd64" : stdgo.GoString)) || __value__ == (("arm64" : stdgo.GoString)) || __value__ == (("ppc64le" : stdgo.GoString)) || __value__ == (("ppc64" : stdgo.GoString)) || __value__ == (("riscv64" : stdgo.GoString))) {
                _regabiAlwaysOn = true;
                _regabiSupported = true;
            };
        };
        var _baseline = ({ regabiWrappers : _regabiSupported, regabiArgs : _regabiSupported, coverageRedesign : true } : _internal.internal.goexperiment.Goexperiment_Flags.Flags);
        var _flags = (stdgo.Go.setRef(({ flags : _baseline?.__copy__(), _baseline : _baseline?.__copy__() } : stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags)) : stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags>);
        if (_goexp != (stdgo.Go.str())) {
            var _names = ({
                final x = new stdgo.GoMap.GoStringMap<Bool -> Void>();
                x.__defaultValue__ = () -> null;
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, Bool -> Void>);
            var _rv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_flags.flags) : stdgo.Ref<_internal.internal.goexperiment.Goexperiment_Flags.Flags>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            var _rt = (_rv.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _rt.numField() : Bool), _i++, {
                    var _field = (_rv.field(_i)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                    _names[stdgo._internal.strings.Strings_toLower.toLower(_rt.field(_i).name?.__copy__())] = _field.setBool;
                });
            };
            _names[("regabi" : stdgo.GoString)] = function(_v:Bool):Void {
                _flags.flags.regabiWrappers = _v;
                _flags.flags.regabiArgs = _v;
            };
            for (__0 => _f in stdgo._internal.strings.Strings_split.split(_goexp?.__copy__(), ("," : stdgo.GoString))) {
                if (_f == (stdgo.Go.str())) {
                    continue;
                };
                if (_f == (("none" : stdgo.GoString))) {
                    _flags.flags = (new _internal.internal.goexperiment.Goexperiment_Flags.Flags() : _internal.internal.goexperiment.Goexperiment_Flags.Flags);
                    continue;
                };
                var _val = (true : Bool);
                if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_f?.__copy__(), ("no" : stdgo.GoString))) {
                    {
                        final __tmp__0 = (_f.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = false;
                        _f = __tmp__0;
                        _val = __tmp__1;
                    };
                };
                var __tmp__ = (_names != null && _names.exists(_f?.__copy__()) ? { _0 : _names[_f?.__copy__()], _1 : true } : { _0 : null, _1 : false }), _set:Bool -> Void = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unknown GOEXPERIMENT %s" : stdgo.GoString), stdgo.Go.toInterface(_f)) };
                };
                _set(_val);
            };
        };
        if (_regabiAlwaysOn) {
            _flags.flags.regabiWrappers = true;
            _flags.flags.regabiArgs = true;
        };
        if (!_regabiSupported) {
            _flags.flags.regabiWrappers = false;
            _flags.flags.regabiArgs = false;
        };
        if ((_flags.flags.regabiArgs && !_flags.flags.regabiWrappers : Bool)) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("GOEXPERIMENT regabiargs requires regabiwrappers" : stdgo.GoString)) };
        };
        return { _0 : _flags, _1 : (null : stdgo.Error) };
    }