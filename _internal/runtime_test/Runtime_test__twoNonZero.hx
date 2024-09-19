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
function _twoNonZero(_h:stdgo.Ref<_internal.runtime_test.Runtime_test_HashSet.HashSet>, _n:stdgo.GoInt):Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _h._addB(_b);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                {
                    var _x = (1 : stdgo.GoInt);
                    stdgo.Go.cfor((_x < (256 : stdgo.GoInt) : Bool), _x++, {
                        _b[(_i : stdgo.GoInt)] = (_x : stdgo.GoUInt8);
                        _h._addB(_b);
                        _b[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                    });
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                {
                    var _x = (1 : stdgo.GoInt);
                    stdgo.Go.cfor((_x < (256 : stdgo.GoInt) : Bool), _x++, {
                        _b[(_i : stdgo.GoInt)] = (_x : stdgo.GoUInt8);
                        {
                            var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                            stdgo.Go.cfor((_j < _n : Bool), _j++, {
                                {
                                    var _y = (1 : stdgo.GoInt);
                                    stdgo.Go.cfor((_y < (256 : stdgo.GoInt) : Bool), _y++, {
                                        _b[(_j : stdgo.GoInt)] = (_y : stdgo.GoUInt8);
                                        _h._addB(_b);
                                        _b[(_j : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                                    });
                                };
                            });
                        };
                        _b[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                    });
                };
            });
        };
    }
