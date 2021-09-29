package stdgo.bytes;

import stdgo.StdGoTypes;

class Buffer implements StructType {
	public function new() {}

	public function __underlying__():AnyInterface
		return null;
}

function trimRight(s:Slice<GoByte>, cutset:GoString):Slice<GoByte> {
	final s = s.copy();
	final cutset:Slice<GoByte> = cutset;
	for (i in 0...s.length.toBasic() - cutset.length.toBasic()) {
		var match = true;
		for (j in 0...cutset.length.toBasic()) {
			if (s[i + j] != cutset[j]) {
				match = false;
				break;
			}
			if (match) {
				return cutset.slice(0, i);
				break;
			}
		}
	}
	return s;
}
