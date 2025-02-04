package stdgo._internal.internal.profile;
function _focusedSample(_s:stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>, _focus:stdgo._internal.internal.profile.Profile_tagmatch.TagMatch, _ignore:stdgo._internal.internal.profile.Profile_tagmatch.TagMatch):{ var _0 : Bool; var _1 : Bool; } {
        var _fm = false, _im = false;
        _fm = _focus == null;
        for (_key => _vals in (@:checkr _s ?? throw "null pointer dereference").label) {
            for (__0 => _val in _vals) {
                if (((_ignore != null) && _ignore(_key?.__copy__(), _val?.__copy__(), (0i64 : stdgo.GoInt64)) : Bool)) {
                    _im = true;
                };
                if ((!_fm && _focus(_key?.__copy__(), _val?.__copy__(), (0i64 : stdgo.GoInt64)) : Bool)) {
                    _fm = true;
                };
            };
        };
        for (_key => _vals in (@:checkr _s ?? throw "null pointer dereference").numLabel) {
            for (__0 => _val in _vals) {
                if (((_ignore != null) && _ignore(_key?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _val) : Bool)) {
                    _im = true;
                };
                if ((!_fm && _focus(_key?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _val) : Bool)) {
                    _fm = true;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : _fm, _1 : _im };
            _fm = __tmp__._0;
            _im = __tmp__._1;
            __tmp__;
        };
    }
