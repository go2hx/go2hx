package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
@:local @:using(_internal.os.exec_test.Exec_test_T__struct_1_static_extension.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _path : stdgo.GoString;
    public var _err : stdgo.Error;
    @:embedded
    public var once : stdgo._internal.sync.Sync_Once.Once;
};
