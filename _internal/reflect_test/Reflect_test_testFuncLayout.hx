package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testFuncLayout(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _align = (function(_x:stdgo.GoUIntptr):stdgo.GoUIntptr {
                return ((((_x + (4 : stdgo.GoUIntptr) : stdgo.GoUIntptr) - (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) & (((3 : stdgo.GoUIntptr) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
            } : stdgo.GoUIntptr -> stdgo.GoUIntptr);
            var _r:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            if (true) {
                _r = (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            } else {
                _r = (new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            };
            {};
            {};
            var _tests = (new stdgo.Slice<_internal.reflect_test.Reflect_test_T_testFuncLayout___localname___test_179156.T_testFuncLayout___localname___test_179156>(8, 8, ...[({ _typ : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(function(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoString {
                return stdgo.Go.str()?.__copy__();
            })).type(), _size : (24 : stdgo.GoUIntptr), _argsize : (16 : stdgo.GoUIntptr), _retOffset : (16 : stdgo.GoUIntptr), _stack : (new stdgo.Slice<stdgo.GoUInt8>(5, 5, ...[(1 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _gc : (new stdgo.Slice<stdgo.GoUInt8>(5, 5, ...[(1 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.reflect_test.Reflect_test_T_testFuncLayout___localname___test_179156.T_testFuncLayout___localname___test_179156), ({ _typ : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(function(_a:stdgo.GoUInt32, _b:stdgo.GoUInt32, _c:stdgo.GoUInt32, _p:stdgo.Pointer<stdgo.GoUInt8>, _d:stdgo.GoUInt16):Void {})).type(), _size : _align(((_align((12 : stdgo.GoUIntptr)) + (4 : stdgo.GoUIntptr) : stdgo.GoUIntptr) + (2 : stdgo.GoUIntptr) : stdgo.GoUIntptr)), _argsize : ((_align((12 : stdgo.GoUIntptr)) + (4 : stdgo.GoUIntptr) : stdgo.GoUIntptr) + (2 : stdgo.GoUIntptr) : stdgo.GoUIntptr), _retOffset : _align(((_align((12 : stdgo.GoUIntptr)) + (4 : stdgo.GoUIntptr) : stdgo.GoUIntptr) + (2 : stdgo.GoUIntptr) : stdgo.GoUIntptr)), _stack : _r, _gc : _r } : _internal.reflect_test.Reflect_test_T_testFuncLayout___localname___test_179156.T_testFuncLayout___localname___test_179156), ({ _typ : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(function(_a:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, _b:stdgo.GoUIntptr, _c:stdgo.AnyInterface):Void {})).type(), _size : (16 : stdgo.GoUIntptr), _argsize : (16 : stdgo.GoUIntptr), _retOffset : (16 : stdgo.GoUIntptr), _stack : (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(1 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _gc : (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(1 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.reflect_test.Reflect_test_T_testFuncLayout___localname___test_179156.T_testFuncLayout___localname___test_179156), ({ _typ : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(function(_a:_internal.reflect_test.Reflect_test_T_testFuncLayout___localname___S_179107.T_testFuncLayout___localname___S_179107):Void {})).type(), _size : (16 : stdgo.GoUIntptr), _argsize : (16 : stdgo.GoUIntptr), _retOffset : (16 : stdgo.GoUIntptr), _stack : (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _gc : (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.reflect_test.Reflect_test_T_testFuncLayout___localname___test_179156.T_testFuncLayout___localname___test_179156), ({ _rcvr : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoUInt8>))).type(), _typ : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(function(_a:stdgo.GoUIntptr, _b:stdgo.Pointer<stdgo.GoInt>):Void {})).type(), _size : (12 : stdgo.GoUIntptr), _argsize : (12 : stdgo.GoUIntptr), _retOffset : (12 : stdgo.GoUIntptr), _stack : (new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _gc : (new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.reflect_test.Reflect_test_T_testFuncLayout___localname___test_179156.T_testFuncLayout___localname___test_179156), ({ _typ : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(function(_a:stdgo.GoUIntptr):Void {})).type(), _size : (4 : stdgo.GoUIntptr), _argsize : (4 : stdgo.GoUIntptr), _retOffset : (4 : stdgo.GoUIntptr), _stack : (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _gc : (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.reflect_test.Reflect_test_T_testFuncLayout___localname___test_179156.T_testFuncLayout___localname___test_179156), ({ _typ : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(function():stdgo.GoUIntptr {
                return (0 : stdgo.GoUIntptr);
            })).type(), _size : (4 : stdgo.GoUIntptr), _argsize : (0 : stdgo.GoUIntptr), _retOffset : (0 : stdgo.GoUIntptr), _stack : (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _gc : (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.reflect_test.Reflect_test_T_testFuncLayout___localname___test_179156.T_testFuncLayout___localname___test_179156), ({ _rcvr : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((0 : stdgo.GoUIntptr))).type(), _typ : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(function(_a:stdgo.GoUIntptr):Void {})).type(), _size : (8 : stdgo.GoUIntptr), _argsize : (8 : stdgo.GoUIntptr), _retOffset : (8 : stdgo.GoUIntptr), _stack : (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _gc : (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.reflect_test.Reflect_test_T_testFuncLayout___localname___test_179156.T_testFuncLayout___localname___test_179156)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({} : _internal.reflect_test.Reflect_test_T_testFuncLayout___localname___test_179156.T_testFuncLayout___localname___test_179156)])) : stdgo.Slice<_internal.reflect_test.Reflect_test_T_testFuncLayout___localname___test_179156.T_testFuncLayout___localname___test_179156>);
            for (__6 => _lt in _tests) {
                var _name = ((_lt._typ.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (!((_lt._rcvr.string() : String) == (null.string() : String))) {
                    _name = (((_lt._rcvr.string() : stdgo.GoString) + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__();
                };
                _t.run(_name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        {
                            var _a0 = stdgo._internal.reflect.Reflect_setArgRegs.setArgRegs(_lt._intRegs, _lt._floatRegs, _lt._floatRegSize);
                            __deferstack__.unshift(() -> ({
                                var __tmp__ = _a0;
                                stdgo._internal.reflect.Reflect_setArgRegs.setArgRegs((__tmp__._0 : stdgo.GoInt), (__tmp__._1 : stdgo.GoInt), (__tmp__._2 : stdgo.GoUIntptr));
                            }));
                        };
                        var __tmp__ = stdgo._internal.reflect.Reflect_funcLayout.funcLayout(_lt._typ, _lt._rcvr), _typ:stdgo._internal.reflect.Reflect_Type_.Type_ = __tmp__._0, _argsize:stdgo.GoUIntptr = __tmp__._1, _retOffset:stdgo.GoUIntptr = __tmp__._2, _stack:stdgo.Slice<stdgo.GoUInt8> = __tmp__._3, _gc:stdgo.Slice<stdgo.GoUInt8> = __tmp__._4, _inRegs:stdgo.Slice<stdgo.GoUInt8> = __tmp__._5, _outRegs:stdgo.Slice<stdgo.GoUInt8> = __tmp__._6, _ptrs:Bool = __tmp__._7;
                        if (_typ.size() != (_lt._size)) {
                            _t.errorf(("funcLayout(%v, %v).size=%d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_lt._typ), stdgo.Go.toInterface(_lt._rcvr), stdgo.Go.toInterface(_typ.size()), stdgo.Go.toInterface(_lt._size));
                        };
                        if (_argsize != (_lt._argsize)) {
                            _t.errorf(("funcLayout(%v, %v).argsize=%d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_lt._typ), stdgo.Go.toInterface(_lt._rcvr), stdgo.Go.toInterface(_argsize), stdgo.Go.toInterface(_lt._argsize));
                        };
                        if (_retOffset != (_lt._retOffset)) {
                            _t.errorf(("funcLayout(%v, %v).retOffset=%d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_lt._typ), stdgo.Go.toInterface(_lt._rcvr), stdgo.Go.toInterface(_retOffset), stdgo.Go.toInterface(_lt._retOffset));
                        };
                        if (!stdgo._internal.bytes.Bytes_equal.equal(_stack, _lt._stack)) {
                            _t.errorf(("funcLayout(%v, %v).stack=%v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_lt._typ), stdgo.Go.toInterface(_lt._rcvr), stdgo.Go.toInterface(_stack), stdgo.Go.toInterface(_lt._stack));
                        };
                        if (!stdgo._internal.bytes.Bytes_equal.equal(_gc, _lt._gc)) {
                            _t.errorf(("funcLayout(%v, %v).gc=%v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_lt._typ), stdgo.Go.toInterface(_lt._rcvr), stdgo.Go.toInterface(_gc), stdgo.Go.toInterface(_lt._gc));
                        };
                        if (!stdgo._internal.bytes.Bytes_equal.equal(_inRegs, _lt._inRegs)) {
                            _t.errorf(("funcLayout(%v, %v).inRegs=%v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_lt._typ), stdgo.Go.toInterface(_lt._rcvr), stdgo.Go.toInterface(_inRegs), stdgo.Go.toInterface(_lt._inRegs));
                        };
                        if (!stdgo._internal.bytes.Bytes_equal.equal(_outRegs, _lt._outRegs)) {
                            _t.errorf(("funcLayout(%v, %v).outRegs=%v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_lt._typ), stdgo.Go.toInterface(_lt._rcvr), stdgo.Go.toInterface(_outRegs), stdgo.Go.toInterface(_lt._outRegs));
                        };
                        if (((_ptrs && (_stack.length) == ((0 : stdgo.GoInt)) : Bool) || (!_ptrs && ((_stack.length) > (0 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                            _t.errorf(("funcLayout(%v, %v) pointers flag=%v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_lt._typ), stdgo.Go.toInterface(_lt._rcvr), stdgo.Go.toInterface(_ptrs), stdgo.Go.toInterface(!_ptrs));
                        };
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                            if (__exception__.message == "__return__") throw "__return__";
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                });
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
