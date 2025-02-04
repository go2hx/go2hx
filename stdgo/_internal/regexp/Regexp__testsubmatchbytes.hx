package stdgo._internal.regexp;
function _testSubmatchBytes(_test:stdgo.Ref<stdgo._internal.regexp.Regexp_findtest.FindTest>, _n:stdgo.GoInt, _submatches:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, _t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        if ((_submatches.length) != (((_result.length) * (2 : stdgo.GoInt) : stdgo.GoInt))) {
            @:check2r _t.errorf(("match %d: expected %d submatches; got %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(((_submatches.length) / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface((_result.length)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            return;
        };
        {
            var _k = (0 : stdgo.GoInt);
            while ((_k < (_submatches.length) : Bool)) {
                if (_submatches[(_k : stdgo.GoInt)] == ((-1 : stdgo.GoInt))) {
                    if (_result[(_k / (2 : stdgo.GoInt) : stdgo.GoInt)] != null) {
                        @:check2r _t.errorf(("match %d: expected nil got %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    };
                    {
                        _k = (_k + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                        continue;
                    };
                };
var _got = _result[(_k / (2 : stdgo.GoInt) : stdgo.GoInt)];
if ((_got.length) != (_got.capacity)) {
                    @:check2r _t.errorf(("match %d: expected capacity %d got %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_got.length)), stdgo.Go.toInterface(_got.capacity), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    return;
                };
var _expect = (((@:checkr _test ?? throw "null pointer dereference")._text.__slice__(_submatches[(_k : stdgo.GoInt)], _submatches[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString).__copy__() : stdgo.GoString);
if (_expect != ((_got : stdgo.GoString))) {
                    @:check2r _t.errorf(("match %d: expected %q got %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    return;
                };
                _k = (_k + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
    }
