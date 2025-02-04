package stdgo._internal.internal.profile;
function _isZeroSample(_s:stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>):Bool {
        for (__0 => _v in (@:checkr _s ?? throw "null pointer dereference").value) {
            if (_v != ((0i64 : stdgo.GoInt64))) {
                return false;
            };
        };
        return true;
    }
