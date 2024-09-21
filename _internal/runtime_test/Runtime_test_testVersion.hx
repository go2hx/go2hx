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
function testVersion(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _vers = (stdgo._internal.runtime.Runtime_version.version()?.__copy__() : stdgo.GoString);
        if ((stdgo._internal.strings.Strings_contains.contains(_vers?.__copy__(), ("\r" : stdgo.GoString)) || stdgo._internal.strings.Strings_contains.contains(_vers?.__copy__(), ("\n" : stdgo.GoString)) : Bool)) {
            _t.fatalf(("cr/nl in version: %q" : stdgo.GoString), stdgo.Go.toInterface(_vers));
        };
    }
