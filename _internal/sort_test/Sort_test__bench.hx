package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function _bench(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _size:stdgo.GoInt, _algo:stdgo._internal.sort.Sort_Interface.Interface -> Void, _name:stdgo.GoString):Void {
        if ((stdgo._internal.strings.Strings_hasSuffix.hasSuffix(stdgo._internal.internal.testenv.Testenv_builder.builder()?.__copy__(), ("-race" : stdgo.GoString)) && (_size > (10000 : stdgo.GoInt) : Bool) : Bool)) {
            _b.skip(stdgo.Go.toInterface(("skipping slow benchmark on race builder" : stdgo.GoString)));
        };
        _b.stopTimer();
        var _data = (new stdgo.Slice<_internal.sort_test.Sort_test_T__struct_4.T__struct_4>((_size : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_size : stdgo.GoInt).toBasic() > 0 ? (_size : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({ _a : (0 : stdgo.GoInt), _b : (0 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T__struct_4.T__struct_4)]) : _internal.sort_test.Sort_test_T_intPairs.T_intPairs);
        var _x = (-1u32 : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var _n = (_size - (3 : stdgo.GoInt) : stdgo.GoInt);
                    stdgo.Go.cfor((_n <= (_size + (3 : stdgo.GoInt) : stdgo.GoInt) : Bool), _n++, {
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < (_data.length) : Bool), _i++, {
                                _x = (_x + (_x) : stdgo.GoUInt32);
                                _x = (_x ^ ((1u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                                if (((_x : stdgo.GoInt32) < (0 : stdgo.GoInt32) : Bool)) {
                                    _x = (_x ^ ((-2004316433u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                                };
                                _data[(_i : stdgo.GoInt)]._a = ((_x % ((_n / (5 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt);
                            });
                        };
                        _data._initB();
                        _b.startTimer();
                        _algo(stdgo.Go.asInterface(_data));
                        _b.stopTimer();
                        if (!stdgo._internal.sort.Sort_isSorted.isSorted(stdgo.Go.asInterface(_data))) {
                            _b.errorf(("%s did not sort %d ints" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_n));
                        };
                        if (((_name == ("Stable" : stdgo.GoString)) && !_data._inOrder() : Bool)) {
                            _b.errorf(("%s unstable on %d ints" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_n));
                        };
                    });
                };
            });
        };
    }
