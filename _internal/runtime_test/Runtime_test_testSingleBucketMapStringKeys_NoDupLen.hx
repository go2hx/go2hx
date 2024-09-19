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
function testSingleBucketMapStringKeys_NoDupLen(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.runtime_test.Runtime_test__testMapLookups._testMapLookups(_t, ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set(("x" : stdgo.GoString), ("x1val" : stdgo.GoString));
x.set(("xx" : stdgo.GoString), ("x2val" : stdgo.GoString));
x.set(("foo" : stdgo.GoString), ("fooval" : stdgo.GoString));
x.set(("xxxx" : stdgo.GoString), ("x4val" : stdgo.GoString));
x.set(("xxxxx" : stdgo.GoString), ("x5val" : stdgo.GoString));
x.set(("xxxxxx" : stdgo.GoString), ("x6val" : stdgo.GoString));
x.set(stdgo._internal.strings.Strings_repeat.repeat(("x" : stdgo.GoString), (128 : stdgo.GoInt)), ("longval" : stdgo.GoString));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>));
    }
