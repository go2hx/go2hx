package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function testCause(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0:stdgo._internal.time.Time_Duration.Duration = (1000000000000000i64 : stdgo._internal.time.Time_Duration.Duration), __1:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("parentCause" : stdgo.GoString)), __2:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("childCause" : stdgo.GoString)), __3:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("tooSlow" : stdgo.GoString)), __4:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("finishedEarly" : stdgo.GoString));
var _finishedEarly = __4, _tooSlow = __3, _childCause = __2, _parentCause = __1, _forever = __0;
        for (__0 => _test in (new stdgo.Slice<_internal.context_test.Context_test_T__struct_3.T__struct_3>(20, 20, ...[
({ _name : ("Background" : stdgo.GoString), _ctx : stdgo._internal.context.Context_background.background, _err : (null : stdgo.Error), _cause : (null : stdgo.Error) } : _internal.context_test.Context_test_T__struct_3.T__struct_3),
({ _name : ("TODO" : stdgo.GoString), _ctx : stdgo._internal.context.Context_todo.todo, _err : (null : stdgo.Error), _cause : (null : stdgo.Error) } : _internal.context_test.Context_test_T__struct_3.T__struct_3),
({ _name : ("WithCancel" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_Context.Context {
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            _cancel();
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : stdgo._internal.context.Context_canceled.canceled } : _internal.context_test.Context_test_T__struct_3.T__struct_3),
({ _name : ("WithCancelCause" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_Context.Context {
            var __tmp__ = stdgo._internal.context.Context_withCancelCause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelCauseFunc.CancelCauseFunc = __tmp__._1;
            _cancel(_parentCause);
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : _parentCause } : _internal.context_test.Context_test_T__struct_3.T__struct_3),
({ _name : ("WithCancelCause nil" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_Context.Context {
            var __tmp__ = stdgo._internal.context.Context_withCancelCause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelCauseFunc.CancelCauseFunc = __tmp__._1;
            _cancel((null : stdgo.Error));
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : stdgo._internal.context.Context_canceled.canceled } : _internal.context_test.Context_test_T__struct_3.T__struct_3),
({ _name : ("WithCancelCause: parent cause before child" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_Context.Context {
            var __tmp__ = stdgo._internal.context.Context_withCancelCause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancelParent:stdgo._internal.context.Context_CancelCauseFunc.CancelCauseFunc = __tmp__._1;
            var __tmp__ = stdgo._internal.context.Context_withCancelCause.withCancelCause(_ctx), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancelChild:stdgo._internal.context.Context_CancelCauseFunc.CancelCauseFunc = __tmp__._1;
            _cancelParent(_parentCause);
            _cancelChild(_childCause);
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : _parentCause } : _internal.context_test.Context_test_T__struct_3.T__struct_3),
({ _name : ("WithCancelCause: parent cause after child" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_Context.Context {
            var __tmp__ = stdgo._internal.context.Context_withCancelCause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancelParent:stdgo._internal.context.Context_CancelCauseFunc.CancelCauseFunc = __tmp__._1;
            var __tmp__ = stdgo._internal.context.Context_withCancelCause.withCancelCause(_ctx), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancelChild:stdgo._internal.context.Context_CancelCauseFunc.CancelCauseFunc = __tmp__._1;
            _cancelChild(_childCause);
            _cancelParent(_parentCause);
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : _childCause } : _internal.context_test.Context_test_T__struct_3.T__struct_3),
({ _name : ("WithCancelCause: parent cause before nil" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_Context.Context {
            var __tmp__ = stdgo._internal.context.Context_withCancelCause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancelParent:stdgo._internal.context.Context_CancelCauseFunc.CancelCauseFunc = __tmp__._1;
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(_ctx), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancelChild:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            _cancelParent(_parentCause);
            _cancelChild();
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : _parentCause } : _internal.context_test.Context_test_T__struct_3.T__struct_3),
({ _name : ("WithCancelCause: parent cause after nil" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_Context.Context {
            var __tmp__ = stdgo._internal.context.Context_withCancelCause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancelParent:stdgo._internal.context.Context_CancelCauseFunc.CancelCauseFunc = __tmp__._1;
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(_ctx), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancelChild:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            _cancelChild();
            _cancelParent(_parentCause);
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : stdgo._internal.context.Context_canceled.canceled } : _internal.context_test.Context_test_T__struct_3.T__struct_3),
({ _name : ("WithCancelCause: child cause after nil" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_Context.Context {
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancelParent:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            var __tmp__ = stdgo._internal.context.Context_withCancelCause.withCancelCause(_ctx), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancelChild:stdgo._internal.context.Context_CancelCauseFunc.CancelCauseFunc = __tmp__._1;
            _cancelParent();
            _cancelChild(_childCause);
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : stdgo._internal.context.Context_canceled.canceled } : _internal.context_test.Context_test_T__struct_3.T__struct_3),
({ _name : ("WithCancelCause: child cause before nil" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_Context.Context {
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancelParent:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            var __tmp__ = stdgo._internal.context.Context_withCancelCause.withCancelCause(_ctx), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancelChild:stdgo._internal.context.Context_CancelCauseFunc.CancelCauseFunc = __tmp__._1;
            _cancelChild(_childCause);
            _cancelParent();
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : _childCause } : _internal.context_test.Context_test_T__struct_3.T__struct_3),
({ _name : ("WithTimeout" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_Context.Context {
            var __tmp__ = stdgo._internal.context.Context_withTimeout.withTimeout(stdgo._internal.context.Context_background.background(), (0i64 : stdgo._internal.time.Time_Duration.Duration)), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            _cancel();
            return _ctx;
        }, _err : stdgo._internal.context.Context_deadlineExceeded.deadlineExceeded, _cause : stdgo._internal.context.Context_deadlineExceeded.deadlineExceeded } : _internal.context_test.Context_test_T__struct_3.T__struct_3),
({ _name : ("WithTimeout canceled" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_Context.Context {
            var __tmp__ = stdgo._internal.context.Context_withTimeout.withTimeout(stdgo._internal.context.Context_background.background(), _forever), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            _cancel();
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : stdgo._internal.context.Context_canceled.canceled } : _internal.context_test.Context_test_T__struct_3.T__struct_3),
({ _name : ("WithTimeoutCause" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_Context.Context {
            var __tmp__ = stdgo._internal.context.Context_withTimeoutCause.withTimeoutCause(stdgo._internal.context.Context_background.background(), (0i64 : stdgo._internal.time.Time_Duration.Duration), _tooSlow), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            _cancel();
            return _ctx;
        }, _err : stdgo._internal.context.Context_deadlineExceeded.deadlineExceeded, _cause : _tooSlow } : _internal.context_test.Context_test_T__struct_3.T__struct_3),
({ _name : ("WithTimeoutCause canceled" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_Context.Context {
            var __tmp__ = stdgo._internal.context.Context_withTimeoutCause.withTimeoutCause(stdgo._internal.context.Context_background.background(), _forever, _tooSlow), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            _cancel();
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : stdgo._internal.context.Context_canceled.canceled } : _internal.context_test.Context_test_T__struct_3.T__struct_3),
({ _name : ("WithTimeoutCause stacked" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_Context.Context {
            var __tmp__ = stdgo._internal.context.Context_withCancelCause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelCauseFunc.CancelCauseFunc = __tmp__._1;
            {
                var __tmp__ = stdgo._internal.context.Context_withTimeoutCause.withTimeoutCause(_ctx, (0i64 : stdgo._internal.time.Time_Duration.Duration), _tooSlow);
                _ctx = __tmp__._0;
            };
            _cancel(_finishedEarly);
            return _ctx;
        }, _err : stdgo._internal.context.Context_deadlineExceeded.deadlineExceeded, _cause : _tooSlow } : _internal.context_test.Context_test_T__struct_3.T__struct_3),
({ _name : ("WithTimeoutCause stacked canceled" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_Context.Context {
            var __tmp__ = stdgo._internal.context.Context_withCancelCause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelCauseFunc.CancelCauseFunc = __tmp__._1;
            {
                var __tmp__ = stdgo._internal.context.Context_withTimeoutCause.withTimeoutCause(_ctx, _forever, _tooSlow);
                _ctx = __tmp__._0;
            };
            _cancel(_finishedEarly);
            return _ctx;
        }, _err : stdgo._internal.context.Context_canceled.canceled, _cause : _finishedEarly } : _internal.context_test.Context_test_T__struct_3.T__struct_3),
({ _name : ("WithoutCancel" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_Context.Context {
            return stdgo._internal.context.Context_withoutCancel.withoutCancel(stdgo._internal.context.Context_background.background());
        }, _err : (null : stdgo.Error), _cause : (null : stdgo.Error) } : _internal.context_test.Context_test_T__struct_3.T__struct_3),
({ _name : ("WithoutCancel canceled" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_Context.Context {
            var __tmp__ = stdgo._internal.context.Context_withCancelCause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelCauseFunc.CancelCauseFunc = __tmp__._1;
            _ctx = stdgo._internal.context.Context_withoutCancel.withoutCancel(_ctx);
            _cancel(_finishedEarly);
            return _ctx;
        }, _err : (null : stdgo.Error), _cause : (null : stdgo.Error) } : _internal.context_test.Context_test_T__struct_3.T__struct_3),
({ _name : ("WithoutCancel timeout" : stdgo.GoString), _ctx : function():stdgo._internal.context.Context_Context.Context {
            var __tmp__ = stdgo._internal.context.Context_withTimeoutCause.withTimeoutCause(stdgo._internal.context.Context_background.background(), (0i64 : stdgo._internal.time.Time_Duration.Duration), _tooSlow), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            _ctx = stdgo._internal.context.Context_withoutCancel.withoutCancel(_ctx);
            _cancel();
            return _ctx;
        }, _err : (null : stdgo.Error), _cause : (null : stdgo.Error) } : _internal.context_test.Context_test_T__struct_3.T__struct_3)].concat([for (i in 20 ... (20 > 20 ? 20 : 20 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _ctx : null, _err : (null : stdgo.Error), _cause : (null : stdgo.Error) } : _internal.context_test.Context_test_T__struct_3.T__struct_3)])) : stdgo.Slice<_internal.context_test.Context_test_T__struct_3.T__struct_3>)) {
            var _test = ({
                final x = _test;
                ({ _name : x._name?.__copy__(), _ctx : x._ctx, _err : x._err, _cause : x._cause } : _internal.context_test.Context_test_T__struct_3.T__struct_3);
            } : _internal.context_test.Context_test_T__struct_3.T__struct_3);
            _t.run(_test._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                _t.parallel();
                var _ctx = (_test._ctx() : stdgo._internal.context.Context_Context.Context);
                {
                    var __0 = (_ctx.err() : stdgo.Error), __1 = (_test._err : stdgo.Error);
var _want = __1, _got = __0;
                    if (stdgo.Go.toInterface(_want) != (stdgo.Go.toInterface(_got))) {
                        _t.errorf(("ctx.Err() = %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
                {
                    var __0 = (stdgo._internal.context.Context_cause.cause(_ctx) : stdgo.Error), __1 = (_test._cause : stdgo.Error);
var _want = __1, _got = __0;
                    if (stdgo.Go.toInterface(_want) != (stdgo.Go.toInterface(_got))) {
                        _t.errorf(("Cause(ctx) = %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
            });
        };
    }
