package stdgo._internal.math.big;
function testFloatQuoSmoke(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _n = (10 : stdgo.GoInt);
        if (stdgo._internal.math.big.Big__long._long.value) {
            _n = (1000 : stdgo.GoInt);
        };
        {};
        {};
        {
            var _x = (-_n : stdgo.GoInt);
            while ((_x <= _n : Bool)) {
                {
                    var _y = (-_n : stdgo.GoInt);
                    while ((_y < _n : Bool)) {
                        if (_y == ((0 : stdgo.GoInt))) {
                            {
                                _y++;
                                continue;
                            };
                        };
var _a = (_x : stdgo.GoFloat64);
var _b = (_y : stdgo.GoFloat64);
var _c = (_a / _b : stdgo.GoFloat64);
{
                            var _ad = (-3 : stdgo.GoInt);
                            while ((_ad <= (3 : stdgo.GoInt) : Bool)) {
                                {
                                    var _bd = (-3 : stdgo.GoInt);
                                    while ((_bd <= (3 : stdgo.GoInt) : Bool)) {
                                        var a = @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec((((13 : stdgo.GoInt) + _ad : stdgo.GoInt) : stdgo.GoUInt)).setFloat64(_a);
var b = @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec((((13 : stdgo.GoInt) + _bd : stdgo.GoInt) : stdgo.GoUInt)).setFloat64(_b);
var c = @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec((53u32 : stdgo.GoUInt)).quo(a, b);
var __tmp__ = @:check2r c.float64(), _cc:stdgo.GoFloat64 = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
if (_cc != (_c)) {
                                            @:check2r _t.errorf(("%g/%g = %s; want %.5g\n" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(@:check2r c.text((103 : stdgo.GoUInt8), (5 : stdgo.GoInt))), stdgo.Go.toInterface(_c));
                                            {
                                                _bd++;
                                                continue;
                                            };
                                        };
if (_acc != ((0 : stdgo._internal.math.big.Big_accuracy.Accuracy))) {
                                            @:check2r _t.errorf(("%g/%g got %s result; want exact result" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(stdgo.Go.asInterface(_acc)));
                                        };
                                        _bd++;
                                    };
                                };
                                _ad++;
                            };
                        };
                        _y++;
                    };
                };
                _x++;
            };
        };
    }
