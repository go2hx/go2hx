package _internal.internal.profile;
function _combineHeaders(_srcs:stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>>):{ var _0 : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } {
        for (__0 => _s in (_srcs.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>>)) {
            {
                var _err = (_srcs[(0 : stdgo.GoInt)]._compatible(_s) : stdgo.Error);
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
            if (((_timeNanos == (0i64 : stdgo.GoInt64)) || (_s.timeNanos < _timeNanos : Bool) : Bool)) {
                _timeNanos = _s.timeNanos;
            };
            _durationNanos = (_durationNanos + (_s.durationNanos) : stdgo.GoInt64);
            if (((_period == (0i64 : stdgo.GoInt64)) || (_period < _s.period : Bool) : Bool)) {
                _period = _s.period;
            };
            for (__2 => _c in _s.comments) {
                {
                    var _seen = (_seenComments[_c] ?? false : Bool);
                    if (!_seen) {
                        _comments = (_comments.__append__(_c?.__copy__()));
                        _seenComments[_c] = true;
                    };
                };
            };
            if (_defaultSampleType == (stdgo.Go.str())) {
                _defaultSampleType = _s.defaultSampleType?.__copy__();
            };
        };
        var _p = (stdgo.Go.setRef(({ sampleType : (new stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>>((_srcs[(0 : stdgo.GoInt)].sampleType.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>>), dropFrames : _srcs[(0 : stdgo.GoInt)].dropFrames?.__copy__(), keepFrames : _srcs[(0 : stdgo.GoInt)].keepFrames?.__copy__(), timeNanos : _timeNanos, durationNanos : _durationNanos, periodType : _srcs[(0 : stdgo.GoInt)].periodType, period : _period, comments : _comments, defaultSampleType : _defaultSampleType?.__copy__() } : _internal.internal.profile.Profile_Profile.Profile)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>);
        stdgo.Go.copySlice(_p.sampleType, _srcs[(0 : stdgo.GoInt)].sampleType);
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
