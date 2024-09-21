package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
@:structInit @:using(_internal.os.exec_test.Exec_test_T_badWriter_static_extension.T_badWriter_static_extension) class T_badWriter {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_badWriter();
    }
}
