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
function testSmhasherAppendedZeros(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = ((("hello" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(stdgo.Go.str(0)?.__copy__(), (256 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _h = _internal.runtime_test.Runtime_test__newHashSet._newHashSet();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (_s.length) : Bool), _i++, {
                _h._addS((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__());
            });
        };
        _h._check(_t);
    }
