package stdgo._internal.internal.profile;
function _isProfileType(_p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>, _t:stdgo.Slice<stdgo.GoString>):Bool {
        var _st = (@:checkr _p ?? throw "null pointer dereference").sampleType;
        if ((_st.length) != ((_t.length))) {
            return false;
        };
        for (_i => _ in _st) {
            if ((@:checkr _st[(_i : stdgo.GoInt)] ?? throw "null pointer dereference").type != (_t[(_i : stdgo.GoInt)])) {
                return false;
            };
        };
        return true;
    }
