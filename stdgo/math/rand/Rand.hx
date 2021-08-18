package stdgo.math.rand;

import stdgo.StdGoTypes;

function int31n(n:GoInt32):GoInt32
	return Std.random(n.toBasic());

function int31():GoInt32
	return int31n(2147483647);

function intn(n:GoInt):GoInt
	return Std.random(n.toBasic());

function int():GoInt
	return int31n(2147483647);
