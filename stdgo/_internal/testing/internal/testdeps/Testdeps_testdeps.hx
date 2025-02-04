package stdgo._internal.testing.internal.testdeps;
@:structInit @:using(stdgo._internal.testing.internal.testdeps.Testdeps_testdeps_static_extension.TestDeps_static_extension) class TestDeps {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TestDeps();
    }
}
