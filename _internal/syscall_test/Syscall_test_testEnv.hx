package _internal.syscall_test;
function testEnv(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.syscall_test.Syscall_test__testSetGetenv._testSetGetenv(_t, ("TESTENV" : stdgo.GoString), ("AVALUE" : stdgo.GoString));
        _internal.syscall_test.Syscall_test__testSetGetenv._testSetGetenv(_t, ("TESTENV" : stdgo.GoString), stdgo.Go.str()?.__copy__());
    }
