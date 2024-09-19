package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
function _computeMultilineReordering(_levels:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level>, _linebreaks:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        var _result = (new stdgo.Slice<stdgo.GoInt>((_levels.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _start = (0 : stdgo.GoInt);
        for (__0 => _limit in _linebreaks) {
            var _tempLevels = (new stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level>((_limit - _start : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level>);
            stdgo.Go.copySlice(_tempLevels, (_levels.__slice__(_start) : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level>));
            for (_j => _order in _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__computeReordering._computeReordering(_tempLevels)) {
                _result[(_start + _j : stdgo.GoInt)] = (_order + _start : stdgo.GoInt);
            };
            _start = _limit;
        };
        return _result;
    }
