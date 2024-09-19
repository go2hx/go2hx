package _internal.internal.profile;
function _parseUncompressed(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } {
        var _p = (stdgo.Go.setRef((new _internal.internal.profile.Profile_Profile.Profile() : _internal.internal.profile.Profile_Profile.Profile)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>);
        {
            var _err = (_internal.internal.profile.Profile__unmarshal._unmarshal(_data, stdgo.Go.asInterface(_p)) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        {
            var _err = (_p._postDecode() : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
