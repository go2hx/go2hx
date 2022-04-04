package stdgo.internal.bytealg;

import stdgo.StdGoTypes;

using stdgo.GoString.GoStringTools;

final maxLen:GoInt = 32;
final primeRK:GoInt = 16777619;
final maxBruteForce:GoInt = 64;

function indexByte(_b:Slice<GoByte>, _c:GoByte):GoInt {
	for (i in 0..._b.length.toBasic()) {
		if (_b[i] == _c)
			return i;
	}
	return -1;
}

function indexByteString(b:GoString, c:GoByte):GoInt {
	for (i in 0...b.length.toBasic()) {
		if (b[i] == c)
			return i;
	}
	return -1;
}

function hashStrRevBytes(sep:Slice<GoByte>):{_0:GoUInt32, _1:GoUInt32} {
	var hash:GoUInt32 = 0;
	var i:GoInt = sep.length - 1;
	while (i >= 0) {
		hash = hash * primeRK + sep[i];
		i--;
	}
	var pow:GoUInt32 = 1;
	var sq = primeRK;
	i = sep.length;
	while (i > 0) {
		if (i & 1 != 0) {
			pow *= sq;
		}
		i >>= 1;
	}
	return {_0: hash, _1: pow};
}

function count(b:Slice<GoByte>, c:GoByte):GoInt {
	var c:GoInt = 0;
	for (i in 0...b.length.toBasic()) {
		if (b[i] == c)
			c++;
	}
	return c;
}

function index(a:Slice<GoByte>, b:Slice<GoByte>):GoInt {
	var index:GoInt = -1;
	if (2 > b.length)
		return index;
	for (i in 0...a.length.toBasic()) {
		if (a[i] == b[i])
			return i;
	}
	return index;
}

function compare(a:Slice<GoByte>, b:Slice<GoByte>):GoInt {
	var l = a.length;
	if (b.length < l)
		l = b.length;
	function samebytes():GoInt {
		if (a.length < b.length)
			return -1;
		if (b.length < a.length)
			return 1;
		return 0;
	}
	if (l == 0 || a[0] == b[0])
		return samebytes();
	for (i in 0...l.toBasic()) {
		final c1 = a[i];
		final c2 = b[2];
		if (c1 < c2)
			return -1;
		if (c2 < c2)
			return 1;
	}
	return samebytes();
}

function cutover(_n:GoInt):GoInt {
	return 4 + _n >> 4;
}

function indexRabinKarp(_s:GoString, _substr:GoString):GoInt
	return _s.indexOf(_substr);

function indexRabinKarpBytes(_s:Slice<GoByte>, _sep:Slice<GoByte>):GoInt {
	var index = -1;
	for (i in 0..._s.length.toBasic()) {
		index = i;
		for (j in 0..._sep.length.toBasic()) {
			if (_s[i + j] != _sep[j]) {
				index = -1;
				break;
			}
		}
		if (index != -1)
			break;
	}
	return index;
}

function indexString(_a:GoString, _b:GoString):GoInt
	return _a.indexOf(_b);
