package stdgo._internal.internal.profile;
function _isZeroSample(_s:stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/merge.go#L106"
        for (__0 => _v in (@:checkr _s ?? throw "null pointer dereference").value) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/merge.go#L107"
            if (_v != ((0i64 : stdgo.GoInt64))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/merge.go#L108"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/merge.go#L111"
        return true;
    }
