package _internal.runtime.debug_test;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.runtime.debug.Debug;
function testSetMaxThreadsOvf(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _nt = (stdgo._internal.runtime.debug.Debug_setMaxThreads.setMaxThreads((1073741824 : stdgo.GoInt)) : stdgo.GoInt);
        stdgo._internal.runtime.debug.Debug_setMaxThreads.setMaxThreads(_nt);
    }
