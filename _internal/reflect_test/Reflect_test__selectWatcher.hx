package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function _selectWatcher():Void {
        while (true) {
            stdgo._internal.time.Time_sleep.sleep((1000000000i64 : stdgo._internal.time.Time_Duration.Duration));
            _internal.reflect_test.Reflect_test__selectWatch._selectWatch.lock();
            if (((_internal.reflect_test.Reflect_test__selectWatch._selectWatch._info != null) && (stdgo._internal.time.Time_since.since(_internal.reflect_test.Reflect_test__selectWatch._selectWatch._now?.__copy__()) > (10000000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool) : Bool)) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("TestSelect:\n%s blocked indefinitely\n" : stdgo.GoString), stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__fmtSelect._fmtSelect(_internal.reflect_test.Reflect_test__selectWatch._selectWatch._info)));
                throw stdgo.Go.toInterface(("select stuck" : stdgo.GoString));
            };
            _internal.reflect_test.Reflect_test__selectWatch._selectWatch.unlock();
        };
    }
