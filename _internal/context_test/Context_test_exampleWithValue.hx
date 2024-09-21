package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function exampleWithValue():Void {
        {};
        var _f = (function(_ctx:stdgo._internal.context.Context_Context.Context, _k:_internal.context_test.Context_test_T_exampleWithValue___localname___favContextKey_2611.T_exampleWithValue___localname___favContextKey_2611):Void {
            {
                var _v = (_ctx.value(stdgo.Go.toInterface(_k)) : stdgo.AnyInterface);
                if (_v != null) {
                    stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("found value:" : stdgo.GoString)), _v);
                    return;
                };
            };
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("key not found:" : stdgo.GoString)), stdgo.Go.toInterface(_k));
        } : (stdgo._internal.context.Context_Context.Context, _internal.context_test.Context_test_T_exampleWithValue___localname___favContextKey_2611.T_exampleWithValue___localname___favContextKey_2611) -> Void);
        var _k = ((("language" : stdgo.GoString) : _internal.context_test.Context_test_T_exampleWithValue___localname___favContextKey_2611.T_exampleWithValue___localname___favContextKey_2611) : _internal.context_test.Context_test_T_exampleWithValue___localname___favContextKey_2611.T_exampleWithValue___localname___favContextKey_2611);
        var _ctx = (_internal.context_test.Context_test_context.context.withValue(_internal.context_test.Context_test_context.context.background(), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(("Go" : stdgo.GoString))) : stdgo._internal.context.Context_Context.Context);
        _f(_ctx, _k);
        _f(_ctx, (("color" : stdgo.GoString) : _internal.context_test.Context_test_T_exampleWithValue___localname___favContextKey_2611.T_exampleWithValue___localname___favContextKey_2611));
    }
