package _internal.runtime_dot_test;
import stdgo._internal.runtime.Runtime;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.runtime_dot_test.Runtime_dot_test__tests._tests, _internal.runtime_dot_test.Runtime_dot_test__benchmarks._benchmarks, _internal.runtime_dot_test.Runtime_dot_test__fuzzTargets._fuzzTargets, _internal.runtime_dot_test.Runtime_dot_test__examples._examples);
        _internal.runtime_test.Runtime_test_testMain.testMain(_m);
        Sys.exit((stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_m))).elem().fieldByName(("exitCode" : stdgo.GoString)).int_() : stdgo.GoInt));
    }
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = _internal.runtime_test.Runtime_test__alwaysFalse._alwaysFalse, __tmp__1 = _internal.runtime_test.Runtime_test__workSink._workSink, __tmp__2 = _internal.runtime_test.Runtime_test__serializeBuild._serializeBuild, __tmp__3 = _internal.runtime_test.Runtime_test__concurrentMapTest._concurrentMapTest, __tmp__4 = _internal.runtime_test.Runtime_test__glob._glob, __tmp__5 = _internal.runtime_test.Runtime_test__pointerClassData._pointerClassData, __tmp__6 = _internal.runtime_test.Runtime_test__infoPtr._infoPtr, __tmp__7 = _internal.runtime_test.Runtime_test__infoPtr10._infoPtr10, __tmp__8 = _internal.runtime_test.Runtime_test__infoScalarPtr._infoScalarPtr, __tmp__9 = _internal.runtime_test.Runtime_test__infoScalarPtr4._infoScalarPtr4, __tmp__10 = _internal.runtime_test.Runtime_test__infoPtrScalar._infoPtrScalar, __tmp__11 = _internal.runtime_test.Runtime_test__dataPtr._dataPtr, __tmp__12 = _internal.runtime_test.Runtime_test__dataScalarPtr._dataScalarPtr, __tmp__13 = _internal.runtime_test.Runtime_test__dataPtrScalar._dataPtrScalar, __tmp__14 = _internal.runtime_test.Runtime_test__dataBigStruct._dataBigStruct, __tmp__15 = _internal.runtime_test.Runtime_test__dataString._dataString, __tmp__16 = _internal.runtime_test.Runtime_test__dataSlice._dataSlice, __tmp__17 = _internal.runtime_test.Runtime_test__dataEface._dataEface, __tmp__18 = _internal.runtime_test.Runtime_test__dataIface._dataIface, __tmp__19 = _internal.runtime_test.Runtime_test__infoString._infoString, __tmp__20 = _internal.runtime_test.Runtime_test__infoSlice._infoSlice, __tmp__21 = _internal.runtime_test.Runtime_test__infoEface._infoEface, __tmp__22 = _internal.runtime_test.Runtime_test__infoIface._infoIface, __tmp__23 = _internal.runtime_test.Runtime_test__eight8._eight8, __tmp__24 = _internal.runtime_test.Runtime_test__eight8I._eight8I, __tmp__25 = _internal.runtime_test.Runtime_test__yes._yes, __tmp__26 = _internal.runtime_test.Runtime_test__zero16._zero16, __tmp__27 = _internal.runtime_test.Runtime_test__zero16I._zero16I, __tmp__28 = _internal.runtime_test.Runtime_test__one16._one16, __tmp__29 = _internal.runtime_test.Runtime_test__thousand16._thousand16, __tmp__30 = _internal.runtime_test.Runtime_test__zero32._zero32, __tmp__31 = _internal.runtime_test.Runtime_test__zero32I._zero32I, __tmp__32 = _internal.runtime_test.Runtime_test__one32._one32, __tmp__33 = _internal.runtime_test.Runtime_test__thousand32._thousand32, __tmp__34 = _internal.runtime_test.Runtime_test__zero64._zero64, __tmp__35 = _internal.runtime_test.Runtime_test__zero64I._zero64I, __tmp__36 = _internal.runtime_test.Runtime_test__one64._one64, __tmp__37 = _internal.runtime_test.Runtime_test__thousand64._thousand64, __tmp__38 = _internal.runtime_test.Runtime_test__zerostr._zerostr, __tmp__39 = _internal.runtime_test.Runtime_test__zerostrI._zerostrI, __tmp__40 = _internal.runtime_test.Runtime_test__nzstr._nzstr, __tmp__41 = _internal.runtime_test.Runtime_test__zeroslice._zeroslice, __tmp__42 = _internal.runtime_test.Runtime_test__zerosliceI._zerosliceI, __tmp__43 = _internal.runtime_test.Runtime_test__nzslice._nzslice, __tmp__44 = _internal.runtime_test.Runtime_test__nzbig._nzbig, __tmp__45 = _internal.runtime_test.Runtime_test__n._n, __tmp__46 = _internal.runtime_test.Runtime_test__hintLessThan8._hintLessThan8, __tmp__47 = _internal.runtime_test.Runtime_test__hintGreaterThan8._hintGreaterThan8, __tmp__48 = _internal.runtime_test.Runtime_test__mapBucketTests._mapBucketTests, __tmp__49 = _internal.runtime_test.Runtime_test__testNonEscapingMapVariable._testNonEscapingMapVariable, __tmp__50 = _internal.runtime_test.Runtime_test__bufSizes._bufSizes, __tmp__51 = _internal.runtime_test.Runtime_test__bufSizesOverlap._bufSizesOverlap, __tmp__52 = _internal.runtime_test.Runtime_test_foo2.foo2, __tmp__53 = _internal.runtime_test.Runtime_test_foo1.foo1, __tmp__54 = _internal.runtime_test.Runtime_test__zero._zero, __tmp__55 = _internal.runtime_test.Runtime_test__negZero._negZero, __tmp__56 = _internal.runtime_test.Runtime_test__inf._inf, __tmp__57 = _internal.runtime_test.Runtime_test__negInf._negInf, __tmp__58 = _internal.runtime_test.Runtime_test__nan._nan, __tmp__59 = _internal.runtime_test.Runtime_test__tests._tests, __tmp__60 = _internal.runtime_test.Runtime_test__all._all, __tmp__61 = _internal.runtime_test.Runtime_test__globalPtrToObj._globalPtrToObj, __tmp__62 = _internal.runtime_test.Runtime_test__globalPtrToObjWithPtr._globalPtrToObjWithPtr, __tmp__63 = _internal.runtime_test.Runtime_test__globalPtrToRuntimeObj._globalPtrToRuntimeObj, __tmp__64 = _internal.runtime_test.Runtime_test__globalPtrToRuntimeObjWithPtr._globalPtrToRuntimeObjWithPtr, __tmp__65 = _internal.runtime_test.Runtime_test__stop._stop, __tmp__66 = _internal.runtime_test.Runtime_test__preempt._preempt, __tmp__67 = _internal.runtime_test.Runtime_test__helloSource._helloSource, __tmp__68 = _internal.runtime_test.Runtime_test__flagQuick._flagQuick, __tmp__69 = _internal.runtime_test.Runtime_test__faultAddrs._faultAddrs, __tmp__70 = _internal.runtime_test.Runtime_test_one.one, __tmp__71 = _internal.runtime_test.Runtime_test__escapeMe._escapeMe, __tmp__72 = _internal.runtime_test.Runtime_test__stringdata._stringdata, __tmp__73 = _internal.runtime_test.Runtime_test__atoi64tests._atoi64tests, __tmp__74 = _internal.runtime_test.Runtime_test__atoi32tests._atoi32tests, __tmp__75 = _internal.runtime_test.Runtime_test__firstLine._firstLine, __tmp__76 = _internal.runtime_test.Runtime_test__lineVar1._lineVar1, __tmp__77 = _internal.runtime_test.Runtime_test__lineVar2a._lineVar2a, __tmp__78 = _internal.runtime_test.Runtime_test__lineVar2b._lineVar2b, __tmp__79 = _internal.runtime_test.Runtime_test__compLit._compLit, __tmp__80 = _internal.runtime_test.Runtime_test__arrayLit._arrayLit, __tmp__81 = _internal.runtime_test.Runtime_test__sliceLit._sliceLit, __tmp__82 = _internal.runtime_test.Runtime_test__mapLit._mapLit, __tmp__83 = _internal.runtime_test.Runtime_test__intLit._intLit;
            var __deferstack__:Array<Void -> Void> = [];
            try {
                if (stdgo._internal.os.Os_getenv.getenv(("GO_TEST_RUNTIME_PANIC" : stdgo.GoString)) == (("1" : stdgo.GoString))) {
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                {
                                    var _r = ({
                                        final r = stdgo.Go.recover_exception;
                                        stdgo.Go.recover_exception = null;
                                        r;
                                    } : stdgo.AnyInterface);
                                    if (_r != null) {
                                        Sys.exit((0 : stdgo.GoInt));
                                    };
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
                        };
                        a();
                    });
                    stdgo._internal.runtime.Runtime_panicForTesting.panicForTesting((null : stdgo.Slice<stdgo.GoUInt8>), (1 : stdgo.GoInt));
                    Sys.exit((0 : stdgo.GoInt));
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    throw "__return__";
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
                throw "__return__";
            };
            stdgo._internal.runtime.Runtime_fmtSprintf.fmtSprintf = stdgo._internal.fmt.Fmt_sprintf.sprintf;
            stdgo._internal.runtime.Runtime_testenvOptimizationOff.testenvOptimizationOff = stdgo._internal.internal.testenv.Testenv_optimizationOff.optimizationOff;
            stdgo._internal.runtime.Runtime_netpollGenericInit.netpollGenericInit();
            stdgo._internal.runtime.Runtime_setTracebackEnv.setTracebackEnv(("system" : stdgo.GoString));
            var __tmp__0 = _internal.runtime_dot_test.Runtime_dot_test__tests._tests, __tmp__1 = _internal.runtime_dot_test.Runtime_dot_test__benchmarks._benchmarks, __tmp__2 = _internal.runtime_dot_test.Runtime_dot_test__fuzzTargets._fuzzTargets, __tmp__3 = _internal.runtime_dot_test.Runtime_dot_test__examples._examples;
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("runtime" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
