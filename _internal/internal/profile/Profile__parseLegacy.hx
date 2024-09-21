package _internal.internal.profile;
function _parseLegacy(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } {
        var _parsers = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; }>(5, 5, ...[_internal.internal.profile.Profile__parseCPU._parseCPU, _internal.internal.profile.Profile__parseHeap._parseHeap, _internal.internal.profile.Profile__parseGoCount._parseGoCount, _internal.internal.profile.Profile__parseThread._parseThread, _internal.internal.profile.Profile__parseContention._parseContention]) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; }>);
        for (__0 => _parser in _parsers) {
            var __tmp__ = _parser(_data), _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _p._setMain();
                _p._addLegacyFrameInfo();
                return { _0 : _p, _1 : (null : stdgo.Error) };
            };
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_internal.internal.profile.Profile__errUnrecognized._errUnrecognized))) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : null, _1 : _internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
    }
