package stdgo._internal.math.big;
function testSqrt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _root = (0 : stdgo.GoInt);
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (10000 : stdgo.GoInt) : Bool)) {
                if (((((_root + (1 : stdgo.GoInt) : stdgo.GoInt)) * ((_root + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) <= _i : Bool)) {
                    _root++;
                };
var _n = stdgo._internal.math.big.Big_newint.newInt((_i : stdgo.GoInt64));
@:check2r _r.setInt64((-2i64 : stdgo.GoInt64));
@:check2r _r.sqrt(_n);
if (@:check2r _r.cmp(stdgo._internal.math.big.Big_newint.newInt((_root : stdgo.GoInt64))) != ((0 : stdgo.GoInt))) {
                    @:check2r _t.errorf(("Sqrt(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_n)), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(_root));
                };
                _i++;
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (1000 : stdgo.GoInt) : Bool)) {
                var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString((("1" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("0" : stdgo.GoString), _i).__copy__() : stdgo.GoString).__copy__(), (10 : stdgo.GoInt)), _n:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __8:Bool = __tmp__._1;
var _r = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).sqrt(_n);
var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString((("1" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("0" : stdgo.GoString), (_i / (2 : stdgo.GoInt) : stdgo.GoInt)).__copy__() : stdgo.GoString).__copy__(), (10 : stdgo.GoInt)), _root:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __9:Bool = __tmp__._1;
if (@:check2r _r.cmp(_root) != ((0 : stdgo.GoInt))) {
                    @:check2r _t.errorf(("Sqrt(1e%d) = %v, want 1e%d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface((_i / (2 : stdgo.GoInt) : stdgo.GoInt)));
                };
                _i = (_i + ((10 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        @:check2r _r.setInt64((100i64 : stdgo.GoInt64));
        @:check2r _r.sqrt(_r);
        if (@:check2r _r.int64() != ((10i64 : stdgo.GoInt64))) {
            @:check2r _t.errorf(("Sqrt(100) = %v, want 10 (aliased output)" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _r.int64()));
        };
    }
