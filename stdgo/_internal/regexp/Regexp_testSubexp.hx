package stdgo._internal.regexp;
function testSubexp(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _c in stdgo._internal.regexp.Regexp__subexpCases._subexpCases) {
            var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(_c._input?.__copy__());
            var _n = (_re.numSubexp() : stdgo.GoInt);
            if (_n != (_c._num)) {
                _t.errorf(("%q: NumSubexp = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_c._input), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_c._num));
                continue;
            };
            var _names = _re.subexpNames();
            if ((_names.length) != (((1 : stdgo.GoInt) + _n : stdgo.GoInt))) {
                _t.errorf(("%q: len(SubexpNames) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_c._input), stdgo.Go.toInterface((_names.length)), stdgo.Go.toInterface(_n));
                continue;
            };
            if (_c._names != null) {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < ((1 : stdgo.GoInt) + _n : stdgo.GoInt) : Bool), _i++, {
                        if (_names[(_i : stdgo.GoInt)] != (_c._names[(_i : stdgo.GoInt)])) {
                            _t.errorf(("%q: SubexpNames[%d] = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_c._input), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_names[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_c._names[(_i : stdgo.GoInt)]));
                        };
                    });
                };
            };
            for (__1 => _subexp in _c._indices) {
                var _index = (_re.subexpIndex(_subexp._name?.__copy__()) : stdgo.GoInt);
                if (_index != (_subexp._index)) {
                    _t.errorf(("%q: SubexpIndex(%q) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_c._input), stdgo.Go.toInterface(_subexp._name), stdgo.Go.toInterface(_index), stdgo.Go.toInterface(_subexp._index));
                };
            };
        };
    }