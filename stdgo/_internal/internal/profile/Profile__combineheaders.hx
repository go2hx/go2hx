package stdgo._internal.internal.profile;
function _combineHeaders(_srcs:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>>):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>; var _1 : stdgo.Error; } {
        for (__0 => _s in (_srcs.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>>)) {
            {
                var _err = (@:check2r _srcs[(0 : stdgo.GoInt)]._compatible(_s) : stdgo.Error);
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
        };
        var __0:stdgo.GoInt64 = (0 : stdgo.GoInt64), __1:stdgo.GoInt64 = (0 : stdgo.GoInt64), __2:stdgo.GoInt64 = (0 : stdgo.GoInt64);
var _period = __2, _durationNanos = __1, _timeNanos = __0;
        var _comments:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _seenComments = ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>);
        var _defaultSampleType:stdgo.GoString = ("" : stdgo.GoString);
        for (__1 => _s in _srcs) {
            if (((_timeNanos == (0i64 : stdgo.GoInt64)) || ((@:checkr _s ?? throw "null pointer dereference").timeNanos < _timeNanos : Bool) : Bool)) {
                _timeNanos = (@:checkr _s ?? throw "null pointer dereference").timeNanos;
            };
            _durationNanos = (_durationNanos + ((@:checkr _s ?? throw "null pointer dereference").durationNanos) : stdgo.GoInt64);
            if (((_period == (0i64 : stdgo.GoInt64)) || (_period < (@:checkr _s ?? throw "null pointer dereference").period : Bool) : Bool)) {
                _period = (@:checkr _s ?? throw "null pointer dereference").period;
            };
            for (__2 => _c in (@:checkr _s ?? throw "null pointer dereference").comments) {
                {
                    var _seen = (_seenComments[_c] ?? false : Bool);
                    if (!_seen) {
                        _comments = (_comments.__append__(_c?.__copy__()));
                        _seenComments[_c] = true;
                    };
                };
            };
            if (_defaultSampleType == ((stdgo.Go.str() : stdgo.GoString))) {
                _defaultSampleType = (@:checkr _s ?? throw "null pointer dereference").defaultSampleType?.__copy__();
            };
        };
        var _p = (stdgo.Go.setRef(({ sampleType : (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>>(((@:checkr _srcs[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").sampleType.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>>), dropFrames : (@:checkr _srcs[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").dropFrames?.__copy__(), keepFrames : (@:checkr _srcs[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").keepFrames?.__copy__(), timeNanos : _timeNanos, durationNanos : _durationNanos, periodType : (@:checkr _srcs[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").periodType, period : _period, comments : _comments, defaultSampleType : _defaultSampleType?.__copy__() } : stdgo._internal.internal.profile.Profile_profile.Profile)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        (@:checkr _p ?? throw "null pointer dereference").sampleType.__copyTo__((@:checkr _srcs[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").sampleType);
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
