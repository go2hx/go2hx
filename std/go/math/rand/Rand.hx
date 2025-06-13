package go.math.rand;

function _fastrand64() {
	return haxe.Int64.make(std.Std.random(1) > 0 ? -std.Std.random(2147483647) - 1 : std.Std.random(2147483647),
		std.Std.random(1) > 0 ? -std.Std.random(2147483647) - 1 : std.Std.random(2147483647));
}

function intn(_n)
	return std.Std.random(_n);

function int31n()
	return std.Std.random();

function int()
	return std.Std.random();

function int31()
	return std.Std.random();

// invalid generic code
function seed() {}
