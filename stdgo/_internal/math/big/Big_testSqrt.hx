package stdgo._internal.math.big;
function testSqrt(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _root = (0 : stdgo.GoInt);
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10000 : stdgo.GoInt) : Bool), _i++, {
                if (((((_root + (1 : stdgo.GoInt) : stdgo.GoInt)) * ((_root + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) <= _i : Bool)) {
                    _root++;
                };
                var _n = stdgo._internal.math.big.Big_newInt.newInt((_i : stdgo.GoInt64));
                _r.setInt64((-2i64 : stdgo.GoInt64));
                _r.sqrt(_n);
                if (_r.cmp(stdgo._internal.math.big.Big_newInt.newInt((_root : stdgo.GoInt64))) != ((0 : stdgo.GoInt))) {
                    _t.errorf(("Sqrt(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_n)), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(_root));
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i = (_i + ((10 : stdgo.GoInt)) : stdgo.GoInt), {
                var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString((("1" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("0" : stdgo.GoString), _i)?.__copy__() : stdgo.GoString)?.__copy__(), (10 : stdgo.GoInt)), _n:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, __14:Bool = __tmp__._1;
                var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).sqrt(_n);
                var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString((("1" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("0" : stdgo.GoString), (_i / (2 : stdgo.GoInt) : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__(), (10 : stdgo.GoInt)), _root:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, __15:Bool = __tmp__._1;
                if (_r.cmp(_root) != ((0 : stdgo.GoInt))) {
                    _t.errorf(("Sqrt(1e%d) = %v, want 1e%d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface((_i / (2 : stdgo.GoInt) : stdgo.GoInt)));
                };
            });
        };
        _r.setInt64((100i64 : stdgo.GoInt64));
        _r.sqrt(_r);
        if (_r.int64() != ((10i64 : stdgo.GoInt64))) {
            _t.errorf(("Sqrt(100) = %v, want 10 (aliased output)" : stdgo.GoString), stdgo.Go.toInterface(_r.int64()));
        };
    }
