package _internal.internal.profile;
function _isZeroSample(_s:stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>):Bool {
        for (__0 => _v in _s.value) {
            if (_v != ((0i64 : stdgo.GoInt64))) {
                return false;
            };
        };
        return true;
    }
