package stdgo._internal.internal.buildcfg;
function parseGOEXPERIMENT(_goos:stdgo.GoString, _goarch:stdgo.GoString, _goexp:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_experimentflags.ExperimentFlags>; var _1 : stdgo.Error; } {
        var __0:Bool = false, __1:Bool = false;
var _regabiAlwaysOn = __1, _regabiSupported = __0;
        {
            final __value__ = _goarch;
            if (__value__ == (("amd64" : stdgo.GoString)) || __value__ == (("arm64" : stdgo.GoString)) || __value__ == (("ppc64le" : stdgo.GoString)) || __value__ == (("ppc64" : stdgo.GoString)) || __value__ == (("riscv64" : stdgo.GoString))) {
                _regabiAlwaysOn = true;
                _regabiSupported = true;
            };
        };
        var _baseline = ({ regabiWrappers : _regabiSupported, regabiArgs : _regabiSupported, coverageRedesign : true } : stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags);
        var _flags = (stdgo.Go.setRef(({ flags : _baseline?.__copy__(), _baseline : _baseline?.__copy__() } : stdgo._internal.internal.buildcfg.Buildcfg_experimentflags.ExperimentFlags)) : stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_experimentflags.ExperimentFlags>);
        if (_goexp != ((stdgo.Go.str() : stdgo.GoString))) {
            var _names = (({
                final x = new stdgo.GoMap.GoStringMap<Bool -> Void>();
                x.__defaultValue__ = () -> null;
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, Bool -> Void>) : stdgo.GoMap<stdgo.GoString, Bool -> Void>);
            var _rv = (stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _flags ?? throw "null pointer dereference").flags) : stdgo.Ref<stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags>)))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            var _rt = (_rv.type() : stdgo._internal.reflect.Reflect_type_.Type_);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _rt.numField() : Bool)) {
                    var _field = (_rv.field(_i).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
_names[stdgo._internal.strings.Strings_tolower.toLower(_rt.field(_i).name.__copy__())] = _field.setBool;
                    _i++;
                };
            };
            _names[("regabi" : stdgo.GoString)] = function(_v:Bool):Void {
                (@:checkr _flags ?? throw "null pointer dereference").flags.regabiWrappers = _v;
                (@:checkr _flags ?? throw "null pointer dereference").flags.regabiArgs = _v;
            };
            for (__0 => _f in stdgo._internal.strings.Strings_split.split(_goexp?.__copy__(), ("," : stdgo.GoString))) {
                if (_f == ((stdgo.Go.str() : stdgo.GoString))) {
                    continue;
                };
                if (_f == (("none" : stdgo.GoString))) {
                    (@:checkr _flags ?? throw "null pointer dereference").flags = (new stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags() : stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags);
                    continue;
                };
                var _val = (true : Bool);
                if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_f?.__copy__(), ("no" : stdgo.GoString))) {
                    {
                        final __tmp__0 = (_f.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = false;
                        _f = __tmp__0;
                        _val = __tmp__1;
                    };
                };
                var __tmp__ = (_names != null && _names.__exists__(_f?.__copy__()) ? { _0 : _names[_f?.__copy__()], _1 : true } : { _0 : null, _1 : false }), _set:Bool -> Void = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unknown GOEXPERIMENT %s" : stdgo.GoString), stdgo.Go.toInterface(_f)) };
                };
                _set(_val);
            };
        };
        if (_regabiAlwaysOn) {
            (@:checkr _flags ?? throw "null pointer dereference").flags.regabiWrappers = true;
            (@:checkr _flags ?? throw "null pointer dereference").flags.regabiArgs = true;
        };
        if (!_regabiSupported) {
            (@:checkr _flags ?? throw "null pointer dereference").flags.regabiWrappers = false;
            (@:checkr _flags ?? throw "null pointer dereference").flags.regabiArgs = false;
        };
        if (((@:checkr _flags ?? throw "null pointer dereference").flags.regabiArgs && !(@:checkr _flags ?? throw "null pointer dereference").flags.regabiWrappers : Bool)) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("GOEXPERIMENT regabiargs requires regabiwrappers" : stdgo.GoString)) };
        };
        return { _0 : _flags, _1 : (null : stdgo.Error) };
    }
