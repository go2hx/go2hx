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
function testDebugLogInterleaving(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.runtime_test.Runtime_test__skipDebugLog._skipDebugLog(_t);
        stdgo._internal.runtime.Runtime_resetDebugLog.resetDebugLog();
        var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
        var _done = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
        _wg.add((1 : stdgo.GoInt));
        stdgo.Go.routine(() -> {
            var a = function():Void {
                while (stdgo._internal.sync.atomic_.Atomic__loadInt32.loadInt32(stdgo.Go.pointer(_done)) == ((0 : stdgo.GoInt32))) {
                    stdgo._internal.runtime.Runtime_gosched.gosched();
                };
                _wg.done();
            };
            a();
        });
        var _want:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                stdgo._internal.runtime.Runtime_dlog.dlog().i(_i).end();
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_want) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), ("[] %d\n" : stdgo.GoString), stdgo.Go.toInterface(_i));
                stdgo._internal.runtime.Runtime_gosched.gosched();
            });
        };
        stdgo._internal.sync.atomic_.Atomic__storeInt32.storeInt32(stdgo.Go.pointer(_done), (1 : stdgo.GoInt32));
        _wg.wait_();
        var _gotFull = (stdgo._internal.runtime.Runtime_dumpDebugLog.dumpDebugLog()?.__copy__() : stdgo.GoString);
        var _got = (_internal.runtime_test.Runtime_test__dlogCanonicalize._dlogCanonicalize(_gotFull?.__copy__())?.__copy__() : stdgo.GoString);
        if (_got != ((_want.string() : stdgo.GoString))) {
            _t.fatalf(("want %q, got (uncanonicalized) %q" : stdgo.GoString), stdgo.Go.toInterface((_want.string() : stdgo.GoString)), stdgo.Go.toInterface(_gotFull));
        };
    }
