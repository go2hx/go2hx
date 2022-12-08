package stdgo.sort_test;

import stdgo.sort.Sort;
import stdgo.sort.Sort;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

private var _planets:Slice<stdgo.sort_test.Sort_test.Planet> = (new Slice<stdgo.sort_test.Sort_test.Planet>(0, 0,
	(new stdgo.sort_test.Sort_test.Planet(Go.str("Mercury"), (0.055 : GoFloat64), (0.4 : GoFloat64)) : stdgo.sort_test.Sort_test.Planet),
	(new stdgo.sort_test.Sort_test.Planet(Go.str("Venus"), (0.815 : GoFloat64), (0.7 : GoFloat64)) : stdgo.sort_test.Sort_test.Planet),
	(new stdgo.sort_test.Sort_test.Planet(Go.str("Earth"), (1 : GoFloat64), (1 : GoFloat64)) : stdgo.sort_test.Sort_test.Planet),
	(new stdgo.sort_test.Sort_test.Planet(Go.str("Mars"), (0.107 : GoFloat64),
		(1.5 : GoFloat64)) : stdgo.sort_test.Sort_test.Planet)) : Slice<stdgo.sort_test.Sort_test.Planet>);

private var _changes:Slice<stdgo.sort_test.Sort_test.Change> = (new Slice<stdgo.sort_test.Sort_test.Change>(0, 0,
	(new stdgo.sort_test.Sort_test.Change(Go.str("gri"), Go.str("Go"), (100 : GoInt)) : stdgo.sort_test.Sort_test.Change),
	(new stdgo.sort_test.Sort_test.Change(Go.str("ken"), Go.str("C"), (150 : GoInt)) : stdgo.sort_test.Sort_test.Change),
	(new stdgo.sort_test.Sort_test.Change(Go.str("glenda"), Go.str("Go"), (200 : GoInt)) : stdgo.sort_test.Sort_test.Change),
	(new stdgo.sort_test.Sort_test.Change(Go.str("rsc"), Go.str("Go"), (200 : GoInt)) : stdgo.sort_test.Sort_test.Change),
	(new stdgo.sort_test.Sort_test.Change(Go.str("r"), Go.str("Go"), (100 : GoInt)) : stdgo.sort_test.Sort_test.Change),
	(new stdgo.sort_test.Sort_test.Change(Go.str("ken"), Go.str("Go"), (200 : GoInt)) : stdgo.sort_test.Sort_test.Change),
	(new stdgo.sort_test.Sort_test.Change(Go.str("dmr"), Go.str("C"), (100 : GoInt)) : stdgo.sort_test.Sort_test.Change),
	(new stdgo.sort_test.Sort_test.Change(Go.str("r"), Go.str("C"), (150 : GoInt)) : stdgo.sort_test.Sort_test.Change),
	(new stdgo.sort_test.Sort_test.Change(Go.str("gri"), Go.str("Smalltalk"),
		(80 : GoInt)) : stdgo.sort_test.Sort_test.Change)) : Slice<stdgo.sort_test.Sort_test.Change>);

private var _data:Slice<GoInt> = {
	var s:Slice<GoInt> = new Slice<GoInt>(0, 0, ...([for (i in 0...14) 0]));
	s[0] = (-10 : GoInt);
	s[1] = (-5 : GoInt);
	s[2] = (0 : GoInt);
	s[3] = (1 : GoInt);
	s[4] = (2 : GoInt);
	s[5] = (3 : GoInt);
	s[6] = (5 : GoInt);
	s[7] = (7 : GoInt);
	s[8] = (11 : GoInt);
	s[9] = (100 : GoInt);
	s[10] = (100 : GoInt);
	s[11] = (100 : GoInt);
	s[12] = (1000 : GoInt);
	s[13] = (10000 : GoInt);
	s;
};

private var _tests:Slice<T__struct_1> = (new Slice<T__struct_1>(0, 0, ({
	_name: Go.str("empty"),
	_n: (0 : GoInt),
	_f: null,
	_i: (0 : GoInt)
} : T__struct_1), ({
	_name: Go.str("1 1"),
	_n: (1 : GoInt),
	_f: function(_i:GoInt):Bool {
		return _i >= (1 : GoInt);
	},
	_i: (1 : GoInt)
	} : T__struct_1), ({
	_name: Go.str("1 true"),
	_n: (1 : GoInt),
	_f: function(_i:GoInt):Bool {
		return true;
	},
	_i: (0 : GoInt)
	} : T__struct_1), ({
	_name: Go.str("1 false"),
	_n: (1 : GoInt),
	_f: function(_i:GoInt):Bool {
		return false;
	},
	_i: (1 : GoInt)
	} : T__struct_1), ({
	_name: Go.str("1e9 991"),
	_n: (1000000000 : GoInt),
	_f: function(_i:GoInt):Bool {
		return _i >= (991 : GoInt);
	},
	_i: (991 : GoInt)
	} : T__struct_1), ({
	_name: Go.str("1e9 true"),
	_n: (1000000000 : GoInt),
	_f: function(_i:GoInt):Bool {
		return true;
	},
	_i: (0 : GoInt)
	} : T__struct_1), ({
	_name: Go.str("1e9 false"),
	_n: (1000000000 : GoInt),
	_f: function(_i:GoInt):Bool {
		return false;
	},
	_i: (1000000000 : GoInt)
	} : T__struct_1), ({
	_name: Go.str("data -20"),
	_n: (_data.length),
	_f: _f(_data, (-20 : GoInt)),
	_i: (0 : GoInt)
	} : T__struct_1), ({
	_name: Go.str("data -10"),
	_n: (_data.length),
	_f: _f(_data, (-10 : GoInt)),
	_i: (0 : GoInt)
	} : T__struct_1), ({
	_name: Go.str("data -9"),
	_n: (_data.length),
	_f: _f(_data, (-9 : GoInt)),
	_i: (1 : GoInt)
	} : T__struct_1), ({
	_name: Go.str("data -6"),
	_n: (_data.length),
	_f: _f(_data, (-6 : GoInt)),
	_i: (1 : GoInt)
	} : T__struct_1), ({
	_name: Go.str("data -5"),
	_n: (_data.length),
	_f: _f(_data, (-5 : GoInt)),
	_i: (1 : GoInt)
	} : T__struct_1), ({
	_name: Go.str("data 3"),
	_n: (_data.length),
	_f: _f(_data, (3 : GoInt)),
	_i: (5 : GoInt)
	} : T__struct_1), ({
	_name: Go.str("data 11"),
	_n: (_data.length),
	_f: _f(_data, (11 : GoInt)),
	_i: (8 : GoInt)
	} : T__struct_1), ({
	_name: Go.str("data 99"),
	_n: (_data.length),
	_f: _f(_data, (99 : GoInt)),
	_i: (9 : GoInt)
	} : T__struct_1), ({
	_name: Go.str("data 100"),
	_n: (_data.length),
	_f: _f(_data, (100 : GoInt)),
	_i: (9 : GoInt)
	} : T__struct_1), ({
	_name: Go.str("data 101"),
	_n: (_data.length),
	_f: _f(_data, (101 : GoInt)),
	_i: (12 : GoInt)
	} : T__struct_1), ({
	_name: Go.str("data 10000"),
	_n: (_data.length),
	_f: _f(_data, (10000 : GoInt)),
	_i: (13 : GoInt)
	} : T__struct_1), ({
	_name: Go.str("data 10001"),
	_n: (_data.length),
	_f: _f(_data, (10001 : GoInt)),
	_i: (14 : GoInt)
	} : T__struct_1), ({
	_name: Go.str("descending a"),
	_n: (7 : GoInt),
	_f: function(_i:GoInt):Bool {
		return (new Slice<GoInt>(0, 0, (99 : GoInt), (99 : GoInt), (59 : GoInt), (42 : GoInt), (7 : GoInt), (0 : GoInt), (-1 : GoInt),
			(-1 : GoInt)) : Slice<GoInt>)[_i] <= (7 : GoInt);
	},
	_i: (4 : GoInt)
	} : T__struct_1), ({
	_name: Go.str("descending 7"),
	_n: (1000000000 : GoInt),
	_f: function(_i:GoInt):Bool {
		return ((1000000000 : GoInt) - _i) <= (7 : GoInt);
	},
	_i: (999999993 : GoInt)
	} : T__struct_1), ({
	_name: Go.str("overflow"),
	_n: (2000000000 : GoInt),
	_f: function(_i:GoInt):Bool {
		return false;
	},
	_i: (2000000000 : GoInt)
	} : T__struct_1)) : Slice<T__struct_1>);

private var _fdata:Slice<GoFloat64> = {
	var s:Slice<GoFloat64> = new Slice<GoFloat64>(0, 0, ...([for (i in 0...5) 0]));
	s[0] = (-3.14 : GoFloat64);
	s[1] = (0 : GoFloat64);
	s[2] = (1 : GoFloat64);
	s[3] = (2 : GoFloat64);
	s[4] = (1000.7 : GoFloat64);
	s;
};

private var _sdata:Slice<GoString> = {
	var s:Slice<GoString> = new Slice<GoString>(0, 0, ...([for (i in 0...4) ""]));
	s[0] = Go.str("f");
	s[1] = Go.str("foo");
	s[2] = Go.str("foobar");
	s[3] = Go.str("x");
	s;
};

private var _wrappertests:Slice<T__struct_3> = (new Slice<T__struct_3>(0, 0,
	({_name: Go.str("SearchInts"), _result: searchInts(_data, (11 : GoInt)), _i: (8 : GoInt)} : T__struct_3),
	({_name: Go.str("SearchFloat64s"), _result: searchFloat64s(_fdata, (2.1 : GoFloat64)), _i: (4 : GoInt)} : T__struct_3),
	({_name: Go.str("SearchStrings"), _result: searchStrings(_sdata, Go.str()), _i: (0 : GoInt)} : T__struct_3),
	({_name: Go.str("IntSlice.Search"), _result: (_data : IntSlice).search((0 : GoInt)), _i: (2 : GoInt)} : T__struct_3),
	({_name: Go.str("Float64Slice.Search"), _result: (_fdata : Float64Slice).search((2 : GoFloat64)), _i: (3 : GoInt)} : T__struct_3),
	({_name: Go.str("StringSlice.Search"), _result: (_sdata : StringSlice).search(Go.str("x")), _i: (3 : GoInt)} : T__struct_3)) : Slice<T__struct_3>);

private var _ints:GoArray<GoInt> = (new GoArray<GoInt>((74 : GoInt), (59 : GoInt), (238 : GoInt), (-784 : GoInt), (9845 : GoInt), (959 : GoInt),
	(905 : GoInt), (0 : GoInt), (0 : GoInt), (42 : GoInt), (7586 : GoInt), (-5467984 : GoInt), (7586 : GoInt)) : GoArray<GoInt>);

private var _float64s:GoArray<GoFloat64> = (new GoArray<GoFloat64>((74.3 : GoFloat64), (59 : GoFloat64), stdgo.math.Math.inf((1 : GoInt)),
	(238.2 : GoFloat64), (-784 : GoFloat64), (2.3 : GoFloat64), stdgo.math.Math.naN(), stdgo.math.Math.naN(), stdgo.math.Math.inf((-1 : GoInt)),
	(9845.768 : GoFloat64), (-959.7485 : GoFloat64), (905 : GoFloat64), (7.8 : GoFloat64), (7.8 : GoFloat64)) : GoArray<GoFloat64>);

private var _strings:GoArray<GoString> = (new GoArray<GoString>(Go.str(), Go.str("Hello"), Go.str("foo"), Go.str("bar"), Go.str("foo"), Go.str("f00"),
	Go.str("%*&^*&^&"), Go.str("***")) : GoArray<GoString>);

private var _countOpsSizes:Slice<GoInt> = (new Slice<GoInt>(0, 0, (100 : GoInt), (300 : GoInt), (1000 : GoInt), (3000 : GoInt), (10000 : GoInt),
	(30000 : GoInt), (100000 : GoInt), (300000 : GoInt), (1000000 : GoInt)) : Slice<GoInt>);

private final __Sawtooth:GoUInt64 = ("5" : GoUInt64);
private final __Rand:InvalidType = ("5" : GoUInt64);
private final __Stagger:InvalidType = ("5" : GoUInt64);
private final __Plateau:InvalidType = ("5" : GoUInt64);
private final __Shuffle:InvalidType = ("5" : GoUInt64);
private final __NDist:InvalidType = ("5" : GoUInt64);
private final __Copy:GoUInt64 = ("6" : GoUInt64);
private final __Reverse:InvalidType = ("6" : GoUInt64);
private final __ReverseFirstHalf:InvalidType = ("6" : GoUInt64);
private final __ReverseSecondHalf:InvalidType = ("6" : GoUInt64);
private final __Sorted:InvalidType = ("6" : GoUInt64);
private final __Dither:InvalidType = ("6" : GoUInt64);
private final __NMode:InvalidType = ("6" : GoUInt64);

@:structInit @:using(stdgo.sort_test.Sort_test.Person_static_extension) class Person {
	public var name:GoString = "";
	public var age:GoInt = 0;

	public function new(?name:GoString, ?age:GoInt) {
		if (name != null)
			this.name = name;
		if (age != null)
			this.age = age;
	}

	public function __copy__() {
		return new Person(name, age);
	}
}

/**
	// A Planet defines the properties of a solar system object.
**/
@:structInit class Planet {
	public var _name:GoString = "";
	public var _mass:stdgo.sort_test.Sort_test.T_earthMass = ((0 : GoFloat64) : stdgo.sort_test.Sort_test.T_earthMass);
	public var _distance:stdgo.sort_test.Sort_test.T_au = ((0 : GoFloat64) : stdgo.sort_test.Sort_test.T_au);

	public function new(?_name:GoString, ?_mass:stdgo.sort_test.Sort_test.T_earthMass, ?_distance:stdgo.sort_test.Sort_test.T_au) {
		if (_name != null)
			this._name = _name;
		if (_mass != null)
			this._mass = _mass;
		if (_distance != null)
			this._distance = _distance;
	}

	public function __copy__() {
		return new Planet(_name, _mass, _distance);
	}
}

/**
	// planetSorter joins a By function and a slice of Planets to be sorted.
**/
@:structInit @:using(stdgo.sort_test.Sort_test.T_planetSorter_static_extension) private class T_planetSorter {
	public var _planets:Slice<stdgo.sort_test.Sort_test.Planet> = (null : Slice<stdgo.sort_test.Sort_test.Planet>);

	/**
		// Closure used in the Less method.
	**/
	public var _by:(Ref<stdgo.sort_test.Sort_test.Planet>, Ref<stdgo.sort_test.Sort_test.Planet>) -> Bool = null;

	public function new(?_planets:Slice<stdgo.sort_test.Sort_test.Planet>,
			?_by:(Ref<stdgo.sort_test.Sort_test.Planet>, Ref<stdgo.sort_test.Sort_test.Planet>) -> Bool) {
		if (_planets != null)
			this._planets = _planets;
		if (_by != null)
			this._by = _by;
	}

	public function __copy__() {
		return new T_planetSorter(_planets, _by);
	}
}

/**
	// A Change is a record of source code changes, recording user, language, and delta size.
**/
@:structInit class Change {
	public var _user:GoString = "";
	public var _language:GoString = "";
	public var _lines:GoInt = 0;

	public function new(?_user:GoString, ?_language:GoString, ?_lines:GoInt) {
		if (_user != null)
			this._user = _user;
		if (_language != null)
			this._language = _language;
		if (_lines != null)
			this._lines = _lines;
	}

	public function __copy__() {
		return new Change(_user, _language, _lines);
	}
}

/**
	// multiSorter implements the Sort interface, sorting the changes within.
**/
@:structInit @:using(stdgo.sort_test.Sort_test.T_multiSorter_static_extension) private class T_multiSorter {
	public var _changes:Slice<stdgo.sort_test.Sort_test.Change> = (null : Slice<stdgo.sort_test.Sort_test.Change>);
	public var _less:Slice<stdgo.sort_test.Sort_test.T_lessFunc> = (null : Slice<stdgo.sort_test.Sort_test.T_lessFunc>);

	public function new(?_changes:Slice<stdgo.sort_test.Sort_test.Change>, ?_less:Slice<stdgo.sort_test.Sort_test.T_lessFunc>) {
		if (_changes != null)
			this._changes = _changes;
		if (_less != null)
			this._less = _less;
	}

	public function __copy__() {
		return new T_multiSorter(_changes, _less);
	}
}

@:structInit class Organ {
	public var name:GoString = "";
	public var weight:stdgo.sort_test.Sort_test.Grams = ((0 : GoInt) : stdgo.sort_test.Sort_test.Grams);

	public function new(?name:GoString, ?weight:stdgo.sort_test.Sort_test.Grams) {
		if (name != null)
			this.name = name;
		if (weight != null)
			this.weight = weight;
	}

	public function __copy__() {
		return new Organ(name, weight);
	}
}

/**
	// ByName implements sort.Interface by providing Less and using the Len and
	// Swap methods of the embedded Organs value.
**/
@:structInit @:using(stdgo.sort_test.Sort_test.ByName_static_extension) class ByName {
	@:embedded
	public var organs:stdgo.sort_test.Sort_test.Organs = new stdgo.sort_test.Sort_test.Organs(0, 0);

	public function new(?organs:stdgo.sort_test.Sort_test.Organs) {
		if (organs != null)
			this.organs = organs;
	}

	@:embedded
	public function len():GoInt
		return organs.len();

	@:embedded
	public function swap(_i:GoInt, _j:GoInt)
		organs.swap(_i, _j);

	public function __copy__() {
		return new ByName(organs);
	}
}

/**
	// ByWeight implements sort.Interface by providing Less and using the Len and
	// Swap methods of the embedded Organs value.
**/
@:structInit @:using(stdgo.sort_test.Sort_test.ByWeight_static_extension) class ByWeight {
	@:embedded
	public var organs:stdgo.sort_test.Sort_test.Organs = new stdgo.sort_test.Sort_test.Organs(0, 0);

	public function new(?organs:stdgo.sort_test.Sort_test.Organs) {
		if (organs != null)
			this.organs = organs;
	}

	@:embedded
	public function len():GoInt
		return organs.len();

	@:embedded
	public function swap(_i:GoInt, _j:GoInt)
		organs.swap(_i, _j);

	public function __copy__() {
		return new ByWeight(organs);
	}
}

@:structInit @:using(stdgo.sort_test.Sort_test.T_nonDeterministicTestingData_static_extension) private class T_nonDeterministicTestingData {
	public var _r:Ref<stdgo.math.rand.Rand.Rand> = (null : Ref<stdgo.math.rand.Rand.Rand>);

	public function new(?_r:Ref<stdgo.math.rand.Rand.Rand>) {
		if (_r != null)
			this._r = _r;
	}

	public function __copy__() {
		return new T_nonDeterministicTestingData(_r);
	}
}

@:structInit @:using(stdgo.sort_test.Sort_test.T_testingData_static_extension) private class T_testingData {
	public var _desc:GoString = "";
	public var _t:Ref<stdgo.testing.Testing.T> = (null : Ref<stdgo.testing.Testing.T>);
	public var _data:Slice<GoInt> = (null : Slice<GoInt>);

	/**
		// number of swaps allowed
	**/
	public var _maxswap:GoInt = 0;

	public var _ncmp:GoInt = 0;
	public var _nswap:GoInt = 0;

	public function new(?_desc:GoString, ?_t:Ref<stdgo.testing.Testing.T>, ?_data:Slice<GoInt>, ?_maxswap:GoInt, ?_ncmp:GoInt, ?_nswap:GoInt) {
		if (_desc != null)
			this._desc = _desc;
		if (_t != null)
			this._t = _t;
		if (_data != null)
			this._data = _data;
		if (_maxswap != null)
			this._maxswap = _maxswap;
		if (_ncmp != null)
			this._ncmp = _ncmp;
		if (_nswap != null)
			this._nswap = _nswap;
	}

	public function __copy__() {
		return new T_testingData(_desc, _t, _data, _maxswap, _ncmp, _nswap);
	}
}

/**
	// This is based on the "antiquicksort" implementation by M. Douglas McIlroy.
	// See https://www.cs.dartmouth.edu/~doug/mdmspe.pdf for more info.
**/
@:structInit @:using(stdgo.sort_test.Sort_test.T_adversaryTestingData_static_extension) private class T_adversaryTestingData {
	public var _t:Ref<stdgo.testing.Testing.T> = (null : Ref<stdgo.testing.Testing.T>);

	/**
		// item values, initialized to special gas value and changed by Less
	**/
	public var _data:Slice<GoInt> = (null : Slice<GoInt>);

	/**
		// number of comparisons allowed
	**/
	public var _maxcmp:GoInt = 0;

	/**
		// number of comparisons (calls to Less)
	**/
	public var _ncmp:GoInt = 0;

	/**
		// number of elements that have been set to non-gas values
	**/
	public var _nsolid:GoInt = 0;

	/**
		// guess at current pivot
	**/
	public var _candidate:GoInt = 0;

	/**
		// special value for unset elements, higher than everything else
	**/
	public var _gas:GoInt = 0;

	public function new(?_t:Ref<stdgo.testing.Testing.T>, ?_data:Slice<GoInt>, ?_maxcmp:GoInt, ?_ncmp:GoInt, ?_nsolid:GoInt, ?_candidate:GoInt, ?_gas:GoInt) {
		if (_t != null)
			this._t = _t;
		if (_data != null)
			this._data = _data;
		if (_maxcmp != null)
			this._maxcmp = _maxcmp;
		if (_ncmp != null)
			this._ncmp = _ncmp;
		if (_nsolid != null)
			this._nsolid = _nsolid;
		if (_candidate != null)
			this._candidate = _candidate;
		if (_gas != null)
			this._gas = _gas;
	}

	public function __copy__() {
		return new T_adversaryTestingData(_t, _data, _maxcmp, _ncmp, _nsolid, _candidate, _gas);
	}
}

@:local private typedef T__struct_0 = {
	public var name:GoString;
	public var age:GoInt;
};

@:local private typedef T__struct_1 = {
	public var _name:GoString;
	public var _n:GoInt;
	public var _f:GoInt->Bool;
	public var _i:GoInt;
};

@:local private typedef T__struct_2 = {
	public var _data:Slice<GoString>;
	public var _target:GoString;
	public var _wantPos:GoInt;
	public var _wantFound:Bool;
};

@:local private typedef T__struct_3 = {
	public var _name:GoString;
	public var _result:GoInt;
	public var _i:GoInt;
};

@:local private typedef T__struct_4 = {
	public var _a:GoInt;
	public var _b:GoInt;
};

/**
	// ByAge implements sort.Interface for []Person based on
	// the Age field.
**/
@:named @:using(stdgo.sort_test.Sort_test.ByAge_static_extension) typedef ByAge = Slice<stdgo.sort_test.Sort_test.Person>;

/**
	// A couple of type definitions to make the units clear.
**/
@:named private typedef T_earthMass = GoFloat64;

@:named private typedef T_au = GoFloat64;

/**
	// By is the type of a "less" function that defines the ordering of its Planet arguments.
**/
@:named @:using(stdgo.sort_test.Sort_test.By_static_extension) typedef By = (Ref<stdgo.sort_test.Sort_test.Planet>,
	Ref<stdgo.sort_test.Sort_test.Planet>) -> Bool;

@:named private typedef T_lessFunc = (Ref<stdgo.sort_test.Sort_test.Change>, Ref<stdgo.sort_test.Sort_test.Change>) -> Bool;
@:named @:using(stdgo.sort_test.Sort_test.Grams_static_extension) typedef Grams = GoInt;
@:named @:using(stdgo.sort_test.Sort_test.Organs_static_extension) typedef Organs = Slice<Ref<stdgo.sort_test.Sort_test.Organ>>;
@:named @:using(stdgo.sort_test.Sort_test.T_intPairs_static_extension) private typedef T_intPairs = Slice<T__struct_4>;

function example():Void {
	var _people = (new Slice<stdgo.sort_test.Sort_test.Person>(0, 0,
		(new stdgo.sort_test.Sort_test.Person(Go.str("Bob"), (31 : GoInt)) : stdgo.sort_test.Sort_test.Person),
		(new stdgo.sort_test.Sort_test.Person(Go.str("John"), (42 : GoInt)) : stdgo.sort_test.Sort_test.Person),
		(new stdgo.sort_test.Sort_test.Person(Go.str("Michael"), (17 : GoInt)) : stdgo.sort_test.Sort_test.Person),
		(new stdgo.sort_test.Sort_test.Person(Go.str("Jenny"), (26 : GoInt)) : stdgo.sort_test.Sort_test.Person)) : Slice<stdgo.sort_test.Sort_test.Person>);
	stdgo.fmt.Fmt.println(_people);
	stdgo.sort.Sort.sort(Go.asInterface((_people : ByAge)));
	stdgo.fmt.Fmt.println(_people);
	stdgo.sort.Sort.slice(Go.toInterface(_people), function(_i:GoInt, _j:GoInt):Bool {
		return _people[_i].age > _people[_j].age;
	});
	stdgo.fmt.Fmt.println(_people);
}

/**
	// ExampleSortKeys demonstrates a technique for sorting a struct type using programmable sort criteria.
**/
function example_sortKeys():Void {
	var _name = function(_p1:Ref<Planet>, _p2:Ref<Planet>):Bool {
		return _p1._name < _p2._name;
	};
	var _mass = function(_p1:Ref<Planet>, _p2:Ref<Planet>):Bool {
		return _p1._mass < _p2._mass;
	};
	var _distance = function(_p1:Ref<Planet>, _p2:Ref<Planet>):Bool {
		return _p1._distance < _p2._distance;
	};
	var _decreasingDistance = function(_p1:Ref<Planet>, _p2:Ref<Planet>):Bool {
		return _distance(_p2, _p1);
	};
		(_name : By).sort(_planets);
	stdgo.fmt.Fmt.println(Go.str("By name:"), _planets);
	(_mass : By).sort(_planets);
	stdgo.fmt.Fmt.println(Go.str("By mass:"), _planets);
	(_distance : By).sort(_planets);
	stdgo.fmt.Fmt.println(Go.str("By distance:"), _planets);
	(_decreasingDistance : By).sort(_planets);
	stdgo.fmt.Fmt.println(Go.str("By decreasing distance:"), _planets);
}

/**
	// OrderedBy returns a Sorter that sorts using the less functions, in order.
	// Call its Sort method to sort the data.
**/
function orderedBy(_less:haxe.Rest<T_lessFunc>):Ref<T_multiSorter> {
	var _less = new Slice<T_lessFunc>(0, 0, ..._less);
	return (({_less: _less} : stdgo.sort_test.Sort_test.T_multiSorter) : Ref<stdgo.sort_test.Sort_test.T_multiSorter>);
}

/**
	// ExampleMultiKeys demonstrates a technique for sorting a struct type using different
	// sets of multiple fields in the comparison. We chain together "Less" functions, each of
	// which compares a single field.
**/
function example_sortMultiKeys():Void {
	var _user = function(_c1:Ref<Change>, _c2:Ref<Change>):Bool {
		return _c1._user < _c2._user;
	};
	var _language = function(_c1:Ref<Change>, _c2:Ref<Change>):Bool {
		return _c1._language < _c2._language;
	};
	var _increasingLines = function(_c1:Ref<Change>, _c2:Ref<Change>):Bool {
		return _c1._lines < _c2._lines;
	};
	var _decreasingLines = function(_c1:Ref<Change>, _c2:Ref<Change>):Bool {
		return _c1._lines > _c2._lines;
	};
	orderedBy(_user).sort(_changes);
	stdgo.fmt.Fmt.println(Go.str("By user:"), _changes);
	orderedBy(_user, _increasingLines).sort(_changes);
	stdgo.fmt.Fmt.println(Go.str("By user,<lines:"), _changes);
	orderedBy(_user, _decreasingLines).sort(_changes);
	stdgo.fmt.Fmt.println(Go.str("By user,>lines:"), _changes);
	orderedBy(_language, _increasingLines).sort(_changes);
	stdgo.fmt.Fmt.println(Go.str("By language,<lines:"), _changes);
	orderedBy(_language, _increasingLines, _user).sort(_changes);
	stdgo.fmt.Fmt.println(Go.str("By language,<lines,user:"), _changes);
}

/**
	// This example demonstrates searching a list sorted in ascending order.
**/
function exampleSearch():Void {
	var _a = (new Slice<GoInt>(0, 0, (1 : GoInt), (3 : GoInt), (6 : GoInt), (10 : GoInt), (15 : GoInt), (21 : GoInt), (28 : GoInt), (36 : GoInt),
		(45 : GoInt), (55 : GoInt)) : Slice<GoInt>);
	var _x:GoInt = (6 : GoInt);
	var _i:GoInt = stdgo.sort.Sort.search((_a.length), function(_i:GoInt):Bool {
		return _a[_i] >= _x;
	});
	if ((_i < _a.length) && (_a[_i] == _x)) {
		stdgo.fmt.Fmt.printf(Go.str("found %d at index %d in %v\n"), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
	} else {
		stdgo.fmt.Fmt.printf(Go.str("%d not found in %v\n"), Go.toInterface(_x), Go.toInterface(_a));
	};
}

/**
	// This example demonstrates searching a list sorted in descending order.
	// The approach is the same as searching a list in ascending order,
	// but with the condition inverted.
**/
function exampleSearch_descendingOrder():Void {
	var _a = (new Slice<GoInt>(0, 0, (55 : GoInt), (45 : GoInt), (36 : GoInt), (28 : GoInt), (21 : GoInt), (15 : GoInt), (10 : GoInt), (6 : GoInt),
		(3 : GoInt), (1 : GoInt)) : Slice<GoInt>);
	var _x:GoInt = (6 : GoInt);
	var _i:GoInt = stdgo.sort.Sort.search((_a.length), function(_i:GoInt):Bool {
		return _a[_i] <= _x;
	});
	if ((_i < _a.length) && (_a[_i] == _x)) {
		stdgo.fmt.Fmt.printf(Go.str("found %d at index %d in %v\n"), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
	} else {
		stdgo.fmt.Fmt.printf(Go.str("%d not found in %v\n"), Go.toInterface(_x), Go.toInterface(_a));
	};
}

/**
	// This example demonstrates searching for float64 in a list sorted in ascending order.
**/
function exampleSearchFloat64s():Void {
	var _a = (new Slice<GoFloat64>(0, 0, (1 : GoFloat64), (2 : GoFloat64), (3.3 : GoFloat64), (4.6 : GoFloat64), (6.1 : GoFloat64), (7.2 : GoFloat64),
		(8 : GoFloat64)) : Slice<GoFloat64>);
	var _x:GoFloat64 = (2 : GoFloat64);
	var _i:GoInt = stdgo.sort.Sort.searchFloat64s(_a, _x);
	stdgo.fmt.Fmt.printf(Go.str("found %g at index %d in %v\n"), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
	_x = (0.5 : GoFloat64);
	_i = stdgo.sort.Sort.searchFloat64s(_a, _x);
	stdgo.fmt.Fmt.printf(Go.str("%g not found, can be inserted at index %d in %v\n"), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
}

/**
	// This example demonstrates searching for int in a list sorted in ascending order.
**/
function exampleSearchInts():Void {
	var _a = (new Slice<GoInt>(0, 0, (1 : GoInt), (2 : GoInt), (3 : GoInt), (4 : GoInt), (6 : GoInt), (7 : GoInt), (8 : GoInt)) : Slice<GoInt>);
	var _x:GoInt = (2 : GoInt);
	var _i:GoInt = stdgo.sort.Sort.searchInts(_a, _x);
	stdgo.fmt.Fmt.printf(Go.str("found %d at index %d in %v\n"), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
	_x = (5 : GoInt);
	_i = stdgo.sort.Sort.searchInts(_a, _x);
	stdgo.fmt.Fmt.printf(Go.str("%d not found, can be inserted at index %d in %v\n"), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
}

function exampleInts():Void {
	var _s = (new Slice<GoInt>(0, 0, (5 : GoInt), (2 : GoInt), (6 : GoInt), (3 : GoInt), (1 : GoInt), (4 : GoInt)) : Slice<GoInt>);
	stdgo.sort.Sort.ints(_s);
	stdgo.fmt.Fmt.println(_s);
}

function exampleIntsAreSorted():Void {
	var _s = (new Slice<GoInt>(0, 0, (1 : GoInt), (2 : GoInt), (3 : GoInt), (4 : GoInt), (5 : GoInt), (6 : GoInt)) : Slice<GoInt>);
	stdgo.fmt.Fmt.println(stdgo.sort.Sort.intsAreSorted(_s));
	_s = (new Slice<GoInt>(0, 0, (6 : GoInt), (5 : GoInt), (4 : GoInt), (3 : GoInt), (2 : GoInt), (1 : GoInt)) : Slice<GoInt>);
	stdgo.fmt.Fmt.println(stdgo.sort.Sort.intsAreSorted(_s));
	_s = (new Slice<GoInt>(0, 0, (3 : GoInt), (2 : GoInt), (4 : GoInt), (1 : GoInt), (5 : GoInt)) : Slice<GoInt>);
	stdgo.fmt.Fmt.println(stdgo.sort.Sort.intsAreSorted(_s));
}

function exampleFloat64s():Void {
	var _s = (new Slice<GoFloat64>(0, 0, (5.2 : GoFloat64), (-1.3 : GoFloat64), (0.7 : GoFloat64), (-3.8 : GoFloat64), (2.6 : GoFloat64)) : Slice<GoFloat64>);
	stdgo.sort.Sort.float64s(_s);
	stdgo.fmt.Fmt.println(_s);
	_s = (new Slice<GoFloat64>(0, 0, stdgo.math.Math.inf((1 : GoInt)), stdgo.math.Math.naN(), stdgo.math.Math.inf((-1 : GoInt)),
		(0 : GoFloat64)) : Slice<GoFloat64>);
	stdgo.sort.Sort.float64s(_s);
	stdgo.fmt.Fmt.println(_s);
}

function exampleFloat64sAreSorted():Void {
	var _s = (new Slice<GoFloat64>(0, 0, (0.7 : GoFloat64), (1.3 : GoFloat64), (2.6 : GoFloat64), (3.8 : GoFloat64), (5.2 : GoFloat64)) : Slice<GoFloat64>);
	stdgo.fmt.Fmt.println(stdgo.sort.Sort.float64sAreSorted(_s));
	_s = (new Slice<GoFloat64>(0, 0, (5.2 : GoFloat64), (3.8 : GoFloat64), (2.6 : GoFloat64), (1.3 : GoFloat64), (0.7 : GoFloat64)) : Slice<GoFloat64>);
	stdgo.fmt.Fmt.println(stdgo.sort.Sort.float64sAreSorted(_s));
	_s = (new Slice<GoFloat64>(0, 0, (5.2 : GoFloat64), (1.3 : GoFloat64), (0.7 : GoFloat64), (3.8 : GoFloat64), (2.6 : GoFloat64)) : Slice<GoFloat64>);
	stdgo.fmt.Fmt.println(stdgo.sort.Sort.float64sAreSorted(_s));
}

function exampleReverse():Void {
	var _s = (new Slice<GoInt>(0, 0, (5 : GoInt), (2 : GoInt), (6 : GoInt), (3 : GoInt), (1 : GoInt), (4 : GoInt)) : Slice<GoInt>);
	stdgo.sort.Sort.sort(stdgo.sort.Sort.reverse(Go.asInterface((_s : IntSlice))));
	stdgo.fmt.Fmt.println(_s);
}

function exampleSlice():Void {
	var _people = (new Slice<Person>(0, 0, (new Person(Go.str("Gopher"), (7 : GoInt)) : Person), (new Person(Go.str("Alice"), (55 : GoInt)) : Person),
		(new Person(Go.str("Vera"), (24 : GoInt)) : Person), (new Person(Go.str("Bob"), (75 : GoInt)) : Person)) : Slice<Person>);
	stdgo.sort.Sort.slice(Go.toInterface(_people), function(_i:GoInt, _j:GoInt):Bool {
		return _people[_i].name < _people[_j].name;
	});
	stdgo.fmt.Fmt.println(Go.str("By name:"), _people);
	stdgo.sort.Sort.slice(Go.toInterface(_people), function(_i:GoInt, _j:GoInt):Bool {
		return _people[_i].age < _people[_j].age;
	});
	stdgo.fmt.Fmt.println(Go.str("By age:"), _people);
}

function exampleSliceStable():Void {
	var _people = (new Slice<Person>(0, 0, (new Person(Go.str("Alice"), (25 : GoInt)) : Person), (new Person(Go.str("Elizabeth"), (75 : GoInt)) : Person),
		(new Person(Go.str("Alice"), (75 : GoInt)) : Person), (new Person(Go.str("Bob"), (75 : GoInt)) : Person),
		(new Person(Go.str("Alice"), (75 : GoInt)) : Person), (new Person(Go.str("Bob"), (25 : GoInt)) : Person),
		(new Person(Go.str("Colin"), (25 : GoInt)) : Person), (new Person(Go.str("Elizabeth"), (25 : GoInt)) : Person)) : Slice<Person>);
	stdgo.sort.Sort.sliceStable(Go.toInterface(_people), function(_i:GoInt, _j:GoInt):Bool {
		return _people[_i].name < _people[_j].name;
	});
	stdgo.fmt.Fmt.println(Go.str("By name:"), _people);
	stdgo.sort.Sort.sliceStable(Go.toInterface(_people), function(_i:GoInt, _j:GoInt):Bool {
		return _people[_i].age < _people[_j].age;
	});
	stdgo.fmt.Fmt.println(Go.str("By age,name:"), _people);
}

function exampleStrings():Void {
	var _s = (new Slice<GoString>(0, 0, Go.str("Go"), Go.str("Bravo"), Go.str("Gopher"), Go.str("Alpha"), Go.str("Grin"), Go.str("Delta")) : Slice<GoString>);
	stdgo.sort.Sort.strings(_s);
	stdgo.fmt.Fmt.println(_s);
}

function example_sortWrapper():Void {
	var _s = (new Slice<Ref<stdgo.sort_test.Sort_test.Organ>>(0, 0,
		(new stdgo.sort_test.Sort_test.Organ(Go.str("brain"), (1340 : stdgo.sort_test.Sort_test.Grams)) : stdgo.sort_test.Sort_test.Organ),
		(new stdgo.sort_test.Sort_test.Organ(Go.str("heart"), (290 : stdgo.sort_test.Sort_test.Grams)) : stdgo.sort_test.Sort_test.Organ),
		(new stdgo.sort_test.Sort_test.Organ(Go.str("liver"), (1494 : stdgo.sort_test.Sort_test.Grams)) : stdgo.sort_test.Sort_test.Organ),
		(new stdgo.sort_test.Sort_test.Organ(Go.str("pancreas"), (131 : stdgo.sort_test.Sort_test.Grams)) : stdgo.sort_test.Sort_test.Organ),
		(new stdgo.sort_test.Sort_test.Organ(Go.str("prostate"), (62 : stdgo.sort_test.Sort_test.Grams)) : stdgo.sort_test.Sort_test.Organ),
		(new stdgo.sort_test.Sort_test.Organ(Go.str("spleen"),
			(162 : stdgo.sort_test.Sort_test.Grams)) : stdgo.sort_test.Sort_test.Organ)) : Slice<Ref<stdgo.sort_test.Sort_test.Organ>>);
	stdgo.sort.Sort.sort(Go.asInterface((new stdgo.sort_test.Sort_test.ByWeight(_s) : stdgo.sort_test.Sort_test.ByWeight)));
	stdgo.fmt.Fmt.println(Go.str("Organs by weight:"));
	_printOrgans(_s);
	stdgo.sort.Sort.sort(Go.asInterface((new stdgo.sort_test.Sort_test.ByName(_s) : stdgo.sort_test.Sort_test.ByName)));
	stdgo.fmt.Fmt.println(Go.str("Organs by name:"));
	_printOrgans(_s);
}

function _printOrgans(_s:Slice<Ref<Organ>>):Void {
	for (_0 => _o in _s) {
		stdgo.fmt.Fmt.printf(Go.str("%-8s (%v)\n"), Go.toInterface(_o.name), Go.toInterface(Go.asInterface(_o.weight)));
	};
}

function _f(_a:Slice<GoInt>, _x:GoInt):GoInt->Bool {
	return function(_i:GoInt):Bool {
		return _a[_i] >= _x;
	};
}

function testSearch(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _e in _tests) {
		var _i:GoInt = search(_e._n, _e._f);
		if (_i != (_e._i)) {
			_t.errorf(Go.str("%s: expected index %d; got %d"), Go.toInterface(_e._name), Go.toInterface(_e._i), Go.toInterface(_i));
		};
	};
}

function testFind(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _str1 = (new Slice<GoString>(0, 0, Go.str("foo")) : Slice<GoString>);
	var _str2 = (new Slice<GoString>(0, 0, Go.str("ab"), Go.str("ca")) : Slice<GoString>);
	var _str3 = (new Slice<GoString>(0, 0, Go.str("mo"), Go.str("qo"), Go.str("vo")) : Slice<GoString>);
	var _str4 = (new Slice<GoString>(0, 0, Go.str("ab"), Go.str("ad"), Go.str("ca"), Go.str("xy")) : Slice<GoString>);
	var _strRepeats = (new Slice<GoString>(0, 0, Go.str("ba"), Go.str("ca"), Go.str("da"), Go.str("da"), Go.str("da"), Go.str("ka"), Go.str("ma"),
		Go.str("ma"), Go.str("ta")) : Slice<GoString>);
	var _strSame = (new Slice<GoString>(0, 0, Go.str("xx"), Go.str("xx"), Go.str("xx")) : Slice<GoString>);
	var _tests = (new Slice<T__struct_2>(0, 0, ({
		_data: (new Slice<GoString>(0, 0) : Slice<GoString>),
		_target: Go.str("foo"),
		_wantPos: (0 : GoInt),
		_wantFound: false
	} : T__struct_2), ({
		_data: (new Slice<GoString>(0, 0) : Slice<GoString>),
		_target: Go.str(),
		_wantPos: (0 : GoInt),
		_wantFound: false
		} : T__struct_2), ({
		_data: _str1,
		_target: Go.str("foo"),
		_wantPos: (0 : GoInt),
		_wantFound: true
		} : T__struct_2), ({
		_data: _str1,
		_target: Go.str("bar"),
		_wantPos: (0 : GoInt),
		_wantFound: false
		} : T__struct_2), ({
		_data: _str1,
		_target: Go.str("zx"),
		_wantPos: (1 : GoInt),
		_wantFound: false
		} : T__struct_2), ({
		_data: _str2,
		_target: Go.str("aa"),
		_wantPos: (0 : GoInt),
		_wantFound: false
		} : T__struct_2), ({
		_data: _str2,
		_target: Go.str("ab"),
		_wantPos: (0 : GoInt),
		_wantFound: true
		} : T__struct_2), ({
		_data: _str2,
		_target: Go.str("ad"),
		_wantPos: (1 : GoInt),
		_wantFound: false
		} : T__struct_2), ({
		_data: _str2,
		_target: Go.str("ca"),
		_wantPos: (1 : GoInt),
		_wantFound: true
		} : T__struct_2), ({
		_data: _str2,
		_target: Go.str("ra"),
		_wantPos: (2 : GoInt),
		_wantFound: false
		} : T__struct_2), ({
		_data: _str3,
		_target: Go.str("bb"),
		_wantPos: (0 : GoInt),
		_wantFound: false
		} : T__struct_2), ({
		_data: _str3,
		_target: Go.str("mo"),
		_wantPos: (0 : GoInt),
		_wantFound: true
		} : T__struct_2), ({
		_data: _str3,
		_target: Go.str("nb"),
		_wantPos: (1 : GoInt),
		_wantFound: false
		} : T__struct_2), ({
		_data: _str3,
		_target: Go.str("qo"),
		_wantPos: (1 : GoInt),
		_wantFound: true
		} : T__struct_2), ({
		_data: _str3,
		_target: Go.str("tr"),
		_wantPos: (2 : GoInt),
		_wantFound: false
		} : T__struct_2), ({
		_data: _str3,
		_target: Go.str("vo"),
		_wantPos: (2 : GoInt),
		_wantFound: true
		} : T__struct_2), ({
		_data: _str3,
		_target: Go.str("xr"),
		_wantPos: (3 : GoInt),
		_wantFound: false
		} : T__struct_2), ({
		_data: _str4,
		_target: Go.str("aa"),
		_wantPos: (0 : GoInt),
		_wantFound: false
		} : T__struct_2), ({
		_data: _str4,
		_target: Go.str("ab"),
		_wantPos: (0 : GoInt),
		_wantFound: true
		} : T__struct_2), ({
		_data: _str4,
		_target: Go.str("ac"),
		_wantPos: (1 : GoInt),
		_wantFound: false
		} : T__struct_2), ({
		_data: _str4,
		_target: Go.str("ad"),
		_wantPos: (1 : GoInt),
		_wantFound: true
		} : T__struct_2), ({
		_data: _str4,
		_target: Go.str("ax"),
		_wantPos: (2 : GoInt),
		_wantFound: false
		} : T__struct_2), ({
		_data: _str4,
		_target: Go.str("ca"),
		_wantPos: (2 : GoInt),
		_wantFound: true
		} : T__struct_2), ({
		_data: _str4,
		_target: Go.str("cc"),
		_wantPos: (3 : GoInt),
		_wantFound: false
		} : T__struct_2), ({
		_data: _str4,
		_target: Go.str("dd"),
		_wantPos: (3 : GoInt),
		_wantFound: false
		} : T__struct_2), ({
		_data: _str4,
		_target: Go.str("xy"),
		_wantPos: (3 : GoInt),
		_wantFound: true
		} : T__struct_2), ({
		_data: _str4,
		_target: Go.str("zz"),
		_wantPos: (4 : GoInt),
		_wantFound: false
		} : T__struct_2), ({
		_data: _strRepeats,
		_target: Go.str("da"),
		_wantPos: (2 : GoInt),
		_wantFound: true
		} : T__struct_2), ({
		_data: _strRepeats,
		_target: Go.str("db"),
		_wantPos: (5 : GoInt),
		_wantFound: false
		} : T__struct_2), ({
		_data: _strRepeats,
		_target: Go.str("ma"),
		_wantPos: (6 : GoInt),
		_wantFound: true
		} : T__struct_2), ({
		_data: _strRepeats,
		_target: Go.str("mb"),
		_wantPos: (8 : GoInt),
		_wantFound: false
		} : T__struct_2), ({
		_data: _strSame,
		_target: Go.str("xx"),
		_wantPos: (0 : GoInt),
		_wantFound: true
		} : T__struct_2), ({
		_data: _strSame,
		_target: Go.str("ab"),
		_wantPos: (0 : GoInt),
		_wantFound: false
		} : T__struct_2), ({
		_data: _strSame,
		_target: Go.str("zz"),
		_wantPos: (3 : GoInt),
		_wantFound: false
		} : T__struct_2)) : Slice<T__struct_2>);
	for (_0 => _tt in _tests) {
		_t.run(_tt._target, function(_t:Ref<stdgo.testing.Testing.T>):Void {
			var _cmp:GoInt->GoInt = function(_i:GoInt):GoInt {
				return stdgo.strings.Strings.compare(_tt._target, _tt._data[_i]);
			};
			var __tmp__ = find((_tt._data.length), _cmp),
				_pos:GoInt = __tmp__._0,
				_found:Bool = __tmp__._1;
			if ((_pos != _tt._wantPos) || (_found != _tt._wantFound)) {
				_t.errorf(Go.str("Find got (%v, %v), want (%v, %v)"), Go.toInterface(_pos), Go.toInterface(_found), Go.toInterface(_tt._wantPos),
					Go.toInterface(_tt._wantFound));
			};
		});
	};
}

/**
	// log2 computes the binary logarithm of x, rounded up to the next integer.
	// (log2(0) == 0, log2(1) == 0, log2(2) == 1, log2(3) == 2, etc.)
**/
function _log2(_x:GoInt):GoInt {
	var _n:GoInt = (0 : GoInt);
	{
		var _p:GoInt = (1 : GoInt);
		Go.cfor(_p < _x, _p = _p + (_p), {
			_n++;
		});
	};
	return _n;
}

function testSearchEfficiency(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _n:GoInt = (100 : GoInt);
	var _step:GoInt = (1 : GoInt);
	{
		var _exp:GoInt = (2 : GoInt);
		Go.cfor(_exp < (10:GoInt), _exp++, {
			var _max:GoInt = _log2(_n);
			{
				var _x:GoInt = (0 : GoInt);
				Go.cfor(_x < _n, _x = _x + (_step), {
					var _count:GoInt = (0 : GoInt);
					var _i:GoInt = search(_n, function(_i:GoInt):Bool {
						_count++;
						return _i >= _x;
					});
					if (_i != (_x)) {
						_t.errorf(Go.str("n = %d: expected index %d; got %d"), Go.toInterface(_n), Go.toInterface(_x), Go.toInterface(_i));
					};
					if (_count > _max) {
						_t.errorf(Go.str("n = %d, x = %d: expected <= %d calls; got %d"), Go.toInterface(_n), Go.toInterface(_x), Go.toInterface(_max),
							Go.toInterface(_count));
					};
				});
			};
			_n = _n * ((10 : GoInt));
			_step = _step * ((10 : GoInt));
		});
	};
}

function testSearchWrappers(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _e in _wrappertests) {
		if (_e._result != (_e._i)) {
			_t.errorf(Go.str("%s: expected index %d; got %d"), Go.toInterface(_e._name), Go.toInterface(_e._i), Go.toInterface(_e._result));
		};
	};
}

function _runSearchWrappers():Void {
	searchInts(_data, (11 : GoInt));
	searchFloat64s(_fdata, (2.1 : GoFloat64));
	searchStrings(_sdata, Go.str());
	(_data : IntSlice).search((0 : GoInt));
	(_fdata : Float64Slice).search((2 : GoFloat64));
	(_sdata : StringSlice).search(Go.str("x"));
}

function testSearchWrappersDontAlloc(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (stdgo.testing.Testing.short()) {
		_t.skip(Go.toInterface(Go.str("skipping malloc count in short mode")));
	};
	if (stdgo.runtime.Runtime.gomaxprocs((0 : GoInt)) > (1 : GoInt)) {
		_t.skip(Go.toInterface(Go.str("skipping; GOMAXPROCS>1")));
	};
	var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : GoInt), _runSearchWrappers);
	if (_allocs != (0 : GoFloat64)) {
		_t.errorf(Go.str("expected no allocs for runSearchWrappers, got %v"), Go.toInterface(_allocs));
	};
}

function benchmarkSearchWrappers(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_runSearchWrappers();
		});
	};
}

/**
	// Abstract exhaustive test: all sizes up to 100,
	// all possible return values. If there are any small
	// corner cases, this test exercises them.
**/
function testSearchExhaustive(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _size:GoInt = (0 : GoInt);
		Go.cfor(_size <= (100 : GoInt), _size++, {
			{
				var _targ:GoInt = (0 : GoInt);
				Go.cfor(_targ <= _size, _targ++, {
					var _i:GoInt = search(_size, function(_i:GoInt):Bool {
						return _i >= _targ;
					});
					if (_i != (_targ)) {
						_t.errorf(Go.str("Search(%d, %d) = %d"), Go.toInterface(_size), Go.toInterface(_targ), Go.toInterface(_i));
					};
				});
			};
		});
	};
}

/**
	// Abstract exhaustive test for Find.
**/
function testFindExhaustive(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _size:GoInt = (0 : GoInt);
		Go.cfor(_size <= (100 : GoInt), _size++, {
			{
				var _x:GoInt = (1 : GoInt);
				Go.cfor(_x <= ((_size * (2 : GoInt)) + (1 : GoInt)), _x++, {
					var _wantFound:Bool = false;
					var _wantPos:GoInt = (0 : GoInt);
					var _cmp:GoInt->GoInt = function(_i:GoInt):GoInt {
						return _x - ((_i + (1 : GoInt)) * (2 : GoInt));
					};
					var __tmp__ = find(_size, _cmp),
						_pos:GoInt = __tmp__._0,
						_found:Bool = __tmp__._1;
					if (_x % (2 : GoInt) == ((0 : GoInt))) {
						_wantPos = (_x / (2 : GoInt)) - (1 : GoInt);
						_wantFound = true;
					} else {
						_wantPos = _x / (2 : GoInt);
						_wantFound = false;
					};
					if ((_found != _wantFound) || (_pos != _wantPos)) {
						_t.errorf(Go.str("Find(%d, %d): got (%v, %v), want (%v, %v)"), Go.toInterface(_size), Go.toInterface(_x), Go.toInterface(_pos),
							Go.toInterface(_found), Go.toInterface(_wantPos), Go.toInterface(_wantFound));
					};
				});
			};
		});
	};
}

function testSortIntSlice(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _data = (_ints == null ? null : _ints.__copy__());
	var _a:IntSlice = ((_data.__slice__((0 : GoInt)) : Slice<GoInt>) : IntSlice);
	sort(Go.asInterface(_a));
	if (!isSorted(Go.asInterface(_a))) {
		_t.errorf(Go.str("sorted %v"), Go.toInterface(_ints));
		_t.errorf(Go.str("   got %v"), Go.toInterface(_data));
	};
}

function testSortFloat64Slice(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _data = (_float64s == null ? null : _float64s.__copy__());
	var _a:Float64Slice = ((_data.__slice__((0 : GoInt)) : Slice<GoFloat64>) : Float64Slice);
	sort(Go.asInterface(_a));
	if (!isSorted(Go.asInterface(_a))) {
		_t.errorf(Go.str("sorted %v"), Go.toInterface(_float64s));
		_t.errorf(Go.str("   got %v"), Go.toInterface(_data));
	};
}

function testSortStringSlice(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _data = (_strings == null ? null : _strings.__copy__());
	var _a:StringSlice = ((_data.__slice__((0 : GoInt)) : Slice<GoString>) : StringSlice);
	sort(Go.asInterface(_a));
	if (!isSorted(Go.asInterface(_a))) {
		_t.errorf(Go.str("sorted %v"), Go.toInterface(_strings));
		_t.errorf(Go.str("   got %v"), Go.toInterface(_data));
	};
}

function testInts(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _data = (_ints == null ? null : _ints.__copy__());
	ints((_data.__slice__((0 : GoInt)) : Slice<GoInt>));
	if (!intsAreSorted((_data.__slice__((0 : GoInt)) : Slice<GoInt>))) {
		_t.errorf(Go.str("sorted %v"), Go.toInterface(_ints));
		_t.errorf(Go.str("   got %v"), Go.toInterface(_data));
	};
}

function testFloat64s(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _data = (_float64s == null ? null : _float64s.__copy__());
	float64s((_data.__slice__((0 : GoInt)) : Slice<GoFloat64>));
	if (!float64sAreSorted((_data.__slice__((0 : GoInt)) : Slice<GoFloat64>))) {
		_t.errorf(Go.str("sorted %v"), Go.toInterface(_float64s));
		_t.errorf(Go.str("   got %v"), Go.toInterface(_data));
	};
}

function testStrings(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _data = (_strings == null ? null : _strings.__copy__());
	strings((_data.__slice__((0 : GoInt)) : Slice<GoString>));
	if (!stringsAreSorted((_data.__slice__((0 : GoInt)) : Slice<GoString>))) {
		_t.errorf(Go.str("sorted %v"), Go.toInterface(_strings));
		_t.errorf(Go.str("   got %v"), Go.toInterface(_data));
	};
}

function testSlice(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _data = (_strings == null ? null : _strings.__copy__());
	slice(Go.toInterface((_data.__slice__(0) : Slice<GoString>)), function(_i:GoInt, _j:GoInt):Bool {
		return _data[_i] < _data[_j];
	});
	if (!sliceIsSorted(Go.toInterface((_data.__slice__(0) : Slice<GoString>)), function(_i:GoInt, _j:GoInt):Bool {
		return _data[_i] < _data[_j];
	})) {
		_t.errorf(Go.str("sorted %v"), Go.toInterface(_strings));
		_t.errorf(Go.str("   got %v"), Go.toInterface(_data));
	};
}

function testSortLarge_Random(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _n:GoInt = (1000000 : GoInt);
	if (stdgo.testing.Testing.short()) {
		_n = _n / ((100 : GoInt));
	};
	var _data = new Slice<GoInt>((_n : GoInt).toBasic(), 0, ...[for (i in 0...(_n : GoInt).toBasic()) (0 : GoInt)]);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_data.length), _i++, {
			_data[_i] = stdgo.math.rand.Rand.intn((100 : GoInt));
		});
	};
	if (intsAreSorted(_data)) {
		_t.fatalf(Go.str("terrible rand.rand"));
	};
	ints(_data);
	if (!intsAreSorted(_data)) {
		_t.errorf(Go.str("sort didn\'t sort - 1M ints"));
	};
}

function testReverseSortIntSlice(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _data = (_ints == null ? null : _ints.__copy__());
	var _data1 = (_ints == null ? null : _ints.__copy__());
	var _a:IntSlice = ((_data.__slice__((0 : GoInt)) : Slice<GoInt>) : IntSlice);
	sort(Go.asInterface(_a));
	var _r:IntSlice = ((_data1.__slice__((0 : GoInt)) : Slice<GoInt>) : IntSlice);
	sort(reverse(Go.asInterface(_r)));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_data.length), _i++, {
			if (_a[_i] != (_r[(12 : GoInt) - _i])) {
				_t.errorf(Go.str("reverse sort didn\'t sort"));
			};
			if (_i > (6 : GoInt)) {
				break;
			};
		});
	};
}

function testBreakPatterns(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _data = new Slice<GoInt>((30 : GoInt).toBasic(), 0, ...[for (i in 0...(30 : GoInt).toBasic()) (0 : GoInt)]);
	for (_i => _ in _data) {
		_data[_i] = (10 : GoInt);
	};
	_data[(_data.length / (4 : GoInt)) * (1 : GoInt)] = (0 : GoInt);
	_data[(_data.length / (4 : GoInt)) * (2 : GoInt)] = (1 : GoInt);
	_data[(_data.length / (4 : GoInt)) * (3 : GoInt)] = (2 : GoInt);
	sort(Go.asInterface((_data : IntSlice)));
}

function testReverseRange(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _data = (new Slice<GoInt>(0, 0, (1 : GoInt), (2 : GoInt), (3 : GoInt), (4 : GoInt), (5 : GoInt), (6 : GoInt), (7 : GoInt)) : Slice<GoInt>);
	reverseRange(Go.asInterface((_data : IntSlice)), (0 : GoInt), (_data.length));
	{
		var _i:GoInt = (_data.length) - (1 : GoInt);
		Go.cfor(_i > (0 : GoInt), _i--, {
			if (_data[_i] > _data[_i - (1 : GoInt)]) {
				_t.fatalf(Go.str("reverseRange didn\'t work"));
			};
		});
	};
	var _data1 = (new Slice<GoInt>(0, 0, (1 : GoInt), (2 : GoInt), (3 : GoInt), (4 : GoInt), (5 : GoInt), (6 : GoInt), (7 : GoInt)) : Slice<GoInt>);
	var _data2 = (new Slice<GoInt>(0, 0, (1 : GoInt), (2 : GoInt), (5 : GoInt), (4 : GoInt), (3 : GoInt), (6 : GoInt), (7 : GoInt)) : Slice<GoInt>);
	reverseRange(Go.asInterface((_data1 : IntSlice)), (2 : GoInt), (5 : GoInt));
	for (_i => _v in _data1) {
		if (_v != (_data2[_i])) {
			_t.fatalf(Go.str("reverseRange didn\'t work"));
		};
	};
}

function testNonDeterministicComparison(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> {
		var a = function():Void {
			{
				var _r:AnyInterface = ({
					final r = Go.recover_exception;
					Go.recover_exception = null;
					r;
				});
				if (_r != null) {
					_t.error(_r);
				};
			};
		};
		a();
	});
	try {
		var _td = (({_r: stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(("0" : GoInt64)))} : stdgo.sort_test.Sort_test.T_nonDeterministicTestingData) : Ref<stdgo.sort_test.Sort_test.T_nonDeterministicTestingData>);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (10:GoInt), _i++, {
				sort(Go.asInterface(_td));
			});
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function benchmarkSortString1K(_b:Ref<stdgo.testing.Testing.B>):Void {
	_b.stopTimer();
	var _unsorted = new Slice<GoString>((1024 : GoInt).toBasic(), 0, ...[for (i in 0...(1024 : GoInt).toBasic()) ("" : GoString)]);
	for (_i => _ in _unsorted) {
		_unsorted[_i] = stdgo.strconv.Strconv.itoa(_i ^ (716 : GoInt));
	};
	var _data = new Slice<GoString>((_unsorted.length : GoInt).toBasic(), 0, ...[for (i in 0...(_unsorted.length : GoInt).toBasic()) ("" : GoString)]);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			Go.copySlice(_data, _unsorted);
			_b.startTimer();
			strings(_data);
			_b.stopTimer();
		});
	};
}

function benchmarkSortString1K_Slice(_b:Ref<stdgo.testing.Testing.B>):Void {
	_b.stopTimer();
	var _unsorted = new Slice<GoString>((1024 : GoInt).toBasic(), 0, ...[for (i in 0...(1024 : GoInt).toBasic()) ("" : GoString)]);
	for (_i => _ in _unsorted) {
		_unsorted[_i] = stdgo.strconv.Strconv.itoa(_i ^ (716 : GoInt));
	};
	var _data = new Slice<GoString>((_unsorted.length : GoInt).toBasic(), 0, ...[for (i in 0...(_unsorted.length : GoInt).toBasic()) ("" : GoString)]);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			Go.copySlice(_data, _unsorted);
			_b.startTimer();
			slice(Go.toInterface(_data), function(_i:GoInt, _j:GoInt):Bool {
				return _data[_i] < _data[_j];
			});
			_b.stopTimer();
		});
	};
}

function benchmarkStableString1K(_b:Ref<stdgo.testing.Testing.B>):Void {
	_b.stopTimer();
	var _unsorted = new Slice<GoString>((1024 : GoInt).toBasic(), 0, ...[for (i in 0...(1024 : GoInt).toBasic()) ("" : GoString)]);
	for (_i => _ in _unsorted) {
		_unsorted[_i] = stdgo.strconv.Strconv.itoa(_i ^ (716 : GoInt));
	};
	var _data = new Slice<GoString>((_unsorted.length : GoInt).toBasic(), 0, ...[for (i in 0...(_unsorted.length : GoInt).toBasic()) ("" : GoString)]);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			Go.copySlice(_data, _unsorted);
			_b.startTimer();
			stable(Go.asInterface((_data : StringSlice)));
			_b.stopTimer();
		});
	};
}

function benchmarkSortInt1K(_b:Ref<stdgo.testing.Testing.B>):Void {
	_b.stopTimer();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			var _data = new Slice<GoInt>((1024 : GoInt).toBasic(), 0, ...[for (i in 0...(1024 : GoInt).toBasic()) (0 : GoInt)]);
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (_data.length), _i++, {
					_data[_i] = _i ^ (716 : GoInt);
				});
			};
			_b.startTimer();
			ints(_data);
			_b.stopTimer();
		});
	};
}

function benchmarkSortInt1K_Sorted(_b:Ref<stdgo.testing.Testing.B>):Void {
	_b.stopTimer();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			var _data = new Slice<GoInt>((1024 : GoInt).toBasic(), 0, ...[for (i in 0...(1024 : GoInt).toBasic()) (0 : GoInt)]);
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (_data.length), _i++, {
					_data[_i] = _i;
				});
			};
			_b.startTimer();
			ints(_data);
			_b.stopTimer();
		});
	};
}

function benchmarkSortInt1K_Reversed(_b:Ref<stdgo.testing.Testing.B>):Void {
	_b.stopTimer();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			var _data = new Slice<GoInt>((1024 : GoInt).toBasic(), 0, ...[for (i in 0...(1024 : GoInt).toBasic()) (0 : GoInt)]);
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (_data.length), _i++, {
					_data[_i] = (_data.length) - _i;
				});
			};
			_b.startTimer();
			ints(_data);
			_b.stopTimer();
		});
	};
}

function benchmarkSortInt1K_Mod8(_b:Ref<stdgo.testing.Testing.B>):Void {
	_b.stopTimer();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			var _data = new Slice<GoInt>((1024 : GoInt).toBasic(), 0, ...[for (i in 0...(1024 : GoInt).toBasic()) (0 : GoInt)]);
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (_data.length), _i++, {
					_data[_i] = _i % (8 : GoInt);
				});
			};
			_b.startTimer();
			ints(_data);
			_b.stopTimer();
		});
	};
}

function benchmarkStableInt1K(_b:Ref<stdgo.testing.Testing.B>):Void {
	_b.stopTimer();
	var _unsorted = new Slice<GoInt>((1024 : GoInt).toBasic(), 0, ...[for (i in 0...(1024 : GoInt).toBasic()) (0 : GoInt)]);
	for (_i => _ in _unsorted) {
		_unsorted[_i] = _i ^ (716 : GoInt);
	};
	var _data = new Slice<GoInt>((_unsorted.length : GoInt).toBasic(), 0, ...[for (i in 0...(_unsorted.length : GoInt).toBasic()) (0 : GoInt)]);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			Go.copySlice(_data, _unsorted);
			_b.startTimer();
			stable(Go.asInterface((_data : IntSlice)));
			_b.stopTimer();
		});
	};
}

function benchmarkStableInt1K_Slice(_b:Ref<stdgo.testing.Testing.B>):Void {
	_b.stopTimer();
	var _unsorted = new Slice<GoInt>((1024 : GoInt).toBasic(), 0, ...[for (i in 0...(1024 : GoInt).toBasic()) (0 : GoInt)]);
	for (_i => _ in _unsorted) {
		_unsorted[_i] = _i ^ (716 : GoInt);
	};
	var _data = new Slice<GoInt>((_unsorted.length : GoInt).toBasic(), 0, ...[for (i in 0...(_unsorted.length : GoInt).toBasic()) (0 : GoInt)]);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			Go.copySlice(_data, _unsorted);
			_b.startTimer();
			sliceStable(Go.toInterface(_data), function(_i:GoInt, _j:GoInt):Bool {
				return _data[_i] < _data[_j];
			});
			_b.stopTimer();
		});
	};
}

function benchmarkSortInt64K(_b:Ref<stdgo.testing.Testing.B>):Void {
	_b.stopTimer();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			var _data = new Slice<GoInt>((65536 : GoInt).toBasic(), 0, ...[for (i in 0...(65536 : GoInt).toBasic()) (0 : GoInt)]);
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (_data.length), _i++, {
					_data[_i] = _i ^ (52428 : GoInt);
				});
			};
			_b.startTimer();
			ints(_data);
			_b.stopTimer();
		});
	};
}

function benchmarkSortInt64K_Slice(_b:Ref<stdgo.testing.Testing.B>):Void {
	_b.stopTimer();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			var _data = new Slice<GoInt>((65536 : GoInt).toBasic(), 0, ...[for (i in 0...(65536 : GoInt).toBasic()) (0 : GoInt)]);
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (_data.length), _i++, {
					_data[_i] = _i ^ (52428 : GoInt);
				});
			};
			_b.startTimer();
			slice(Go.toInterface(_data), function(_i:GoInt, _j:GoInt):Bool {
				return _data[_i] < _data[_j];
			});
			_b.stopTimer();
		});
	};
}

function benchmarkStableInt64K(_b:Ref<stdgo.testing.Testing.B>):Void {
	_b.stopTimer();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			var _data = new Slice<GoInt>((65536 : GoInt).toBasic(), 0, ...[for (i in 0...(65536 : GoInt).toBasic()) (0 : GoInt)]);
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (_data.length), _i++, {
					_data[_i] = _i ^ (52428 : GoInt);
				});
			};
			_b.startTimer();
			stable(Go.asInterface((_data : IntSlice)));
			_b.stopTimer();
		});
	};
}

function _min(_a:GoInt, _b:GoInt):GoInt {
	if (_a < _b) {
		return _a;
	};
	return _b;
}

function _lg(_n:GoInt):GoInt {
	var _i:GoInt = (0 : GoInt);
	while (((1 : GoInt) << (_i : GoUInt)) < _n) {
		_i++;
	};
	return _i;
}

function _testBentleyMcIlroy(_t:Ref<stdgo.testing.Testing.T>, _sort:Interface->Void, _maxswap:GoInt->GoInt):Void {
	var _sizes = (new Slice<GoInt>(0, 0, (100 : GoInt), (1023 : GoInt), (1024 : GoInt), (1025 : GoInt)) : Slice<GoInt>);
	if (stdgo.testing.Testing.short()) {
		_sizes = (new Slice<GoInt>(0, 0, (100 : GoInt), (127 : GoInt), (128 : GoInt), (129 : GoInt)) : Slice<GoInt>);
	};
	var _dists = (new Slice<GoString>(0, 0, Go.str("sawtooth"), Go.str("rand"), Go.str("stagger"), Go.str("plateau"), Go.str("shuffle")) : Slice<GoString>);
	var _modes = (new Slice<GoString>(0, 0, Go.str("copy"), Go.str("reverse"), Go.str("reverse1"), Go.str("reverse2"), Go.str("sort"),
		Go.str("dither")) : Slice<GoString>);
	var _tmp1:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0...1025) (0 : GoInt)]),
		_tmp2:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0...1025) (0 : GoInt)]);
	for (_0 => _n in _sizes) {
		{
			var _m:GoInt = (1 : GoInt);
			Go.cfor(_m < ((2 : GoInt) * _n), _m = _m * ((2 : GoInt)), {
				{
					var _dist:GoInt = (0 : GoInt);
					Go.cfor(_dist < (5:GoInt), _dist++, {
						var _j:GoInt = (0 : GoInt);
						var _k:GoInt = (1 : GoInt);
						var _data = (_tmp1.__slice__((0 : GoInt), _n) : Slice<GoInt>);
						{
							var _i:GoInt = (0 : GoInt);
							Go.cfor(_i < _n, _i++, {
								if (_dist == ((0 : GoInt))) {
									_data[_i] = _i % _m;
								} else if (_dist == ((1 : GoInt))) {
									_data[_i] = stdgo.math.rand.Rand.intn(_m);
								} else if (_dist == ((2 : GoInt))) {
									_data[_i] = ((_i * _m) + _i) % _n;
								} else if (_dist == ((3 : GoInt))) {
									_data[_i] = _min(_i, _m);
								} else if (_dist == ((4 : GoInt))) {
									if (stdgo.math.rand.Rand.intn(_m) != ((0 : GoInt))) {
										_j = _j + ((2 : GoInt));
										_data[_i] = _j;
									} else {
										_k = _k + ((2 : GoInt));
										_data[_i] = _k;
									};
								};
							});
						};
						var _mdata = (_tmp2.__slice__((0 : GoInt), _n) : Slice<GoInt>);
						{
							var _mode:GoInt = (0 : GoInt);
							Go.cfor(_mode < (6:GoInt), _mode++, {
								if (_mode == ((0 : GoInt))) {
									{
										var _i:GoInt = (0 : GoInt);
										Go.cfor(_i < _n, _i++, {
											_mdata[_i] = _data[_i];
										});
									};
								} else if (_mode == ((1 : GoInt))) {
									{
										var _i:GoInt = (0 : GoInt);
										Go.cfor(_i < _n, _i++, {
											_mdata[_i] = _data[(_n - _i) - (1 : GoInt)];
										});
									};
								} else if (_mode == ((2 : GoInt))) {
									{
										var _i:GoInt = (0 : GoInt);
										Go.cfor(_i < (_n / (2 : GoInt)), _i++, {
											_mdata[_i] = _data[((_n / (2 : GoInt)) - _i) - (1 : GoInt)];
										});
									};
									{
										var _i:GoInt = _n / (2 : GoInt);
										Go.cfor(_i < _n, _i++, {
											_mdata[_i] = _data[_i];
										});
									};
								} else if (_mode == ((3 : GoInt))) {
									{
										var _i:GoInt = (0 : GoInt);
										Go.cfor(_i < (_n / (2 : GoInt)), _i++, {
											_mdata[_i] = _data[_i];
										});
									};
									{
										var _i:GoInt = _n / (2 : GoInt);
										Go.cfor(_i < _n, _i++, {
											_mdata[_i] = _data[(_n - (_i - (_n / (2 : GoInt)))) - (1 : GoInt)];
										});
									};
								} else if (_mode == ((4 : GoInt))) {
									{
										var _i:GoInt = (0 : GoInt);
										Go.cfor(_i < _n, _i++, {
											_mdata[_i] = _data[_i];
										});
									};
									ints(_mdata);
								} else if (_mode == ((5 : GoInt))) {
									{
										var _i:GoInt = (0 : GoInt);
										Go.cfor(_i < _n, _i++, {
											_mdata[_i] = _data[_i] + (_i % (5 : GoInt));
										});
									};
								};
								var _desc:GoString = stdgo.fmt.Fmt.sprintf(Go.str("n=%d m=%d dist=%s mode=%s"), Go.toInterface(_n), Go.toInterface(_m),
									Go.toInterface(_dists[_dist]), Go.toInterface(_modes[_mode]));
								var _d = (({
									_desc: _desc,
									_t: _t,
									_data: (_mdata.__slice__((0 : GoInt), _n) : Slice<GoInt>),
									_maxswap: _maxswap(_n)
								} : stdgo.sort_test.Sort_test.T_testingData) : Ref<stdgo.sort_test.Sort_test.T_testingData>);
								_sort(Go.asInterface(_d));
								if (!intsAreSorted(_mdata)) {
									_t.fatalf(Go.str("%s: ints not sorted\n\t%v"), Go.toInterface(_desc), Go.toInterface(_mdata));
								};
							});
						};
					});
				};
			});
		};
	};
}

function testSortBM(_t:Ref<stdgo.testing.Testing.T>):Void {
	_testBentleyMcIlroy(_t, sort, function(_n:GoInt):GoInt {
		return ((_n * _lg(_n)) * (12 : GoInt)) / (10 : GoInt);
	});
}

function testHeapsortBM(_t:Ref<stdgo.testing.Testing.T>):Void {
	_testBentleyMcIlroy(_t, heapsort, function(_n:GoInt):GoInt {
		return ((_n * _lg(_n)) * (12 : GoInt)) / (10 : GoInt);
	});
}

function testStableBM(_t:Ref<stdgo.testing.Testing.T>):Void {
	_testBentleyMcIlroy(_t, stable, function(_n:GoInt):GoInt {
		return ((_n * _lg(_n)) * _lg(_n)) / (3 : GoInt);
	});
}

function _newAdversaryTestingData(_t:Ref<stdgo.testing.Testing.T>, _size:GoInt, _maxcmp:GoInt):Ref<T_adversaryTestingData> {
	var _gas:GoInt = _size - (1 : GoInt);
	var _data = new Slice<GoInt>((_size : GoInt).toBasic(), 0, ...[for (i in 0...(_size : GoInt).toBasic()) (0 : GoInt)]);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _size, _i++, {
			_data[_i] = _gas;
		});
	};
	return (({
		_t: _t,
		_data: _data,
		_maxcmp: _maxcmp,
		_gas: _gas
	} : stdgo.sort_test.Sort_test.T_adversaryTestingData) : Ref<stdgo.sort_test.Sort_test.T_adversaryTestingData>);
}

function testAdversary(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	var _maxcmp:GoInt = ((10000 : GoInt) * _lg((10000 : GoInt))) * (4 : GoInt);
	var _d = _newAdversaryTestingData(_t, (10000 : GoInt), _maxcmp);
	sort(Go.asInterface(_d));
	for (_i => _v in _d._data) {
		if (_v != (_i)) {
			_t.fatalf(Go.str("adversary data not fully sorted"));
		};
	};
}

function testStableInts(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _data = (_ints == null ? null : _ints.__copy__());
	stable(Go.asInterface(((_data.__slice__((0 : GoInt)) : Slice<GoInt>) : IntSlice)));
	if (!intsAreSorted((_data.__slice__((0 : GoInt)) : Slice<GoInt>))) {
		_t.errorf(Go.str("nsorted %v\n   got %v"), Go.toInterface(_ints), Go.toInterface(_data));
	};
}

function testStability(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _n:GoInt = (100000 : GoInt), _m:GoInt = (1000 : GoInt);
	if (stdgo.testing.Testing.short()) {
		{
			final __tmp__0 = (1000 : GoInt);
			final __tmp__1 = (100 : GoInt);
			_n = __tmp__0;
			_m = __tmp__1;
		};
	};
	var _data:stdgo.sort_test.Sort_test.T_intPairs = new stdgo.sort_test.Sort_test.T_intPairs((_n : GoInt).toBasic(), 0, ...[
		for (i in 0...(_n : GoInt).toBasic()) ({
			_a:(0 : GoInt), _b:(0 : GoInt)
		} : T__struct_4)
	]);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_data.length), _i++, {
			_data[_i]._a = stdgo.math.rand.Rand.intn(_m);
		});
	};
	if (isSorted(Go.asInterface(_data))) {
		_t.fatalf(Go.str("terrible rand.rand"));
	};
	_data._initB();
	stable(Go.asInterface(_data));
	if (!isSorted(Go.asInterface(_data))) {
		_t.errorf(Go.str("Stable didn\'t sort %d ints"), Go.toInterface(_n));
	};
	if (!_data._inOrder()) {
		_t.errorf(Go.str("Stable wasn\'t stable on %d ints"), Go.toInterface(_n));
	};
	_data._initB();
	stable(Go.asInterface(_data));
	if (!isSorted(Go.asInterface(_data))) {
		_t.errorf(Go.str("Stable shuffled sorted %d ints (order)"), Go.toInterface(_n));
	};
	if (!_data._inOrder()) {
		_t.errorf(Go.str("Stable shuffled sorted %d ints (stability)"), Go.toInterface(_n));
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_data.length), _i++, {
			_data[_i]._a = (_data.length) - _i;
		});
	};
	_data._initB();
	stable(Go.asInterface(_data));
	if (!isSorted(Go.asInterface(_data))) {
		_t.errorf(Go.str("Stable didn\'t sort %d ints"), Go.toInterface(_n));
	};
	if (!_data._inOrder()) {
		_t.errorf(Go.str("Stable wasn\'t stable on %d ints"), Go.toInterface(_n));
	};
}

function _countOps(_t:Ref<stdgo.testing.Testing.T>, _algo:Interface->Void, _name:GoString):Void {
	var _sizes = _countOpsSizes;
	if (stdgo.testing.Testing.short()) {
		_sizes = (_sizes.__slice__(0, (5 : GoInt)) : Slice<GoInt>);
	};
	if (!stdgo.testing.Testing.verbose()) {
		_t.skip(Go.toInterface(Go.str("Counting skipped as non-verbose mode.")));
	};
	for (_0 => _n in _sizes) {
		var _td:stdgo.sort_test.Sort_test.T_testingData = ({
			_desc: _name,
			_t: _t,
			_data: new Slice<GoInt>((_n : GoInt).toBasic(), 0, ...[for (i in 0...(_n : GoInt).toBasic()) (0 : GoInt)]),
			_maxswap: (2147483647 : GoInt)
		} : stdgo.sort_test.Sort_test.T_testingData);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _n, _i++, {
				_td._data[_i] = stdgo.math.rand.Rand.intn(_n / (5 : GoInt));
			});
		};
		_algo(Go.asInterface((_td : Ref<stdgo.sort_test.Sort_test.T_testingData>)));
		_t.logf(Go.str("%s %8d elements: %11d Swap, %10d Less"), Go.toInterface(_name), Go.toInterface(_n), Go.toInterface(_td._nswap),
			Go.toInterface(_td._ncmp));
	};
}

function testCountStableOps(_t:Ref<stdgo.testing.Testing.T>):Void {
	_countOps(_t, stable, Go.str("Stable"));
}

function testCountSortOps(_t:Ref<stdgo.testing.Testing.T>):Void {
	_countOps(_t, sort, Go.str("Sort  "));
}

function _bench(_b:Ref<stdgo.testing.Testing.B>, _size:GoInt, _algo:Interface->Void, _name:GoString):Void {
	if (stdgo.strings.Strings.hasSuffix(stdgo.internal.testenv.Testenv.builder(), Go.str("-race")) && (_size > (10000 : GoInt))) {
		_b.skip(Go.toInterface(Go.str("skipping slow benchmark on race builder")));
	};
	_b.stopTimer();
	var _data:stdgo.sort_test.Sort_test.T_intPairs = new stdgo.sort_test.Sort_test.T_intPairs((_size : GoInt).toBasic(), 0, ...[
		for (i in 0...(_size : GoInt).toBasic()) ({
			_a:(0 : GoInt), _b:(0 : GoInt)
		} : T__struct_4)
	]);
	var _x:GoUInt32 = ("4294967295" : GoUInt32);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			{
				var _n:GoInt = _size - (3 : GoInt);
				Go.cfor(_n <= (_size + (3 : GoInt)), _n++, {
					{
						var _i:GoInt = (0 : GoInt);
						Go.cfor(_i < (_data.length), _i++, {
							_x = _x + (_x);
							_x = _x ^ (("1" : GoUInt32));
							if ((_x : GoInt32) < (0 : GoInt32)) {
								_x = _x ^ (("2290650863" : GoUInt32));
							};
							_data[_i]._a = (_x % (_n / (5 : GoInt) : GoUInt32) : GoInt);
						});
					};
					_data._initB();
					_b.startTimer();
					_algo(Go.asInterface(_data));
					_b.stopTimer();
					if (!isSorted(Go.asInterface(_data))) {
						_b.errorf(Go.str("%s did not sort %d ints"), Go.toInterface(_name), Go.toInterface(_n));
					};
					if ((_name == Go.str("Stable")) && !_data._inOrder()) {
						_b.errorf(Go.str("%s unstable on %d ints"), Go.toInterface(_name), Go.toInterface(_n));
					};
				});
			};
		});
	};
}

function benchmarkSort1e2(_b:Ref<stdgo.testing.Testing.B>):Void {
	_bench(_b, (100 : GoInt), sort, Go.str("Sort"));
}

function benchmarkStable1e2(_b:Ref<stdgo.testing.Testing.B>):Void {
	_bench(_b, (100 : GoInt), stable, Go.str("Stable"));
}

function benchmarkSort1e4(_b:Ref<stdgo.testing.Testing.B>):Void {
	_bench(_b, (10000 : GoInt), sort, Go.str("Sort"));
}

function benchmarkStable1e4(_b:Ref<stdgo.testing.Testing.B>):Void {
	_bench(_b, (10000 : GoInt), stable, Go.str("Stable"));
}

function benchmarkSort1e6(_b:Ref<stdgo.testing.Testing.B>):Void {
	_bench(_b, (1000000 : GoInt), sort, Go.str("Sort"));
}

function benchmarkStable1e6(_b:Ref<stdgo.testing.Testing.B>):Void {
	_bench(_b, (1000000 : GoInt), stable, Go.str("Stable"));
}

class Person_asInterface {
	@:keep
	public function string():GoString
		return __self__.value.string();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Person>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sort_test.Sort_test.Person_asInterface) class Person_static_extension {
	@:keep
	static public function string(_p:Person):GoString {
		return stdgo.fmt.Fmt.sprintf(Go.str("%s: %d"), Go.toInterface(_p.name), Go.toInterface(_p.age));
	}
}

private class T_planetSorter_asInterface {
	/**
		// Less is part of sort.Interface. It is implemented by calling the "by" closure in the sorter.
	**/
	@:keep
	public function less(_i:GoInt, _j:GoInt):Bool
		return __self__.value.less(_i, _j);

	/**
		// Swap is part of sort.Interface.
	**/
	@:keep
	public function swap(_i:GoInt, _j:GoInt):Void
		__self__.value.swap(_i, _j);

	/**
		// Len is part of sort.Interface.
	**/
	@:keep
	public function len():GoInt
		return __self__.value.len();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_planetSorter>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sort_test.Sort_test.T_planetSorter_asInterface) class T_planetSorter_static_extension {
	/**
		// Less is part of sort.Interface. It is implemented by calling the "by" closure in the sorter.
	**/
	@:keep
	static public function less(_s:Ref<T_planetSorter>, _i:GoInt, _j:GoInt):Bool {
		return _s._by((_s._planets[_i] : Ref<stdgo.sort_test.Sort_test.Planet>), (_s._planets[_j] : Ref<stdgo.sort_test.Sort_test.Planet>));
	}

	/**
		// Swap is part of sort.Interface.
	**/
	@:keep
	static public function swap(_s:Ref<T_planetSorter>, _i:GoInt, _j:GoInt):Void {
		{
			final __tmp__0 = (_s._planets[_j] == null ? null : _s._planets[_j].__copy__());
			final __tmp__1 = (_s._planets[_i] == null ? null : _s._planets[_i].__copy__());
			_s._planets[_i] = __tmp__0;
			_s._planets[_j] = __tmp__1;
		};
	}

	/**
		// Len is part of sort.Interface.
	**/
	@:keep
	static public function len(_s:Ref<T_planetSorter>):GoInt {
		return (_s._planets.length);
	}
}

private class T_multiSorter_asInterface {
	/**
		// Less is part of sort.Interface. It is implemented by looping along the
		// less functions until it finds a comparison that discriminates between
		// the two items (one is less than the other). Note that it can call the
		// less functions twice per call. We could change the functions to return
		// -1, 0, 1 and reduce the number of calls for greater efficiency: an
		// exercise for the reader.
	**/
	@:keep
	public function less(_i:GoInt, _j:GoInt):Bool
		return __self__.value.less(_i, _j);

	/**
		// Swap is part of sort.Interface.
	**/
	@:keep
	public function swap(_i:GoInt, _j:GoInt):Void
		__self__.value.swap(_i, _j);

	/**
		// Len is part of sort.Interface.
	**/
	@:keep
	public function len():GoInt
		return __self__.value.len();

	/**
		// Sort sorts the argument slice according to the less functions passed to OrderedBy.
	**/
	@:keep
	public function sort(_changes:Slice<Change>):Void
		__self__.value.sort(_changes);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_multiSorter>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sort_test.Sort_test.T_multiSorter_asInterface) class T_multiSorter_static_extension {
	/**
		// Less is part of sort.Interface. It is implemented by looping along the
		// less functions until it finds a comparison that discriminates between
		// the two items (one is less than the other). Note that it can call the
		// less functions twice per call. We could change the functions to return
		// -1, 0, 1 and reduce the number of calls for greater efficiency: an
		// exercise for the reader.
	**/
	@:keep
	static public function less(_ms:Ref<T_multiSorter>, _i:GoInt, _j:GoInt):Bool {
		var _p = (_ms._changes[_i] : Ref<stdgo.sort_test.Sort_test.Change>),
			_q = (_ms._changes[_j] : Ref<stdgo.sort_test.Sort_test.Change>);
		var _k:GoInt = (0 : GoInt);
		{
			_k = (0 : GoInt);
			Go.cfor(_k < (_ms._less.length - (1 : GoInt)), _k++, {
				var _less:stdgo.sort_test.Sort_test.T_lessFunc = _ms._less[_k];
				if (_less(_p, _q)) {
					return true;
				} else if (_less(_q, _p)) {
					return false;
				};
			});
		};
		return _ms._less[_k](_p, _q);
	}

	/**
		// Swap is part of sort.Interface.
	**/
	@:keep
	static public function swap(_ms:Ref<T_multiSorter>, _i:GoInt, _j:GoInt):Void {
		{
			final __tmp__0 = (_ms._changes[_j] == null ? null : _ms._changes[_j].__copy__());
			final __tmp__1 = (_ms._changes[_i] == null ? null : _ms._changes[_i].__copy__());
			_ms._changes[_i] = __tmp__0;
			_ms._changes[_j] = __tmp__1;
		};
	}

	/**
		// Len is part of sort.Interface.
	**/
	@:keep
	static public function len(_ms:Ref<T_multiSorter>):GoInt {
		return (_ms._changes.length);
	}

	/**
		// Sort sorts the argument slice according to the less functions passed to OrderedBy.
	**/
	@:keep
	static public function sort(_ms:Ref<T_multiSorter>, _changes:Slice<Change>):Void {
		_ms._changes = _changes;
		stdgo.sort.Sort.sort(Go.asInterface(_ms));
	}
}

class ByName_asInterface {
	@:keep
	public function less(_i:GoInt, _j:GoInt):Bool
		return __self__.value.less(_i, _j);

	@:embedded
	public function swap(_i:GoInt, _j:GoInt):Void
		__self__.value.swap(_i, _j);

	@:embedded
	public function len():GoInt
		return __self__.value.len();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<ByName>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sort_test.Sort_test.ByName_asInterface) class ByName_static_extension {
	@:keep
	static public function less(_s:ByName, _i:GoInt, _j:GoInt):Bool {
		return _s.organs[_i].name < _s.organs[_j].name;
	}

	@:embedded
	public static function swap(__self__:ByName, _i:GoInt, _j:GoInt)
		__self__.swap(_i, _j);

	@:embedded
	public static function len(__self__:ByName):GoInt
		return __self__.len();
}

class ByWeight_asInterface {
	@:keep
	public function less(_i:GoInt, _j:GoInt):Bool
		return __self__.value.less(_i, _j);

	@:embedded
	public function swap(_i:GoInt, _j:GoInt):Void
		__self__.value.swap(_i, _j);

	@:embedded
	public function len():GoInt
		return __self__.value.len();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<ByWeight>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sort_test.Sort_test.ByWeight_asInterface) class ByWeight_static_extension {
	@:keep
	static public function less(_s:ByWeight, _i:GoInt, _j:GoInt):Bool {
		return _s.organs[_i].weight < _s.organs[_j].weight;
	}

	@:embedded
	public static function swap(__self__:ByWeight, _i:GoInt, _j:GoInt)
		__self__.swap(_i, _j);

	@:embedded
	public static function len(__self__:ByWeight):GoInt
		return __self__.len();
}

private class T_nonDeterministicTestingData_asInterface {
	@:keep
	public function swap(_i:GoInt, _j:GoInt):Void
		__self__.value.swap(_i, _j);

	@:keep
	public function less(_i:GoInt, _j:GoInt):Bool
		return __self__.value.less(_i, _j);

	@:keep
	public function len():GoInt
		return __self__.value.len();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_nonDeterministicTestingData>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sort_test.Sort_test.T_nonDeterministicTestingData_asInterface) class T_nonDeterministicTestingData_static_extension {
	@:keep
	static public function swap(_t:Ref<T_nonDeterministicTestingData>, _i:GoInt, _j:GoInt):Void {
		if ((((_i < (0:GoInt)) || (_j < (0:GoInt))) || (_i >= _t.len())) || (_j >= _t.len())) {
			throw Go.toInterface(Go.str("nondeterministic comparison out of bounds"));
		};
	}

	@:keep
	static public function less(_t:Ref<T_nonDeterministicTestingData>, _i:GoInt, _j:GoInt):Bool {
		if ((((_i < (0:GoInt)) || (_j < (0:GoInt))) || (_i >= _t.len())) || (_j >= _t.len())) {
			throw Go.toInterface(Go.str("nondeterministic comparison out of bounds"));
		};
		return _t._r.float32() < (0.5:GoFloat64);
	}

	@:keep
	static public function len(_t:Ref<T_nonDeterministicTestingData>):GoInt {
		return (500 : GoInt);
	}
}

private class T_testingData_asInterface {
	@:keep
	public function swap(_i:GoInt, _j:GoInt):Void
		__self__.value.swap(_i, _j);

	@:keep
	public function less(_i:GoInt, _j:GoInt):Bool
		return __self__.value.less(_i, _j);

	@:keep
	public function len():GoInt
		return __self__.value.len();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_testingData>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sort_test.Sort_test.T_testingData_asInterface) class T_testingData_static_extension {
	@:keep
	static public function swap(_d:Ref<T_testingData>, _i:GoInt, _j:GoInt):Void {
		if (_d._nswap >= _d._maxswap) {
			_d._t.fatalf(Go.str("%s: used %d swaps sorting slice of %d"), Go.toInterface(_d._desc), Go.toInterface(_d._nswap),
				Go.toInterface((_d._data.length)));
		};
		_d._nswap++;
		{
			final __tmp__0 = _d._data[_j];
			final __tmp__1 = _d._data[_i];
			_d._data[_i] = __tmp__0;
			_d._data[_j] = __tmp__1;
		};
	}

	@:keep
	static public function less(_d:Ref<T_testingData>, _i:GoInt, _j:GoInt):Bool {
		_d._ncmp++;
		return _d._data[_i] < _d._data[_j];
	}

	@:keep
	static public function len(_d:Ref<T_testingData>):GoInt {
		return (_d._data.length);
	}
}

private class T_adversaryTestingData_asInterface {
	@:keep
	public function swap(_i:GoInt, _j:GoInt):Void
		__self__.value.swap(_i, _j);

	@:keep
	public function less(_i:GoInt, _j:GoInt):Bool
		return __self__.value.less(_i, _j);

	@:keep
	public function len():GoInt
		return __self__.value.len();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_adversaryTestingData>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sort_test.Sort_test.T_adversaryTestingData_asInterface) class T_adversaryTestingData_static_extension {
	@:keep
	static public function swap(_d:Ref<T_adversaryTestingData>, _i:GoInt, _j:GoInt):Void {
		{
			final __tmp__0 = _d._data[_j];
			final __tmp__1 = _d._data[_i];
			_d._data[_i] = __tmp__0;
			_d._data[_j] = __tmp__1;
		};
	}

	@:keep
	static public function less(_d:Ref<T_adversaryTestingData>, _i:GoInt, _j:GoInt):Bool {
		if (_d._ncmp >= _d._maxcmp) {
			_d._t.fatalf(Go.str("used %d comparisons sorting adversary data with size %d"), Go.toInterface(_d._ncmp), Go.toInterface((_d._data.length)));
		};
		_d._ncmp++;
		if ((_d._data[_i] == _d._gas) && (_d._data[_j] == _d._gas)) {
			if (_i == (_d._candidate)) {
				_d._data[_i] = _d._nsolid;
				_d._nsolid++;
			} else {
				_d._data[_j] = _d._nsolid;
				_d._nsolid++;
			};
		};
		if (_d._data[_i] == (_d._gas)) {
			_d._candidate = _i;
		} else if (_d._data[_j] == (_d._gas)) {
			_d._candidate = _j;
		};
		return _d._data[_i] < _d._data[_j];
	}

	@:keep
	static public function len(_d:Ref<T_adversaryTestingData>):GoInt {
		return (_d._data.length);
	}
}

class ByAge_asInterface {
	@:keep
	public function less(_i:GoInt, _j:GoInt):Bool
		return __self__.value.less(_i, _j);

	@:keep
	public function swap(_i:GoInt, _j:GoInt):Void
		__self__.value.swap(_i, _j);

	@:keep
	public function len():GoInt
		return __self__.value.len();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<ByAge>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sort_test.Sort_test.ByAge_asInterface) class ByAge_static_extension {
	@:keep
	static public function less(_a:ByAge, _i:GoInt, _j:GoInt):Bool {
		return _a[_i].age < _a[_j].age;
	}

	@:keep
	static public function swap(_a:ByAge, _i:GoInt, _j:GoInt):Void {
		{
			final __tmp__0 = (_a[_j] == null ? null : _a[_j].__copy__());
			final __tmp__1 = (_a[_i] == null ? null : _a[_i].__copy__());
			_a[_i] = __tmp__0;
			_a[_j] = __tmp__1;
		};
	}

	@:keep
	static public function len(_a:ByAge):GoInt {
		return (_a.length);
	}
}

class By_asInterface {
	/**
		// Sort is a method on the function type, By, that sorts the argument slice according to the function.
	**/
	@:keep
	public function sort(_planets:Slice<Planet>):Void
		__self__.value.sort(_planets);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<By>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sort_test.Sort_test.By_asInterface) class By_static_extension {
	/**
		// Sort is a method on the function type, By, that sorts the argument slice according to the function.
	**/
	@:keep
	static public function sort(_by:By, _planets:Slice<Planet>):Void {
		var _ps = (({_planets: _planets, _by: _by} : stdgo.sort_test.Sort_test.T_planetSorter) : Ref<stdgo.sort_test.Sort_test.T_planetSorter>);
		stdgo.sort.Sort.sort(Go.asInterface(_ps));
	}
}

class Grams_asInterface {
	@:keep
	public function string():GoString
		return __self__.value.string();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Grams>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sort_test.Sort_test.Grams_asInterface) class Grams_static_extension {
	@:keep
	static public function string(_g:Grams):GoString {
		return stdgo.fmt.Fmt.sprintf(Go.str("%dg"), Go.toInterface((_g : GoInt)));
	}
}

class Organs_asInterface {
	@:keep
	public function swap(_i:GoInt, _j:GoInt):Void
		__self__.value.swap(_i, _j);

	@:keep
	public function len():GoInt
		return __self__.value.len();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Organs>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sort_test.Sort_test.Organs_asInterface) class Organs_static_extension {
	@:keep
	static public function swap(_s:Organs, _i:GoInt, _j:GoInt):Void {
		{
			final __tmp__0 = _s[_j];
			final __tmp__1 = _s[_i];
			_s[_i] = __tmp__0;
			_s[_j] = __tmp__1;
		};
	}

	@:keep
	static public function len(_s:Organs):GoInt {
		return (_s.length);
	}
}

private class T_intPairs_asInterface {
	/**
		// InOrder checks if a-equal elements were not reordered.
	**/
	@:keep
	public function _inOrder():Bool
		return __self__.value._inOrder();

	/**
		// Record initial order in B.
	**/
	@:keep
	public function _initB():Void
		__self__.value._initB();

	@:keep
	public function swap(_i:GoInt, _j:GoInt):Void
		__self__.value.swap(_i, _j);

	@:keep
	public function less(_i:GoInt, _j:GoInt):Bool
		return __self__.value.less(_i, _j);

	/**
		// IntPairs compare on a only.
	**/
	@:keep
	public function len():GoInt
		return __self__.value.len();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_intPairs>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sort_test.Sort_test.T_intPairs_asInterface) class T_intPairs_static_extension {
	/**
		// InOrder checks if a-equal elements were not reordered.
	**/
	@:keep
	static public function _inOrder(_d:T_intPairs):Bool {
		var _lastA:GoInt = (-1 : GoInt), _lastB:GoInt = (0 : GoInt);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (_d.length), _i++, {
				if (_lastA != (_d[_i]._a)) {
					_lastA = _d[_i]._a;
					_lastB = _d[_i]._b;
					continue;
				};
				if (_d[_i]._b <= _lastB) {
					return false;
				};
				_lastB = _d[_i]._b;
			});
		};
		return true;
	}

	/**
		// Record initial order in B.
	**/
	@:keep
	static public function _initB(_d:T_intPairs):Void {
		for (_i => _ in _d) {
			_d[_i]._b = _i;
		};
	}

	@:keep
	static public function swap(_d:T_intPairs, _i:GoInt, _j:GoInt):Void {
		{
			final __tmp__0 = {
				final x = _d[_j];
				({_a: x._a, _b: x._b} : T__struct_4);
			};
			final __tmp__1 = {
				final x = _d[_i];
				({_a: x._a, _b: x._b} : T__struct_4);
			};
			_d[_i] = __tmp__0;
			_d[_j] = __tmp__1;
		};
	}

	@:keep
	static public function less(_d:T_intPairs, _i:GoInt, _j:GoInt):Bool {
		return _d[_i]._a < _d[_j]._a;
	}

	/**
		// IntPairs compare on a only.
	**/
	@:keep
	static public function len(_d:T_intPairs):GoInt {
		return (_d.length);
	}
}
