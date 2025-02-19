package stdgo._internal.index.suffixarray;
function _testLookup(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _tc:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_testcase.T_testCase>, _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>, _s:stdgo.GoString, _n:stdgo.GoInt):Void {
        var _res = @:check2r _x.lookup((_s : stdgo.Slice<stdgo.GoUInt8>), _n);
        var _exp = stdgo._internal.index.suffixarray.Suffixarray__find._find((@:checkr _tc ?? throw "null pointer dereference")._source?.__copy__(), _s?.__copy__(), _n);
        if ((_res.length) != ((_exp.length))) {
            @:check2r _t.errorf(("test %q, lookup %q (n = %d): expected %d results; got %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_exp.length)), stdgo.Go.toInterface((_res.length)));
        };
        stdgo._internal.sort.Sort_ints.ints(_res);
        for (_i => _r in _res) {
            if (((_r < (0 : stdgo.GoInt) : Bool) || (((@:checkr _tc ?? throw "null pointer dereference")._source.length) <= _r : Bool) : Bool)) {
                @:check2r _t.errorf(("test %q, lookup %q, result %d (n = %d): index %d out of range [0, %d[" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(((@:checkr _tc ?? throw "null pointer dereference")._source.length)));
            } else if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(((@:checkr _tc ?? throw "null pointer dereference")._source.__slice__(_r) : stdgo.GoString)?.__copy__(), _s?.__copy__())) {
                @:check2r _t.errorf(("test %q, lookup %q, result %d (n = %d): index %d not a match" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_r));
            };
            if (((_i > (0 : stdgo.GoInt) : Bool) && (_res[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == _r) : Bool)) {
                @:check2r _t.errorf(("test %q, lookup %q, result %d (n = %d): found duplicate index %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_r));
            };
        };
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            for (_i => _r in _res) {
                var _e = (_exp[(_i : stdgo.GoInt)] : stdgo.GoInt);
                if (_r != (_e)) {
                    @:check2r _t.errorf(("test %q, lookup %q, result %d: expected index %d; got %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_r));
                };
            };
        };
    }
