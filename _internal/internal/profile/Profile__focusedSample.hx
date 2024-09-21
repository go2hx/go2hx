package _internal.internal.profile;
function _focusedSample(_s:stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>, _focus:_internal.internal.profile.Profile_TagMatch.TagMatch, _ignore:_internal.internal.profile.Profile_TagMatch.TagMatch):{ var _0 : Bool; var _1 : Bool; } {
        var _fm = false, _im = false;
        _fm = _focus == null;
        for (_key => _vals in _s.label) {
            for (__0 => _val in _vals) {
                if (((_ignore != null) && _ignore(_key?.__copy__(), _val?.__copy__(), (0i64 : stdgo.GoInt64)) : Bool)) {
                    _im = true;
                };
                if ((!_fm && _focus(_key?.__copy__(), _val?.__copy__(), (0i64 : stdgo.GoInt64)) : Bool)) {
                    _fm = true;
                };
            };
        };
        for (_key => _vals in _s.numLabel) {
            for (__0 => _val in _vals) {
                if (((_ignore != null) && _ignore(_key?.__copy__(), stdgo.Go.str()?.__copy__(), _val) : Bool)) {
                    _im = true;
                };
                if ((!_fm && _focus(_key?.__copy__(), stdgo.Go.str()?.__copy__(), _val) : Bool)) {
                    _fm = true;
                };
            };
        };
        return { _0 : _fm, _1 : _im };
    }
