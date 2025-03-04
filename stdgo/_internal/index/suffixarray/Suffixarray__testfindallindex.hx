package stdgo._internal.index.suffixarray;
function _testFindAllIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _tc:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_testcase.T_testCase>, _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>, _rx:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _n:stdgo.GoInt):Void {
        var _res = @:check2r _x.findAllIndex(_rx, _n);
        var _exp = @:check2r _rx.findAllStringIndex((@:checkr _tc ?? throw "null pointer dereference")._source?.__copy__(), _n);
        if ((_res.length) != ((_exp.length))) {
            @:check2r _t.errorf(("test %q, FindAllIndex %q (n = %d): expected %d results; got %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(stdgo.Go.asInterface(_rx)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_exp.length)), stdgo.Go.toInterface((_res.length)));
        };
        for (_i => _r in _res) {
            if ((((_r[(0 : stdgo.GoInt)] < (0 : stdgo.GoInt) : Bool) || (_r[(0 : stdgo.GoInt)] > _r[(1 : stdgo.GoInt)] : Bool) : Bool) || (((@:checkr _tc ?? throw "null pointer dereference")._source.length) < _r[(1 : stdgo.GoInt)] : Bool) : Bool)) {
                @:check2r _t.errorf(("test %q, FindAllIndex %q, result %d (n == %d): illegal match [%d, %d]" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(stdgo.Go.asInterface(_rx)), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_r[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_r[(1 : stdgo.GoInt)]));
            } else if (!@:check2r _rx.matchString(((@:checkr _tc ?? throw "null pointer dereference")._source.__slice__(_r[(0 : stdgo.GoInt)], _r[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__())) {
                @:check2r _t.errorf(("test %q, FindAllIndex %q, result %d (n = %d): [%d, %d] not a match" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(stdgo.Go.asInterface(_rx)), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_r[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_r[(1 : stdgo.GoInt)]));
            };
        };
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            for (_i => _r in _res) {
                var _e = _exp[(_i : stdgo.GoInt)];
                if (((_r[(0 : stdgo.GoInt)] != _e[(0 : stdgo.GoInt)]) || (_r[(1 : stdgo.GoInt)] != _e[(1 : stdgo.GoInt)]) : Bool)) {
                    @:check2r _t.errorf(("test %q, FindAllIndex %q, result %d: expected match [%d, %d]; got [%d, %d]" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(stdgo.Go.asInterface(_rx)), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_e[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_e[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_r[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_r[(1 : stdgo.GoInt)]));
                };
            };
        };
    }
