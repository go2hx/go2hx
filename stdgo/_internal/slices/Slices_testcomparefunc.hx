package stdgo._internal.slices;
function testCompareFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _intWant = (function(_want:Bool):stdgo.GoString {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L291"
            if (_want) {
                //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L292"
                return ("0" : stdgo.GoString);
            };
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L294"
            return ("!= 0" : stdgo.GoString);
        } : Bool -> stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L296"
        for (__0 => _test in stdgo._internal.slices.Slices__equalinttests._equalIntTests) {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L297"
            {
                var _got = (stdgo._internal.slices.Slices_comparefunc.compareFunc(_test._s1, _test._s2, stdgo._internal.slices.Slices__equaltocmp._equalToCmp(function(_0:stdgo.GoInt, _1:stdgo.GoInt):Bool return stdgo._internal.slices.Slices__equal._equal(_0, _1))) : stdgo.GoInt);
                if ((_got == (0 : stdgo.GoInt)) != (_test._want)) {
                    //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L298"
                    _t.errorf(("CompareFunc(%v, %v, equalToCmp(equal[int])) = %d, want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_intWant(_test._want)));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L301"
        for (__1 => _test in stdgo._internal.slices.Slices__equalfloattests._equalFloatTests) {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L302"
            {
                var _got = (stdgo._internal.slices.Slices_comparefunc.compareFunc(_test._s1, _test._s2, stdgo._internal.slices.Slices__equaltocmp._equalToCmp(function(_0:stdgo.GoFloat64, _1:stdgo.GoFloat64):Bool return stdgo._internal.slices.Slices__equal._equal(_0, _1))) : stdgo.GoInt);
                if ((_got == (0 : stdgo.GoInt)) != (_test._wantEqual)) {
                    //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L303"
                    _t.errorf(("CompareFunc(%v, %v, equalToCmp(equal[float64])) = %d, want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_intWant(_test._wantEqual)));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L307"
        for (__2 => _test in stdgo._internal.slices.Slices__compareinttests._compareIntTests) {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L308"
            {
                var _got = (stdgo._internal.slices.Slices_comparefunc.compareFunc(_test._s1, _test._s2, function(x:Dynamic, y:Dynamic):stdgo.GoInt return stdgo._internal.cmp.Cmp_compare.compare(x, y)) : stdgo.GoInt);
                if (_got != (_test._want)) {
                    //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L309"
                    _t.errorf(("CompareFunc(%v, %v, cmp[int]) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L312"
        for (__3 => _test in stdgo._internal.slices.Slices__comparefloattests._compareFloatTests) {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L313"
            {
                var _got = (stdgo._internal.slices.Slices_comparefunc.compareFunc(_test._s1, _test._s2, function(x:Dynamic, y:Dynamic):stdgo.GoInt return stdgo._internal.cmp.Cmp_compare.compare(x, y)) : stdgo.GoInt);
                if (_got != (_test._want)) {
                    //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L314"
                    _t.errorf(("CompareFunc(%v, %v, cmp[float64]) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        var _s1 = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _s2 = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L320"
        {
            var _got = (stdgo._internal.slices.Slices_comparefunc.compareFunc(_s1, _s2, stdgo._internal.slices.Slices__equaltocmp._equalToCmp(stdgo._internal.slices.Slices__offbyone._offByOne)) : stdgo.GoInt);
            if (_got != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L321"
                _t.errorf(("CompareFunc(%v, %v, offByOne) = %d, want 0" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s2), stdgo.Go.toInterface(_got));
            };
        };
        var _s3 = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _s4 = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("A" : stdgo.GoString), ("B" : stdgo.GoString), ("C" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L326"
        {
            var _got = (stdgo._internal.slices.Slices_comparefunc.compareFunc(_s3, _s4, stdgo._internal.strings.Strings_compare.compare) : stdgo.GoInt);
            if (_got != ((1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L327"
                _t.errorf(("CompareFunc(%v, %v, strings.Compare) = %d, want 1" : stdgo.GoString), stdgo.Go.toInterface(_s3), stdgo.Go.toInterface(_s4), stdgo.Go.toInterface(_got));
            };
        };
        var _compareLower = (function(_v1:stdgo.GoString, _v2:stdgo.GoString):stdgo.GoInt {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L331"
            return stdgo._internal.strings.Strings_compare.compare(stdgo._internal.strings.Strings_tolower.toLower(_v1?.__copy__())?.__copy__(), stdgo._internal.strings.Strings_tolower.toLower(_v2?.__copy__())?.__copy__());
        } : (stdgo.GoString, stdgo.GoString) -> stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L333"
        {
            var _got = (stdgo._internal.slices.Slices_comparefunc.compareFunc(_s3, _s4, _compareLower) : stdgo.GoInt);
            if (_got != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L334"
                _t.errorf(("CompareFunc(%v, %v, compareLower) = %d, want 0" : stdgo.GoString), stdgo.Go.toInterface(_s3), stdgo.Go.toInterface(_s4), stdgo.Go.toInterface(_got));
            };
        };
        var _cmpIntString = (function(_v1:stdgo.GoInt, _v2:stdgo.GoString):stdgo.GoInt {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L338"
            return stdgo._internal.strings.Strings_compare.compare(((((_v1 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32) + (97 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoString)?.__copy__(), _v2?.__copy__());
        } : (stdgo.GoInt, stdgo.GoString) -> stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L340"
        {
            var _got = (stdgo._internal.slices.Slices_comparefunc.compareFunc(_s1, _s3, _cmpIntString) : stdgo.GoInt);
            if (_got != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L341"
                _t.errorf(("CompareFunc(%v, %v, cmpIntString) = %d, want 0" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s3), stdgo.Go.toInterface(_got));
            };
        };
    }
