package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
function _computeReordering(_levels:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level>):stdgo.Slice<stdgo.GoInt> {
        var _result = (new stdgo.Slice<stdgo.GoInt>((_levels.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        for (_i => _ in _result) {
            _result[(_i : stdgo.GoInt)] = _i;
        };
        var _highestLevel = ((0 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level);
        var _lowestOddLevel = ((127 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level);
        for (__0 => _level in _levels) {
            if ((_level > _highestLevel : Bool)) {
                _highestLevel = _level;
            };
            if ((((_level & (1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level) != (0 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level)) && (_level < _lowestOddLevel : Bool) : Bool)) {
                _lowestOddLevel = _level;
            };
        };
        {
            var _level = (_highestLevel : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level);
            stdgo.Go.cfor((_level >= _lowestOddLevel : Bool), _level--, {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (_levels.length) : Bool), _i++, {
                        if ((_levels[(_i : stdgo.GoInt)] >= _level : Bool)) {
                            var _start = (_i : stdgo.GoInt);
                            var _limit = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                            while (((_limit < (_levels.length) : Bool) && (_levels[(_limit : stdgo.GoInt)] >= _level : Bool) : Bool)) {
                                _limit++;
                            };
                            {
                                var __0 = (_start : stdgo.GoInt), __1 = (_limit - (1 : stdgo.GoInt) : stdgo.GoInt);
var _k = __1, _j = __0;
                                stdgo.Go.cfor((_j < _k : Bool), {
                                    final __tmp__0 = (_j + (1 : stdgo.GoInt) : stdgo.GoInt);
                                    final __tmp__1 = (_k - (1 : stdgo.GoInt) : stdgo.GoInt);
                                    _j = __tmp__0;
                                    _k = __tmp__1;
                                }, {
                                    {
                                        final __tmp__0 = _result[(_k : stdgo.GoInt)];
                                        final __tmp__1 = _result[(_j : stdgo.GoInt)];
                                        final __tmp__2 = _result;
                                        final __tmp__3 = (_j : stdgo.GoInt);
                                        final __tmp__4 = _result;
                                        final __tmp__5 = (_k : stdgo.GoInt);
                                        __tmp__2[__tmp__3] = __tmp__0;
                                        __tmp__4[__tmp__5] = __tmp__1;
                                    };
                                });
                            };
                            _i = _limit;
                        };
                    });
                };
            });
        };
        return _result;
    }
