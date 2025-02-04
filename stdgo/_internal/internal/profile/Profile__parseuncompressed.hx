package stdgo._internal.internal.profile;
function _parseUncompressed(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>; var _1 : stdgo.Error; } {
        var _p = (stdgo.Go.setRef((new stdgo._internal.internal.profile.Profile_profile.Profile() : stdgo._internal.internal.profile.Profile_profile.Profile)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        {
            var _err = (stdgo._internal.internal.profile.Profile__unmarshal._unmarshal(_data, stdgo.Go.asInterface(_p)) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        {
            var _err = (@:check2r _p._postDecode() : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
