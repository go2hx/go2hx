package _internal.internal.abi_test;
function testFuncPC(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _pcFromAsm = (stdgo._internal.internal.abi.Abi_funcPCTestFnAddr.funcPCTestFnAddr : stdgo.GoUIntptr);
        var _pcFromGo = (stdgo._internal.internal.abi.Abi_funcPCTest.funcPCTest() : stdgo.GoUIntptr);
        if (_pcFromGo != (_pcFromAsm)) {
            _t.errorf(("FuncPC returns wrong PC, want %x, got %x" : stdgo.GoString), stdgo.Go.toInterface(_pcFromAsm), stdgo.Go.toInterface(_pcFromGo));
        };
        _pcFromGo = stdgo._internal.internal.abi.Abi_funcPCABI0.funcPCABI0(stdgo.Go.toInterface(stdgo._internal.internal.abi.Abi_funcPCTestFn.funcPCTestFn));
        if (_pcFromGo != (_pcFromAsm)) {
            _t.errorf(("FuncPC returns wrong PC, want %x, got %x" : stdgo.GoString), stdgo.Go.toInterface(_pcFromAsm), stdgo.Go.toInterface(_pcFromGo));
        };
    }
