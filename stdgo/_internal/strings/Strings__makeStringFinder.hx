package stdgo._internal.strings;
function _makeStringFinder(_pattern:stdgo.GoString):stdgo.Ref<stdgo._internal.strings.Strings_T_stringFinder.T_stringFinder> {
        var _f = (stdgo.Go.setRef(({ _pattern : _pattern?.__copy__(), _goodSuffixSkip : (new stdgo.Slice<stdgo.GoInt>((_pattern.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.strings.Strings_T_stringFinder.T_stringFinder)) : stdgo.Ref<stdgo._internal.strings.Strings_T_stringFinder.T_stringFinder>);
        var _last = ((_pattern.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        for (_i => _ in _f._badCharSkip) {
            _f._badCharSkip[(_i : stdgo.GoInt)] = (_pattern.length);
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _last : Bool), _i++, {
                _f._badCharSkip[(_pattern[(_i : stdgo.GoInt)] : stdgo.GoInt)] = (_last - _i : stdgo.GoInt);
            });
        };
        var _lastPrefix = (_last : stdgo.GoInt);
        {
            var _i = (_last : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_pattern?.__copy__(), (_pattern.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__())) {
                    _lastPrefix = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                };
                _f._goodSuffixSkip[(_i : stdgo.GoInt)] = ((_lastPrefix + _last : stdgo.GoInt) - _i : stdgo.GoInt);
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _last : Bool), _i++, {
                var _lenSuffix = (stdgo._internal.strings.Strings__longestCommonSuffix._longestCommonSuffix(_pattern?.__copy__(), (_pattern.__slice__((1 : stdgo.GoInt), (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo.GoInt);
                if (_pattern[(_i - _lenSuffix : stdgo.GoInt)] != (_pattern[((_last - _lenSuffix : stdgo.GoInt) : stdgo.GoInt)])) {
                    _f._goodSuffixSkip[(_last - _lenSuffix : stdgo.GoInt)] = ((_lenSuffix + _last : stdgo.GoInt) - _i : stdgo.GoInt);
                };
            });
        };
        return _f;
    }