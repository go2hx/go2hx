package stdgo._internal.internal.profile;
@:keep @:allow(stdgo._internal.internal.profile.Profile.Profile_asInterface) class Profile_static_extension {
    @:keep
    @:tdfield
    static public function removeUninteresting( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        var __0:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>), __1:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
var _drop = __1, _keep = __0;
        var _err:stdgo.Error = (null : stdgo.Error);
        if ((@:checkr _p ?? throw "null pointer dereference").dropFrames != ((stdgo.Go.str() : stdgo.GoString))) {
            {
                {
                    var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(((("^(" : stdgo.GoString) + (@:checkr _p ?? throw "null pointer dereference").dropFrames?.__copy__() : stdgo.GoString) + (")$" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    _drop = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("failed to compile regexp %s: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference").dropFrames), stdgo.Go.toInterface(_err));
                };
            };
            if ((@:checkr _p ?? throw "null pointer dereference").keepFrames != ((stdgo.Go.str() : stdgo.GoString))) {
                {
                    {
                        var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(((("^(" : stdgo.GoString) + (@:checkr _p ?? throw "null pointer dereference").keepFrames?.__copy__() : stdgo.GoString) + (")$" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                        _keep = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("failed to compile regexp %s: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference").keepFrames), stdgo.Go.toInterface(_err));
                    };
                };
            };
            @:check2r _p.prune(_drop, _keep);
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function prune( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>, _dropRx:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _keepRx:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        var _prune = (({
            final x = new stdgo.GoMap.GoUInt64Map<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, Bool>) : stdgo.GoMap<stdgo.GoUInt64, Bool>);
        var _pruneBeneath = (({
            final x = new stdgo.GoMap.GoUInt64Map<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, Bool>) : stdgo.GoMap<stdgo.GoUInt64, Bool>);
        for (__0 => _loc in (@:checkr _p ?? throw "null pointer dereference").location) {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                _i = (((@:checkr _loc ?? throw "null pointer dereference").line.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    {
                        var _fn = (@:checkr _loc ?? throw "null pointer dereference").line[(_i : stdgo.GoInt)].function_;
                        if (((_fn != null && ((_fn : Dynamic).__nil__ == null || !(_fn : Dynamic).__nil__)) && ((@:checkr _fn ?? throw "null pointer dereference").name != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                            var _funcName = ((@:checkr _fn ?? throw "null pointer dereference").name.__copy__() : stdgo.GoString);
                            if (_funcName[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
                                _funcName = (_funcName.__slice__((1 : stdgo.GoInt)) : stdgo.GoString).__copy__();
                            };
                            if (@:check2r _dropRx.matchString(_funcName.__copy__())) {
                                if (((_keepRx == null || (_keepRx : Dynamic).__nil__) || !@:check2r _keepRx.matchString(_funcName.__copy__()) : Bool)) {
                                    break;
                                };
                            };
                        };
                    };
                    _i--;
                };
            };
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _pruneBeneath[(@:checkr _loc ?? throw "null pointer dereference").iD] = true;
                if (_i == ((((@:checkr _loc ?? throw "null pointer dereference").line.length) - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    _prune[(@:checkr _loc ?? throw "null pointer dereference").iD] = true;
                } else {
                    (@:checkr _loc ?? throw "null pointer dereference").line = ((@:checkr _loc ?? throw "null pointer dereference").line.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.internal.profile.Profile_line.Line>);
                };
            };
        };
        for (__1 => _sample in (@:checkr _p ?? throw "null pointer dereference").sample) {
            var _foundUser = (false : Bool);
            {
                var _i = (((@:checkr _sample ?? throw "null pointer dereference").location.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    var _id = ((@:checkr (@:checkr _sample ?? throw "null pointer dereference").location[(_i : stdgo.GoInt)] ?? throw "null pointer dereference").iD : stdgo.GoUInt64);
if ((!(_prune[_id] ?? false) && !(_pruneBeneath[_id] ?? false) : Bool)) {
                        _foundUser = true;
                        {
                            _i--;
                            continue;
                        };
                    };
if (!_foundUser) {
                        {
                            _i--;
                            continue;
                        };
                    };
if ((_prune[_id] ?? false)) {
                        (@:checkr _sample ?? throw "null pointer dereference").location = ((@:checkr _sample ?? throw "null pointer dereference").location.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
                        break;
                    };
if ((_pruneBeneath[_id] ?? false)) {
                        (@:checkr _sample ?? throw "null pointer dereference").location = ((@:checkr _sample ?? throw "null pointer dereference").location.__slice__(_i) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
                        break;
                    };
                    _i--;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function scaleN( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>, _ratios:stdgo.Slice<stdgo.GoFloat64>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        if (((@:checkr _p ?? throw "null pointer dereference").sampleType.length) != ((_ratios.length))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("mismatched scale ratios, got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface((_ratios.length)), stdgo.Go.toInterface(((@:checkr _p ?? throw "null pointer dereference").sampleType.length)));
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
        for (__1 => _s in (@:checkr _p ?? throw "null pointer dereference").sample) {
            for (_i => _v in (@:checkr _s ?? throw "null pointer dereference").value) {
                if (_ratios[(_i : stdgo.GoInt)] != (1 : stdgo.GoFloat64)) {
                    (@:checkr _s ?? throw "null pointer dereference").value[(_i : stdgo.GoInt)] = (((_v : stdgo.GoFloat64) * _ratios[(_i : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoInt64);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function scale( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>, _ratio:stdgo.GoFloat64):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        if (_ratio == (1 : stdgo.GoFloat64)) {
            return;
        };
        var _ratios = (new stdgo.Slice<stdgo.GoFloat64>(((@:checkr _p ?? throw "null pointer dereference").sampleType.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        for (_i => _ in (@:checkr _p ?? throw "null pointer dereference").sampleType) {
            _ratios[(_i : stdgo.GoInt)] = _ratio;
        };
        @:check2r _p.scaleN(_ratios);
    }
    @:keep
    @:tdfield
    static public function empty( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        return ((@:checkr _p ?? throw "null pointer dereference").sample.length) == ((0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function demangle( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>, _d:stdgo._internal.internal.profile.Profile_demangler.Demangler):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        var _names:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__0 => _fn in (@:checkr _p ?? throw "null pointer dereference").function_) {
            _names = (_names.__append__((@:checkr _fn ?? throw "null pointer dereference").systemName?.__copy__()));
        };
        var __tmp__ = _d(_names), _demangled:stdgo.GoMap<stdgo.GoString, stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        for (__1 => _fn in (@:checkr _p ?? throw "null pointer dereference").function_) {
            {
                var __tmp__ = (_demangled != null && _demangled.__exists__((@:checkr _fn ?? throw "null pointer dereference").systemName?.__copy__()) ? { _0 : _demangled[(@:checkr _fn ?? throw "null pointer dereference").systemName?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _dd:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    (@:checkr _fn ?? throw "null pointer dereference").name = _dd?.__copy__();
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function copy( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>):stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        @:check2r _p._preEncode();
        var _b = stdgo._internal.internal.profile.Profile__marshal._marshal(stdgo.Go.asInterface(_p));
        var _pp = (stdgo.Go.setRef((new stdgo._internal.internal.profile.Profile_profile.Profile() : stdgo._internal.internal.profile.Profile_profile.Profile)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        {
            var _err = (stdgo._internal.internal.profile.Profile__unmarshal._unmarshal(_b, stdgo.Go.asInterface(_pp)) : stdgo.Error);
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
        };
        {
            var _err = (@:check2r _pp._postDecode() : stdgo.Error);
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
        };
        return _pp;
    }
    @:keep
    @:tdfield
    static public function hasFileLines( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        for (__0 => _l in (@:checkr _p ?? throw "null pointer dereference").location) {
            if ((((@:checkr _l ?? throw "null pointer dereference").mapping == null || ((@:checkr _l ?? throw "null pointer dereference").mapping : Dynamic).__nil__) || ((!(@:checkr (@:checkr _l ?? throw "null pointer dereference").mapping ?? throw "null pointer dereference").hasFilenames || !(@:checkr (@:checkr _l ?? throw "null pointer dereference").mapping ?? throw "null pointer dereference").hasLineNumbers : Bool)) : Bool)) {
                return false;
            };
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function hasFunctions( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        for (__0 => _l in (@:checkr _p ?? throw "null pointer dereference").location) {
            if ((((@:checkr _l ?? throw "null pointer dereference").mapping == null || ((@:checkr _l ?? throw "null pointer dereference").mapping : Dynamic).__nil__) || !(@:checkr (@:checkr _l ?? throw "null pointer dereference").mapping ?? throw "null pointer dereference").hasFunctions : Bool)) {
                return false;
            };
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function compatible( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>, _pb:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        if (!stdgo._internal.internal.profile.Profile__compatiblevaluetypes._compatibleValueTypes((@:checkr _p ?? throw "null pointer dereference").periodType, (@:checkr _pb ?? throw "null pointer dereference").periodType)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("incompatible period types %v and %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _p ?? throw "null pointer dereference").periodType)), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _pb ?? throw "null pointer dereference").periodType)));
        };
        if (((@:checkr _p ?? throw "null pointer dereference").sampleType.length) != (((@:checkr _pb ?? throw "null pointer dereference").sampleType.length))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("incompatible sample types %v and %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference").sampleType), stdgo.Go.toInterface((@:checkr _pb ?? throw "null pointer dereference").sampleType));
        };
        for (_i => _ in (@:checkr _p ?? throw "null pointer dereference").sampleType) {
            if (!stdgo._internal.internal.profile.Profile__compatiblevaluetypes._compatibleValueTypes((@:checkr _p ?? throw "null pointer dereference").sampleType[(_i : stdgo.GoInt)], (@:checkr _pb ?? throw "null pointer dereference").sampleType[(_i : stdgo.GoInt)])) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("incompatible sample types %v and %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference").sampleType), stdgo.Go.toInterface((@:checkr _pb ?? throw "null pointer dereference").sampleType));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function merge( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>, _pb:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>, _r:stdgo.GoFloat64):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        {
            var _err = (@:check2r _p.compatible(_pb) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _pb = @:check2r _pb.copy();
        if (((@:checkr _pb ?? throw "null pointer dereference").period > (@:checkr _p ?? throw "null pointer dereference").period : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference").period = (@:checkr _pb ?? throw "null pointer dereference").period;
        };
        (@:checkr _p ?? throw "null pointer dereference").durationNanos = ((@:checkr _p ?? throw "null pointer dereference").durationNanos + ((@:checkr _pb ?? throw "null pointer dereference").durationNanos) : stdgo.GoInt64);
        (@:checkr _p ?? throw "null pointer dereference").mapping = ((@:checkr _p ?? throw "null pointer dereference").mapping.__append__(...((@:checkr _pb ?? throw "null pointer dereference").mapping : Array<stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>>)));
        for (_i => _m in (@:checkr _p ?? throw "null pointer dereference").mapping) {
            (@:checkr _m ?? throw "null pointer dereference").iD = ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64);
        };
        (@:checkr _p ?? throw "null pointer dereference").location = ((@:checkr _p ?? throw "null pointer dereference").location.__append__(...((@:checkr _pb ?? throw "null pointer dereference").location : Array<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>)));
        for (_i => _l in (@:checkr _p ?? throw "null pointer dereference").location) {
            (@:checkr _l ?? throw "null pointer dereference").iD = ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64);
        };
        (@:checkr _p ?? throw "null pointer dereference").function_ = ((@:checkr _p ?? throw "null pointer dereference").function_.__append__(...((@:checkr _pb ?? throw "null pointer dereference").function_ : Array<stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>)));
        for (_i => _f in (@:checkr _p ?? throw "null pointer dereference").function_) {
            (@:checkr _f ?? throw "null pointer dereference").iD = ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64);
        };
        if (_r != (1 : stdgo.GoFloat64)) {
            for (__0 => _s in (@:checkr _pb ?? throw "null pointer dereference").sample) {
                for (_i => _v in (@:checkr _s ?? throw "null pointer dereference").value) {
                    (@:checkr _s ?? throw "null pointer dereference").value[(_i : stdgo.GoInt)] = (((_v : stdgo.GoFloat64) * _r : stdgo.GoFloat64) : stdgo.GoInt64);
                };
            };
        };
        (@:checkr _p ?? throw "null pointer dereference").sample = ((@:checkr _p ?? throw "null pointer dereference").sample.__append__(...((@:checkr _pb ?? throw "null pointer dereference").sample : Array<stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>>)));
        return @:check2r _p.checkValid();
    }
    @:keep
    @:tdfield
    static public function string( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        var _ss = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), ((((@:checkr _p ?? throw "null pointer dereference").sample.length) + ((@:checkr _p ?? throw "null pointer dereference").mapping.length) : stdgo.GoInt) + ((@:checkr _p ?? throw "null pointer dereference").location.length) : stdgo.GoInt)).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _pt = (@:checkr _p ?? throw "null pointer dereference").periodType;
            if ((_pt != null && ((_pt : Dynamic).__nil__ == null || !(_pt : Dynamic).__nil__))) {
                _ss = (_ss.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("PeriodType: %s %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _pt ?? throw "null pointer dereference").type), stdgo.Go.toInterface((@:checkr _pt ?? throw "null pointer dereference").unit))?.__copy__()));
            };
        };
        _ss = (_ss.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("Period: %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference").period))?.__copy__()));
        if ((@:checkr _p ?? throw "null pointer dereference").timeNanos != ((0i64 : stdgo.GoInt64))) {
            _ss = (_ss.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("Time: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.time.Time_unix.unix((0i64 : stdgo.GoInt64), (@:checkr _p ?? throw "null pointer dereference").timeNanos))))?.__copy__()));
        };
        if ((@:checkr _p ?? throw "null pointer dereference").durationNanos != ((0i64 : stdgo.GoInt64))) {
            _ss = (_ss.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("Duration: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(((@:checkr _p ?? throw "null pointer dereference").durationNanos : stdgo._internal.time.Time_duration.Duration))))?.__copy__()));
        };
        _ss = (_ss.__append__((("Samples:" : stdgo.GoString) : stdgo.GoString)));
        var _sh1:stdgo.GoString = ("" : stdgo.GoString);
        for (__0 => _s in (@:checkr _p ?? throw "null pointer dereference").sampleType) {
            _sh1 = (_sh1 + stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s/%s " : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").type), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").unit))?.__copy__() : stdgo.GoString)?.__copy__();
        };
        _ss = (_ss.__append__(stdgo._internal.strings.Strings_trimspace.trimSpace(_sh1?.__copy__())?.__copy__()));
        for (__1 => _s in (@:checkr _p ?? throw "null pointer dereference").sample) {
            var _sv:stdgo.GoString = ("" : stdgo.GoString);
            for (__2 => _v in (@:checkr _s ?? throw "null pointer dereference").value) {
                _sv = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s %10d" : stdgo.GoString), stdgo.Go.toInterface(_sv), stdgo.Go.toInterface(_v))?.__copy__();
            };
            _sv = (_sv + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            for (__3 => _l in (@:checkr _s ?? throw "null pointer dereference").location) {
                _sv = (_sv + stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d " : stdgo.GoString), stdgo.Go.toInterface((@:checkr _l ?? throw "null pointer dereference").iD))?.__copy__() : stdgo.GoString)?.__copy__();
            };
            _ss = (_ss.__append__(_sv?.__copy__()));
            {};
            if ((((@:checkr _s ?? throw "null pointer dereference").label.length) > (0 : stdgo.GoInt) : Bool)) {
                var _ls = (("                " : stdgo.GoString) : stdgo.GoString);
                for (_k => _v in (@:checkr _s ?? throw "null pointer dereference").label) {
                    _ls = (_ls + stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s:%v " : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v))?.__copy__() : stdgo.GoString)?.__copy__();
                };
                _ss = (_ss.__append__(_ls?.__copy__()));
            };
            if ((((@:checkr _s ?? throw "null pointer dereference").numLabel.length) > (0 : stdgo.GoInt) : Bool)) {
                var _ls = (("                " : stdgo.GoString) : stdgo.GoString);
                for (_k => _v in (@:checkr _s ?? throw "null pointer dereference").numLabel) {
                    _ls = (_ls + stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s:%v " : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v))?.__copy__() : stdgo.GoString)?.__copy__();
                };
                _ss = (_ss.__append__(_ls?.__copy__()));
            };
        };
        _ss = (_ss.__append__((("Locations" : stdgo.GoString) : stdgo.GoString)));
        for (__2 => _l in (@:checkr _p ?? throw "null pointer dereference").location) {
            var _locStr = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%6d: %#x " : stdgo.GoString), stdgo.Go.toInterface((@:checkr _l ?? throw "null pointer dereference").iD), stdgo.Go.toInterface((@:checkr _l ?? throw "null pointer dereference").address))?.__copy__() : stdgo.GoString);
            {
                var _m = (@:checkr _l ?? throw "null pointer dereference").mapping;
                if ((_m != null && ((_m : Dynamic).__nil__ == null || !(_m : Dynamic).__nil__))) {
                    _locStr = (_locStr + stdgo._internal.fmt.Fmt_sprintf.sprintf(("M=%d " : stdgo.GoString), stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference").iD))?.__copy__() : stdgo.GoString)?.__copy__();
                };
            };
            if (((@:checkr _l ?? throw "null pointer dereference").line.length) == ((0 : stdgo.GoInt))) {
                _ss = (_ss.__append__(_locStr?.__copy__()));
            };
            for (_li => _ in (@:checkr _l ?? throw "null pointer dereference").line) {
                var _lnStr = (("??" : stdgo.GoString) : stdgo.GoString);
                {
                    var _fn = (@:checkr _l ?? throw "null pointer dereference").line[(_li : stdgo.GoInt)].function_;
                    if ((_fn != null && ((_fn : Dynamic).__nil__ == null || !(_fn : Dynamic).__nil__))) {
                        _lnStr = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s %s:%d s=%d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _fn ?? throw "null pointer dereference").name), stdgo.Go.toInterface((@:checkr _fn ?? throw "null pointer dereference").filename), stdgo.Go.toInterface((@:checkr _l ?? throw "null pointer dereference").line[(_li : stdgo.GoInt)].line), stdgo.Go.toInterface((@:checkr _fn ?? throw "null pointer dereference").startLine))?.__copy__();
                        if ((@:checkr _fn ?? throw "null pointer dereference").name != ((@:checkr _fn ?? throw "null pointer dereference").systemName)) {
                            _lnStr = (((_lnStr + ("(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _fn ?? throw "null pointer dereference").systemName?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        };
                    };
                };
                _ss = (_ss.__append__((_locStr + _lnStr?.__copy__() : stdgo.GoString)?.__copy__()));
                _locStr = ("             " : stdgo.GoString);
            };
        };
        _ss = (_ss.__append__((("Mappings" : stdgo.GoString) : stdgo.GoString)));
        for (__3 => _m in (@:checkr _p ?? throw "null pointer dereference").mapping) {
            var _bits = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if ((@:checkr _m ?? throw "null pointer dereference").hasFunctions) {
                _bits = (_bits + (("[FN]" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            if ((@:checkr _m ?? throw "null pointer dereference").hasFilenames) {
                _bits = (_bits + (("[FL]" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            if ((@:checkr _m ?? throw "null pointer dereference").hasLineNumbers) {
                _bits = (_bits + (("[LN]" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            if ((@:checkr _m ?? throw "null pointer dereference").hasInlineFrames) {
                _bits = (_bits + (("[IN]" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            _ss = (_ss.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d: %#x/%#x/%#x %s %s %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference").iD), stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference").start), stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference").limit), stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference").offset), stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference").file), stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference").buildID), stdgo.Go.toInterface(_bits))?.__copy__()));
        };
        return (stdgo._internal.strings.Strings_join.join(_ss, ("\n" : stdgo.GoString)) + ("\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function aggregate( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>, _inlineFrame:Bool, _function:Bool, _filename:Bool, _linenumber:Bool, _address:Bool):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        for (__0 => _m in (@:checkr _p ?? throw "null pointer dereference").mapping) {
            (@:checkr _m ?? throw "null pointer dereference").hasInlineFrames = ((@:checkr _m ?? throw "null pointer dereference").hasInlineFrames && _inlineFrame : Bool);
            (@:checkr _m ?? throw "null pointer dereference").hasFunctions = ((@:checkr _m ?? throw "null pointer dereference").hasFunctions && _function : Bool);
            (@:checkr _m ?? throw "null pointer dereference").hasFilenames = ((@:checkr _m ?? throw "null pointer dereference").hasFilenames && _filename : Bool);
            (@:checkr _m ?? throw "null pointer dereference").hasLineNumbers = ((@:checkr _m ?? throw "null pointer dereference").hasLineNumbers && _linenumber : Bool);
        };
        if ((!_function || !_filename : Bool)) {
            for (__1 => _f in (@:checkr _p ?? throw "null pointer dereference").function_) {
                if (!_function) {
                    (@:checkr _f ?? throw "null pointer dereference").name = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    (@:checkr _f ?? throw "null pointer dereference").systemName = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                };
                if (!_filename) {
                    (@:checkr _f ?? throw "null pointer dereference").filename = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                };
            };
        };
        if (((!_inlineFrame || !_address : Bool) || !_linenumber : Bool)) {
            for (__1 => _l in (@:checkr _p ?? throw "null pointer dereference").location) {
                if ((!_inlineFrame && (((@:checkr _l ?? throw "null pointer dereference").line.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
                    (@:checkr _l ?? throw "null pointer dereference").line = ((@:checkr _l ?? throw "null pointer dereference").line.__slice__((((@:checkr _l ?? throw "null pointer dereference").line.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.internal.profile.Profile_line.Line>);
                };
                if (!_linenumber) {
                    for (_i => _ in (@:checkr _l ?? throw "null pointer dereference").line) {
                        (@:checkr _l ?? throw "null pointer dereference").line[(_i : stdgo.GoInt)].line = (0i64 : stdgo.GoInt64);
                    };
                };
                if (!_address) {
                    (@:checkr _l ?? throw "null pointer dereference").address = (0i64 : stdgo.GoUInt64);
                };
            };
        };
        return @:check2r _p.checkValid();
    }
    @:keep
    @:tdfield
    static public function checkValid( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        var _sampleLen = ((@:checkr _p ?? throw "null pointer dereference").sampleType.length : stdgo.GoInt);
        if (((_sampleLen == (0 : stdgo.GoInt)) && ((@:checkr _p ?? throw "null pointer dereference").sample.length != (0 : stdgo.GoInt)) : Bool)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("missing sample type information" : stdgo.GoString));
        };
        for (__0 => _s in (@:checkr _p ?? throw "null pointer dereference").sample) {
            if (((@:checkr _s ?? throw "null pointer dereference").value.length) != (_sampleLen)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("mismatch: sample has: %d values vs. %d types" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr _s ?? throw "null pointer dereference").value.length)), stdgo.Go.toInterface(((@:checkr _p ?? throw "null pointer dereference").sampleType.length)));
            };
        };
        var _mappings = (({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>>) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>>);
        for (__1 => _m in (@:checkr _p ?? throw "null pointer dereference").mapping) {
            if ((@:checkr _m ?? throw "null pointer dereference").iD == ((0i64 : stdgo.GoUInt64))) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("found mapping with reserved ID=0" : stdgo.GoString));
            };
            if (((_mappings[(@:checkr _m ?? throw "null pointer dereference").iD] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>)) != null && ((_mappings[(@:checkr _m ?? throw "null pointer dereference").iD] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>) : Dynamic).__nil__ == null || !(_mappings[(@:checkr _m ?? throw "null pointer dereference").iD] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>) : Dynamic).__nil__))) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("multiple mappings with same id: %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference").iD));
            };
            _mappings[(@:checkr _m ?? throw "null pointer dereference").iD] = _m;
        };
        var _functions = (({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>);
        for (__2 => _f in (@:checkr _p ?? throw "null pointer dereference").function_) {
            if ((@:checkr _f ?? throw "null pointer dereference").iD == ((0i64 : stdgo.GoUInt64))) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("found function with reserved ID=0" : stdgo.GoString));
            };
            if (((_functions[(@:checkr _f ?? throw "null pointer dereference").iD] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>)) != null && ((_functions[(@:checkr _f ?? throw "null pointer dereference").iD] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>) : Dynamic).__nil__ == null || !(_functions[(@:checkr _f ?? throw "null pointer dereference").iD] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>) : Dynamic).__nil__))) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("multiple functions with same id: %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference").iD));
            };
            _functions[(@:checkr _f ?? throw "null pointer dereference").iD] = _f;
        };
        var _locations = (({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
        for (__3 => _l in (@:checkr _p ?? throw "null pointer dereference").location) {
            if ((@:checkr _l ?? throw "null pointer dereference").iD == ((0i64 : stdgo.GoUInt64))) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("found location with reserved id=0" : stdgo.GoString));
            };
            if (((_locations[(@:checkr _l ?? throw "null pointer dereference").iD] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>)) != null && ((_locations[(@:checkr _l ?? throw "null pointer dereference").iD] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>) : Dynamic).__nil__ == null || !(_locations[(@:checkr _l ?? throw "null pointer dereference").iD] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>) : Dynamic).__nil__))) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("multiple locations with same id: %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _l ?? throw "null pointer dereference").iD));
            };
            _locations[(@:checkr _l ?? throw "null pointer dereference").iD] = _l;
            {
                var _m = (@:checkr _l ?? throw "null pointer dereference").mapping;
                if ((_m != null && ((_m : Dynamic).__nil__ == null || !(_m : Dynamic).__nil__))) {
                    if ((((@:checkr _m ?? throw "null pointer dereference").iD == (0i64 : stdgo.GoUInt64)) || ((_mappings[(@:checkr _m ?? throw "null pointer dereference").iD] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>)) != _m) : Bool)) {
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("inconsistent mapping %p: %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_m)), stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference").iD));
                    };
                };
            };
            for (__4 => _ln in (@:checkr _l ?? throw "null pointer dereference").line) {
                {
                    var _f = _ln.function_;
                    if ((_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__))) {
                        if ((((@:checkr _f ?? throw "null pointer dereference").iD == (0i64 : stdgo.GoUInt64)) || ((_functions[(@:checkr _f ?? throw "null pointer dereference").iD] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>)) != _f) : Bool)) {
                            return stdgo._internal.fmt.Fmt_errorf.errorf(("inconsistent function %p: %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference").iD));
                        };
                    };
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function write( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2r _p._preEncode();
            var _b = stdgo._internal.internal.profile.Profile__marshal._marshal(stdgo.Go.asInterface(_p));
            var _zw = stdgo._internal.compress.gzip.Gzip_newwriter.newWriter(_w);
            {
                final __f__ = @:check2r _zw.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = @:check2r _zw.write(_b), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _err;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _setMain( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < ((@:checkr _p ?? throw "null pointer dereference").mapping.length) : Bool)) {
                var _file = (stdgo._internal.strings.Strings_trimspace.trimSpace(stdgo._internal.strings.Strings_replaceall.replaceAll((@:checkr (@:checkr _p ?? throw "null pointer dereference").mapping[(_i : stdgo.GoInt)] ?? throw "null pointer dereference").file.__copy__(), ("(deleted)" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString).__copy__()).__copy__()).__copy__() : stdgo.GoString);
if ((_file.length) == ((0 : stdgo.GoInt))) {
                    {
                        _i++;
                        continue;
                    };
                };
if (((@:check2r stdgo._internal.internal.profile.Profile__librx._libRx.findStringSubmatch(_file.__copy__()).length) > (0 : stdgo.GoInt) : Bool)) {
                    {
                        _i++;
                        continue;
                    };
                };
if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_file.__copy__(), ("[" : stdgo.GoString))) {
                    {
                        _i++;
                        continue;
                    };
                };
{
                    final __tmp__0 = (@:checkr _p ?? throw "null pointer dereference").mapping[(0 : stdgo.GoInt)];
                    final __tmp__1 = (@:checkr _p ?? throw "null pointer dereference").mapping[(_i : stdgo.GoInt)];
                    final __tmp__2 = (@:checkr _p ?? throw "null pointer dereference").mapping;
                    final __tmp__3 = (_i : stdgo.GoInt);
                    final __tmp__4 = (@:checkr _p ?? throw "null pointer dereference").mapping;
                    final __tmp__5 = (0 : stdgo.GoInt);
                    __tmp__2[__tmp__3] = __tmp__0;
                    __tmp__4[__tmp__5] = __tmp__1;
                };
break;
                _i++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _compatible( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>, _pb:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        if (!stdgo._internal.internal.profile.Profile__equalvaluetype._equalValueType((@:checkr _p ?? throw "null pointer dereference").periodType, (@:checkr _pb ?? throw "null pointer dereference").periodType)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("incompatible period types %v and %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _p ?? throw "null pointer dereference").periodType)), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _pb ?? throw "null pointer dereference").periodType)));
        };
        if (((@:checkr _p ?? throw "null pointer dereference").sampleType.length) != (((@:checkr _pb ?? throw "null pointer dereference").sampleType.length))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("incompatible sample types %v and %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference").sampleType), stdgo.Go.toInterface((@:checkr _pb ?? throw "null pointer dereference").sampleType));
        };
        for (_i => _ in (@:checkr _p ?? throw "null pointer dereference").sampleType) {
            if (!stdgo._internal.internal.profile.Profile__equalvaluetype._equalValueType((@:checkr _p ?? throw "null pointer dereference").sampleType[(_i : stdgo.GoInt)], (@:checkr _pb ?? throw "null pointer dereference").sampleType[(_i : stdgo.GoInt)])) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("incompatible sample types %v and %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference").sampleType), stdgo.Go.toInterface((@:checkr _pb ?? throw "null pointer dereference").sampleType));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function normalize( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>, _pb:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        {
            var _err = (@:check2r _p._compatible(_pb) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _baseVals = (new stdgo.Slice<stdgo.GoInt64>(((@:checkr _p ?? throw "null pointer dereference").sampleType.length : stdgo.GoInt).toBasic(), 0).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        for (__0 => _s in (@:checkr _pb ?? throw "null pointer dereference").sample) {
            for (_i => _v in (@:checkr _s ?? throw "null pointer dereference").value) {
                _baseVals[(_i : stdgo.GoInt)] = (_baseVals[(_i : stdgo.GoInt)] + (_v) : stdgo.GoInt64);
            };
        };
        var _srcVals = (new stdgo.Slice<stdgo.GoInt64>(((@:checkr _p ?? throw "null pointer dereference").sampleType.length : stdgo.GoInt).toBasic(), 0).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        for (__1 => _s in (@:checkr _p ?? throw "null pointer dereference").sample) {
            for (_i => _v in (@:checkr _s ?? throw "null pointer dereference").value) {
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
        @:check2r _p.scaleN(_normScale);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _addLegacyFrameInfo( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        if (((stdgo._internal.internal.profile.Profile__isprofiletype._isProfileType(_p, stdgo._internal.internal.profile.Profile__heapzsampletypes._heapzSampleTypes) || stdgo._internal.internal.profile.Profile__isprofiletype._isProfileType(_p, stdgo._internal.internal.profile.Profile__heapzinusesampletypes._heapzInUseSampleTypes) : Bool) || stdgo._internal.internal.profile.Profile__isprofiletype._isProfileType(_p, stdgo._internal.internal.profile.Profile__heapzallocsampletypes._heapzAllocSampleTypes) : Bool)) {
            {
                final __tmp__0 = stdgo._internal.internal.profile.Profile__allocrxstr._allocRxStr?.__copy__();
                final __tmp__1 = stdgo._internal.internal.profile.Profile__allocskiprxstr._allocSkipRxStr?.__copy__();
                (@:checkr _p ?? throw "null pointer dereference").dropFrames = __tmp__0;
                (@:checkr _p ?? throw "null pointer dereference").keepFrames = __tmp__1;
            };
        } else if (stdgo._internal.internal.profile.Profile__isprofiletype._isProfileType(_p, stdgo._internal.internal.profile.Profile__contentionzsampletypes._contentionzSampleTypes)) {
            {
                final __tmp__0 = stdgo._internal.internal.profile.Profile__lockrxstr._lockRxStr?.__copy__();
                final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                (@:checkr _p ?? throw "null pointer dereference").dropFrames = __tmp__0;
                (@:checkr _p ?? throw "null pointer dereference").keepFrames = __tmp__1;
            };
        } else {
            {
                final __tmp__0 = stdgo._internal.internal.profile.Profile__cpuprofilerrxstr._cpuProfilerRxStr?.__copy__();
                final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                (@:checkr _p ?? throw "null pointer dereference").dropFrames = __tmp__0;
                (@:checkr _p ?? throw "null pointer dereference").keepFrames = __tmp__1;
            };
        };
    }
    @:keep
    @:tdfield
    static public function parseMemoryMap( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>, _rd:stdgo._internal.io.Io_reader.Reader):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        var _b = stdgo._internal.bufio.Bufio_newreader.newReader(_rd);
        var _attrs:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _r:stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer> = (null : stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer>);
        {};
        while (true) {
            var __tmp__ = @:check2r _b.readString((10 : stdgo.GoUInt8)), _l:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    return _err;
                };
                if (_l == ((stdgo.Go.str() : stdgo.GoString))) {
                    break;
                };
            };
            {
                _l = stdgo._internal.strings.Strings_trimspace.trimSpace(_l?.__copy__())?.__copy__();
                if (_l == ((stdgo.Go.str() : stdgo.GoString))) {
                    continue;
                };
            };
            if ((_r != null && ((_r : Dynamic).__nil__ == null || !(_r : Dynamic).__nil__))) {
                _l = @:check2r _r.replace(_l?.__copy__())?.__copy__();
            };
            var __tmp__ = stdgo._internal.internal.profile.Profile__parsemappingentry._parseMappingEntry(_l?.__copy__()), _m:stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.internal.profile.Profile__errunrecognized._errUnrecognized))) {
                    var _idx = (stdgo._internal.strings.Strings_indexbyte.indexByte(_l?.__copy__(), (61 : stdgo.GoUInt8)) : stdgo.GoInt);
                    if ((_idx >= (0 : stdgo.GoInt) : Bool)) {
                        var _attr = ((_l.__slice__(0, _idx) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        var _value = ((_l.__slice__((_idx + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        _attrs = (_attrs.__append__((("$" : stdgo.GoString) + stdgo._internal.strings.Strings_trimspace.trimSpace(_attr?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__(), stdgo._internal.strings.Strings_trimspace.trimSpace(_value?.__copy__())?.__copy__()));
                        _r = stdgo._internal.strings.Strings_newreplacer.newReplacer(...(_attrs : Array<stdgo.GoString>));
                    };
                    continue;
                };
                return _err;
            };
            if (((_m == null || (_m : Dynamic).__nil__) || ((((@:checkr _m ?? throw "null pointer dereference").file == (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _p ?? throw "null pointer dereference").mapping.length != (0 : stdgo.GoInt)) : Bool)) : Bool)) {
                continue;
            };
            if ((((@:checkr _p ?? throw "null pointer dereference").mapping.length == (1 : stdgo.GoInt)) && ((@:checkr (@:checkr _p ?? throw "null pointer dereference").mapping[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").file == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                (@:checkr (@:checkr _p ?? throw "null pointer dereference").mapping[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").file = (@:checkr _m ?? throw "null pointer dereference").file?.__copy__();
                continue;
            };
            (@:checkr _p ?? throw "null pointer dereference").mapping = ((@:checkr _p ?? throw "null pointer dereference").mapping.__append__(_m));
        };
        @:check2r _p._remapLocationIDs();
        @:check2r _p._remapFunctionIDs();
        @:check2r _p._remapMappingIDs();
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _remapMappingIDs( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        if (((@:checkr _p ?? throw "null pointer dereference").mapping.length) == ((0 : stdgo.GoInt))) {
            return;
        };
        {
            var _m = (@:checkr _p ?? throw "null pointer dereference").mapping[(0 : stdgo.GoInt)];
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix((@:checkr _m ?? throw "null pointer dereference").file?.__copy__(), ("/anon_hugepage" : stdgo.GoString))) {
                if (((((@:checkr _p ?? throw "null pointer dereference").mapping.length) > (1 : stdgo.GoInt) : Bool) && ((@:checkr _m ?? throw "null pointer dereference").limit == (@:checkr (@:checkr _p ?? throw "null pointer dereference").mapping[(1 : stdgo.GoInt)] ?? throw "null pointer dereference").start) : Bool)) {
                    (@:checkr _p ?? throw "null pointer dereference").mapping = ((@:checkr _p ?? throw "null pointer dereference").mapping.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>>);
                };
            };
        };
        for (__0 => _l in (@:checkr _p ?? throw "null pointer dereference").location) {
            {
                var _a = ((@:checkr _l ?? throw "null pointer dereference").address : stdgo.GoUInt64);
                if (_a != ((0i64 : stdgo.GoUInt64))) {
                    for (__1 => _m in (@:checkr _p ?? throw "null pointer dereference").mapping) {
                        if ((((@:checkr _m ?? throw "null pointer dereference").start <= _a : Bool) && (_a < (@:checkr _m ?? throw "null pointer dereference").limit : Bool) : Bool)) {
                            (@:checkr _l ?? throw "null pointer dereference").mapping = _m;
                            break;
                        };
                    };
                };
            };
        };
        for (_i => _m in (@:checkr _p ?? throw "null pointer dereference").mapping) {
            (@:checkr _m ?? throw "null pointer dereference").iD = ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64);
        };
    }
    @:keep
    @:tdfield
    static public function _remapFunctionIDs( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        var _seen = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>, Bool>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>, Bool>);
        var _fns:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>);
        for (__0 => _l in (@:checkr _p ?? throw "null pointer dereference").location) {
            for (__1 => _ln in (@:checkr _l ?? throw "null pointer dereference").line) {
                var _fn = _ln.function_;
                if (((_fn == null || (_fn : Dynamic).__nil__) || (_seen[_fn] ?? false) : Bool)) {
                    continue;
                };
                (@:checkr _fn ?? throw "null pointer dereference").iD = (((_fns.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64);
                _fns = (_fns.__append__(_fn));
                _seen[_fn] = true;
            };
        };
        (@:checkr _p ?? throw "null pointer dereference").function_ = _fns;
    }
    @:keep
    @:tdfield
    static public function _remapLocationIDs( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        var _seen = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>, Bool>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>, Bool>);
        var _locs:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
        for (__0 => _s in (@:checkr _p ?? throw "null pointer dereference").sample) {
            for (__1 => _l in (@:checkr _s ?? throw "null pointer dereference").location) {
                if ((_seen[_l] ?? false)) {
                    continue;
                };
                (@:checkr _l ?? throw "null pointer dereference").iD = (((_locs.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64);
                _locs = (_locs.__append__(_l));
                _seen[_l] = true;
            };
        };
        (@:checkr _p ?? throw "null pointer dereference").location = _locs;
    }
    @:keep
    @:tdfield
    static public function filterSamplesByTag( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>, _focus:stdgo._internal.internal.profile.Profile_tagmatch.TagMatch, _ignore:stdgo._internal.internal.profile.Profile_tagmatch.TagMatch):{ var _0 : Bool; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        var _fm = false, _im = false;
        var _samples = (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>>((0 : stdgo.GoInt).toBasic(), ((@:checkr _p ?? throw "null pointer dereference").sample.length)) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>>);
        for (__0 => _s in (@:checkr _p ?? throw "null pointer dereference").sample) {
            var __tmp__ = stdgo._internal.internal.profile.Profile__focusedsample._focusedSample(_s, _focus, _ignore), _focused:Bool = __tmp__._0, _ignored:Bool = __tmp__._1;
            _fm = (_fm || _focused : Bool);
            _im = (_im || _ignored : Bool);
            if ((_focused && !_ignored : Bool)) {
                _samples = (_samples.__append__(_s));
            };
        };
        (@:checkr _p ?? throw "null pointer dereference").sample = _samples;
        return { _0 : _fm, _1 : _im };
    }
    @:keep
    @:tdfield
    static public function filterSamplesByName( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>, _focus:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _ignore:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _hide:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):{ var _0 : Bool; var _1 : Bool; var _2 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        var _fm = false, _im = false, _hm = false;
        var _focusOrIgnore = (({
            final x = new stdgo.GoMap.GoUInt64Map<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, Bool>) : stdgo.GoMap<stdgo.GoUInt64, Bool>);
        var _hidden = (({
            final x = new stdgo.GoMap.GoUInt64Map<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, Bool>) : stdgo.GoMap<stdgo.GoUInt64, Bool>);
        for (__0 => _l in (@:checkr _p ?? throw "null pointer dereference").location) {
            if (((_ignore != null && ((_ignore : Dynamic).__nil__ == null || !(_ignore : Dynamic).__nil__)) && @:check2r _l._matchesName(_ignore) : Bool)) {
                _im = true;
                _focusOrIgnore[(@:checkr _l ?? throw "null pointer dereference").iD] = false;
            } else if (((_focus == null || (_focus : Dynamic).__nil__) || @:check2r _l._matchesName(_focus) : Bool)) {
                _fm = true;
                _focusOrIgnore[(@:checkr _l ?? throw "null pointer dereference").iD] = true;
            };
            if (((_hide != null && ((_hide : Dynamic).__nil__ == null || !(_hide : Dynamic).__nil__)) && @:check2r _l._matchesName(_hide) : Bool)) {
                _hm = true;
                (@:checkr _l ?? throw "null pointer dereference").line = @:check2r _l._unmatchedLines(_hide);
                if (((@:checkr _l ?? throw "null pointer dereference").line.length) == ((0 : stdgo.GoInt))) {
                    _hidden[(@:checkr _l ?? throw "null pointer dereference").iD] = true;
                };
            };
        };
        var _s = (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>>((0 : stdgo.GoInt).toBasic(), ((@:checkr _p ?? throw "null pointer dereference").sample.length)) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>>);
        for (__1 => _sample in (@:checkr _p ?? throw "null pointer dereference").sample) {
            if (stdgo._internal.internal.profile.Profile__focusedandnotignored._focusedAndNotIgnored((@:checkr _sample ?? throw "null pointer dereference").location, _focusOrIgnore)) {
                if (((_hidden.length) > (0 : stdgo.GoInt) : Bool)) {
                    var _locs:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
                    for (__2 => _loc in (@:checkr _sample ?? throw "null pointer dereference").location) {
                        if (!(_hidden[(@:checkr _loc ?? throw "null pointer dereference").iD] ?? false)) {
                            _locs = (_locs.__append__(_loc));
                        };
                    };
                    if ((_locs.length) == ((0 : stdgo.GoInt))) {
                        continue;
                    };
                    (@:checkr _sample ?? throw "null pointer dereference").location = _locs;
                };
                _s = (_s.__append__(_sample));
            };
        };
        (@:checkr _p ?? throw "null pointer dereference").sample = _s;
        return { _0 : _fm, _1 : _im, _2 : _hm };
    }
    @:keep
    @:tdfield
    static public function _postDecode( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        var _err:stdgo.Error = (null : stdgo.Error);
        var _mappings = (({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>>) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>>);
        for (__0 => _m in (@:checkr _p ?? throw "null pointer dereference").mapping) {
            {
                var __tmp__ = stdgo._internal.internal.profile.Profile__getstring._getString((@:checkr _p ?? throw "null pointer dereference")._stringTable, stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._fileX), _err);
                (@:checkr _m ?? throw "null pointer dereference").file = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            {
                var __tmp__ = stdgo._internal.internal.profile.Profile__getstring._getString((@:checkr _p ?? throw "null pointer dereference")._stringTable, stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._buildIDX), _err);
                (@:checkr _m ?? throw "null pointer dereference").buildID = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            _mappings[(@:checkr _m ?? throw "null pointer dereference").iD] = _m;
        };
        var _functions = (({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>);
        for (__1 => _f in (@:checkr _p ?? throw "null pointer dereference").function_) {
            {
                var __tmp__ = stdgo._internal.internal.profile.Profile__getstring._getString((@:checkr _p ?? throw "null pointer dereference")._stringTable, stdgo.Go.pointer((@:checkr _f ?? throw "null pointer dereference")._nameX), _err);
                (@:checkr _f ?? throw "null pointer dereference").name = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            {
                var __tmp__ = stdgo._internal.internal.profile.Profile__getstring._getString((@:checkr _p ?? throw "null pointer dereference")._stringTable, stdgo.Go.pointer((@:checkr _f ?? throw "null pointer dereference")._systemNameX), _err);
                (@:checkr _f ?? throw "null pointer dereference").systemName = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            {
                var __tmp__ = stdgo._internal.internal.profile.Profile__getstring._getString((@:checkr _p ?? throw "null pointer dereference")._stringTable, stdgo.Go.pointer((@:checkr _f ?? throw "null pointer dereference")._filenameX), _err);
                (@:checkr _f ?? throw "null pointer dereference").filename = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            _functions[(@:checkr _f ?? throw "null pointer dereference").iD] = _f;
        };
        var _locations = (({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
        for (__2 => _l in (@:checkr _p ?? throw "null pointer dereference").location) {
            (@:checkr _l ?? throw "null pointer dereference").mapping = (_mappings[(@:checkr _l ?? throw "null pointer dereference")._mappingIDX] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>));
            (@:checkr _l ?? throw "null pointer dereference")._mappingIDX = (0i64 : stdgo.GoUInt64);
            for (_i => _ln in (@:checkr _l ?? throw "null pointer dereference").line) {
                {
                    var _id = (_ln._functionIDX : stdgo.GoUInt64);
                    if (_id != ((0i64 : stdgo.GoUInt64))) {
                        (@:checkr _l ?? throw "null pointer dereference").line[(_i : stdgo.GoInt)].function_ = (_functions[_id] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>));
                        if (((@:checkr _l ?? throw "null pointer dereference").line[(_i : stdgo.GoInt)].function_ == null || ((@:checkr _l ?? throw "null pointer dereference").line[(_i : stdgo.GoInt)].function_ : Dynamic).__nil__)) {
                            return stdgo._internal.fmt.Fmt_errorf.errorf(("Function ID %d not found" : stdgo.GoString), stdgo.Go.toInterface(_id));
                        };
                        (@:checkr _l ?? throw "null pointer dereference").line[(_i : stdgo.GoInt)]._functionIDX = (0i64 : stdgo.GoUInt64);
                    };
                };
            };
            _locations[(@:checkr _l ?? throw "null pointer dereference").iD] = _l;
        };
        for (__3 => _st in (@:checkr _p ?? throw "null pointer dereference").sampleType) {
            {
                var __tmp__ = stdgo._internal.internal.profile.Profile__getstring._getString((@:checkr _p ?? throw "null pointer dereference")._stringTable, stdgo.Go.pointer((@:checkr _st ?? throw "null pointer dereference")._typeX), _err);
                (@:checkr _st ?? throw "null pointer dereference").type = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            {
                var __tmp__ = stdgo._internal.internal.profile.Profile__getstring._getString((@:checkr _p ?? throw "null pointer dereference")._stringTable, stdgo.Go.pointer((@:checkr _st ?? throw "null pointer dereference")._unitX), _err);
                (@:checkr _st ?? throw "null pointer dereference").unit = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
        };
        for (__4 => _s in (@:checkr _p ?? throw "null pointer dereference").sample) {
            var _labels = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>);
            var _numLabels = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoInt64>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoInt64>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt64>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt64>>);
            for (__5 => _l in (@:checkr _s ?? throw "null pointer dereference")._labelX) {
                var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString);
var _value = __1, _key = __0;
                {
                    var __tmp__ = stdgo._internal.internal.profile.Profile__getstring._getString((@:checkr _p ?? throw "null pointer dereference")._stringTable, stdgo.Go.pointer(_l._keyX), _err);
                    _key = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_l._strX != ((0i64 : stdgo.GoInt64))) {
                    {
                        var __tmp__ = stdgo._internal.internal.profile.Profile__getstring._getString((@:checkr _p ?? throw "null pointer dereference")._stringTable, stdgo.Go.pointer(_l._strX), _err);
                        _value = @:tmpset0 __tmp__._0?.__copy__();
                        _err = @:tmpset0 __tmp__._1;
                    };
                    _labels[_key] = ((_labels[_key] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(_value?.__copy__()));
                } else {
                    _numLabels[_key] = ((_numLabels[_key] ?? (null : stdgo.Slice<stdgo.GoInt64>)).__append__(_l._numX));
                };
            };
            if (((_labels.length) > (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _s ?? throw "null pointer dereference").label = _labels;
            };
            if (((_numLabels.length) > (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _s ?? throw "null pointer dereference").numLabel = _numLabels;
            };
            (@:checkr _s ?? throw "null pointer dereference").location = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
            for (__6 => _lid in (@:checkr _s ?? throw "null pointer dereference")._locationIDX) {
                (@:checkr _s ?? throw "null pointer dereference").location = ((@:checkr _s ?? throw "null pointer dereference").location.__append__((_locations[_lid] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>))));
            };
            (@:checkr _s ?? throw "null pointer dereference")._locationIDX = (null : stdgo.Slice<stdgo.GoUInt64>);
        };
        {
            var __tmp__ = stdgo._internal.internal.profile.Profile__getstring._getString((@:checkr _p ?? throw "null pointer dereference")._stringTable, stdgo.Go.pointer((@:checkr _p ?? throw "null pointer dereference")._dropFramesX), _err);
            (@:checkr _p ?? throw "null pointer dereference").dropFrames = @:tmpset0 __tmp__._0?.__copy__();
            _err = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.internal.profile.Profile__getstring._getString((@:checkr _p ?? throw "null pointer dereference")._stringTable, stdgo.Go.pointer((@:checkr _p ?? throw "null pointer dereference")._keepFramesX), _err);
            (@:checkr _p ?? throw "null pointer dereference").keepFrames = @:tmpset0 __tmp__._0?.__copy__();
            _err = @:tmpset0 __tmp__._1;
        };
        {
            var _pt = (@:checkr _p ?? throw "null pointer dereference").periodType;
            if ((_pt == null || (_pt : Dynamic).__nil__)) {
                (@:checkr _p ?? throw "null pointer dereference").periodType = (stdgo.Go.setRef((new stdgo._internal.internal.profile.Profile_valuetype_.ValueType_() : stdgo._internal.internal.profile.Profile_valuetype_.ValueType_)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>);
            };
        };
        {
            var _pt = (@:checkr _p ?? throw "null pointer dereference").periodType;
            if ((_pt != null && ((_pt : Dynamic).__nil__ == null || !(_pt : Dynamic).__nil__))) {
                {
                    var __tmp__ = stdgo._internal.internal.profile.Profile__getstring._getString((@:checkr _p ?? throw "null pointer dereference")._stringTable, stdgo.Go.pointer((@:checkr _pt ?? throw "null pointer dereference")._typeX), _err);
                    (@:checkr _pt ?? throw "null pointer dereference").type = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                {
                    var __tmp__ = stdgo._internal.internal.profile.Profile__getstring._getString((@:checkr _p ?? throw "null pointer dereference")._stringTable, stdgo.Go.pointer((@:checkr _pt ?? throw "null pointer dereference")._unitX), _err);
                    (@:checkr _pt ?? throw "null pointer dereference").unit = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
            };
        };
        for (__5 => _i in (@:checkr _p ?? throw "null pointer dereference")._commentX) {
            var _c:stdgo.GoString = ("" : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.internal.profile.Profile__getstring._getString((@:checkr _p ?? throw "null pointer dereference")._stringTable, stdgo.Go.pointer(_i), _err);
                _c = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            (@:checkr _p ?? throw "null pointer dereference").comments = ((@:checkr _p ?? throw "null pointer dereference").comments.__append__(_c?.__copy__()));
        };
        (@:checkr _p ?? throw "null pointer dereference")._commentX = (null : stdgo.Slice<stdgo.GoInt64>);
        {
            var __tmp__ = stdgo._internal.internal.profile.Profile__getstring._getString((@:checkr _p ?? throw "null pointer dereference")._stringTable, stdgo.Go.pointer((@:checkr _p ?? throw "null pointer dereference")._defaultSampleTypeX), _err);
            (@:checkr _p ?? throw "null pointer dereference").defaultSampleType = @:tmpset0 __tmp__._0?.__copy__();
            _err = @:tmpset0 __tmp__._1;
        };
        (@:checkr _p ?? throw "null pointer dereference")._stringTable = (null : stdgo.Slice<stdgo.GoString>);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _encode( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>, _b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        for (__0 => _x in (@:checkr _p ?? throw "null pointer dereference").sampleType) {
            stdgo._internal.internal.profile.Profile__encodemessage._encodeMessage(_b, (1 : stdgo.GoInt), stdgo.Go.asInterface(_x));
        };
        for (__1 => _x in (@:checkr _p ?? throw "null pointer dereference").sample) {
            stdgo._internal.internal.profile.Profile__encodemessage._encodeMessage(_b, (2 : stdgo.GoInt), stdgo.Go.asInterface(_x));
        };
        for (__2 => _x in (@:checkr _p ?? throw "null pointer dereference").mapping) {
            stdgo._internal.internal.profile.Profile__encodemessage._encodeMessage(_b, (3 : stdgo.GoInt), stdgo.Go.asInterface(_x));
        };
        for (__3 => _x in (@:checkr _p ?? throw "null pointer dereference").location) {
            stdgo._internal.internal.profile.Profile__encodemessage._encodeMessage(_b, (4 : stdgo.GoInt), stdgo.Go.asInterface(_x));
        };
        for (__4 => _x in (@:checkr _p ?? throw "null pointer dereference").function_) {
            stdgo._internal.internal.profile.Profile__encodemessage._encodeMessage(_b, (5 : stdgo.GoInt), stdgo.Go.asInterface(_x));
        };
        stdgo._internal.internal.profile.Profile__encodestrings._encodeStrings(_b, (6 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference")._stringTable);
        stdgo._internal.internal.profile.Profile__encodeint64opt._encodeInt64Opt(_b, (7 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference")._dropFramesX);
        stdgo._internal.internal.profile.Profile__encodeint64opt._encodeInt64Opt(_b, (8 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference")._keepFramesX);
        stdgo._internal.internal.profile.Profile__encodeint64opt._encodeInt64Opt(_b, (9 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference").timeNanos);
        stdgo._internal.internal.profile.Profile__encodeint64opt._encodeInt64Opt(_b, (10 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference").durationNanos);
        {
            var _pt = (@:checkr _p ?? throw "null pointer dereference").periodType;
            if (((_pt != null && ((_pt : Dynamic).__nil__ == null || !(_pt : Dynamic).__nil__)) && ((((@:checkr _pt ?? throw "null pointer dereference")._typeX != (0i64 : stdgo.GoInt64)) || ((@:checkr _pt ?? throw "null pointer dereference")._unitX != (0i64 : stdgo.GoInt64)) : Bool)) : Bool)) {
                stdgo._internal.internal.profile.Profile__encodemessage._encodeMessage(_b, (11 : stdgo.GoInt), stdgo.Go.asInterface((@:checkr _p ?? throw "null pointer dereference").periodType));
            };
        };
        stdgo._internal.internal.profile.Profile__encodeint64opt._encodeInt64Opt(_b, (12 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference").period);
    }
    @:keep
    @:tdfield
    static public function _preEncode( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        var _strings = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        stdgo._internal.internal.profile.Profile__addstring._addString(_strings, (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        for (__0 => _st in (@:checkr _p ?? throw "null pointer dereference").sampleType) {
            (@:checkr _st ?? throw "null pointer dereference")._typeX = stdgo._internal.internal.profile.Profile__addstring._addString(_strings, (@:checkr _st ?? throw "null pointer dereference").type?.__copy__());
            (@:checkr _st ?? throw "null pointer dereference")._unitX = stdgo._internal.internal.profile.Profile__addstring._addString(_strings, (@:checkr _st ?? throw "null pointer dereference").unit?.__copy__());
        };
        for (__1 => _s in (@:checkr _p ?? throw "null pointer dereference").sample) {
            (@:checkr _s ?? throw "null pointer dereference")._labelX = (null : stdgo.Slice<stdgo._internal.internal.profile.Profile_label.Label>);
            var _keys:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            for (_k => _ in (@:checkr _s ?? throw "null pointer dereference").label) {
                _keys = (_keys.__append__(_k?.__copy__()));
            };
            stdgo._internal.sort.Sort_strings.strings(_keys);
            for (__2 => _k in _keys) {
                var _vs = ((@:checkr _s ?? throw "null pointer dereference").label[_k] ?? (null : stdgo.Slice<stdgo.GoString>));
                for (__3 => _v in _vs) {
                    (@:checkr _s ?? throw "null pointer dereference")._labelX = ((@:checkr _s ?? throw "null pointer dereference")._labelX.__append__(({ _keyX : stdgo._internal.internal.profile.Profile__addstring._addString(_strings, _k?.__copy__()), _strX : stdgo._internal.internal.profile.Profile__addstring._addString(_strings, _v?.__copy__()) } : stdgo._internal.internal.profile.Profile_label.Label)));
                };
            };
            var _numKeys:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            for (_k => _ in (@:checkr _s ?? throw "null pointer dereference").numLabel) {
                _numKeys = (_numKeys.__append__(_k?.__copy__()));
            };
            stdgo._internal.sort.Sort_strings.strings(_numKeys);
            for (__3 => _k in _numKeys) {
                var _vs = ((@:checkr _s ?? throw "null pointer dereference").numLabel[_k] ?? (null : stdgo.Slice<stdgo.GoInt64>));
                for (__4 => _v in _vs) {
                    (@:checkr _s ?? throw "null pointer dereference")._labelX = ((@:checkr _s ?? throw "null pointer dereference")._labelX.__append__(({ _keyX : stdgo._internal.internal.profile.Profile__addstring._addString(_strings, _k?.__copy__()), _numX : _v } : stdgo._internal.internal.profile.Profile_label.Label)));
                };
            };
            (@:checkr _s ?? throw "null pointer dereference")._locationIDX = (null : stdgo.Slice<stdgo.GoUInt64>);
            for (__4 => _l in (@:checkr _s ?? throw "null pointer dereference").location) {
                (@:checkr _s ?? throw "null pointer dereference")._locationIDX = ((@:checkr _s ?? throw "null pointer dereference")._locationIDX.__append__((@:checkr _l ?? throw "null pointer dereference").iD));
            };
        };
        for (__2 => _m in (@:checkr _p ?? throw "null pointer dereference").mapping) {
            (@:checkr _m ?? throw "null pointer dereference")._fileX = stdgo._internal.internal.profile.Profile__addstring._addString(_strings, (@:checkr _m ?? throw "null pointer dereference").file?.__copy__());
            (@:checkr _m ?? throw "null pointer dereference")._buildIDX = stdgo._internal.internal.profile.Profile__addstring._addString(_strings, (@:checkr _m ?? throw "null pointer dereference").buildID?.__copy__());
        };
        for (__3 => _l in (@:checkr _p ?? throw "null pointer dereference").location) {
            for (_i => _ln in (@:checkr _l ?? throw "null pointer dereference").line) {
                if ((_ln.function_ != null && ((_ln.function_ : Dynamic).__nil__ == null || !(_ln.function_ : Dynamic).__nil__))) {
                    (@:checkr _l ?? throw "null pointer dereference").line[(_i : stdgo.GoInt)]._functionIDX = (@:checkr _ln.function_ ?? throw "null pointer dereference").iD;
                } else {
                    (@:checkr _l ?? throw "null pointer dereference").line[(_i : stdgo.GoInt)]._functionIDX = (0i64 : stdgo.GoUInt64);
                };
            };
            if (((@:checkr _l ?? throw "null pointer dereference").mapping != null && (((@:checkr _l ?? throw "null pointer dereference").mapping : Dynamic).__nil__ == null || !((@:checkr _l ?? throw "null pointer dereference").mapping : Dynamic).__nil__))) {
                (@:checkr _l ?? throw "null pointer dereference")._mappingIDX = (@:checkr (@:checkr _l ?? throw "null pointer dereference").mapping ?? throw "null pointer dereference").iD;
            } else {
                (@:checkr _l ?? throw "null pointer dereference")._mappingIDX = (0i64 : stdgo.GoUInt64);
            };
        };
        for (__4 => _f in (@:checkr _p ?? throw "null pointer dereference").function_) {
            (@:checkr _f ?? throw "null pointer dereference")._nameX = stdgo._internal.internal.profile.Profile__addstring._addString(_strings, (@:checkr _f ?? throw "null pointer dereference").name?.__copy__());
            (@:checkr _f ?? throw "null pointer dereference")._systemNameX = stdgo._internal.internal.profile.Profile__addstring._addString(_strings, (@:checkr _f ?? throw "null pointer dereference").systemName?.__copy__());
            (@:checkr _f ?? throw "null pointer dereference")._filenameX = stdgo._internal.internal.profile.Profile__addstring._addString(_strings, (@:checkr _f ?? throw "null pointer dereference").filename?.__copy__());
        };
        (@:checkr _p ?? throw "null pointer dereference")._dropFramesX = stdgo._internal.internal.profile.Profile__addstring._addString(_strings, (@:checkr _p ?? throw "null pointer dereference").dropFrames?.__copy__());
        (@:checkr _p ?? throw "null pointer dereference")._keepFramesX = stdgo._internal.internal.profile.Profile__addstring._addString(_strings, (@:checkr _p ?? throw "null pointer dereference").keepFrames?.__copy__());
        {
            var _pt = (@:checkr _p ?? throw "null pointer dereference").periodType;
            if ((_pt != null && ((_pt : Dynamic).__nil__ == null || !(_pt : Dynamic).__nil__))) {
                (@:checkr _pt ?? throw "null pointer dereference")._typeX = stdgo._internal.internal.profile.Profile__addstring._addString(_strings, (@:checkr _pt ?? throw "null pointer dereference").type?.__copy__());
                (@:checkr _pt ?? throw "null pointer dereference")._unitX = stdgo._internal.internal.profile.Profile__addstring._addString(_strings, (@:checkr _pt ?? throw "null pointer dereference").unit?.__copy__());
            };
        };
        (@:checkr _p ?? throw "null pointer dereference")._stringTable = (new stdgo.Slice<stdgo.GoString>((_strings.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_s => _i in _strings) {
            (@:checkr _p ?? throw "null pointer dereference")._stringTable[(_i : stdgo.GoInt)] = _s?.__copy__();
        };
    }
    @:keep
    @:tdfield
    static public function _decoder( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>):stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder> {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = _p;
        return stdgo._internal.internal.profile.Profile__profiledecoder._profileDecoder;
    }
}
