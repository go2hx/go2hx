package stdgo.testing.internal.testdeps;

import stdgo.StdGoTypes.AnyInterface;
import stdgo.StdGoTypes.StructType;

var importPath:GoString = "";

@:structInit
class TestDeps {
	public function new() {}

	public function __underlying__():AnyInterface
		return null;

	public function __copy__()
		return new TestDeps();

	public function startTestLog() {}

	public function startCPUProfile() {}

	public function stopTestLog() {}

	public function writeProfileTo() {}

	public function checkCorpus() {}

	public function coordinateFuzzing() {}

	public function importPath() {}
}
