package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
function _calculateOrdering(_levels:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level>, _runes:stdgo.Slice<stdgo.GoInt32>):_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering.Ordering {
        var _curDir:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction = ((0 : stdgo.GoInt) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction);
        var _prevDir = (3 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction);
        var _prevI = (0 : stdgo.GoInt);
        var _o = (new _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering.Ordering() : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering.Ordering);
        for (_i => _lvl in _levels) {
            if ((_lvl % (2 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level) == ((0 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level))) {
                _curDir = (0 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction);
            } else {
                _curDir = (1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction);
            };
            if (_curDir != (_prevDir)) {
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    _o._runes = (_o._runes.__append__((_runes.__slice__(_prevI, _i) : stdgo.Slice<stdgo.GoInt32>)));
                    _o._directions = (_o._directions.__append__(_prevDir));
                    _o._startpos = (_o._startpos.__append__(_prevI));
                };
                _prevI = _i;
                _prevDir = _curDir;
            };
        };
        _o._runes = (_o._runes.__append__((_runes.__slice__(_prevI) : stdgo.Slice<stdgo.GoInt32>)));
        _o._directions = (_o._directions.__append__(_prevDir));
        _o._startpos = (_o._startpos.__append__(_prevI));
        return _o?.__copy__();
    }
