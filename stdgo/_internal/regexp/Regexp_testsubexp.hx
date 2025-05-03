package stdgo._internal.regexp;
function testSubexp(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L454"
        for (__0 => _c in stdgo._internal.regexp.Regexp__subexpcases._subexpCases) {
            var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(_c._input?.__copy__());
            var _n = (_re.numSubexp() : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L457"
            if (_n != (_c._num)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L458"
                _t.errorf(("%q: NumSubexp = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_c._input), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_c._num));
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L459"
                continue;
            };
            var _names = _re.subexpNames();
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L462"
            if ((_names.length) != (((1 : stdgo.GoInt) + _n : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L463"
                _t.errorf(("%q: len(SubexpNames) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_c._input), stdgo.Go.toInterface((_names.length)), stdgo.Go.toInterface(_n));
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L464"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L466"
            if (_c._names != null) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L467"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < ((1 : stdgo.GoInt) + _n : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L468"
                        if (_names[(_i : stdgo.GoInt)] != (_c._names[(_i : stdgo.GoInt)])) {
                            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L469"
                            _t.errorf(("%q: SubexpNames[%d] = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_c._input), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_names[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_c._names[(_i : stdgo.GoInt)]));
                        };
                        _i++;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L473"
            for (__1 => _subexp in _c._indices) {
                var _index = (_re.subexpIndex(_subexp._name?.__copy__()) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L475"
                if (_index != (_subexp._index)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L476"
                    _t.errorf(("%q: SubexpIndex(%q) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_c._input), stdgo.Go.toInterface(_subexp._name), stdgo.Go.toInterface(_index), stdgo.Go.toInterface(_subexp._index));
                };
            };
        };
    }
