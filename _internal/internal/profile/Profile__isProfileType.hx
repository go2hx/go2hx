package _internal.internal.profile;
function _isProfileType(_p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>, _t:stdgo.Slice<stdgo.GoString>):Bool {
        var _st = _p.sampleType;
        if ((_st.length) != ((_t.length))) {
            return false;
        };
        for (_i => _ in _st) {
            if (_st[(_i : stdgo.GoInt)].type != (_t[(_i : stdgo.GoInt)])) {
                return false;
            };
        };
        return true;
    }
