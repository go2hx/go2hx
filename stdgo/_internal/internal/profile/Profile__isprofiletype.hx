package stdgo._internal.internal.profile;
function _isProfileType(_p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>, _t:stdgo.Slice<stdgo.GoString>):Bool {
        var _st = (@:checkr _p ?? throw "null pointer dereference").sampleType;
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L1166"
        if ((_st.length) != ((_t.length))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L1167"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L1170"
        for (_i => _ in _st) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L1171"
            if ((@:checkr _st[(_i : stdgo.GoInt)] ?? throw "null pointer dereference").type != (_t[(_i : stdgo.GoInt)])) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L1172"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L1175"
        return true;
    }
