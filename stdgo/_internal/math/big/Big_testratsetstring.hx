package stdgo._internal.math.big;
function testRatSetString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _tests:stdgo.Slice<stdgo._internal.math.big.Big_stringtest.StringTest> = (null : stdgo.Slice<stdgo._internal.math.big.Big_stringtest.StringTest>);
        _tests = (_tests.__append__(...(stdgo._internal.math.big.Big__setstringtests._setStringTests : Array<stdgo._internal.math.big.Big_stringtest.StringTest>)));
        _tests = (_tests.__append__(...(stdgo._internal.math.big.Big__setstringtests2._setStringTests2 : Array<stdgo._internal.math.big.Big_stringtest.StringTest>)));
        for (_i => _test in _tests) {
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setString(_test._in?.__copy__()), _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                if (!_test._ok) {
                    @:check2r _t.errorf(("#%d SetString(%q) expected failure" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in));
                } else if (@:check2r _x.ratString() != (_test._out)) {
                    @:check2r _t.errorf(("#%d SetString(%q) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(@:check2r _x.ratString()), stdgo.Go.toInterface(_test._out));
                };
            } else {
                if (_test._ok) {
                    @:check2r _t.errorf(("#%d SetString(%q) expected success" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in));
                } else if ((_x != null && ((_x : Dynamic).__nil__ == null || !(_x : Dynamic).__nil__))) {
                    @:check2r _t.errorf(("#%d SetString(%q) got %p want nil" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
                };
            };
        };
    }
