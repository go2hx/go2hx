package go.internal.bytealg;

function countString(_s) {
	var count = 0;
	for (i in 0..._s.length.toBasic()) {
		if (_s[i] == _c)
			count++;
	}
	return count;
}

function count(_b, _c) {
	var count = 0;
	for (i in 0..._b.length.toBasic()) {
		if (_b[i] == _c)
			count++;
	}
	return count;
}

function indexByteString(_s, _c) {
	for (i in 0..._s.length.toBasic()) {
		if (_s[i] == _c)
			return i;
	}
	return -1;
}

function makeNoZero(_n) {
	final s = new stdgo.Slice<stdgo.GoByte>(_n, _n).__setNumber32__();
	return s;
}

function indexByte(_b) {
	for (i in 0..._b.length.toBasic()) {
		if (_b[i] == _c)
			return i;
	}
	return -1;
}

// Index returns the index of the first instance of b in a, or -1 if b is not present in a.
// Requires 2 <= len(b) <= MaxLen.
// func Index(a, b []byte) int
function index(_a, _b) {
	if (_a.length < _b.length)
		return -1;
	for (i in 0...(_a.length - _b.length + 1)) {
		var found = true;
		for (j in 0..._b.length) {
			if (_a[i + j] != _b[j]) {
				found = false;
				break;
			}
		}
		if (found) {
			return i;
		}
	}
	return -1;
}

// IndexString returns the index of the first instance of b in a, or -1 if b is not present in a.
// Requires 2 <= len(b) <= MaxLen.
// func IndexString(a, b string) int {
function indexString(_a, _b) {
	if (_a == "") {
		return 0;
	}
	if (_b == "") {
		return -1;
	}
	var aLen = _a.length;
	var bLen = _b.length;
	for (i in 0...(aLen - bLen + 1)) {
		var found = true;
		for (j in 0...bLen) {
			if (_a[i + j] != _b[j]) {
				found = false;
				break;
			}
		}
		if (found) {
			return i;
		}
	}
	return -1;
}

function compare(_a, _b) {
	for (i in 0..._a.length.toBasic()) {
		if (i >= _b.length) {
			return 1;
		}
		if (_a[i] < _b[i]) {
			return -1;
		}
		if (_a[i] > _b[i]) {
			return 1;
		}
	}
	if (_a.length < _b.length) {
		return -1;
	}
	return 0;
}
