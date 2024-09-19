package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function testSmhasherSmallKeys(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            _t.skip(stdgo.Go.toInterface(("Too long for race mode" : stdgo.GoString)));
        };
        var _h = _internal.runtime_test.Runtime_test__newHashSet._newHashSet();
        var _b:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(3, 3, ...[for (i in 0 ... 3) (0 : stdgo.GoUInt8)]);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                _b[(0 : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
                _h._addB((_b.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (256 : stdgo.GoInt) : Bool), _j++, {
                        _b[(1 : stdgo.GoInt)] = (_j : stdgo.GoUInt8);
                        _h._addB((_b.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        if (!stdgo._internal.testing.Testing_short.short()) {
                            {
                                var _k = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_k < (256 : stdgo.GoInt) : Bool), _k++, {
                                    _b[(2 : stdgo.GoInt)] = (_k : stdgo.GoUInt8);
                                    _h._addB((_b.__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                                });
                            };
                        };
                    });
                };
            });
        };
        _h._check(_t);
    }
