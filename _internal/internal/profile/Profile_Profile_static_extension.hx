package _internal.internal.profile;
@:keep @:allow(_internal.internal.profile.Profile.Profile_asInterface) class Profile_static_extension {
    @:keep
    static public function removeUninteresting( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        var __0:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>), __1:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
var _drop = __1, _keep = __0;
        var _err:stdgo.Error = (null : stdgo.Error);
        if (_p.dropFrames != (stdgo.Go.str())) {
            {
                {
                    var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(((("^(" : stdgo.GoString) + _p.dropFrames?.__copy__() : stdgo.GoString) + (")$" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    _drop = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("failed to compile regexp %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_p.dropFrames), stdgo.Go.toInterface(_err));
                };
            };
            if (_p.keepFrames != (stdgo.Go.str())) {
                {
                    {
                        var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(((("^(" : stdgo.GoString) + _p.keepFrames?.__copy__() : stdgo.GoString) + (")$" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                        _keep = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("failed to compile regexp %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_p.keepFrames), stdgo.Go.toInterface(_err));
                    };
                };
            };
            _p.prune(_drop, _keep);
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function prune( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>, _dropRx:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _keepRx:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):Void {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        var _prune = ({
            final x = new stdgo.GoMap.GoUInt64Map<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, Bool>);
        var _pruneBeneath = ({
            final x = new stdgo.GoMap.GoUInt64Map<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, Bool>);
        for (__0 => _loc in _p.location) {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                _i = ((_loc.line.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                    {
                        var _fn = _loc.line[(_i : stdgo.GoInt)].function_;
                        if ((((_fn != null) && ((_fn : Dynamic).__nil__ == null || !(_fn : Dynamic).__nil__)) && (_fn.name != stdgo.Go.str()) : Bool)) {
                            var _funcName = (_fn.name?.__copy__() : stdgo.GoString);
                            if (_funcName[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
                                _funcName = (_funcName.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            };
                            if (_dropRx.matchString(_funcName?.__copy__())) {
                                if ((((_keepRx == null) || (_keepRx : Dynamic).__nil__) || !_keepRx.matchString(_funcName?.__copy__()) : Bool)) {
                                    break;
                                };
                            };
                        };
                    };
                });
            };
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _pruneBeneath[_loc.id] = true;
                if (_i == (((_loc.line.length) - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    _prune[_loc.id] = true;
                } else {
                    _loc.line = (_loc.line.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<_internal.internal.profile.Profile_Line.Line>);
                };
            };
        };
        for (__1 => _sample in _p.sample) {
            var _foundUser = (false : Bool);
            {
                var _i = ((_sample.location.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                    var _id = (_sample.location[(_i : stdgo.GoInt)].id : stdgo.GoUInt64);
                    if ((!(_prune[_id] ?? false) && !(_pruneBeneath[_id] ?? false) : Bool)) {
                        _foundUser = true;
                        continue;
                    };
                    if (!_foundUser) {
                        continue;
                    };
                    if ((_prune[_id] ?? false)) {
                        _sample.location = (_sample.location.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>);
                        break;
                    };
                    if ((_pruneBeneath[_id] ?? false)) {
                        _sample.location = (_sample.location.__slice__(_i) : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>);
                        break;
                    };
                });
            };
        };
    }
    @:keep
    static public function scaleN( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>, _ratios:stdgo.Slice<stdgo.GoFloat64>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        if ((_p.sampleType.length) != ((_ratios.length))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("mismatched scale ratios, got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface((_ratios.length)), stdgo.Go.toInterface((_p.sampleType.length)));
        };
        var _allOnes = (true : Bool);
        for (__0 => _r in _ratios) {
            if (_r != (1 : stdgo.GoFloat64)) {
                _allOnes = false;
                break;
            };
        };
        if (_allOnes) {
            return (null : stdgo.Error);
        };
        for (__1 => _s in _p.sample) {
            for (_i => _v in _s.value) {
                if (_ratios[(_i : stdgo.GoInt)] != (1 : stdgo.GoFloat64)) {
                    _s.value[(_i : stdgo.GoInt)] = (((_v : stdgo.GoFloat64) * _ratios[(_i : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoInt64);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function scale( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>, _ratio:stdgo.GoFloat64):Void {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        if (_ratio == (1 : stdgo.GoFloat64)) {
            return;
        };
        var _ratios = (new stdgo.Slice<stdgo.GoFloat64>((_p.sampleType.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        for (_i => _ in _p.sampleType) {
            _ratios[(_i : stdgo.GoInt)] = _ratio;
        };
        _p.scaleN(_ratios);
    }
    @:keep
    static public function empty( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>):Bool {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        return (_p.sample.length) == ((0 : stdgo.GoInt));
    }
    @:keep
    static public function demangle( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>, _d:_internal.internal.profile.Profile_Demangler.Demangler):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        var _names:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__0 => _fn in _p.function_) {
            _names = (_names.__append__(_fn.systemName?.__copy__()));
        };
        var __tmp__ = _d(_names), _demangled:stdgo.GoMap<stdgo.GoString, stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        for (__1 => _fn in _p.function_) {
            {
                var __tmp__ = (_demangled != null && _demangled.exists(_fn.systemName?.__copy__()) ? { _0 : _demangled[_fn.systemName?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _dd:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _fn.name = _dd?.__copy__();
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function copy( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>):stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        _p._preEncode();
        var _b = _internal.internal.profile.Profile__marshal._marshal(stdgo.Go.asInterface(_p));
        var _pp = (stdgo.Go.setRef((new _internal.internal.profile.Profile_Profile.Profile() : _internal.internal.profile.Profile_Profile.Profile)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>);
        {
            var _err = (_internal.internal.profile.Profile__unmarshal._unmarshal(_b, stdgo.Go.asInterface(_pp)) : stdgo.Error);
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
        };
        {
            var _err = (_pp._postDecode() : stdgo.Error);
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
        };
        return _pp;
    }
    @:keep
    static public function hasFileLines( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>):Bool {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        for (__0 => _l in _p.location) {
            if ((((_l.mapping == null) || (_l.mapping : Dynamic).__nil__) || ((!_l.mapping.hasFilenames || !_l.mapping.hasLineNumbers : Bool)) : Bool)) {
                return false;
            };
        };
        return true;
    }
    @:keep
    static public function hasFunctions( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>):Bool {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        for (__0 => _l in _p.location) {
            if ((((_l.mapping == null) || (_l.mapping : Dynamic).__nil__) || !_l.mapping.hasFunctions : Bool)) {
                return false;
            };
        };
        return true;
    }
    @:keep
    static public function compatible( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>, _pb:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        if (!_internal.internal.profile.Profile__compatibleValueTypes._compatibleValueTypes(_p.periodType, _pb.periodType)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("incompatible period types %v and %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p.periodType)), stdgo.Go.toInterface(stdgo.Go.asInterface(_pb.periodType)));
        };
        if ((_p.sampleType.length) != ((_pb.sampleType.length))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("incompatible sample types %v and %v" : stdgo.GoString), stdgo.Go.toInterface(_p.sampleType), stdgo.Go.toInterface(_pb.sampleType));
        };
        for (_i => _ in _p.sampleType) {
            if (!_internal.internal.profile.Profile__compatibleValueTypes._compatibleValueTypes(_p.sampleType[(_i : stdgo.GoInt)], _pb.sampleType[(_i : stdgo.GoInt)])) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("incompatible sample types %v and %v" : stdgo.GoString), stdgo.Go.toInterface(_p.sampleType), stdgo.Go.toInterface(_pb.sampleType));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function merge( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>, _pb:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>, _r:stdgo.GoFloat64):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        {
            var _err = (_p.compatible(_pb) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _pb = _pb.copy();
        if ((_pb.period > _p.period : Bool)) {
            _p.period = _pb.period;
        };
        _p.durationNanos = (_p.durationNanos + (_pb.durationNanos) : stdgo.GoInt64);
        _p.mapping = (_p.mapping.__append__(...(_pb.mapping : Array<stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>>)));
        for (_i => _m in _p.mapping) {
            _m.id = ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64);
        };
        _p.location = (_p.location.__append__(...(_pb.location : Array<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>)));
        for (_i => _l in _p.location) {
            _l.id = ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64);
        };
        _p.function_ = (_p.function_.__append__(...(_pb.function_ : Array<stdgo.Ref<_internal.internal.profile.Profile_Function.Function>>)));
        for (_i => _f in _p.function_) {
            _f.id = ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64);
        };
        if (_r != (1 : stdgo.GoFloat64)) {
            for (__0 => _s in _pb.sample) {
                for (_i => _v in _s.value) {
                    _s.value[(_i : stdgo.GoInt)] = (((_v : stdgo.GoFloat64) * _r : stdgo.GoFloat64) : stdgo.GoInt64);
                };
            };
        };
        _p.sample = (_p.sample.__append__(...(_pb.sample : Array<stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>>)));
        return _p.checkValid();
    }
    @:keep
    static public function string( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        var _ss = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (((_p.sample.length) + (_p.mapping.length) : stdgo.GoInt) + (_p.location.length) : stdgo.GoInt)).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _pt = _p.periodType;
            if (_pt != null && ((_pt : Dynamic).__nil__ == null || !(_pt : Dynamic).__nil__)) {
                _ss = (_ss.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("PeriodType: %s %s" : stdgo.GoString), stdgo.Go.toInterface(_pt.type), stdgo.Go.toInterface(_pt.unit))?.__copy__()));
            };
        };
        _ss = (_ss.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("Period: %d" : stdgo.GoString), stdgo.Go.toInterface(_p.period))?.__copy__()));
        if (_p.timeNanos != ((0i64 : stdgo.GoInt64))) {
            _ss = (_ss.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("Time: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.time.Time_unix.unix((0i64 : stdgo.GoInt64), _p.timeNanos))))?.__copy__()));
        };
        if (_p.durationNanos != ((0i64 : stdgo.GoInt64))) {
            _ss = (_ss.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("Duration: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((_p.durationNanos : stdgo._internal.time.Time_Duration.Duration))))?.__copy__()));
        };
        _ss = (_ss.__append__(("Samples:" : stdgo.GoString)));
        var _sh1:stdgo.GoString = ("" : stdgo.GoString);
        for (__0 => _s in _p.sampleType) {
            _sh1 = (_sh1 + stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s/%s " : stdgo.GoString), stdgo.Go.toInterface(_s.type), stdgo.Go.toInterface(_s.unit))?.__copy__() : stdgo.GoString)?.__copy__();
        };
        _ss = (_ss.__append__(stdgo._internal.strings.Strings_trimSpace.trimSpace(_sh1?.__copy__())?.__copy__()));
        for (__1 => _s in _p.sample) {
            var _sv:stdgo.GoString = ("" : stdgo.GoString);
            for (__2 => _v in _s.value) {
                _sv = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s %10d" : stdgo.GoString), stdgo.Go.toInterface(_sv), stdgo.Go.toInterface(_v))?.__copy__();
            };
            _sv = (_sv + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            for (__3 => _l in _s.location) {
                _sv = (_sv + stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d " : stdgo.GoString), stdgo.Go.toInterface(_l.id))?.__copy__() : stdgo.GoString)?.__copy__();
            };
            _ss = (_ss.__append__(_sv?.__copy__()));
            {};
            if (((_s.label.length) > (0 : stdgo.GoInt) : Bool)) {
                var _ls = ("                " : stdgo.GoString);
                for (_k => _v in _s.label) {
                    _ls = (_ls + stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s:%v " : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v))?.__copy__() : stdgo.GoString)?.__copy__();
                };
                _ss = (_ss.__append__(_ls?.__copy__()));
            };
            if (((_s.numLabel.length) > (0 : stdgo.GoInt) : Bool)) {
                var _ls = ("                " : stdgo.GoString);
                for (_k => _v in _s.numLabel) {
                    _ls = (_ls + stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s:%v " : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v))?.__copy__() : stdgo.GoString)?.__copy__();
                };
                _ss = (_ss.__append__(_ls?.__copy__()));
            };
        };
        _ss = (_ss.__append__(("Locations" : stdgo.GoString)));
        for (__2 => _l in _p.location) {
            var _locStr = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%6d: %#x " : stdgo.GoString), stdgo.Go.toInterface(_l.id), stdgo.Go.toInterface(_l.address))?.__copy__() : stdgo.GoString);
            {
                var _m = _l.mapping;
                if (_m != null && ((_m : Dynamic).__nil__ == null || !(_m : Dynamic).__nil__)) {
                    _locStr = (_locStr + stdgo._internal.fmt.Fmt_sprintf.sprintf(("M=%d " : stdgo.GoString), stdgo.Go.toInterface(_m.id))?.__copy__() : stdgo.GoString)?.__copy__();
                };
            };
            if ((_l.line.length) == ((0 : stdgo.GoInt))) {
                _ss = (_ss.__append__(_locStr?.__copy__()));
            };
            for (_li => _ in _l.line) {
                var _lnStr = ("??" : stdgo.GoString);
                {
                    var _fn = _l.line[(_li : stdgo.GoInt)].function_;
                    if (_fn != null && ((_fn : Dynamic).__nil__ == null || !(_fn : Dynamic).__nil__)) {
                        _lnStr = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s %s:%d s=%d" : stdgo.GoString), stdgo.Go.toInterface(_fn.name), stdgo.Go.toInterface(_fn.filename), stdgo.Go.toInterface(_l.line[(_li : stdgo.GoInt)].line), stdgo.Go.toInterface(_fn.startLine))?.__copy__();
                        if (_fn.name != (_fn.systemName)) {
                            _lnStr = (((_lnStr + ("(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _fn.systemName?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        };
                    };
                };
                _ss = (_ss.__append__((_locStr + _lnStr?.__copy__() : stdgo.GoString)?.__copy__()));
                _locStr = ("             " : stdgo.GoString);
            };
        };
        _ss = (_ss.__append__(("Mappings" : stdgo.GoString)));
        for (__3 => _m in _p.mapping) {
            var _bits = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
            if (_m.hasFunctions) {
                _bits = (_bits + (("[FN]" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            if (_m.hasFilenames) {
                _bits = (_bits + (("[FL]" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            if (_m.hasLineNumbers) {
                _bits = (_bits + (("[LN]" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            if (_m.hasInlineFrames) {
                _bits = (_bits + (("[IN]" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            _ss = (_ss.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d: %#x/%#x/%#x %s %s %s" : stdgo.GoString), stdgo.Go.toInterface(_m.id), stdgo.Go.toInterface(_m.start), stdgo.Go.toInterface(_m.limit), stdgo.Go.toInterface(_m.offset), stdgo.Go.toInterface(_m.file), stdgo.Go.toInterface(_m.buildID), stdgo.Go.toInterface(_bits))?.__copy__()));
        };
        return (stdgo._internal.strings.Strings_join.join(_ss, ("\n" : stdgo.GoString)) + ("\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function aggregate( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>, _inlineFrame:Bool, _function:Bool, _filename:Bool, _linenumber:Bool, _address:Bool):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        for (__0 => _m in _p.mapping) {
            _m.hasInlineFrames = (_m.hasInlineFrames && _inlineFrame : Bool);
            _m.hasFunctions = (_m.hasFunctions && _function : Bool);
            _m.hasFilenames = (_m.hasFilenames && _filename : Bool);
            _m.hasLineNumbers = (_m.hasLineNumbers && _linenumber : Bool);
        };
        if ((!_function || !_filename : Bool)) {
            for (__1 => _f in _p.function_) {
                if (!_function) {
                    _f.name = stdgo.Go.str()?.__copy__();
                    _f.systemName = stdgo.Go.str()?.__copy__();
                };
                if (!_filename) {
                    _f.filename = stdgo.Go.str()?.__copy__();
                };
            };
        };
        if (((!_inlineFrame || !_address : Bool) || !_linenumber : Bool)) {
            for (__1 => _l in _p.location) {
                if ((!_inlineFrame && ((_l.line.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
                    _l.line = (_l.line.__slice__(((_l.line.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<_internal.internal.profile.Profile_Line.Line>);
                };
                if (!_linenumber) {
                    for (_i => _ in _l.line) {
                        _l.line[(_i : stdgo.GoInt)].line = (0i64 : stdgo.GoInt64);
                    };
                };
                if (!_address) {
                    _l.address = (0i64 : stdgo.GoUInt64);
                };
            };
        };
        return _p.checkValid();
    }
    @:keep
    static public function checkValid( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        var _sampleLen = (_p.sampleType.length : stdgo.GoInt);
        if (((_sampleLen == (0 : stdgo.GoInt)) && (_p.sample.length != (0 : stdgo.GoInt)) : Bool)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("missing sample type information" : stdgo.GoString));
        };
        for (__0 => _s in _p.sample) {
            if ((_s.value.length) != (_sampleLen)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("mismatch: sample has: %d values vs. %d types" : stdgo.GoString), stdgo.Go.toInterface((_s.value.length)), stdgo.Go.toInterface((_p.sampleType.length)));
            };
        };
        var _mappings = ({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>>);
        for (__1 => _m in _p.mapping) {
            if (_m.id == ((0i64 : stdgo.GoUInt64))) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("found mapping with reserved ID=0" : stdgo.GoString));
            };
            if ((_mappings[_m.id] ?? (null : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>)) != null && ((_mappings[_m.id] ?? (null : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>) : Dynamic).__nil__ == null || !(_mappings[_m.id] ?? (null : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>) : Dynamic).__nil__)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("multiple mappings with same id: %d" : stdgo.GoString), stdgo.Go.toInterface(_m.id));
            };
            _mappings[_m.id] = _m;
        };
        var _functions = ({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<_internal.internal.profile.Profile_Function.Function>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<_internal.internal.profile.Profile_Function.Function>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<_internal.internal.profile.Profile_Function.Function>>);
        for (__2 => _f in _p.function_) {
            if (_f.id == ((0i64 : stdgo.GoUInt64))) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("found function with reserved ID=0" : stdgo.GoString));
            };
            if ((_functions[_f.id] ?? (null : stdgo.Ref<_internal.internal.profile.Profile_Function.Function>)) != null && ((_functions[_f.id] ?? (null : stdgo.Ref<_internal.internal.profile.Profile_Function.Function>) : Dynamic).__nil__ == null || !(_functions[_f.id] ?? (null : stdgo.Ref<_internal.internal.profile.Profile_Function.Function>) : Dynamic).__nil__)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("multiple functions with same id: %d" : stdgo.GoString), stdgo.Go.toInterface(_f.id));
            };
            _functions[_f.id] = _f;
        };
        var _locations = ({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>);
        for (__3 => _l in _p.location) {
            if (_l.id == ((0i64 : stdgo.GoUInt64))) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("found location with reserved id=0" : stdgo.GoString));
            };
            if ((_locations[_l.id] ?? (null : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>)) != null && ((_locations[_l.id] ?? (null : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>) : Dynamic).__nil__ == null || !(_locations[_l.id] ?? (null : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>) : Dynamic).__nil__)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("multiple locations with same id: %d" : stdgo.GoString), stdgo.Go.toInterface(_l.id));
            };
            _locations[_l.id] = _l;
            {
                var _m = _l.mapping;
                if (_m != null && ((_m : Dynamic).__nil__ == null || !(_m : Dynamic).__nil__)) {
                    if (((_m.id == (0i64 : stdgo.GoUInt64)) || ((_mappings[_m.id] ?? (null : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>)) != _m) : Bool)) {
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("inconsistent mapping %p: %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_m)), stdgo.Go.toInterface(_m.id));
                    };
                };
            };
            for (__4 => _ln in _l.line) {
                {
                    var _f = _ln.function_;
                    if (_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__)) {
                        if (((_f.id == (0i64 : stdgo.GoUInt64)) || ((_functions[_f.id] ?? (null : stdgo.Ref<_internal.internal.profile.Profile_Function.Function>)) != _f) : Bool)) {
                            return stdgo._internal.fmt.Fmt_errorf.errorf(("inconsistent function %p: %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)), stdgo.Go.toInterface(_f.id));
                        };
                    };
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function write( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _p._preEncode();
            var _b = _internal.internal.profile.Profile__marshal._marshal(stdgo.Go.asInterface(_p));
            var _zw = stdgo._internal.compress.gzip.Gzip_newWriter.newWriter(_w);
            __deferstack__.unshift(() -> _zw.close());
            var __tmp__ = _zw.write(_b), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _setMain( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>):Void {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_p.mapping.length) : Bool), _i++, {
                var _file = (stdgo._internal.strings.Strings_trimSpace.trimSpace(stdgo._internal.strings.Strings_replaceAll.replaceAll(_p.mapping[(_i : stdgo.GoInt)].file?.__copy__(), ("(deleted)" : stdgo.GoString), stdgo.Go.str()?.__copy__())?.__copy__())?.__copy__() : stdgo.GoString);
                if ((_file.length) == ((0 : stdgo.GoInt))) {
                    continue;
                };
                if (((_internal.internal.profile.Profile__libRx._libRx.findStringSubmatch(_file?.__copy__()).length) > (0 : stdgo.GoInt) : Bool)) {
                    continue;
                };
                if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_file?.__copy__(), ("[" : stdgo.GoString))) {
                    continue;
                };
                {
                    final __tmp__0 = _p.mapping[(0 : stdgo.GoInt)];
                    final __tmp__1 = _p.mapping[(_i : stdgo.GoInt)];
                    final __tmp__2 = _p.mapping;
                    final __tmp__3 = (_i : stdgo.GoInt);
                    final __tmp__4 = _p.mapping;
                    final __tmp__5 = (0 : stdgo.GoInt);
                    __tmp__2[__tmp__3] = __tmp__0;
                    __tmp__4[__tmp__5] = __tmp__1;
                };
                break;
            });
        };
    }
    @:keep
    static public function _compatible( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>, _pb:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        if (!_internal.internal.profile.Profile__equalValueType._equalValueType(_p.periodType, _pb.periodType)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("incompatible period types %v and %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p.periodType)), stdgo.Go.toInterface(stdgo.Go.asInterface(_pb.periodType)));
        };
        if ((_p.sampleType.length) != ((_pb.sampleType.length))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("incompatible sample types %v and %v" : stdgo.GoString), stdgo.Go.toInterface(_p.sampleType), stdgo.Go.toInterface(_pb.sampleType));
        };
        for (_i => _ in _p.sampleType) {
            if (!_internal.internal.profile.Profile__equalValueType._equalValueType(_p.sampleType[(_i : stdgo.GoInt)], _pb.sampleType[(_i : stdgo.GoInt)])) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("incompatible sample types %v and %v" : stdgo.GoString), stdgo.Go.toInterface(_p.sampleType), stdgo.Go.toInterface(_pb.sampleType));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function normalize( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>, _pb:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        {
            var _err = (_p._compatible(_pb) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _baseVals = (new stdgo.Slice<stdgo.GoInt64>((_p.sampleType.length : stdgo.GoInt).toBasic(), 0).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        for (__0 => _s in _pb.sample) {
            for (_i => _v in _s.value) {
                _baseVals[(_i : stdgo.GoInt)] = (_baseVals[(_i : stdgo.GoInt)] + (_v) : stdgo.GoInt64);
            };
        };
        var _srcVals = (new stdgo.Slice<stdgo.GoInt64>((_p.sampleType.length : stdgo.GoInt).toBasic(), 0).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        for (__1 => _s in _p.sample) {
            for (_i => _v in _s.value) {
                _srcVals[(_i : stdgo.GoInt)] = (_srcVals[(_i : stdgo.GoInt)] + (_v) : stdgo.GoInt64);
            };
        };
        var _normScale = (new stdgo.Slice<stdgo.GoFloat64>((_baseVals.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        for (_i => _ in _baseVals) {
            if (_srcVals[(_i : stdgo.GoInt)] == ((0i64 : stdgo.GoInt64))) {
                _normScale[(_i : stdgo.GoInt)] = (0 : stdgo.GoFloat64);
            } else {
                _normScale[(_i : stdgo.GoInt)] = ((_baseVals[(_i : stdgo.GoInt)] : stdgo.GoFloat64) / (_srcVals[(_i : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
        };
        _p.scaleN(_normScale);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _addLegacyFrameInfo( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>):Void {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        if (((_internal.internal.profile.Profile__isProfileType._isProfileType(_p, _internal.internal.profile.Profile__heapzSampleTypes._heapzSampleTypes) || _internal.internal.profile.Profile__isProfileType._isProfileType(_p, _internal.internal.profile.Profile__heapzInUseSampleTypes._heapzInUseSampleTypes) : Bool) || _internal.internal.profile.Profile__isProfileType._isProfileType(_p, _internal.internal.profile.Profile__heapzAllocSampleTypes._heapzAllocSampleTypes) : Bool)) {
            {
                final __tmp__0 = _internal.internal.profile.Profile__allocRxStr._allocRxStr?.__copy__();
                final __tmp__1 = _internal.internal.profile.Profile__allocSkipRxStr._allocSkipRxStr?.__copy__();
                _p.dropFrames = __tmp__0;
                _p.keepFrames = __tmp__1;
            };
        } else if (_internal.internal.profile.Profile__isProfileType._isProfileType(_p, _internal.internal.profile.Profile__contentionzSampleTypes._contentionzSampleTypes)) {
            {
                final __tmp__0 = _internal.internal.profile.Profile__lockRxStr._lockRxStr?.__copy__();
                final __tmp__1 = stdgo.Go.str()?.__copy__();
                _p.dropFrames = __tmp__0;
                _p.keepFrames = __tmp__1;
            };
        } else {
            {
                final __tmp__0 = _internal.internal.profile.Profile__cpuProfilerRxStr._cpuProfilerRxStr?.__copy__();
                final __tmp__1 = stdgo.Go.str()?.__copy__();
                _p.dropFrames = __tmp__0;
                _p.keepFrames = __tmp__1;
            };
        };
    }
    @:keep
    static public function parseMemoryMap( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>, _rd:stdgo._internal.io.Io_Reader.Reader):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        var _b = stdgo._internal.bufio.Bufio_newReader.newReader(_rd);
        var _attrs:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _r:stdgo.Ref<stdgo._internal.strings.Strings_Replacer.Replacer> = (null : stdgo.Ref<stdgo._internal.strings.Strings_Replacer.Replacer>);
        {};
        while (true) {
            var __tmp__ = _b.readString((10 : stdgo.GoUInt8)), _l:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    return _err;
                };
                if (_l == (stdgo.Go.str())) {
                    break;
                };
            };
            {
                _l = stdgo._internal.strings.Strings_trimSpace.trimSpace(_l?.__copy__())?.__copy__();
                if (_l == (stdgo.Go.str())) {
                    continue;
                };
            };
            if (_r != null && ((_r : Dynamic).__nil__ == null || !(_r : Dynamic).__nil__)) {
                _l = _r.replace(_l?.__copy__())?.__copy__();
            };
            var __tmp__ = _internal.internal.profile.Profile__parseMappingEntry._parseMappingEntry(_l?.__copy__()), _m:stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(_internal.internal.profile.Profile__errUnrecognized._errUnrecognized))) {
                    var _idx = (stdgo._internal.strings.Strings_indexByte.indexByte(_l?.__copy__(), (61 : stdgo.GoUInt8)) : stdgo.GoInt);
                    if ((_idx >= (0 : stdgo.GoInt) : Bool)) {
                        var _attr = ((_l.__slice__(0, _idx) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        var _value = ((_l.__slice__((_idx + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        _attrs = (_attrs.__append__((("$" : stdgo.GoString) + stdgo._internal.strings.Strings_trimSpace.trimSpace(_attr?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__(), stdgo._internal.strings.Strings_trimSpace.trimSpace(_value?.__copy__())?.__copy__()));
                        _r = stdgo._internal.strings.Strings_newReplacer.newReplacer(...(_attrs : Array<stdgo.GoString>));
                    };
                    continue;
                };
                return _err;
            };
            if ((((_m == null) || (_m : Dynamic).__nil__) || (((_m.file == stdgo.Go.str()) && (_p.mapping.length != (0 : stdgo.GoInt)) : Bool)) : Bool)) {
                continue;
            };
            if (((_p.mapping.length == (1 : stdgo.GoInt)) && (_p.mapping[(0 : stdgo.GoInt)].file == stdgo.Go.str()) : Bool)) {
                _p.mapping[(0 : stdgo.GoInt)].file = _m.file?.__copy__();
                continue;
            };
            _p.mapping = (_p.mapping.__append__(_m));
        };
        _p._remapLocationIDs();
        _p._remapFunctionIDs();
        _p._remapMappingIDs();
        return (null : stdgo.Error);
    }
    @:keep
    static public function _remapMappingIDs( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>):Void {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        if ((_p.mapping.length) == ((0 : stdgo.GoInt))) {
            return;
        };
        {
            var _m = _p.mapping[(0 : stdgo.GoInt)];
            if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_m.file?.__copy__(), ("/anon_hugepage" : stdgo.GoString))) {
                if ((((_p.mapping.length) > (1 : stdgo.GoInt) : Bool) && (_m.limit == _p.mapping[(1 : stdgo.GoInt)].start) : Bool)) {
                    _p.mapping = (_p.mapping.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>>);
                };
            };
        };
        for (__0 => _l in _p.location) {
            {
                var _a = (_l.address : stdgo.GoUInt64);
                if (_a != ((0i64 : stdgo.GoUInt64))) {
                    for (__1 => _m in _p.mapping) {
                        if (((_m.start <= _a : Bool) && (_a < _m.limit : Bool) : Bool)) {
                            _l.mapping = _m;
                            break;
                        };
                    };
                };
            };
        };
        for (_i => _m in _p.mapping) {
            _m.id = ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64);
        };
    }
    @:keep
    static public function _remapFunctionIDs( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>):Void {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        var _seen = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<_internal.internal.profile.Profile_Function.Function>, Bool>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<_internal.internal.profile.Profile_Function.Function>, Bool>);
        var _fns:stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Function.Function>> = (null : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Function.Function>>);
        for (__0 => _l in _p.location) {
            for (__1 => _ln in _l.line) {
                var _fn = _ln.function_;
                if ((((_fn == null) || (_fn : Dynamic).__nil__) || (_seen[_fn] ?? false) : Bool)) {
                    continue;
                };
                _fn.id = (((_fns.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64);
                _fns = (_fns.__append__(_fn));
                _seen[_fn] = true;
            };
        };
        _p.function_ = _fns;
    }
    @:keep
    static public function _remapLocationIDs( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>):Void {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        var _seen = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>, Bool>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>, Bool>);
        var _locs:stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>> = (null : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>);
        for (__0 => _s in _p.sample) {
            for (__1 => _l in _s.location) {
                if ((_seen[_l] ?? false)) {
                    continue;
                };
                _l.id = (((_locs.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64);
                _locs = (_locs.__append__(_l));
                _seen[_l] = true;
            };
        };
        _p.location = _locs;
    }
    @:keep
    static public function filterSamplesByTag( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>, _focus:_internal.internal.profile.Profile_TagMatch.TagMatch, _ignore:_internal.internal.profile.Profile_TagMatch.TagMatch):{ var _0 : Bool; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        var _fm = false, _im = false;
        var _samples = (new stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>>((0 : stdgo.GoInt).toBasic(), (_p.sample.length)) : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>>);
        for (__0 => _s in _p.sample) {
            var __tmp__ = _internal.internal.profile.Profile__focusedSample._focusedSample(_s, _focus, _ignore), _focused:Bool = __tmp__._0, _ignored:Bool = __tmp__._1;
            _fm = (_fm || _focused : Bool);
            _im = (_im || _ignored : Bool);
            if ((_focused && !_ignored : Bool)) {
                _samples = (_samples.__append__(_s));
            };
        };
        _p.sample = _samples;
        return { _0 : _fm, _1 : _im };
    }
    @:keep
    static public function filterSamplesByName( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>, _focus:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _ignore:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _hide:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):{ var _0 : Bool; var _1 : Bool; var _2 : Bool; } {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        var _fm = false, _im = false, _hm = false;
        var _focusOrIgnore = ({
            final x = new stdgo.GoMap.GoUInt64Map<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, Bool>);
        var _hidden = ({
            final x = new stdgo.GoMap.GoUInt64Map<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, Bool>);
        for (__0 => _l in _p.location) {
            if ((((_ignore != null) && ((_ignore : Dynamic).__nil__ == null || !(_ignore : Dynamic).__nil__)) && _l._matchesName(_ignore) : Bool)) {
                _im = true;
                _focusOrIgnore[_l.id] = false;
            } else if ((((_focus == null) || (_focus : Dynamic).__nil__) || _l._matchesName(_focus) : Bool)) {
                _fm = true;
                _focusOrIgnore[_l.id] = true;
            };
            if ((((_hide != null) && ((_hide : Dynamic).__nil__ == null || !(_hide : Dynamic).__nil__)) && _l._matchesName(_hide) : Bool)) {
                _hm = true;
                _l.line = _l._unmatchedLines(_hide);
                if ((_l.line.length) == ((0 : stdgo.GoInt))) {
                    _hidden[_l.id] = true;
                };
            };
        };
        var _s = (new stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>>((0 : stdgo.GoInt).toBasic(), (_p.sample.length)) : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>>);
        for (__1 => _sample in _p.sample) {
            if (_internal.internal.profile.Profile__focusedAndNotIgnored._focusedAndNotIgnored(_sample.location, _focusOrIgnore)) {
                if (((_hidden.length) > (0 : stdgo.GoInt) : Bool)) {
                    var _locs:stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>> = (null : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>);
                    for (__2 => _loc in _sample.location) {
                        if (!(_hidden[_loc.id] ?? false)) {
                            _locs = (_locs.__append__(_loc));
                        };
                    };
                    if ((_locs.length) == ((0 : stdgo.GoInt))) {
                        continue;
                    };
                    _sample.location = _locs;
                };
                _s = (_s.__append__(_sample));
            };
        };
        _p.sample = _s;
        return { _0 : _fm, _1 : _im, _2 : _hm };
    }
    @:keep
    static public function _postDecode( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        var _err:stdgo.Error = (null : stdgo.Error);
        var _mappings = ({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>>);
        for (__0 => _m in _p.mapping) {
            {
                var __tmp__ = _internal.internal.profile.Profile__getString._getString(_p._stringTable, stdgo.Go.pointer(_m._fileX), _err);
                _m.file = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            {
                var __tmp__ = _internal.internal.profile.Profile__getString._getString(_p._stringTable, stdgo.Go.pointer(_m._buildIDX), _err);
                _m.buildID = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            _mappings[_m.id] = _m;
        };
        var _functions = ({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<_internal.internal.profile.Profile_Function.Function>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<_internal.internal.profile.Profile_Function.Function>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<_internal.internal.profile.Profile_Function.Function>>);
        for (__1 => _f in _p.function_) {
            {
                var __tmp__ = _internal.internal.profile.Profile__getString._getString(_p._stringTable, stdgo.Go.pointer(_f._nameX), _err);
                _f.name = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            {
                var __tmp__ = _internal.internal.profile.Profile__getString._getString(_p._stringTable, stdgo.Go.pointer(_f._systemNameX), _err);
                _f.systemName = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            {
                var __tmp__ = _internal.internal.profile.Profile__getString._getString(_p._stringTable, stdgo.Go.pointer(_f._filenameX), _err);
                _f.filename = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            _functions[_f.id] = _f;
        };
        var _locations = ({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>);
        for (__2 => _l in _p.location) {
            _l.mapping = (_mappings[_l._mappingIDX] ?? (null : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>));
            _l._mappingIDX = (0i64 : stdgo.GoUInt64);
            for (_i => _ln in _l.line) {
                {
                    var _id = (_ln._functionIDX : stdgo.GoUInt64);
                    if (_id != ((0i64 : stdgo.GoUInt64))) {
                        _l.line[(_i : stdgo.GoInt)].function_ = (_functions[_id] ?? (null : stdgo.Ref<_internal.internal.profile.Profile_Function.Function>));
                        if (_l.line[(_i : stdgo.GoInt)].function_ == null || (_l.line[(_i : stdgo.GoInt)].function_ : Dynamic).__nil__) {
                            return stdgo._internal.fmt.Fmt_errorf.errorf(("Function ID %d not found" : stdgo.GoString), stdgo.Go.toInterface(_id));
                        };
                        _l.line[(_i : stdgo.GoInt)]._functionIDX = (0i64 : stdgo.GoUInt64);
                    };
                };
            };
            _locations[_l.id] = _l;
        };
        for (__3 => _st in _p.sampleType) {
            {
                var __tmp__ = _internal.internal.profile.Profile__getString._getString(_p._stringTable, stdgo.Go.pointer(_st._typeX), _err);
                _st.type = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            {
                var __tmp__ = _internal.internal.profile.Profile__getString._getString(_p._stringTable, stdgo.Go.pointer(_st._unitX), _err);
                _st.unit = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
        };
        for (__4 => _s in _p.sample) {
            var _labels = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>);
            var _numLabels = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoInt64>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoInt64>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt64>>);
            for (__5 => _l in _s._labelX) {
                var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString);
var _value = __1, _key = __0;
                {
                    var __tmp__ = _internal.internal.profile.Profile__getString._getString(_p._stringTable, stdgo.Go.pointer(_l._keyX), _err);
                    _key = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                if (_l._strX != ((0i64 : stdgo.GoInt64))) {
                    {
                        var __tmp__ = _internal.internal.profile.Profile__getString._getString(_p._stringTable, stdgo.Go.pointer(_l._strX), _err);
                        _value = __tmp__._0?.__copy__();
                        _err = __tmp__._1;
                    };
                    _labels[_key] = ((_labels[_key] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(_value?.__copy__()));
                } else {
                    _numLabels[_key] = ((_numLabels[_key] ?? (null : stdgo.Slice<stdgo.GoInt64>)).__append__(_l._numX));
                };
            };
            if (((_labels.length) > (0 : stdgo.GoInt) : Bool)) {
                _s.label = _labels;
            };
            if (((_numLabels.length) > (0 : stdgo.GoInt) : Bool)) {
                _s.numLabel = _numLabels;
            };
            _s.location = (null : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>);
            for (__6 => _lid in _s._locationIDX) {
                _s.location = (_s.location.__append__((_locations[_lid] ?? (null : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>))));
            };
            _s._locationIDX = (null : stdgo.Slice<stdgo.GoUInt64>);
        };
        {
            var __tmp__ = _internal.internal.profile.Profile__getString._getString(_p._stringTable, stdgo.Go.pointer(_p._dropFramesX), _err);
            _p.dropFrames = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        {
            var __tmp__ = _internal.internal.profile.Profile__getString._getString(_p._stringTable, stdgo.Go.pointer(_p._keepFramesX), _err);
            _p.keepFrames = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        {
            var _pt = _p.periodType;
            if (_pt == null || (_pt : Dynamic).__nil__) {
                _p.periodType = (stdgo.Go.setRef((new _internal.internal.profile.Profile_ValueType_.ValueType_() : _internal.internal.profile.Profile_ValueType_.ValueType_)) : stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>);
            };
        };
        {
            var _pt = _p.periodType;
            if (_pt != null && ((_pt : Dynamic).__nil__ == null || !(_pt : Dynamic).__nil__)) {
                {
                    var __tmp__ = _internal.internal.profile.Profile__getString._getString(_p._stringTable, stdgo.Go.pointer(_pt._typeX), _err);
                    _pt.type = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                {
                    var __tmp__ = _internal.internal.profile.Profile__getString._getString(_p._stringTable, stdgo.Go.pointer(_pt._unitX), _err);
                    _pt.unit = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
            };
        };
        for (__5 => _i in _p._commentX) {
            var _c:stdgo.GoString = ("" : stdgo.GoString);
            {
                var __tmp__ = _internal.internal.profile.Profile__getString._getString(_p._stringTable, stdgo.Go.pointer(_i), _err);
                _c = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            _p.comments = (_p.comments.__append__(_c?.__copy__()));
        };
        _p._commentX = (null : stdgo.Slice<stdgo.GoInt64>);
        {
            var __tmp__ = _internal.internal.profile.Profile__getString._getString(_p._stringTable, stdgo.Go.pointer(_p._defaultSampleTypeX), _err);
            _p.defaultSampleType = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        _p._stringTable = (null : stdgo.Slice<stdgo.GoString>);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _encode( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>, _b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>):Void {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        for (__0 => _x in _p.sampleType) {
            _internal.internal.profile.Profile__encodeMessage._encodeMessage(_b, (1 : stdgo.GoInt), stdgo.Go.asInterface(_x));
        };
        for (__1 => _x in _p.sample) {
            _internal.internal.profile.Profile__encodeMessage._encodeMessage(_b, (2 : stdgo.GoInt), stdgo.Go.asInterface(_x));
        };
        for (__2 => _x in _p.mapping) {
            _internal.internal.profile.Profile__encodeMessage._encodeMessage(_b, (3 : stdgo.GoInt), stdgo.Go.asInterface(_x));
        };
        for (__3 => _x in _p.location) {
            _internal.internal.profile.Profile__encodeMessage._encodeMessage(_b, (4 : stdgo.GoInt), stdgo.Go.asInterface(_x));
        };
        for (__4 => _x in _p.function_) {
            _internal.internal.profile.Profile__encodeMessage._encodeMessage(_b, (5 : stdgo.GoInt), stdgo.Go.asInterface(_x));
        };
        _internal.internal.profile.Profile__encodeStrings._encodeStrings(_b, (6 : stdgo.GoInt), _p._stringTable);
        _internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (7 : stdgo.GoInt), _p._dropFramesX);
        _internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (8 : stdgo.GoInt), _p._keepFramesX);
        _internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (9 : stdgo.GoInt), _p.timeNanos);
        _internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (10 : stdgo.GoInt), _p.durationNanos);
        {
            var _pt = _p.periodType;
            if ((((_pt != null) && ((_pt : Dynamic).__nil__ == null || !(_pt : Dynamic).__nil__)) && (((_pt._typeX != (0i64 : stdgo.GoInt64)) || (_pt._unitX != (0i64 : stdgo.GoInt64)) : Bool)) : Bool)) {
                _internal.internal.profile.Profile__encodeMessage._encodeMessage(_b, (11 : stdgo.GoInt), stdgo.Go.asInterface(_p.periodType));
            };
        };
        _internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (12 : stdgo.GoInt), _p.period);
    }
    @:keep
    static public function _preEncode( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>):Void {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        var _strings = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        _internal.internal.profile.Profile__addString._addString(_strings, stdgo.Go.str()?.__copy__());
        for (__0 => _st in _p.sampleType) {
            _st._typeX = _internal.internal.profile.Profile__addString._addString(_strings, _st.type?.__copy__());
            _st._unitX = _internal.internal.profile.Profile__addString._addString(_strings, _st.unit?.__copy__());
        };
        for (__1 => _s in _p.sample) {
            _s._labelX = (null : stdgo.Slice<_internal.internal.profile.Profile_Label.Label>);
            var _keys:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            for (_k => _ in _s.label) {
                _keys = (_keys.__append__(_k?.__copy__()));
            };
            stdgo._internal.sort.Sort_strings.strings(_keys);
            for (__2 => _k in _keys) {
                var _vs = (_s.label[_k] ?? (null : stdgo.Slice<stdgo.GoString>));
                for (__3 => _v in _vs) {
                    _s._labelX = (_s._labelX.__append__(({ _keyX : _internal.internal.profile.Profile__addString._addString(_strings, _k?.__copy__()), _strX : _internal.internal.profile.Profile__addString._addString(_strings, _v?.__copy__()) } : _internal.internal.profile.Profile_Label.Label)));
                };
            };
            var _numKeys:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            for (_k => _ in _s.numLabel) {
                _numKeys = (_numKeys.__append__(_k?.__copy__()));
            };
            stdgo._internal.sort.Sort_strings.strings(_numKeys);
            for (__3 => _k in _numKeys) {
                var _vs = (_s.numLabel[_k] ?? (null : stdgo.Slice<stdgo.GoInt64>));
                for (__4 => _v in _vs) {
                    _s._labelX = (_s._labelX.__append__(({ _keyX : _internal.internal.profile.Profile__addString._addString(_strings, _k?.__copy__()), _numX : _v } : _internal.internal.profile.Profile_Label.Label)));
                };
            };
            _s._locationIDX = (null : stdgo.Slice<stdgo.GoUInt64>);
            for (__4 => _l in _s.location) {
                _s._locationIDX = (_s._locationIDX.__append__(_l.id));
            };
        };
        for (__2 => _m in _p.mapping) {
            _m._fileX = _internal.internal.profile.Profile__addString._addString(_strings, _m.file?.__copy__());
            _m._buildIDX = _internal.internal.profile.Profile__addString._addString(_strings, _m.buildID?.__copy__());
        };
        for (__3 => _l in _p.location) {
            for (_i => _ln in _l.line) {
                if (_ln.function_ != null && ((_ln.function_ : Dynamic).__nil__ == null || !(_ln.function_ : Dynamic).__nil__)) {
                    _l.line[(_i : stdgo.GoInt)]._functionIDX = _ln.function_.id;
                } else {
                    _l.line[(_i : stdgo.GoInt)]._functionIDX = (0i64 : stdgo.GoUInt64);
                };
            };
            if (_l.mapping != null && ((_l.mapping : Dynamic).__nil__ == null || !(_l.mapping : Dynamic).__nil__)) {
                _l._mappingIDX = _l.mapping.id;
            } else {
                _l._mappingIDX = (0i64 : stdgo.GoUInt64);
            };
        };
        for (__4 => _f in _p.function_) {
            _f._nameX = _internal.internal.profile.Profile__addString._addString(_strings, _f.name?.__copy__());
            _f._systemNameX = _internal.internal.profile.Profile__addString._addString(_strings, _f.systemName?.__copy__());
            _f._filenameX = _internal.internal.profile.Profile__addString._addString(_strings, _f.filename?.__copy__());
        };
        _p._dropFramesX = _internal.internal.profile.Profile__addString._addString(_strings, _p.dropFrames?.__copy__());
        _p._keepFramesX = _internal.internal.profile.Profile__addString._addString(_strings, _p.keepFrames?.__copy__());
        {
            var _pt = _p.periodType;
            if (_pt != null && ((_pt : Dynamic).__nil__ == null || !(_pt : Dynamic).__nil__)) {
                _pt._typeX = _internal.internal.profile.Profile__addString._addString(_strings, _pt.type?.__copy__());
                _pt._unitX = _internal.internal.profile.Profile__addString._addString(_strings, _pt.unit?.__copy__());
            };
        };
        _p._stringTable = (new stdgo.Slice<stdgo.GoString>((_strings.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_s => _i in _strings) {
            _p._stringTable[(_i : stdgo.GoInt)] = _s?.__copy__();
        };
    }
    @:keep
    static public function _decoder( _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>):stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder> {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = _p;
        return _internal.internal.profile.Profile__profileDecoder._profileDecoder;
    }
}
