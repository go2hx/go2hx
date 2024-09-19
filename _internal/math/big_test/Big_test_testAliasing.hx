package _internal.math.big_test;
function testAliasing(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_name => _f in ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            x.set(("Abs" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt):Bool {
                return _internal.math.big_test.Big_test__checkAliasingOneArg._checkAliasingOneArg(_t, stdgo._internal.math.big.Big_Int_._internal.math.big_test.Big_test_Int__static_extension.Int__static_extension.abs, _v.int_, _x.int_);
            }));
x.set(("Add" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _y:_internal.math.big_test.Big_test_T_bigInt.T_bigInt):Bool {
                return _internal.math.big_test.Big_test__checkAliasingTwoArgs._checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big_Int_._internal.math.big_test.Big_test_Int__static_extension.Int__static_extension.add, _v.int_, _x.int_, _y.int_);
            }));
x.set(("And" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _y:_internal.math.big_test.Big_test_T_bigInt.T_bigInt):Bool {
                return _internal.math.big_test.Big_test__checkAliasingTwoArgs._checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big_Int_._internal.math.big_test.Big_test_Int__static_extension.Int__static_extension.and, _v.int_, _x.int_, _y.int_);
            }));
x.set(("AndNot" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _y:_internal.math.big_test.Big_test_T_bigInt.T_bigInt):Bool {
                return _internal.math.big_test.Big_test__checkAliasingTwoArgs._checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big_Int_._internal.math.big_test.Big_test_Int__static_extension.Int__static_extension.andNot, _v.int_, _x.int_, _y.int_);
            }));
x.set(("Div" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _y:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt):Bool {
                return _internal.math.big_test.Big_test__checkAliasingTwoArgs._checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big_Int_._internal.math.big_test.Big_test_Int__static_extension.Int__static_extension.div, _v.int_, _x.int_, _y.int_);
            }));
x.set(("Exp-XY" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _y:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _z:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt):Bool {
                return _internal.math.big_test.Big_test__checkAliasingTwoArgs._checkAliasingTwoArgs(_t, function(_v:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
                    return _v.exp(_x, _y, _z.int_);
                }, _v.int_, _x.int_, _y.int_);
            }));
x.set(("Exp-XZ" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _y:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _z:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt):Bool {
                return _internal.math.big_test.Big_test__checkAliasingTwoArgs._checkAliasingTwoArgs(_t, function(_v:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
                    return _v.exp(_x, _y.int_, _z);
                }, _v.int_, _x.int_, _z.int_);
            }));
x.set(("Exp-YZ" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _y:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _z:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt):Bool {
                return _internal.math.big_test.Big_test__checkAliasingTwoArgs._checkAliasingTwoArgs(_t, function(_v:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
                    return _v.exp(_x.int_, _y, _z);
                }, _v.int_, _y.int_, _z.int_);
            }));
x.set(("GCD" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _y:_internal.math.big_test.Big_test_T_bigInt.T_bigInt):Bool {
                return _internal.math.big_test.Big_test__checkAliasingTwoArgs._checkAliasingTwoArgs(_t, function(_v:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
                    return _v.gcd(null, null, _x, _y);
                }, _v.int_, _x.int_, _y.int_);
            }));
x.set(("GCD-X" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _y:_internal.math.big_test.Big_test_T_bigInt.T_bigInt):Bool {
                var __0 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), __1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
var _b = __1, _a = __0;
                return _internal.math.big_test.Big_test__checkAliasingTwoArgs._checkAliasingTwoArgs(_t, function(_v:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
                    _a.gcd(_v, _b, _x, _y);
                    return _v;
                }, _v.int_, _x.int_, _y.int_);
            }));
x.set(("GCD-Y" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _y:_internal.math.big_test.Big_test_T_bigInt.T_bigInt):Bool {
                var __0 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), __1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
var _b = __1, _a = __0;
                return _internal.math.big_test.Big_test__checkAliasingTwoArgs._checkAliasingTwoArgs(_t, function(_v:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
                    _a.gcd(_b, _v, _x, _y);
                    return _v;
                }, _v.int_, _x.int_, _y.int_);
            }));
x.set(("Lsh" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _n:_internal.math.big_test.Big_test_T_smallUint.T_smallUint):Bool {
                return _internal.math.big_test.Big_test__checkAliasingOneArg._checkAliasingOneArg(_t, function(_v:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
                    return _v.lsh(_x, _n._uint);
                }, _v.int_, _x.int_);
            }));
x.set(("Mod" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _y:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt):Bool {
                return _internal.math.big_test.Big_test__checkAliasingTwoArgs._checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big_Int_._internal.math.big_test.Big_test_Int__static_extension.Int__static_extension.mod, _v.int_, _x.int_, _y.int_);
            }));
x.set(("ModInverse" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _y:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt):Bool {
                return _internal.math.big_test.Big_test__checkAliasingTwoArgs._checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big_Int_._internal.math.big_test.Big_test_Int__static_extension.Int__static_extension.modInverse, _v.int_, _x.int_, _y.int_);
            }));
x.set(("ModSqrt" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _p:_internal.math.big_test.Big_test_T_prime.T_prime):Bool {
                return _internal.math.big_test.Big_test__checkAliasingTwoArgs._checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big_Int_._internal.math.big_test.Big_test_Int__static_extension.Int__static_extension.modSqrt, _v.int_, _x.int_, _p.int_);
            }));
x.set(("Mul" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _y:_internal.math.big_test.Big_test_T_bigInt.T_bigInt):Bool {
                return _internal.math.big_test.Big_test__checkAliasingTwoArgs._checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big_Int_._internal.math.big_test.Big_test_Int__static_extension.Int__static_extension.mul, _v.int_, _x.int_, _y.int_);
            }));
x.set(("Neg" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt):Bool {
                return _internal.math.big_test.Big_test__checkAliasingOneArg._checkAliasingOneArg(_t, stdgo._internal.math.big.Big_Int_._internal.math.big_test.Big_test_Int__static_extension.Int__static_extension.neg, _v.int_, _x.int_);
            }));
x.set(("Not" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt):Bool {
                return _internal.math.big_test.Big_test__checkAliasingOneArg._checkAliasingOneArg(_t, stdgo._internal.math.big.Big_Int_._internal.math.big_test.Big_test_Int__static_extension.Int__static_extension.not, _v.int_, _x.int_);
            }));
x.set(("Or" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _y:_internal.math.big_test.Big_test_T_bigInt.T_bigInt):Bool {
                return _internal.math.big_test.Big_test__checkAliasingTwoArgs._checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big_Int_._internal.math.big_test.Big_test_Int__static_extension.Int__static_extension.or, _v.int_, _x.int_, _y.int_);
            }));
x.set(("Quo" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _y:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt):Bool {
                return _internal.math.big_test.Big_test__checkAliasingTwoArgs._checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big_Int_._internal.math.big_test.Big_test_Int__static_extension.Int__static_extension.quo, _v.int_, _x.int_, _y.int_);
            }));
x.set(("Rand" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _seed:stdgo.GoInt64):Bool {
                return _internal.math.big_test.Big_test__checkAliasingOneArg._checkAliasingOneArg(_t, function(_v:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
                    var _rnd = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource(_seed));
                    return _v.rand(_rnd, _x);
                }, _v.int_, _x.int_);
            }));
x.set(("Rem" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _y:_internal.math.big_test.Big_test_T_notZeroInt.T_notZeroInt):Bool {
                return _internal.math.big_test.Big_test__checkAliasingTwoArgs._checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big_Int_._internal.math.big_test.Big_test_Int__static_extension.Int__static_extension.rem, _v.int_, _x.int_, _y.int_);
            }));
x.set(("Rsh" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _n:_internal.math.big_test.Big_test_T_smallUint.T_smallUint):Bool {
                return _internal.math.big_test.Big_test__checkAliasingOneArg._checkAliasingOneArg(_t, function(_v:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
                    return _v.rsh(_x, _n._uint);
                }, _v.int_, _x.int_);
            }));
x.set(("Set" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt):Bool {
                return _internal.math.big_test.Big_test__checkAliasingOneArg._checkAliasingOneArg(_t, stdgo._internal.math.big.Big_Int_._internal.math.big_test.Big_test_Int__static_extension.Int__static_extension.set, _v.int_, _x.int_);
            }));
x.set(("SetBit" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _i:_internal.math.big_test.Big_test_T_smallUint.T_smallUint, _b:_internal.math.big_test.Big_test_T_zeroOrOne.T_zeroOrOne):Bool {
                return _internal.math.big_test.Big_test__checkAliasingOneArg._checkAliasingOneArg(_t, function(_v:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
                    return _v.setBit(_x, (_i._uint : stdgo.GoInt), _b._uint);
                }, _v.int_, _x.int_);
            }));
x.set(("Sqrt" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_positiveInt.T_positiveInt):Bool {
                return _internal.math.big_test.Big_test__checkAliasingOneArg._checkAliasingOneArg(_t, stdgo._internal.math.big.Big_Int_._internal.math.big_test.Big_test_Int__static_extension.Int__static_extension.sqrt, _v.int_, _x.int_);
            }));
x.set(("Sub" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _y:_internal.math.big_test.Big_test_T_bigInt.T_bigInt):Bool {
                return _internal.math.big_test.Big_test__checkAliasingTwoArgs._checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big_Int_._internal.math.big_test.Big_test_Int__static_extension.Int__static_extension.sub, _v.int_, _x.int_, _y.int_);
            }));
x.set(("Xor" : stdgo.GoString), stdgo.Go.toInterface(function(_v:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _x:_internal.math.big_test.Big_test_T_bigInt.T_bigInt, _y:_internal.math.big_test.Big_test_T_bigInt.T_bigInt):Bool {
                return _internal.math.big_test.Big_test__checkAliasingTwoArgs._checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big_Int_._internal.math.big_test.Big_test_Int__static_extension.Int__static_extension.xor, _v.int_, _x.int_, _y.int_);
            }));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)) {
            _t.run(_name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var _scale = (1 : stdgo.GoFloat64);
                {
                    final __value__ = _name;
                    if (__value__ == (("ModInverse" : stdgo.GoString)) || __value__ == (("GCD-Y" : stdgo.GoString)) || __value__ == (("GCD-X" : stdgo.GoString))) {
                        _scale = (_scale / (5 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    } else if (__value__ == (("Rand" : stdgo.GoString))) {
                        _scale = (_scale / (10 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    } else if (__value__ == (("Exp-XZ" : stdgo.GoString)) || __value__ == (("Exp-XY" : stdgo.GoString)) || __value__ == (("Exp-YZ" : stdgo.GoString))) {
                        _scale = (_scale / (50 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    } else if (__value__ == (("ModSqrt" : stdgo.GoString))) {
                        _scale = (_scale / (500 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    };
                };
                {
                    var _err = (stdgo._internal.testing.quick.Quick_check.check(_f, (stdgo.Go.setRef(({ maxCountScale : _scale } : stdgo._internal.testing.quick.Quick_Config.Config)) : stdgo.Ref<stdgo._internal.testing.quick.Quick_Config.Config>)) : stdgo.Error);
                    if (_err != null) {
                        _t.error(stdgo.Go.toInterface(_err));
                    };
                };
            });
        };
    }
