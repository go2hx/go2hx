package stdgo._internal.index.suffixarray;
function _testLookup(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _tc:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_testcase.T_testCase>, _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>, _s:stdgo.GoString, _n:stdgo.GoInt):Void {
        var _res = _x.lookup((_s : stdgo.Slice<stdgo.GoUInt8>), _n);
        var _exp = stdgo._internal.index.suffixarray.Suffixarray__find._find((@:checkr _tc ?? throw "null pointer dereference")._source?.__copy__(), _s?.__copy__(), _n);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L134"
        if ((_res.length) != ((_exp.length))) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L135"
            _t.errorf(("test %q, lookup %q (n = %d): expected %d results; got %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_exp.length)), stdgo.Go.toInterface((_res.length)));
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L144"
        stdgo._internal.sort.Sort_ints.ints(_res);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L145"
        for (_i => _r in _res) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L146"
            if (((_r < (0 : stdgo.GoInt) : Bool) || (((@:checkr _tc ?? throw "null pointer dereference")._source.length) <= _r : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L147"
                _t.errorf(("test %q, lookup %q, result %d (n = %d): index %d out of range [0, %d[" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(((@:checkr _tc ?? throw "null pointer dereference")._source.length)));
            } else if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(((@:checkr _tc ?? throw "null pointer dereference")._source.__slice__(_r) : stdgo.GoString)?.__copy__(), _s?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L149"
                _t.errorf(("test %q, lookup %q, result %d (n = %d): index %d not a match" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_r));
            };
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L151"
            if (((_i > (0 : stdgo.GoInt) : Bool) && (_res[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == _r) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L152"
                _t.errorf(("test %q, lookup %q, result %d (n = %d): found duplicate index %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_r));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L156"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L158"
            for (_i => _r in _res) {
                var _e = (_exp[(_i : stdgo.GoInt)] : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L160"
                if (_r != (_e)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L161"
                    _t.errorf(("test %q, lookup %q, result %d: expected index %d; got %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_r));
                };
            };
        };
    }
