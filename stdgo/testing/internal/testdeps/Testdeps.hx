package stdgo.testing.internal.testdeps;

import stdgo.StdGoTypes.AnyInterface;
import stdgo.StdGoTypes.StructType;

var importPath:GoString = "";

@:structInit
class TestDeps implements StructType {
	public function new() {}

	public function __underlying__():AnyInterface
		return null;

	public function __copy__()
		return new TestDeps();
}
