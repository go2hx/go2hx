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
function _text(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _prefix:stdgo.GoString, _suffix:stdgo.GoString):Void {
        {};
        {};
        {};
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((((_prefix.length) + (4 : stdgo.GoInt) : stdgo.GoInt) + (_suffix.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo.Go.copySlice(_b, _prefix);
        stdgo.Go.copySlice((_b.__slice__(((_prefix.length) + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _suffix);
        var _h = _internal.runtime_test.Runtime_test__newHashSet._newHashSet();
        var _c = (_b.__slice__((_prefix.length)) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (50 : stdgo.GoInt) : Bool), _i++, {
                _c[(0 : stdgo.GoInt)] = ("ABCDEFGHIJKLMNOPQRSTabcdefghijklmnopqrst0123456789" : stdgo.GoString)[(_i : stdgo.GoInt)];
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (50 : stdgo.GoInt) : Bool), _j++, {
                        _c[(1 : stdgo.GoInt)] = ("ABCDEFGHIJKLMNOPQRSTabcdefghijklmnopqrst0123456789" : stdgo.GoString)[(_j : stdgo.GoInt)];
                        {
                            var _k = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_k < (50 : stdgo.GoInt) : Bool), _k++, {
                                _c[(2 : stdgo.GoInt)] = ("ABCDEFGHIJKLMNOPQRSTabcdefghijklmnopqrst0123456789" : stdgo.GoString)[(_k : stdgo.GoInt)];
                                {
                                    var _x = (0 : stdgo.GoInt);
                                    stdgo.Go.cfor((_x < (50 : stdgo.GoInt) : Bool), _x++, {
                                        _c[(3 : stdgo.GoInt)] = ("ABCDEFGHIJKLMNOPQRSTabcdefghijklmnopqrst0123456789" : stdgo.GoString)[(_x : stdgo.GoInt)];
                                        _h._addB(_b);
                                    });
                                };
                            });
                        };
                    });
                };
            });
        };
        _h._check(_t);
    }
