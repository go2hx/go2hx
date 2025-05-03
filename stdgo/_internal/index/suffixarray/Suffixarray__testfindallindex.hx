package stdgo._internal.index.suffixarray;
function _testFindAllIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _tc:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_testcase.T_testCase>, _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>, _rx:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _n:stdgo.GoInt):Void {
        var _res = _x.findAllIndex(_rx, _n);
        var _exp = _rx.findAllStringIndex((@:checkr _tc ?? throw "null pointer dereference")._source?.__copy__(), _n);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L172"
        if ((_res.length) != ((_exp.length))) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L173"
            _t.errorf(("test %q, FindAllIndex %q (n = %d): expected %d results; got %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(stdgo.Go.asInterface(_rx)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_exp.length)), stdgo.Go.toInterface((_res.length)));
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L182"
        for (_i => _r in _res) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L183"
            if ((((_r[(0 : stdgo.GoInt)] < (0 : stdgo.GoInt) : Bool) || (_r[(0 : stdgo.GoInt)] > _r[(1 : stdgo.GoInt)] : Bool) : Bool) || (((@:checkr _tc ?? throw "null pointer dereference")._source.length) < _r[(1 : stdgo.GoInt)] : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L184"
                _t.errorf(("test %q, FindAllIndex %q, result %d (n == %d): illegal match [%d, %d]" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(stdgo.Go.asInterface(_rx)), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_r[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_r[(1 : stdgo.GoInt)]));
            } else if (!_rx.matchString(((@:checkr _tc ?? throw "null pointer dereference")._source.__slice__(_r[(0 : stdgo.GoInt)], _r[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L186"
                _t.errorf(("test %q, FindAllIndex %q, result %d (n = %d): [%d, %d] not a match" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(stdgo.Go.asInterface(_rx)), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_r[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_r[(1 : stdgo.GoInt)]));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L190"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L192"
            for (_i => _r in _res) {
                var _e = _exp[(_i : stdgo.GoInt)];
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L194"
                if (((_r[(0 : stdgo.GoInt)] != _e[(0 : stdgo.GoInt)]) || (_r[(1 : stdgo.GoInt)] != _e[(1 : stdgo.GoInt)]) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L195"
                    _t.errorf(("test %q, FindAllIndex %q, result %d: expected match [%d, %d]; got [%d, %d]" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(stdgo.Go.asInterface(_rx)), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_e[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_e[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_r[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_r[(1 : stdgo.GoInt)]));
                };
            };
        };
    }
