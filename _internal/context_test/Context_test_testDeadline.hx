package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function testDeadline(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var __tmp__ = stdgo._internal.context.Context_withDeadline.withDeadline(stdgo._internal.context.Context_background.background(), stdgo._internal.time.Time_now.now().add((1000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__()), _c:stdgo._internal.context.Context_Context.Context = __tmp__._0, __8:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
        {
            var __0 = (stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_c))?.__copy__() : stdgo.GoString), __1 = ("context.Background.WithDeadline(" : stdgo.GoString);
var _prefix = __1, _got = __0;
            if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_got?.__copy__(), _prefix?.__copy__())) {
                _t.errorf(("c.String() = %q want prefix %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_prefix));
            };
        };
        _internal.context_test.Context_test__testDeadline._testDeadline(_c, ("WithDeadline" : stdgo.GoString), _t);
        {
            var __tmp__ = stdgo._internal.context.Context_withDeadline.withDeadline(stdgo._internal.context.Context_background.background(), stdgo._internal.time.Time_now.now().add((1000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__());
            _c = __tmp__._0;
        };
        var _o = (new _internal.context_test.Context_test_T_otherContext.T_otherContext(_c) : _internal.context_test.Context_test_T_otherContext.T_otherContext);
        _internal.context_test.Context_test__testDeadline._testDeadline(stdgo.Go.asInterface(_o), ("WithDeadline+otherContext" : stdgo.GoString), _t);
        {
            var __tmp__ = stdgo._internal.context.Context_withDeadline.withDeadline(stdgo._internal.context.Context_background.background(), stdgo._internal.time.Time_now.now().add((1000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__());
            _c = __tmp__._0;
        };
        _o = (new _internal.context_test.Context_test_T_otherContext.T_otherContext(_c) : _internal.context_test.Context_test_T_otherContext.T_otherContext);
        {
            var __tmp__ = stdgo._internal.context.Context_withDeadline.withDeadline(stdgo.Go.asInterface(_o), stdgo._internal.time.Time_now.now().add((3600000000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__());
            _c = __tmp__._0;
        };
        _internal.context_test.Context_test__testDeadline._testDeadline(_c, ("WithDeadline+otherContext+WithDeadline" : stdgo.GoString), _t);
        {
            var __tmp__ = stdgo._internal.context.Context_withDeadline.withDeadline(stdgo._internal.context.Context_background.background(), stdgo._internal.time.Time_now.now().add((-1000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__());
            _c = __tmp__._0;
        };
        _internal.context_test.Context_test__testDeadline._testDeadline(_c, ("WithDeadline+inthepast" : stdgo.GoString), _t);
        {
            var __tmp__ = stdgo._internal.context.Context_withDeadline.withDeadline(stdgo._internal.context.Context_background.background(), stdgo._internal.time.Time_now.now()?.__copy__());
            _c = __tmp__._0;
        };
        _internal.context_test.Context_test__testDeadline._testDeadline(_c, ("WithDeadline+now" : stdgo.GoString), _t);
    }
