package stdgo._internal.encoding.json;
function testNumberAccessors(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__4 => _tt in stdgo._internal.encoding.json.Json__numbertests._numberTests) {
            var _n = (_tt._in : stdgo._internal.encoding.json.Json_number.Number);
            {
                var _s = ((_n.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (_tt._in)) {
                    @:check2r _t.errorf(("Number(%q).String() is %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_s));
                };
            };
            {
                var __tmp__ = _n.int64(), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err == null && _tt._intErr == ((stdgo.Go.str() : stdgo.GoString)) : Bool) && (_i != _tt._i) : Bool)) {
                    @:check2r _t.errorf(("Number(%q).Int64() is %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_i));
                } else if (((((_err == null) && (_tt._intErr != (stdgo.Go.str() : stdgo.GoString)) : Bool)) || (((_err != null) && (_err.error() != _tt._intErr) : Bool)) : Bool)) {
                    @:check2r _t.errorf(("Number(%q).Int64() wanted error %q but got: %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._intErr), stdgo.Go.toInterface(_err));
                };
            };
            {
                var __tmp__ = _n.float64(), _f:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err == null && _tt._floatErr == ((stdgo.Go.str() : stdgo.GoString)) : Bool) && (_f != _tt._f) : Bool)) {
                    @:check2r _t.errorf(("Number(%q).Float64() is %g" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_f));
                } else if (((((_err == null) && (_tt._floatErr != (stdgo.Go.str() : stdgo.GoString)) : Bool)) || (((_err != null) && (_err.error() != _tt._floatErr) : Bool)) : Bool)) {
                    @:check2r _t.errorf(("Number(%q).Float64() wanted error %q but got: %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._floatErr), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
