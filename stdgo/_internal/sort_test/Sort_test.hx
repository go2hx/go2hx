package stdgo._internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
final __Sawtooth : stdgo.GoUInt64 = (5i64 : stdgo.GoUInt64);
final __Rand = (5i64 : stdgo.GoUInt64);
final __Stagger = (5i64 : stdgo.GoUInt64);
final __Plateau = (5i64 : stdgo.GoUInt64);
final __Shuffle = (5i64 : stdgo.GoUInt64);
final __NDist = (5i64 : stdgo.GoUInt64);
final __Copy : stdgo.GoUInt64 = (6i64 : stdgo.GoUInt64);
final __Reverse = (6i64 : stdgo.GoUInt64);
final __ReverseFirstHalf = (6i64 : stdgo.GoUInt64);
final __ReverseSecondHalf = (6i64 : stdgo.GoUInt64);
final __Sorted = (6i64 : stdgo.GoUInt64);
final __Dither = (6i64 : stdgo.GoUInt64);
final __NMode = (6i64 : stdgo.GoUInt64);
var _planets : stdgo.Slice<stdgo._internal.sort_test.Sort_test.Planet> = (new stdgo.Slice<stdgo._internal.sort_test.Sort_test.Planet>(4, 4, ...[(new stdgo._internal.sort_test.Sort_test.Planet(("Mercury" : stdgo.GoString), (0.055 : stdgo.GoFloat64), (0.4 : stdgo.GoFloat64)) : stdgo._internal.sort_test.Sort_test.Planet), (new stdgo._internal.sort_test.Sort_test.Planet(("Venus" : stdgo.GoString), (0.815 : stdgo.GoFloat64), (0.7 : stdgo.GoFloat64)) : stdgo._internal.sort_test.Sort_test.Planet), (new stdgo._internal.sort_test.Sort_test.Planet(("Earth" : stdgo.GoString), (1 : stdgo.GoFloat64), (1 : stdgo.GoFloat64)) : stdgo._internal.sort_test.Sort_test.Planet), (new stdgo._internal.sort_test.Sort_test.Planet(("Mars" : stdgo.GoString), (0.107 : stdgo.GoFloat64), (1.5 : stdgo.GoFloat64)) : stdgo._internal.sort_test.Sort_test.Planet)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.sort_test.Sort_test.Planet)])) : stdgo.Slice<stdgo._internal.sort_test.Sort_test.Planet>);
var _changes : stdgo.Slice<stdgo._internal.sort_test.Sort_test.Change> = (new stdgo.Slice<stdgo._internal.sort_test.Sort_test.Change>(9, 9, ...[(new stdgo._internal.sort_test.Sort_test.Change(("gri" : stdgo.GoString), ("Go" : stdgo.GoString), (100 : stdgo.GoInt)) : stdgo._internal.sort_test.Sort_test.Change), (new stdgo._internal.sort_test.Sort_test.Change(("ken" : stdgo.GoString), ("C" : stdgo.GoString), (150 : stdgo.GoInt)) : stdgo._internal.sort_test.Sort_test.Change), (new stdgo._internal.sort_test.Sort_test.Change(("glenda" : stdgo.GoString), ("Go" : stdgo.GoString), (200 : stdgo.GoInt)) : stdgo._internal.sort_test.Sort_test.Change), (new stdgo._internal.sort_test.Sort_test.Change(("rsc" : stdgo.GoString), ("Go" : stdgo.GoString), (200 : stdgo.GoInt)) : stdgo._internal.sort_test.Sort_test.Change), (new stdgo._internal.sort_test.Sort_test.Change(("r" : stdgo.GoString), ("Go" : stdgo.GoString), (100 : stdgo.GoInt)) : stdgo._internal.sort_test.Sort_test.Change), (new stdgo._internal.sort_test.Sort_test.Change(("ken" : stdgo.GoString), ("Go" : stdgo.GoString), (200 : stdgo.GoInt)) : stdgo._internal.sort_test.Sort_test.Change), (new stdgo._internal.sort_test.Sort_test.Change(("dmr" : stdgo.GoString), ("C" : stdgo.GoString), (100 : stdgo.GoInt)) : stdgo._internal.sort_test.Sort_test.Change), (new stdgo._internal.sort_test.Sort_test.Change(("r" : stdgo.GoString), ("C" : stdgo.GoString), (150 : stdgo.GoInt)) : stdgo._internal.sort_test.Sort_test.Change), (new stdgo._internal.sort_test.Sort_test.Change(("gri" : stdgo.GoString), ("Smalltalk" : stdgo.GoString), (80 : stdgo.GoInt)) : stdgo._internal.sort_test.Sort_test.Change)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.sort_test.Sort_test.Change)])) : stdgo.Slice<stdgo._internal.sort_test.Sort_test.Change>);
var _data : stdgo.Slice<stdgo.GoInt> = {
        var s = new stdgo.Slice<stdgo.GoInt>(14, 0).__setNumber32__();
        s[0] = (-10 : stdgo.GoInt);
        s[1] = (-5 : stdgo.GoInt);
        s[2] = (0 : stdgo.GoInt);
        s[3] = (1 : stdgo.GoInt);
        s[4] = (2 : stdgo.GoInt);
        s[5] = (3 : stdgo.GoInt);
        s[6] = (5 : stdgo.GoInt);
        s[7] = (7 : stdgo.GoInt);
        s[8] = (11 : stdgo.GoInt);
        s[9] = (100 : stdgo.GoInt);
        s[10] = (100 : stdgo.GoInt);
        s[11] = (100 : stdgo.GoInt);
        s[12] = (1000 : stdgo.GoInt);
        s[13] = (10000 : stdgo.GoInt);
        s;
    };
var _tests : stdgo.Slice<T__struct_1> = (new stdgo.Slice<T__struct_1>(22, 22, ...[
({ _name : ("empty" : stdgo.GoString), _n : (0 : stdgo.GoInt), _f : null, _i : (0 : stdgo.GoInt) } : T__struct_1),
({ _name : ("1 1" : stdgo.GoString), _n : (1 : stdgo.GoInt), _f : function(_i:stdgo.GoInt):Bool {
        return (_i >= (1 : stdgo.GoInt) : Bool);
    }, _i : (1 : stdgo.GoInt) } : T__struct_1),
({ _name : ("1 true" : stdgo.GoString), _n : (1 : stdgo.GoInt), _f : function(_i:stdgo.GoInt):Bool {
        return true;
    }, _i : (0 : stdgo.GoInt) } : T__struct_1),
({ _name : ("1 false" : stdgo.GoString), _n : (1 : stdgo.GoInt), _f : function(_i:stdgo.GoInt):Bool {
        return false;
    }, _i : (1 : stdgo.GoInt) } : T__struct_1),
({ _name : ("1e9 991" : stdgo.GoString), _n : (1000000000 : stdgo.GoInt), _f : function(_i:stdgo.GoInt):Bool {
        return (_i >= (991 : stdgo.GoInt) : Bool);
    }, _i : (991 : stdgo.GoInt) } : T__struct_1),
({ _name : ("1e9 true" : stdgo.GoString), _n : (1000000000 : stdgo.GoInt), _f : function(_i:stdgo.GoInt):Bool {
        return true;
    }, _i : (0 : stdgo.GoInt) } : T__struct_1),
({ _name : ("1e9 false" : stdgo.GoString), _n : (1000000000 : stdgo.GoInt), _f : function(_i:stdgo.GoInt):Bool {
        return false;
    }, _i : (1000000000 : stdgo.GoInt) } : T__struct_1),
({ _name : ("data -20" : stdgo.GoString), _n : (_data.length), _f : _f(_data, (-20 : stdgo.GoInt)), _i : (0 : stdgo.GoInt) } : T__struct_1),
({ _name : ("data -10" : stdgo.GoString), _n : (_data.length), _f : _f(_data, (-10 : stdgo.GoInt)), _i : (0 : stdgo.GoInt) } : T__struct_1),
({ _name : ("data -9" : stdgo.GoString), _n : (_data.length), _f : _f(_data, (-9 : stdgo.GoInt)), _i : (1 : stdgo.GoInt) } : T__struct_1),
({ _name : ("data -6" : stdgo.GoString), _n : (_data.length), _f : _f(_data, (-6 : stdgo.GoInt)), _i : (1 : stdgo.GoInt) } : T__struct_1),
({ _name : ("data -5" : stdgo.GoString), _n : (_data.length), _f : _f(_data, (-5 : stdgo.GoInt)), _i : (1 : stdgo.GoInt) } : T__struct_1),
({ _name : ("data 3" : stdgo.GoString), _n : (_data.length), _f : _f(_data, (3 : stdgo.GoInt)), _i : (5 : stdgo.GoInt) } : T__struct_1),
({ _name : ("data 11" : stdgo.GoString), _n : (_data.length), _f : _f(_data, (11 : stdgo.GoInt)), _i : (8 : stdgo.GoInt) } : T__struct_1),
({ _name : ("data 99" : stdgo.GoString), _n : (_data.length), _f : _f(_data, (99 : stdgo.GoInt)), _i : (9 : stdgo.GoInt) } : T__struct_1),
({ _name : ("data 100" : stdgo.GoString), _n : (_data.length), _f : _f(_data, (100 : stdgo.GoInt)), _i : (9 : stdgo.GoInt) } : T__struct_1),
({ _name : ("data 101" : stdgo.GoString), _n : (_data.length), _f : _f(_data, (101 : stdgo.GoInt)), _i : (12 : stdgo.GoInt) } : T__struct_1),
({ _name : ("data 10000" : stdgo.GoString), _n : (_data.length), _f : _f(_data, (10000 : stdgo.GoInt)), _i : (13 : stdgo.GoInt) } : T__struct_1),
({ _name : ("data 10001" : stdgo.GoString), _n : (_data.length), _f : _f(_data, (10001 : stdgo.GoInt)), _i : (14 : stdgo.GoInt) } : T__struct_1),
({ _name : ("descending a" : stdgo.GoString), _n : (7 : stdgo.GoInt), _f : function(_i:stdgo.GoInt):Bool {
        return ((new stdgo.Slice<stdgo.GoInt>(8, 8, ...[(99 : stdgo.GoInt), (99 : stdgo.GoInt), (59 : stdgo.GoInt), (42 : stdgo.GoInt), (7 : stdgo.GoInt), (0 : stdgo.GoInt), (-1 : stdgo.GoInt), (-1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)[(_i : stdgo.GoInt)] <= (7 : stdgo.GoInt) : Bool);
    }, _i : (4 : stdgo.GoInt) } : T__struct_1),
({ _name : ("descending 7" : stdgo.GoString), _n : (1000000000 : stdgo.GoInt), _f : function(_i:stdgo.GoInt):Bool {
        return (((1000000000 : stdgo.GoInt) - _i : stdgo.GoInt) <= (7 : stdgo.GoInt) : Bool);
    }, _i : (999999993 : stdgo.GoInt) } : T__struct_1),
({ _name : ("overflow" : stdgo.GoString), _n : (2000000000 : stdgo.GoInt), _f : function(_i:stdgo.GoInt):Bool {
        return false;
    }, _i : (2000000000 : stdgo.GoInt) } : T__struct_1)].concat([for (i in 22 ... (22 > 22 ? 22 : 22 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _n : (0 : stdgo.GoInt), _f : null, _i : (0 : stdgo.GoInt) } : T__struct_1)])) : stdgo.Slice<T__struct_1>);
var _fdata : stdgo.Slice<stdgo.GoFloat64> = {
        var s = new stdgo.Slice<stdgo.GoFloat64>(5, 0).__setNumber32__();
        s[0] = (-3.14 : stdgo.GoFloat64);
        s[1] = (0 : stdgo.GoFloat64);
        s[2] = (1 : stdgo.GoFloat64);
        s[3] = (2 : stdgo.GoFloat64);
        s[4] = (1000.7 : stdgo.GoFloat64);
        s;
    };
var _sdata : stdgo.Slice<stdgo.GoString> = {
        var s = new stdgo.Slice<stdgo.GoString>(4, 0).__setString__();
        s[0] = ("f" : stdgo.GoString);
        s[1] = ("foo" : stdgo.GoString);
        s[2] = ("foobar" : stdgo.GoString);
        s[3] = ("x" : stdgo.GoString);
        s;
    };
var _wrappertests : stdgo.Slice<T__struct_3> = (new stdgo.Slice<T__struct_3>(6, 6, ...[({ _name : ("SearchInts" : stdgo.GoString), _result : searchInts(_data, (11 : stdgo.GoInt)), _i : (8 : stdgo.GoInt) } : T__struct_3), ({ _name : ("SearchFloat64s" : stdgo.GoString), _result : searchFloat64s(_fdata, (2.1 : stdgo.GoFloat64)), _i : (4 : stdgo.GoInt) } : T__struct_3), ({ _name : ("SearchStrings" : stdgo.GoString), _result : searchStrings(_sdata, stdgo.Go.str()?.__copy__()), _i : (0 : stdgo.GoInt) } : T__struct_3), ({ _name : ("IntSlice.Search" : stdgo.GoString), _result : (_data : IntSlice).search((0 : stdgo.GoInt)), _i : (2 : stdgo.GoInt) } : T__struct_3), ({ _name : ("Float64Slice.Search" : stdgo.GoString), _result : (_fdata : Float64Slice).search((2 : stdgo.GoFloat64)), _i : (3 : stdgo.GoInt) } : T__struct_3), ({ _name : ("StringSlice.Search" : stdgo.GoString), _result : (_sdata : StringSlice).search(("x" : stdgo.GoString)), _i : (3 : stdgo.GoInt) } : T__struct_3)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _result : (0 : stdgo.GoInt), _i : (0 : stdgo.GoInt) } : T__struct_3)])) : stdgo.Slice<T__struct_3>);
var _ints : stdgo.GoArray<stdgo.GoInt> = (new stdgo.GoArray<stdgo.GoInt>(13, 13, ...[
(74 : stdgo.GoInt),
(59 : stdgo.GoInt),
(238 : stdgo.GoInt),
(-784 : stdgo.GoInt),
(9845 : stdgo.GoInt),
(959 : stdgo.GoInt),
(905 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(42 : stdgo.GoInt),
(7586 : stdgo.GoInt),
(-5467984 : stdgo.GoInt),
(7586 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>);
var _float64s : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(14, 14, ...[
(74.3 : stdgo.GoFloat64),
(59 : stdgo.GoFloat64),
stdgo._internal.math.Math.inf((1 : stdgo.GoInt)),
(238.2 : stdgo.GoFloat64),
(-784 : stdgo.GoFloat64),
(2.3 : stdgo.GoFloat64),
stdgo._internal.math.Math.naN(),
stdgo._internal.math.Math.naN(),
stdgo._internal.math.Math.inf((-1 : stdgo.GoInt)),
(9845.768 : stdgo.GoFloat64),
(-959.7485 : stdgo.GoFloat64),
(905 : stdgo.GoFloat64),
(7.8 : stdgo.GoFloat64),
(7.8 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _strings : stdgo.GoArray<stdgo.GoString> = (new stdgo.GoArray<stdgo.GoString>(8, 8, ...[stdgo.Go.str()?.__copy__(), ("Hello" : stdgo.GoString), ("foo" : stdgo.GoString), ("bar" : stdgo.GoString), ("foo" : stdgo.GoString), ("f00" : stdgo.GoString), ("%*&^*&^&" : stdgo.GoString), ("***" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>);
var _countOpsSizes : stdgo.Slice<stdgo.GoInt> = (new stdgo.Slice<stdgo.GoInt>(9, 9, ...[(100 : stdgo.GoInt), (300 : stdgo.GoInt), (1000 : stdgo.GoInt), (3000 : stdgo.GoInt), (10000 : stdgo.GoInt), (30000 : stdgo.GoInt), (100000 : stdgo.GoInt), (300000 : stdgo.GoInt), (1000000 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
@:structInit @:using(stdgo._internal.sort_test.Sort_test.Person_static_extension) class Person {
    public var name : stdgo.GoString = "";
    public var age : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?age:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (age != null) this.age = age;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Person(name, age);
    }
}
@:structInit class Planet {
    public var _name : stdgo.GoString = "";
    public var _mass : stdgo._internal.sort_test.Sort_test.T_earthMass = ((0 : stdgo.GoFloat64) : stdgo._internal.sort_test.Sort_test.T_earthMass);
    public var _distance : stdgo._internal.sort_test.Sort_test.T_au = ((0 : stdgo.GoFloat64) : stdgo._internal.sort_test.Sort_test.T_au);
    public function new(?_name:stdgo.GoString, ?_mass:stdgo._internal.sort_test.Sort_test.T_earthMass, ?_distance:stdgo._internal.sort_test.Sort_test.T_au) {
        if (_name != null) this._name = _name;
        if (_mass != null) this._mass = _mass;
        if (_distance != null) this._distance = _distance;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Planet(_name, _mass, _distance);
    }
}
@:structInit @:private @:using(stdgo._internal.sort_test.Sort_test.T_planetSorter_static_extension) class T_planetSorter {
    public var _planets : stdgo.Slice<stdgo._internal.sort_test.Sort_test.Planet> = (null : stdgo.Slice<stdgo._internal.sort_test.Sort_test.Planet>);
    public var _by : (stdgo.Ref<stdgo._internal.sort_test.Sort_test.Planet>, stdgo.Ref<stdgo._internal.sort_test.Sort_test.Planet>) -> Bool = null;
    public function new(?_planets:stdgo.Slice<stdgo._internal.sort_test.Sort_test.Planet>, ?_by:(stdgo.Ref<stdgo._internal.sort_test.Sort_test.Planet>, stdgo.Ref<stdgo._internal.sort_test.Sort_test.Planet>) -> Bool) {
        if (_planets != null) this._planets = _planets;
        if (_by != null) this._by = _by;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_planetSorter(_planets, _by);
    }
}
@:structInit class Change {
    public var _user : stdgo.GoString = "";
    public var _language : stdgo.GoString = "";
    public var _lines : stdgo.GoInt = 0;
    public function new(?_user:stdgo.GoString, ?_language:stdgo.GoString, ?_lines:stdgo.GoInt) {
        if (_user != null) this._user = _user;
        if (_language != null) this._language = _language;
        if (_lines != null) this._lines = _lines;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Change(_user, _language, _lines);
    }
}
@:structInit @:private @:using(stdgo._internal.sort_test.Sort_test.T_multiSorter_static_extension) class T_multiSorter {
    public var _changes : stdgo.Slice<stdgo._internal.sort_test.Sort_test.Change> = (null : stdgo.Slice<stdgo._internal.sort_test.Sort_test.Change>);
    public var _less : stdgo.Slice<stdgo._internal.sort_test.Sort_test.T_lessFunc> = (null : stdgo.Slice<stdgo._internal.sort_test.Sort_test.T_lessFunc>);
    public function new(?_changes:stdgo.Slice<stdgo._internal.sort_test.Sort_test.Change>, ?_less:stdgo.Slice<stdgo._internal.sort_test.Sort_test.T_lessFunc>) {
        if (_changes != null) this._changes = _changes;
        if (_less != null) this._less = _less;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_multiSorter(_changes, _less);
    }
}
@:structInit class Organ {
    public var name : stdgo.GoString = "";
    public var weight : stdgo._internal.sort_test.Sort_test.Grams = ((0 : stdgo.GoInt) : stdgo._internal.sort_test.Sort_test.Grams);
    public function new(?name:stdgo.GoString, ?weight:stdgo._internal.sort_test.Sort_test.Grams) {
        if (name != null) this.name = name;
        if (weight != null) this.weight = weight;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Organ(name, weight);
    }
}
@:structInit @:using(stdgo._internal.sort_test.Sort_test.ByName_static_extension) class ByName {
    @:embedded
    public var organs : stdgo._internal.sort_test.Sort_test.Organs = new stdgo._internal.sort_test.Sort_test.Organs(0, 0);
    public function new(?organs:stdgo._internal.sort_test.Sort_test.Organs) {
        if (organs != null) this.organs = organs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function len():stdgo.GoInt return organs.len();
    @:embedded
    public function swap(_i:stdgo.GoInt, _j:stdgo.GoInt) organs.swap(_i, _j);
    public function __copy__() {
        return new ByName(organs);
    }
}
@:structInit @:using(stdgo._internal.sort_test.Sort_test.ByWeight_static_extension) class ByWeight {
    @:embedded
    public var organs : stdgo._internal.sort_test.Sort_test.Organs = new stdgo._internal.sort_test.Sort_test.Organs(0, 0);
    public function new(?organs:stdgo._internal.sort_test.Sort_test.Organs) {
        if (organs != null) this.organs = organs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function len():stdgo.GoInt return organs.len();
    @:embedded
    public function swap(_i:stdgo.GoInt, _j:stdgo.GoInt) organs.swap(_i, _j);
    public function __copy__() {
        return new ByWeight(organs);
    }
}
@:structInit @:private @:using(stdgo._internal.sort_test.Sort_test.T_nonDeterministicTestingData_static_extension) class T_nonDeterministicTestingData {
    public var _r : stdgo.Ref<stdgo._internal.math.rand.Rand.Rand> = (null : stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>);
    public function new(?_r:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>) {
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_nonDeterministicTestingData(_r);
    }
}
@:structInit @:private @:using(stdgo._internal.sort_test.Sort_test.T_testingData_static_extension) class T_testingData {
    public var _desc : stdgo.GoString = "";
    public var _t : stdgo.Ref<stdgo._internal.testing.Testing.T_> = (null : stdgo.Ref<stdgo._internal.testing.Testing.T_>);
    public var _data : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _maxswap : stdgo.GoInt = 0;
    public var _ncmp : stdgo.GoInt = 0;
    public var _nswap : stdgo.GoInt = 0;
    public function new(?_desc:stdgo.GoString, ?_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, ?_data:stdgo.Slice<stdgo.GoInt>, ?_maxswap:stdgo.GoInt, ?_ncmp:stdgo.GoInt, ?_nswap:stdgo.GoInt) {
        if (_desc != null) this._desc = _desc;
        if (_t != null) this._t = _t;
        if (_data != null) this._data = _data;
        if (_maxswap != null) this._maxswap = _maxswap;
        if (_ncmp != null) this._ncmp = _ncmp;
        if (_nswap != null) this._nswap = _nswap;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testingData(_desc, _t, _data, _maxswap, _ncmp, _nswap);
    }
}
@:structInit @:private @:using(stdgo._internal.sort_test.Sort_test.T_adversaryTestingData_static_extension) class T_adversaryTestingData {
    public var _t : stdgo.Ref<stdgo._internal.testing.Testing.T_> = (null : stdgo.Ref<stdgo._internal.testing.Testing.T_>);
    public var _data : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _maxcmp : stdgo.GoInt = 0;
    public var _ncmp : stdgo.GoInt = 0;
    public var _nsolid : stdgo.GoInt = 0;
    public var _candidate : stdgo.GoInt = 0;
    public var _gas : stdgo.GoInt = 0;
    public function new(?_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, ?_data:stdgo.Slice<stdgo.GoInt>, ?_maxcmp:stdgo.GoInt, ?_ncmp:stdgo.GoInt, ?_nsolid:stdgo.GoInt, ?_candidate:stdgo.GoInt, ?_gas:stdgo.GoInt) {
        if (_t != null) this._t = _t;
        if (_data != null) this._data = _data;
        if (_maxcmp != null) this._maxcmp = _maxcmp;
        if (_ncmp != null) this._ncmp = _ncmp;
        if (_nsolid != null) this._nsolid = _nsolid;
        if (_candidate != null) this._candidate = _candidate;
        if (_gas != null) this._gas = _gas;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_adversaryTestingData(_t, _data, _maxcmp, _ncmp, _nsolid, _candidate, _gas);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sort_test.Sort_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.sort_test.Sort_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var name : stdgo.GoString;
    public var age : stdgo.GoInt;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sort_test.Sort_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.sort_test.Sort_test.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _name : stdgo.GoString;
    public var _n : stdgo.GoInt;
    public var _f : stdgo.GoInt -> Bool;
    public var _i : stdgo.GoInt;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sort_test.Sort_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo._internal.sort_test.Sort_test.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _data : stdgo.Slice<stdgo.GoString>;
    public var _target : stdgo.GoString;
    public var _wantPos : stdgo.GoInt;
    public var _wantFound : Bool;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sort_test.Sort_test.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo._internal.sort_test.Sort_test.T__struct_3_static_extension) typedef T__struct_3 = {
    public var _name : stdgo.GoString;
    public var _result : stdgo.GoInt;
    public var _i : stdgo.GoInt;
};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_4>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sort_test.Sort_test.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo._internal.sort_test.Sort_test.T__struct_4_static_extension) typedef T__struct_4 = {
    public var _a : stdgo.GoInt;
    public var _b : stdgo.GoInt;
};
@:named @:using(stdgo._internal.sort_test.Sort_test.ByAge_static_extension) typedef ByAge = stdgo.Slice<stdgo._internal.sort_test.Sort_test.Person>;
@:named typedef T_earthMass = stdgo.GoFloat64;
@:named typedef T_au = stdgo.GoFloat64;
@:named @:using(stdgo._internal.sort_test.Sort_test.By_static_extension) typedef By = (stdgo.Ref<stdgo._internal.sort_test.Sort_test.Planet>, stdgo.Ref<stdgo._internal.sort_test.Sort_test.Planet>) -> Bool;
@:named typedef T_lessFunc = (stdgo.Ref<stdgo._internal.sort_test.Sort_test.Change>, stdgo.Ref<stdgo._internal.sort_test.Sort_test.Change>) -> Bool;
@:named @:using(stdgo._internal.sort_test.Sort_test.Grams_static_extension) typedef Grams = stdgo.GoInt;
@:named @:using(stdgo._internal.sort_test.Sort_test.Organs_static_extension) typedef Organs = stdgo.Slice<stdgo.Ref<stdgo._internal.sort_test.Sort_test.Organ>>;
@:named @:using(stdgo._internal.sort_test.Sort_test.T_intPairs_static_extension) typedef T_intPairs = stdgo.Slice<T__struct_4>;
function example():Void {
        var _people = (new stdgo.Slice<stdgo._internal.sort_test.Sort_test.Person>(4, 4, ...[(new stdgo._internal.sort_test.Sort_test.Person(("Bob" : stdgo.GoString), (31 : stdgo.GoInt)) : stdgo._internal.sort_test.Sort_test.Person), (new stdgo._internal.sort_test.Sort_test.Person(("John" : stdgo.GoString), (42 : stdgo.GoInt)) : stdgo._internal.sort_test.Sort_test.Person), (new stdgo._internal.sort_test.Sort_test.Person(("Michael" : stdgo.GoString), (17 : stdgo.GoInt)) : stdgo._internal.sort_test.Sort_test.Person), (new stdgo._internal.sort_test.Sort_test.Person(("Jenny" : stdgo.GoString), (26 : stdgo.GoInt)) : stdgo._internal.sort_test.Sort_test.Person)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.sort_test.Sort_test.Person)])) : stdgo.Slice<stdgo._internal.sort_test.Sort_test.Person>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_people));
        stdgo._internal.sort.Sort.sort(stdgo.Go.asInterface((_people : ByAge)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_people));
        stdgo._internal.sort.Sort.slice(stdgo.Go.toInterface(_people), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_people[(_i : stdgo.GoInt)].age > _people[(_j : stdgo.GoInt)].age : Bool);
        });
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_people));
    }
function example_sortKeys():Void {
        var _name = function(_p1:stdgo.Ref<Planet>, _p2:stdgo.Ref<Planet>):Bool {
            return (_p1._name < _p2._name : Bool);
        };
        var _mass = function(_p1:stdgo.Ref<Planet>, _p2:stdgo.Ref<Planet>):Bool {
            return (_p1._mass < _p2._mass : Bool);
        };
        var _distance = function(_p1:stdgo.Ref<Planet>, _p2:stdgo.Ref<Planet>):Bool {
            return (_p1._distance < _p2._distance : Bool);
        };
        var _decreasingDistance = function(_p1:stdgo.Ref<Planet>, _p2:stdgo.Ref<Planet>):Bool {
            return _distance(_p2, _p1);
        };
        (_name : By).sort(_planets);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("By name:" : stdgo.GoString)), stdgo.Go.toInterface(_planets));
        (_mass : By).sort(_planets);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("By mass:" : stdgo.GoString)), stdgo.Go.toInterface(_planets));
        (_distance : By).sort(_planets);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("By distance:" : stdgo.GoString)), stdgo.Go.toInterface(_planets));
        (_decreasingDistance : By).sort(_planets);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("By decreasing distance:" : stdgo.GoString)), stdgo.Go.toInterface(_planets));
    }
function orderedBy(_less:haxe.Rest<T_lessFunc>):stdgo.Ref<T_multiSorter> {
        var _less = new stdgo.Slice<T_lessFunc>(_less.length, 0, ..._less);
        return (stdgo.Go.setRef(({ _less : _less } : stdgo._internal.sort_test.Sort_test.T_multiSorter)) : stdgo.Ref<stdgo._internal.sort_test.Sort_test.T_multiSorter>);
    }
function example_sortMultiKeys():Void {
        var _user = function(_c1:stdgo.Ref<Change>, _c2:stdgo.Ref<Change>):Bool {
            return (_c1._user < _c2._user : Bool);
        };
        var _language = function(_c1:stdgo.Ref<Change>, _c2:stdgo.Ref<Change>):Bool {
            return (_c1._language < _c2._language : Bool);
        };
        var _increasingLines = function(_c1:stdgo.Ref<Change>, _c2:stdgo.Ref<Change>):Bool {
            return (_c1._lines < _c2._lines : Bool);
        };
        var _decreasingLines = function(_c1:stdgo.Ref<Change>, _c2:stdgo.Ref<Change>):Bool {
            return (_c1._lines > _c2._lines : Bool);
        };
        orderedBy(_user).sort(_changes);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("By user:" : stdgo.GoString)), stdgo.Go.toInterface(_changes));
        orderedBy(_user, _increasingLines).sort(_changes);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("By user,<lines:" : stdgo.GoString)), stdgo.Go.toInterface(_changes));
        orderedBy(_user, _decreasingLines).sort(_changes);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("By user,>lines:" : stdgo.GoString)), stdgo.Go.toInterface(_changes));
        orderedBy(_language, _increasingLines).sort(_changes);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("By language,<lines:" : stdgo.GoString)), stdgo.Go.toInterface(_changes));
        orderedBy(_language, _increasingLines, _user).sort(_changes);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("By language,<lines,user:" : stdgo.GoString)), stdgo.Go.toInterface(_changes));
    }
function exampleSearch():Void {
        var _a = (new stdgo.Slice<stdgo.GoInt>(10, 10, ...[(1 : stdgo.GoInt), (3 : stdgo.GoInt), (6 : stdgo.GoInt), (10 : stdgo.GoInt), (15 : stdgo.GoInt), (21 : stdgo.GoInt), (28 : stdgo.GoInt), (36 : stdgo.GoInt), (45 : stdgo.GoInt), (55 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _x = (6 : stdgo.GoInt);
        var _i = stdgo._internal.sort.Sort.search((_a.length), function(_i:stdgo.GoInt):Bool {
            return (_a[(_i : stdgo.GoInt)] >= _x : Bool);
        });
        if (((_i < (_a.length) : Bool) && (_a[(_i : stdgo.GoInt)] == _x) : Bool)) {
            stdgo._internal.fmt.Fmt.printf(("found %d at index %d in %v\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_a));
        } else {
            stdgo._internal.fmt.Fmt.printf(("%d not found in %v\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_a));
        };
    }
function exampleSearch_descendingOrder():Void {
        var _a = (new stdgo.Slice<stdgo.GoInt>(10, 10, ...[(55 : stdgo.GoInt), (45 : stdgo.GoInt), (36 : stdgo.GoInt), (28 : stdgo.GoInt), (21 : stdgo.GoInt), (15 : stdgo.GoInt), (10 : stdgo.GoInt), (6 : stdgo.GoInt), (3 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _x = (6 : stdgo.GoInt);
        var _i = stdgo._internal.sort.Sort.search((_a.length), function(_i:stdgo.GoInt):Bool {
            return (_a[(_i : stdgo.GoInt)] <= _x : Bool);
        });
        if (((_i < (_a.length) : Bool) && (_a[(_i : stdgo.GoInt)] == _x) : Bool)) {
            stdgo._internal.fmt.Fmt.printf(("found %d at index %d in %v\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_a));
        } else {
            stdgo._internal.fmt.Fmt.printf(("%d not found in %v\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_a));
        };
    }
function exampleSearchFloat64s():Void {
        var _a = (new stdgo.Slice<stdgo.GoFloat64>(7, 7, ...[(1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), (3.3 : stdgo.GoFloat64), (4.6 : stdgo.GoFloat64), (6.1 : stdgo.GoFloat64), (7.2 : stdgo.GoFloat64), (8 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        var _x = (2 : stdgo.GoFloat64);
        var _i = stdgo._internal.sort.Sort.searchFloat64s(_a, _x);
        stdgo._internal.fmt.Fmt.printf(("found %g at index %d in %v\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_a));
        _x = (0.5 : stdgo.GoFloat64);
        _i = stdgo._internal.sort.Sort.searchFloat64s(_a, _x);
        stdgo._internal.fmt.Fmt.printf(("%g not found, can be inserted at index %d in %v\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_a));
    }
function exampleSearchInts():Void {
        var _a = (new stdgo.Slice<stdgo.GoInt>(7, 7, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _x = (2 : stdgo.GoInt);
        var _i = stdgo._internal.sort.Sort.searchInts(_a, _x);
        stdgo._internal.fmt.Fmt.printf(("found %d at index %d in %v\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_a));
        _x = (5 : stdgo.GoInt);
        _i = stdgo._internal.sort.Sort.searchInts(_a, _x);
        stdgo._internal.fmt.Fmt.printf(("%d not found, can be inserted at index %d in %v\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_a));
    }
function exampleInts():Void {
        var _s = (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(5 : stdgo.GoInt), (2 : stdgo.GoInt), (6 : stdgo.GoInt), (3 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.sort.Sort.ints(_s);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
function exampleIntsAreSorted():Void {
        var _s = (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.sort.Sort.intsAreSorted(_s)));
        _s = (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(6 : stdgo.GoInt), (5 : stdgo.GoInt), (4 : stdgo.GoInt), (3 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.sort.Sort.intsAreSorted(_s)));
        _s = (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(3 : stdgo.GoInt), (2 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (5 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.sort.Sort.intsAreSorted(_s)));
    }
function exampleFloat64s():Void {
        var _s = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[(5.2 : stdgo.GoFloat64), (-1.3 : stdgo.GoFloat64), (0.7 : stdgo.GoFloat64), (-3.8 : stdgo.GoFloat64), (2.6 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        stdgo._internal.sort.Sort.float64s(_s);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s));
        _s = (new stdgo.Slice<stdgo.GoFloat64>(4, 4, ...[stdgo._internal.math.Math.inf((1 : stdgo.GoInt)), stdgo._internal.math.Math.naN(), stdgo._internal.math.Math.inf((-1 : stdgo.GoInt)), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        stdgo._internal.sort.Sort.float64s(_s);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
function exampleFloat64sAreSorted():Void {
        var _s = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[(0.7 : stdgo.GoFloat64), (1.3 : stdgo.GoFloat64), (2.6 : stdgo.GoFloat64), (3.8 : stdgo.GoFloat64), (5.2 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.sort.Sort.float64sAreSorted(_s)));
        _s = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[(5.2 : stdgo.GoFloat64), (3.8 : stdgo.GoFloat64), (2.6 : stdgo.GoFloat64), (1.3 : stdgo.GoFloat64), (0.7 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.sort.Sort.float64sAreSorted(_s)));
        _s = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[(5.2 : stdgo.GoFloat64), (1.3 : stdgo.GoFloat64), (0.7 : stdgo.GoFloat64), (3.8 : stdgo.GoFloat64), (2.6 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.sort.Sort.float64sAreSorted(_s)));
    }
function exampleReverse():Void {
        var _s = (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(5 : stdgo.GoInt), (2 : stdgo.GoInt), (6 : stdgo.GoInt), (3 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.sort.Sort.sort(stdgo._internal.sort.Sort.reverse(stdgo.Go.asInterface((_s : stdgo._internal.sort.Sort.IntSlice))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
function exampleSlice():Void {
        var _people = (new stdgo.Slice<Person>(4, 4, ...[(new Person(("Gopher" : stdgo.GoString), (7 : stdgo.GoInt)) : Person), (new Person(("Alice" : stdgo.GoString), (55 : stdgo.GoInt)) : Person), (new Person(("Vera" : stdgo.GoString), (24 : stdgo.GoInt)) : Person), (new Person(("Bob" : stdgo.GoString), (75 : stdgo.GoInt)) : Person)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : Person)])) : stdgo.Slice<Person>);
        stdgo._internal.sort.Sort.slice(stdgo.Go.toInterface(_people), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_people[(_i : stdgo.GoInt)].name < _people[(_j : stdgo.GoInt)].name : Bool);
        });
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("By name:" : stdgo.GoString)), stdgo.Go.toInterface(_people));
        stdgo._internal.sort.Sort.slice(stdgo.Go.toInterface(_people), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_people[(_i : stdgo.GoInt)].age < _people[(_j : stdgo.GoInt)].age : Bool);
        });
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("By age:" : stdgo.GoString)), stdgo.Go.toInterface(_people));
    }
function exampleSliceStable():Void {
        var _people = (new stdgo.Slice<Person>(8, 8, ...[(new Person(("Alice" : stdgo.GoString), (25 : stdgo.GoInt)) : Person), (new Person(("Elizabeth" : stdgo.GoString), (75 : stdgo.GoInt)) : Person), (new Person(("Alice" : stdgo.GoString), (75 : stdgo.GoInt)) : Person), (new Person(("Bob" : stdgo.GoString), (75 : stdgo.GoInt)) : Person), (new Person(("Alice" : stdgo.GoString), (75 : stdgo.GoInt)) : Person), (new Person(("Bob" : stdgo.GoString), (25 : stdgo.GoInt)) : Person), (new Person(("Colin" : stdgo.GoString), (25 : stdgo.GoInt)) : Person), (new Person(("Elizabeth" : stdgo.GoString), (25 : stdgo.GoInt)) : Person)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({} : Person)])) : stdgo.Slice<Person>);
        stdgo._internal.sort.Sort.sliceStable(stdgo.Go.toInterface(_people), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_people[(_i : stdgo.GoInt)].name < _people[(_j : stdgo.GoInt)].name : Bool);
        });
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("By name:" : stdgo.GoString)), stdgo.Go.toInterface(_people));
        stdgo._internal.sort.Sort.sliceStable(stdgo.Go.toInterface(_people), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_people[(_i : stdgo.GoInt)].age < _people[(_j : stdgo.GoInt)].age : Bool);
        });
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("By age,name:" : stdgo.GoString)), stdgo.Go.toInterface(_people));
    }
function exampleStrings():Void {
        var _s = (new stdgo.Slice<stdgo.GoString>(6, 6, ...[("Go" : stdgo.GoString), ("Bravo" : stdgo.GoString), ("Gopher" : stdgo.GoString), ("Alpha" : stdgo.GoString), ("Grin" : stdgo.GoString), ("Delta" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.sort.Sort.strings(_s);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
function example_sortWrapper():Void {
        var _s = (new stdgo.Slice<stdgo.Ref<stdgo._internal.sort_test.Sort_test.Organ>>(6, 6, ...[(new stdgo._internal.sort_test.Sort_test.Organ(("brain" : stdgo.GoString), (1340 : stdgo._internal.sort_test.Sort_test.Grams)) : stdgo._internal.sort_test.Sort_test.Organ), (new stdgo._internal.sort_test.Sort_test.Organ(("heart" : stdgo.GoString), (290 : stdgo._internal.sort_test.Sort_test.Grams)) : stdgo._internal.sort_test.Sort_test.Organ), (new stdgo._internal.sort_test.Sort_test.Organ(("liver" : stdgo.GoString), (1494 : stdgo._internal.sort_test.Sort_test.Grams)) : stdgo._internal.sort_test.Sort_test.Organ), (new stdgo._internal.sort_test.Sort_test.Organ(("pancreas" : stdgo.GoString), (131 : stdgo._internal.sort_test.Sort_test.Grams)) : stdgo._internal.sort_test.Sort_test.Organ), (new stdgo._internal.sort_test.Sort_test.Organ(("prostate" : stdgo.GoString), (62 : stdgo._internal.sort_test.Sort_test.Grams)) : stdgo._internal.sort_test.Sort_test.Organ), (new stdgo._internal.sort_test.Sort_test.Organ(("spleen" : stdgo.GoString), (162 : stdgo._internal.sort_test.Sort_test.Grams)) : stdgo._internal.sort_test.Sort_test.Organ)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.sort_test.Sort_test.Organ>>);
        stdgo._internal.sort.Sort.sort(stdgo.Go.asInterface((new stdgo._internal.sort_test.Sort_test.ByWeight(_s) : stdgo._internal.sort_test.Sort_test.ByWeight)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("Organs by weight:" : stdgo.GoString)));
        _printOrgans(_s);
        stdgo._internal.sort.Sort.sort(stdgo.Go.asInterface((new stdgo._internal.sort_test.Sort_test.ByName(_s) : stdgo._internal.sort_test.Sort_test.ByName)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("Organs by name:" : stdgo.GoString)));
        _printOrgans(_s);
    }
function _printOrgans(_s:stdgo.Slice<stdgo.Ref<Organ>>):Void {
        for (__0 => _o in _s) {
            stdgo._internal.fmt.Fmt.printf(("%-8s (%v)\n" : stdgo.GoString), stdgo.Go.toInterface(_o.name), stdgo.Go.toInterface(stdgo.Go.asInterface(_o.weight)));
        };
    }
function _f(_a:stdgo.Slice<stdgo.GoInt>, _x:stdgo.GoInt):stdgo.GoInt -> Bool {
        return function(_i:stdgo.GoInt):Bool {
            return (_a[(_i : stdgo.GoInt)] >= _x : Bool);
        };
    }
function testSearch(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _e in _tests) {
            var _i = search(_e._n, _e._f);
            if (_i != (_e._i)) {
                _t.errorf(("%s: expected index %d; got %d" : stdgo.GoString), stdgo.Go.toInterface(_e._name), stdgo.Go.toInterface(_e._i), stdgo.Go.toInterface(_i));
            };
        };
    }
function testFind(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _str1 = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("foo" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _str2 = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("ab" : stdgo.GoString), ("ca" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _str3 = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("mo" : stdgo.GoString), ("qo" : stdgo.GoString), ("vo" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _str4 = (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("ab" : stdgo.GoString), ("ad" : stdgo.GoString), ("ca" : stdgo.GoString), ("xy" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _strRepeats = (new stdgo.Slice<stdgo.GoString>(9, 9, ...[("ba" : stdgo.GoString), ("ca" : stdgo.GoString), ("da" : stdgo.GoString), ("da" : stdgo.GoString), ("da" : stdgo.GoString), ("ka" : stdgo.GoString), ("ma" : stdgo.GoString), ("ma" : stdgo.GoString), ("ta" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _strSame = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("xx" : stdgo.GoString), ("xx" : stdgo.GoString), ("xx" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _tests = (new stdgo.Slice<T__struct_2>(34, 34, ...[
({ _data : (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>), _target : ("foo" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_2),
({ _data : (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>), _target : stdgo.Go.str()?.__copy__(), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_2),
({ _data : _str1, _target : ("foo" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : T__struct_2),
({ _data : _str1, _target : ("bar" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_2),
({ _data : _str1, _target : ("zx" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : false } : T__struct_2),
({ _data : _str2, _target : ("aa" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_2),
({ _data : _str2, _target : ("ab" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : T__struct_2),
({ _data : _str2, _target : ("ad" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : false } : T__struct_2),
({ _data : _str2, _target : ("ca" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : true } : T__struct_2),
({ _data : _str2, _target : ("ra" : stdgo.GoString), _wantPos : (2 : stdgo.GoInt), _wantFound : false } : T__struct_2),
({ _data : _str3, _target : ("bb" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_2),
({ _data : _str3, _target : ("mo" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : T__struct_2),
({ _data : _str3, _target : ("nb" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : false } : T__struct_2),
({ _data : _str3, _target : ("qo" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : true } : T__struct_2),
({ _data : _str3, _target : ("tr" : stdgo.GoString), _wantPos : (2 : stdgo.GoInt), _wantFound : false } : T__struct_2),
({ _data : _str3, _target : ("vo" : stdgo.GoString), _wantPos : (2 : stdgo.GoInt), _wantFound : true } : T__struct_2),
({ _data : _str3, _target : ("xr" : stdgo.GoString), _wantPos : (3 : stdgo.GoInt), _wantFound : false } : T__struct_2),
({ _data : _str4, _target : ("aa" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_2),
({ _data : _str4, _target : ("ab" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : T__struct_2),
({ _data : _str4, _target : ("ac" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : false } : T__struct_2),
({ _data : _str4, _target : ("ad" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : true } : T__struct_2),
({ _data : _str4, _target : ("ax" : stdgo.GoString), _wantPos : (2 : stdgo.GoInt), _wantFound : false } : T__struct_2),
({ _data : _str4, _target : ("ca" : stdgo.GoString), _wantPos : (2 : stdgo.GoInt), _wantFound : true } : T__struct_2),
({ _data : _str4, _target : ("cc" : stdgo.GoString), _wantPos : (3 : stdgo.GoInt), _wantFound : false } : T__struct_2),
({ _data : _str4, _target : ("dd" : stdgo.GoString), _wantPos : (3 : stdgo.GoInt), _wantFound : false } : T__struct_2),
({ _data : _str4, _target : ("xy" : stdgo.GoString), _wantPos : (3 : stdgo.GoInt), _wantFound : true } : T__struct_2),
({ _data : _str4, _target : ("zz" : stdgo.GoString), _wantPos : (4 : stdgo.GoInt), _wantFound : false } : T__struct_2),
({ _data : _strRepeats, _target : ("da" : stdgo.GoString), _wantPos : (2 : stdgo.GoInt), _wantFound : true } : T__struct_2),
({ _data : _strRepeats, _target : ("db" : stdgo.GoString), _wantPos : (5 : stdgo.GoInt), _wantFound : false } : T__struct_2),
({ _data : _strRepeats, _target : ("ma" : stdgo.GoString), _wantPos : (6 : stdgo.GoInt), _wantFound : true } : T__struct_2),
({ _data : _strRepeats, _target : ("mb" : stdgo.GoString), _wantPos : (8 : stdgo.GoInt), _wantFound : false } : T__struct_2),
({ _data : _strSame, _target : ("xx" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : T__struct_2),
({ _data : _strSame, _target : ("ab" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_2),
({ _data : _strSame, _target : ("zz" : stdgo.GoString), _wantPos : (3 : stdgo.GoInt), _wantFound : false } : T__struct_2)].concat([for (i in 34 ... (34 > 34 ? 34 : 34 : stdgo.GoInt).toBasic()) ({ _data : (null : stdgo.Slice<stdgo.GoString>), _target : ("" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_2)])) : stdgo.Slice<T__struct_2>);
        for (__0 => _tt in _tests) {
            _t.run(_tt._target?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                var _cmp = function(_i:stdgo.GoInt):stdgo.GoInt {
                    return stdgo._internal.strings.Strings.compare(_tt._target?.__copy__(), _tt._data[(_i : stdgo.GoInt)]?.__copy__());
                };
                var __tmp__ = find((_tt._data.length), _cmp), _pos:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
                if (((_pos != _tt._wantPos) || (_found != _tt._wantFound) : Bool)) {
                    _t.errorf(("Find got (%v, %v), want (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._wantPos), stdgo.Go.toInterface(_tt._wantFound));
                };
            });
        };
    }
function _log2(_x:stdgo.GoInt):stdgo.GoInt {
        var _n = (0 : stdgo.GoInt);
        {
            var _p = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_p < _x : Bool), _p = (_p + (_p) : stdgo.GoInt), {
                _n++;
            });
        };
        return _n;
    }
function testSearchEfficiency(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _n = (100 : stdgo.GoInt);
        var _step = (1 : stdgo.GoInt);
        {
            var _exp = (2 : stdgo.GoInt);
            stdgo.Go.cfor((_exp < (10 : stdgo.GoInt) : Bool), _exp++, {
                var _max = _log2(_n);
                {
                    var _x = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_x < _n : Bool), _x = (_x + (_step) : stdgo.GoInt), {
                        var _count = (0 : stdgo.GoInt);
                        var _i = search(_n, function(_i:stdgo.GoInt):Bool {
                            _count++;
                            return (_i >= _x : Bool);
                        });
                        if (_i != (_x)) {
                            _t.errorf(("n = %d: expected index %d; got %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_i));
                        };
                        if ((_count > _max : Bool)) {
                            _t.errorf(("n = %d, x = %d: expected <= %d calls; got %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_max), stdgo.Go.toInterface(_count));
                        };
                    });
                };
                _n = (_n * ((10 : stdgo.GoInt)) : stdgo.GoInt);
                _step = (_step * ((10 : stdgo.GoInt)) : stdgo.GoInt);
            });
        };
    }
function testSearchWrappers(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _e in _wrappertests) {
            if (_e._result != (_e._i)) {
                _t.errorf(("%s: expected index %d; got %d" : stdgo.GoString), stdgo.Go.toInterface(_e._name), stdgo.Go.toInterface(_e._i), stdgo.Go.toInterface(_e._result));
            };
        };
    }
function _runSearchWrappers():Void {
        searchInts(_data, (11 : stdgo.GoInt));
        searchFloat64s(_fdata, (2.1 : stdgo.GoFloat64));
        searchStrings(_sdata, stdgo.Go.str()?.__copy__());
        (_data : IntSlice).search((0 : stdgo.GoInt));
        (_fdata : Float64Slice).search((2 : stdgo.GoFloat64));
        (_sdata : StringSlice).search(("x" : stdgo.GoString));
    }
function testSearchWrappersDontAlloc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (stdgo._internal.testing.Testing.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping malloc count in short mode" : stdgo.GoString)));
        };
        if ((stdgo._internal.runtime.Runtime.gomaxprocs((0 : stdgo.GoInt)) > (1 : stdgo.GoInt) : Bool)) {
            _t.skip(stdgo.Go.toInterface(("skipping; GOMAXPROCS>1" : stdgo.GoString)));
        };
        var _allocs = stdgo._internal.testing.Testing.allocsPerRun((100 : stdgo.GoInt), _runSearchWrappers);
        if (_allocs != (0 : stdgo.GoFloat64)) {
            _t.errorf(("expected no allocs for runSearchWrappers, got %v" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
function benchmarkSearchWrappers(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _runSearchWrappers();
            });
        };
    }
function testSearchExhaustive(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _size = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_size <= (100 : stdgo.GoInt) : Bool), _size++, {
                {
                    var _targ = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_targ <= _size : Bool), _targ++, {
                        var _i = search(_size, function(_i:stdgo.GoInt):Bool {
                            return (_i >= _targ : Bool);
                        });
                        if (_i != (_targ)) {
                            _t.errorf(("Search(%d, %d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_targ), stdgo.Go.toInterface(_i));
                        };
                    });
                };
            });
        };
    }
function testFindExhaustive(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _size = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_size <= (100 : stdgo.GoInt) : Bool), _size++, {
                {
                    var _x = (1 : stdgo.GoInt);
                    stdgo.Go.cfor((_x <= ((_size * (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _x++, {
                        var _wantFound:Bool = false;
                        var _wantPos:stdgo.GoInt = (0 : stdgo.GoInt);
                        var _cmp = function(_i:stdgo.GoInt):stdgo.GoInt {
                            return (_x - (((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
                        };
                        var __tmp__ = find(_size, _cmp), _pos:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
                        if ((_x % (2 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                            _wantPos = ((_x / (2 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                            _wantFound = true;
                        } else {
                            _wantPos = (_x / (2 : stdgo.GoInt) : stdgo.GoInt);
                            _wantFound = false;
                        };
                        if (((_found != _wantFound) || (_pos != _wantPos) : Bool)) {
                            _t.errorf(("Find(%d, %d): got (%v, %v), want (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_wantPos), stdgo.Go.toInterface(_wantFound));
                        };
                    });
                };
            });
        };
    }
function testSortIntSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _data = _ints?.__copy__();
        var _a = ((_data.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>) : IntSlice);
        sort(stdgo.Go.asInterface(_a));
        if (!isSorted(stdgo.Go.asInterface(_a))) {
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(_ints));
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
function testSortFloat64Slice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _data = _float64s?.__copy__();
        var _a = ((_data.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoFloat64>) : Float64Slice);
        sort(stdgo.Go.asInterface(_a));
        if (!isSorted(stdgo.Go.asInterface(_a))) {
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(_float64s));
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
function testSortStringSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _data = _strings?.__copy__();
        var _a = ((_data.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>) : StringSlice);
        sort(stdgo.Go.asInterface(_a));
        if (!isSorted(stdgo.Go.asInterface(_a))) {
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(_strings));
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
function testInts(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _data = _ints?.__copy__();
        ints((_data.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        if (!intsAreSorted((_data.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>))) {
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(_ints));
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
function testFloat64s(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _data = _float64s?.__copy__();
        float64s((_data.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoFloat64>));
        if (!float64sAreSorted((_data.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoFloat64>))) {
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(_float64s));
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
function testStrings(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _data = _strings?.__copy__();
        strings((_data.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>));
        if (!stringsAreSorted((_data.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>))) {
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(_strings));
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
function testSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _data = _strings?.__copy__();
        slice(stdgo.Go.toInterface((_data.__slice__(0) : stdgo.Slice<stdgo.GoString>)), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_data[(_i : stdgo.GoInt)] < _data[(_j : stdgo.GoInt)] : Bool);
        });
        if (!sliceIsSorted(stdgo.Go.toInterface((_data.__slice__(0) : stdgo.Slice<stdgo.GoString>)), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_data[(_i : stdgo.GoInt)] < _data[(_j : stdgo.GoInt)] : Bool);
        })) {
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(_strings));
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
function testSortLarge_Random(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _n = (1000000 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing.short()) {
            _n = (_n / ((100 : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _data = (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_data.length) : Bool), _i++, {
                _data[(_i : stdgo.GoInt)] = stdgo._internal.math.rand.Rand.intn((100 : stdgo.GoInt));
            });
        };
        if (intsAreSorted(_data)) {
            _t.fatalf(("terrible rand.rand" : stdgo.GoString));
        };
        ints(_data);
        if (!intsAreSorted(_data)) {
            _t.errorf(("sort didn\'t sort - 1M ints" : stdgo.GoString));
        };
    }
function testReverseSortIntSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _data = _ints?.__copy__();
        var _data1 = _ints?.__copy__();
        var _a = ((_data.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>) : IntSlice);
        sort(stdgo.Go.asInterface(_a));
        var _r = ((_data1.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>) : IntSlice);
        sort(reverse(stdgo.Go.asInterface(_r)));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_data.length) : Bool), _i++, {
                if (_a[(_i : stdgo.GoInt)] != (_r[(((12 : stdgo.GoInt) - _i : stdgo.GoInt) : stdgo.GoInt)])) {
                    _t.errorf(("reverse sort didn\'t sort" : stdgo.GoString));
                };
                if ((_i > (6 : stdgo.GoInt) : Bool)) {
                    break;
                };
            });
        };
    }
function testBreakPatterns(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _data = (new stdgo.Slice<stdgo.GoInt>((30 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        for (_i => _ in _data) {
            _data[(_i : stdgo.GoInt)] = (10 : stdgo.GoInt);
        };
        _data[((((_data.length) / (4 : stdgo.GoInt) : stdgo.GoInt)) * (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoInt);
        _data[((((_data.length) / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt)] = (1 : stdgo.GoInt);
        _data[((((_data.length) / (4 : stdgo.GoInt) : stdgo.GoInt)) * (3 : stdgo.GoInt) : stdgo.GoInt)] = (2 : stdgo.GoInt);
        sort(stdgo.Go.asInterface((_data : IntSlice)));
    }
function testReverseRange(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _data = (new stdgo.Slice<stdgo.GoInt>(7, 7, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        reverseRange(stdgo.Go.asInterface((_data : IntSlice)), (0 : stdgo.GoInt), (_data.length));
        {
            var _i = ((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i--, {
                if ((_data[(_i : stdgo.GoInt)] > _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool)) {
                    _t.fatalf(("reverseRange didn\'t work" : stdgo.GoString));
                };
            });
        };
        var _data1 = (new stdgo.Slice<stdgo.GoInt>(7, 7, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _data2 = (new stdgo.Slice<stdgo.GoInt>(7, 7, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (5 : stdgo.GoInt), (4 : stdgo.GoInt), (3 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        reverseRange(stdgo.Go.asInterface((_data1 : IntSlice)), (2 : stdgo.GoInt), (5 : stdgo.GoInt));
        for (_i => _v in _data1) {
            if (_v != (_data2[(_i : stdgo.GoInt)])) {
                _t.fatalf(("reverseRange didn\'t work" : stdgo.GoString));
            };
        };
    }
function testNonDeterministicComparison(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _r = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_r != null) {
                            _t.error(_r);
                        };
                    };
                };
                a();
            });
            var _td = (stdgo.Go.setRef(({ _r : stdgo._internal.math.rand.Rand.new_(stdgo._internal.math.rand.Rand.newSource((0i64 : stdgo.GoInt64))) } : stdgo._internal.sort_test.Sort_test.T_nonDeterministicTestingData)) : stdgo.Ref<stdgo._internal.sort_test.Sort_test.T_nonDeterministicTestingData>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                    sort(stdgo.Go.asInterface(_td));
                });
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function benchmarkSortString1K(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _unsorted = (new stdgo.Slice<stdgo.GoString>((1024 : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _ in _unsorted) {
            _unsorted[(_i : stdgo.GoInt)] = stdgo._internal.strconv.Strconv.itoa((_i ^ (716 : stdgo.GoInt) : stdgo.GoInt))?.__copy__();
        };
        var _data = (new stdgo.Slice<stdgo.GoString>((_unsorted.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo.Go.copySlice(_data, _unsorted);
                _b.startTimer();
                strings(_data);
                _b.stopTimer();
            });
        };
    }
function benchmarkSortString1K_Slice(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _unsorted = (new stdgo.Slice<stdgo.GoString>((1024 : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _ in _unsorted) {
            _unsorted[(_i : stdgo.GoInt)] = stdgo._internal.strconv.Strconv.itoa((_i ^ (716 : stdgo.GoInt) : stdgo.GoInt))?.__copy__();
        };
        var _data = (new stdgo.Slice<stdgo.GoString>((_unsorted.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo.Go.copySlice(_data, _unsorted);
                _b.startTimer();
                slice(stdgo.Go.toInterface(_data), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
                    return (_data[(_i : stdgo.GoInt)] < _data[(_j : stdgo.GoInt)] : Bool);
                });
                _b.stopTimer();
            });
        };
    }
function benchmarkStableString1K(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _unsorted = (new stdgo.Slice<stdgo.GoString>((1024 : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _ in _unsorted) {
            _unsorted[(_i : stdgo.GoInt)] = stdgo._internal.strconv.Strconv.itoa((_i ^ (716 : stdgo.GoInt) : stdgo.GoInt))?.__copy__();
        };
        var _data = (new stdgo.Slice<stdgo.GoString>((_unsorted.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo.Go.copySlice(_data, _unsorted);
                _b.startTimer();
                stable(stdgo.Go.asInterface((_data : StringSlice)));
                _b.stopTimer();
            });
        };
    }
function benchmarkSortInt1K(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _data = (new stdgo.Slice<stdgo.GoInt>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (_data.length) : Bool), _i++, {
                        _data[(_i : stdgo.GoInt)] = (_i ^ (716 : stdgo.GoInt) : stdgo.GoInt);
                    });
                };
                _b.startTimer();
                ints(_data);
                _b.stopTimer();
            });
        };
    }
function benchmarkSortInt1K_Sorted(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _data = (new stdgo.Slice<stdgo.GoInt>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (_data.length) : Bool), _i++, {
                        _data[(_i : stdgo.GoInt)] = _i;
                    });
                };
                _b.startTimer();
                ints(_data);
                _b.stopTimer();
            });
        };
    }
function benchmarkSortInt1K_Reversed(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _data = (new stdgo.Slice<stdgo.GoInt>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (_data.length) : Bool), _i++, {
                        _data[(_i : stdgo.GoInt)] = ((_data.length) - _i : stdgo.GoInt);
                    });
                };
                _b.startTimer();
                ints(_data);
                _b.stopTimer();
            });
        };
    }
function benchmarkSortInt1K_Mod8(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _data = (new stdgo.Slice<stdgo.GoInt>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (_data.length) : Bool), _i++, {
                        _data[(_i : stdgo.GoInt)] = (_i % (8 : stdgo.GoInt) : stdgo.GoInt);
                    });
                };
                _b.startTimer();
                ints(_data);
                _b.stopTimer();
            });
        };
    }
function benchmarkStableInt1K(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _unsorted = (new stdgo.Slice<stdgo.GoInt>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        for (_i => _ in _unsorted) {
            _unsorted[(_i : stdgo.GoInt)] = (_i ^ (716 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _data = (new stdgo.Slice<stdgo.GoInt>((_unsorted.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo.Go.copySlice(_data, _unsorted);
                _b.startTimer();
                stable(stdgo.Go.asInterface((_data : IntSlice)));
                _b.stopTimer();
            });
        };
    }
function benchmarkStableInt1K_Slice(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _unsorted = (new stdgo.Slice<stdgo.GoInt>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        for (_i => _ in _unsorted) {
            _unsorted[(_i : stdgo.GoInt)] = (_i ^ (716 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _data = (new stdgo.Slice<stdgo.GoInt>((_unsorted.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo.Go.copySlice(_data, _unsorted);
                _b.startTimer();
                sliceStable(stdgo.Go.toInterface(_data), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
                    return (_data[(_i : stdgo.GoInt)] < _data[(_j : stdgo.GoInt)] : Bool);
                });
                _b.stopTimer();
            });
        };
    }
function benchmarkSortInt64K(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _data = (new stdgo.Slice<stdgo.GoInt>((65536 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (_data.length) : Bool), _i++, {
                        _data[(_i : stdgo.GoInt)] = (_i ^ (52428 : stdgo.GoInt) : stdgo.GoInt);
                    });
                };
                _b.startTimer();
                ints(_data);
                _b.stopTimer();
            });
        };
    }
function benchmarkSortInt64K_Slice(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _data = (new stdgo.Slice<stdgo.GoInt>((65536 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (_data.length) : Bool), _i++, {
                        _data[(_i : stdgo.GoInt)] = (_i ^ (52428 : stdgo.GoInt) : stdgo.GoInt);
                    });
                };
                _b.startTimer();
                slice(stdgo.Go.toInterface(_data), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
                    return (_data[(_i : stdgo.GoInt)] < _data[(_j : stdgo.GoInt)] : Bool);
                });
                _b.stopTimer();
            });
        };
    }
function benchmarkStableInt64K(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _data = (new stdgo.Slice<stdgo.GoInt>((65536 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (_data.length) : Bool), _i++, {
                        _data[(_i : stdgo.GoInt)] = (_i ^ (52428 : stdgo.GoInt) : stdgo.GoInt);
                    });
                };
                _b.startTimer();
                stable(stdgo.Go.asInterface((_data : IntSlice)));
                _b.stopTimer();
            });
        };
    }
function _min(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
        if ((_a < _b : Bool)) {
            return _a;
        };
        return _b;
    }
function _lg(_n:stdgo.GoInt):stdgo.GoInt {
        var _i = (0 : stdgo.GoInt);
        while ((((1 : stdgo.GoInt) << (_i : stdgo.GoUInt) : stdgo.GoInt) < _n : Bool)) {
            _i++;
        };
        return _i;
    }
function _testBentleyMcIlroy(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _sort:Interface -> Void, _maxswap:stdgo.GoInt -> stdgo.GoInt):Void {
        var _sizes = (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(100 : stdgo.GoInt), (1023 : stdgo.GoInt), (1024 : stdgo.GoInt), (1025 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        if (stdgo._internal.testing.Testing.short()) {
            _sizes = (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(100 : stdgo.GoInt), (127 : stdgo.GoInt), (128 : stdgo.GoInt), (129 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        };
        var _dists = (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("sawtooth" : stdgo.GoString), ("rand" : stdgo.GoString), ("stagger" : stdgo.GoString), ("plateau" : stdgo.GoString), ("shuffle" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _modes = (new stdgo.Slice<stdgo.GoString>(6, 6, ...[("copy" : stdgo.GoString), ("reverse" : stdgo.GoString), ("reverse1" : stdgo.GoString), ("reverse2" : stdgo.GoString), ("sort" : stdgo.GoString), ("dither" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var __0:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(1025, 1025, ...[for (i in 0 ... 1025) (0 : stdgo.GoInt)]), __1:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(1025, 1025, ...[for (i in 0 ... 1025) (0 : stdgo.GoInt)]);
var _tmp2 = __1, _tmp1 = __0;
        for (__0 => _n in _sizes) {
            {
                var _m = (1 : stdgo.GoInt);
                stdgo.Go.cfor((_m < ((2 : stdgo.GoInt) * _n : stdgo.GoInt) : Bool), _m = (_m * ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                    {
                        var _dist = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_dist < (5 : stdgo.GoInt) : Bool), _dist++, {
                            var _j = (0 : stdgo.GoInt);
                            var _k = (1 : stdgo.GoInt);
                            var _data = (_tmp1.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoInt>);
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                                    {
                                        final __value__ = _dist;
                                        if (__value__ == ((0 : stdgo.GoInt))) {
                                            _data[(_i : stdgo.GoInt)] = (_i % _m : stdgo.GoInt);
                                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                                            _data[(_i : stdgo.GoInt)] = stdgo._internal.math.rand.Rand.intn(_m);
                                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                                            _data[(_i : stdgo.GoInt)] = ((((_i * _m : stdgo.GoInt) + _i : stdgo.GoInt)) % _n : stdgo.GoInt);
                                        } else if (__value__ == ((3 : stdgo.GoInt))) {
                                            _data[(_i : stdgo.GoInt)] = _min(_i, _m);
                                        } else if (__value__ == ((4 : stdgo.GoInt))) {
                                            if (stdgo._internal.math.rand.Rand.intn(_m) != ((0 : stdgo.GoInt))) {
                                                _j = (_j + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                                _data[(_i : stdgo.GoInt)] = _j;
                                            } else {
                                                _k = (_k + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                                _data[(_i : stdgo.GoInt)] = _k;
                                            };
                                        };
                                    };
                                });
                            };
                            var _mdata = (_tmp2.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoInt>);
                            {
                                var _mode = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_mode < (6 : stdgo.GoInt) : Bool), _mode++, {
                                    {
                                        final __value__ = _mode;
                                        if (__value__ == ((0 : stdgo.GoInt))) {
                                            {
                                                var _i = (0 : stdgo.GoInt);
                                                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                                                    _mdata[(_i : stdgo.GoInt)] = _data[(_i : stdgo.GoInt)];
                                                });
                                            };
                                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                                            {
                                                var _i = (0 : stdgo.GoInt);
                                                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                                                    _mdata[(_i : stdgo.GoInt)] = _data[((_n - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                                });
                                            };
                                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                                            {
                                                var _i = (0 : stdgo.GoInt);
                                                stdgo.Go.cfor((_i < (_n / (2 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                                                    _mdata[(_i : stdgo.GoInt)] = _data[(((_n / (2 : stdgo.GoInt) : stdgo.GoInt) - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                                });
                                            };
                                            {
                                                var _i = (_n / (2 : stdgo.GoInt) : stdgo.GoInt);
                                                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                                                    _mdata[(_i : stdgo.GoInt)] = _data[(_i : stdgo.GoInt)];
                                                });
                                            };
                                        } else if (__value__ == ((3 : stdgo.GoInt))) {
                                            {
                                                var _i = (0 : stdgo.GoInt);
                                                stdgo.Go.cfor((_i < (_n / (2 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                                                    _mdata[(_i : stdgo.GoInt)] = _data[(_i : stdgo.GoInt)];
                                                });
                                            };
                                            {
                                                var _i = (_n / (2 : stdgo.GoInt) : stdgo.GoInt);
                                                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                                                    _mdata[(_i : stdgo.GoInt)] = _data[((_n - ((_i - (_n / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                                });
                                            };
                                        } else if (__value__ == ((4 : stdgo.GoInt))) {
                                            {
                                                var _i = (0 : stdgo.GoInt);
                                                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                                                    _mdata[(_i : stdgo.GoInt)] = _data[(_i : stdgo.GoInt)];
                                                });
                                            };
                                            ints(_mdata);
                                        } else if (__value__ == ((5 : stdgo.GoInt))) {
                                            {
                                                var _i = (0 : stdgo.GoInt);
                                                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                                                    _mdata[(_i : stdgo.GoInt)] = (_data[(_i : stdgo.GoInt)] + (_i % (5 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
                                                });
                                            };
                                        };
                                    };
                                    var _desc = stdgo._internal.fmt.Fmt.sprintf(("n=%d m=%d dist=%s mode=%s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_dists[(_dist : stdgo.GoInt)]), stdgo.Go.toInterface(_modes[(_mode : stdgo.GoInt)]))?.__copy__();
                                    var _d = (stdgo.Go.setRef(({ _desc : _desc?.__copy__(), _t : _t, _data : (_mdata.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoInt>), _maxswap : _maxswap(_n) } : stdgo._internal.sort_test.Sort_test.T_testingData)) : stdgo.Ref<stdgo._internal.sort_test.Sort_test.T_testingData>);
                                    _sort(stdgo.Go.asInterface(_d));
                                    if (!intsAreSorted(_mdata)) {
                                        _t.fatalf(("%s: ints not sorted\n\t%v" : stdgo.GoString), stdgo.Go.toInterface(_desc), stdgo.Go.toInterface(_mdata));
                                    };
                                });
                            };
                        });
                    };
                });
            };
        };
    }
function testSortBM(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testBentleyMcIlroy(_t, sort, function(_n:stdgo.GoInt):stdgo.GoInt {
            return (((_n * _lg(_n) : stdgo.GoInt) * (12 : stdgo.GoInt) : stdgo.GoInt) / (10 : stdgo.GoInt) : stdgo.GoInt);
        });
    }
function testHeapsortBM(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testBentleyMcIlroy(_t, heapsort, function(_n:stdgo.GoInt):stdgo.GoInt {
            return (((_n * _lg(_n) : stdgo.GoInt) * (12 : stdgo.GoInt) : stdgo.GoInt) / (10 : stdgo.GoInt) : stdgo.GoInt);
        });
    }
function testStableBM(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testBentleyMcIlroy(_t, stable, function(_n:stdgo.GoInt):stdgo.GoInt {
            return (((_n * _lg(_n) : stdgo.GoInt) * _lg(_n) : stdgo.GoInt) / (3 : stdgo.GoInt) : stdgo.GoInt);
        });
    }
function _newAdversaryTestingData(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _size:stdgo.GoInt, _maxcmp:stdgo.GoInt):stdgo.Ref<T_adversaryTestingData> {
        var _gas = (_size - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _data = (new stdgo.Slice<stdgo.GoInt>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _size : Bool), _i++, {
                _data[(_i : stdgo.GoInt)] = _gas;
            });
        };
        return (stdgo.Go.setRef(({ _t : _t, _data : _data, _maxcmp : _maxcmp, _gas : _gas } : stdgo._internal.sort_test.Sort_test.T_adversaryTestingData)) : stdgo.Ref<stdgo._internal.sort_test.Sort_test.T_adversaryTestingData>);
    }
function testAdversary(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _maxcmp = (((10000 : stdgo.GoInt) * _lg((10000 : stdgo.GoInt)) : stdgo.GoInt) * (4 : stdgo.GoInt) : stdgo.GoInt);
        var _d = _newAdversaryTestingData(_t, (10000 : stdgo.GoInt), _maxcmp);
        sort(stdgo.Go.asInterface(_d));
        for (_i => _v in _d._data) {
            if (_v != (_i)) {
                _t.fatalf(("adversary data not fully sorted" : stdgo.GoString));
            };
        };
    }
function testStableInts(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _data = _ints?.__copy__();
        stable(stdgo.Go.asInterface(((_data.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>) : IntSlice)));
        if (!intsAreSorted((_data.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>))) {
            _t.errorf(("nsorted %v\n   got %v" : stdgo.GoString), stdgo.Go.toInterface(_ints), stdgo.Go.toInterface(_data));
        };
    }
function testStability(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __0 = (100000 : stdgo.GoInt), __1 = (1000 : stdgo.GoInt);
var _m = __1, _n = __0;
        if (stdgo._internal.testing.Testing.short()) {
            {
                final __tmp__0 = (1000 : stdgo.GoInt);
                final __tmp__1 = (100 : stdgo.GoInt);
                _n = __tmp__0;
                _m = __tmp__1;
            };
        };
        var _data = (new stdgo.Slice<T__struct_4>((_n : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n : stdgo.GoInt).toBasic() > 0 ? (_n : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({ _a : (0 : stdgo.GoInt), _b : (0 : stdgo.GoInt) } : T__struct_4)]) : stdgo._internal.sort_test.Sort_test.T_intPairs);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_data.length) : Bool), _i++, {
                _data[(_i : stdgo.GoInt)]._a = stdgo._internal.math.rand.Rand.intn(_m);
            });
        };
        if (isSorted(stdgo.Go.asInterface(_data))) {
            _t.fatalf(("terrible rand.rand" : stdgo.GoString));
        };
        _data._initB();
        stable(stdgo.Go.asInterface(_data));
        if (!isSorted(stdgo.Go.asInterface(_data))) {
            _t.errorf(("Stable didn\'t sort %d ints" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (!_data._inOrder()) {
            _t.errorf(("Stable wasn\'t stable on %d ints" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        _data._initB();
        stable(stdgo.Go.asInterface(_data));
        if (!isSorted(stdgo.Go.asInterface(_data))) {
            _t.errorf(("Stable shuffled sorted %d ints (order)" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (!_data._inOrder()) {
            _t.errorf(("Stable shuffled sorted %d ints (stability)" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_data.length) : Bool), _i++, {
                _data[(_i : stdgo.GoInt)]._a = ((_data.length) - _i : stdgo.GoInt);
            });
        };
        _data._initB();
        stable(stdgo.Go.asInterface(_data));
        if (!isSorted(stdgo.Go.asInterface(_data))) {
            _t.errorf(("Stable didn\'t sort %d ints" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (!_data._inOrder()) {
            _t.errorf(("Stable wasn\'t stable on %d ints" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
function _countOps(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _algo:Interface -> Void, _name:stdgo.GoString):Void {
        var _sizes = _countOpsSizes;
        if (stdgo._internal.testing.Testing.short()) {
            _sizes = (_sizes.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        };
        if (!stdgo._internal.testing.Testing.verbose()) {
            _t.skip(stdgo.Go.toInterface(("Counting skipped as non-verbose mode." : stdgo.GoString)));
        };
        for (__8 => _n in _sizes) {
            var _td = ({ _desc : _name?.__copy__(), _t : _t, _data : (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _maxswap : (2147483647 : stdgo.GoInt) } : stdgo._internal.sort_test.Sort_test.T_testingData);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                    _td._data[(_i : stdgo.GoInt)] = stdgo._internal.math.rand.Rand.intn((_n / (5 : stdgo.GoInt) : stdgo.GoInt));
                });
            };
            _algo(stdgo.Go.asInterface((stdgo.Go.setRef(_td) : stdgo.Ref<stdgo._internal.sort_test.Sort_test.T_testingData>)));
            _t.logf(("%s %8d elements: %11d Swap, %10d Less" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_td._nswap), stdgo.Go.toInterface(_td._ncmp));
        };
    }
function testCountStableOps(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _countOps(_t, stable, ("Stable" : stdgo.GoString));
    }
function testCountSortOps(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _countOps(_t, sort, ("Sort  " : stdgo.GoString));
    }
function _bench(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _size:stdgo.GoInt, _algo:Interface -> Void, _name:stdgo.GoString):Void {
        if ((stdgo._internal.strings.Strings.hasSuffix(stdgo._internal.internal.testenv.Testenv.builder()?.__copy__(), ("-race" : stdgo.GoString)) && (_size > (10000 : stdgo.GoInt) : Bool) : Bool)) {
            _b.skip(stdgo.Go.toInterface(("skipping slow benchmark on race builder" : stdgo.GoString)));
        };
        _b.stopTimer();
        var _data = (new stdgo.Slice<T__struct_4>((_size : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_size : stdgo.GoInt).toBasic() > 0 ? (_size : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({ _a : (0 : stdgo.GoInt), _b : (0 : stdgo.GoInt) } : T__struct_4)]) : stdgo._internal.sort_test.Sort_test.T_intPairs);
        var _x = (-1u32 : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var _n = (_size - (3 : stdgo.GoInt) : stdgo.GoInt);
                    stdgo.Go.cfor((_n <= (_size + (3 : stdgo.GoInt) : stdgo.GoInt) : Bool), _n++, {
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < (_data.length) : Bool), _i++, {
                                _x = (_x + (_x) : stdgo.GoUInt32);
                                _x = (_x ^ ((1u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                                if (((_x : stdgo.GoInt32) < (0 : stdgo.GoInt32) : Bool)) {
                                    _x = (_x ^ ((-2004316433u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                                };
                                _data[(_i : stdgo.GoInt)]._a = ((_x % ((_n / (5 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt);
                            });
                        };
                        _data._initB();
                        _b.startTimer();
                        _algo(stdgo.Go.asInterface(_data));
                        _b.stopTimer();
                        if (!isSorted(stdgo.Go.asInterface(_data))) {
                            _b.errorf(("%s did not sort %d ints" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_n));
                        };
                        if (((_name == ("Stable" : stdgo.GoString)) && !_data._inOrder() : Bool)) {
                            _b.errorf(("%s unstable on %d ints" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_n));
                        };
                    });
                };
            });
        };
    }
function benchmarkSort1e2(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _bench(_b, (100 : stdgo.GoInt), sort, ("Sort" : stdgo.GoString));
    }
function benchmarkStable1e2(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _bench(_b, (100 : stdgo.GoInt), stable, ("Stable" : stdgo.GoString));
    }
function benchmarkSort1e4(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _bench(_b, (10000 : stdgo.GoInt), sort, ("Sort" : stdgo.GoString));
    }
function benchmarkStable1e4(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _bench(_b, (10000 : stdgo.GoInt), stable, ("Stable" : stdgo.GoString));
    }
function benchmarkSort1e6(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _bench(_b, (1000000 : stdgo.GoInt), sort, ("Sort" : stdgo.GoString));
    }
function benchmarkStable1e6(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _bench(_b, (1000000 : stdgo.GoInt), stable, ("Stable" : stdgo.GoString));
    }
class Person_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Person>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sort_test.Sort_test.Person_asInterface) class Person_static_extension {
    @:keep
    static public function string( _p:Person):stdgo.GoString {
        @:recv var _p:Person = _p?.__copy__();
        return stdgo._internal.fmt.Fmt.sprintf(("%s: %d" : stdgo.GoString), stdgo.Go.toInterface(_p.name), stdgo.Go.toInterface(_p.age))?.__copy__();
    }
}
class T_planetSorter_asInterface {
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_planetSorter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sort_test.Sort_test.T_planetSorter_asInterface) class T_planetSorter_static_extension {
    @:keep
    static public function less( _s:stdgo.Ref<T_planetSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _s:stdgo.Ref<T_planetSorter> = _s;
        return _s._by((stdgo.Go.setRef(_s._planets[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.sort_test.Sort_test.Planet>), (stdgo.Go.setRef(_s._planets[(_j : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.sort_test.Sort_test.Planet>));
    }
    @:keep
    static public function swap( _s:stdgo.Ref<T_planetSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _s:stdgo.Ref<T_planetSorter> = _s;
        {
            final __tmp__0 = _s._planets[(_j : stdgo.GoInt)];
            final __tmp__1 = _s._planets[(_i : stdgo.GoInt)];
            final __tmp__2 = _s._planets;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _s._planets;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function len( _s:stdgo.Ref<T_planetSorter>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<T_planetSorter> = _s;
        return (_s._planets.length);
    }
}
class T_multiSorter_asInterface {
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:keep
    public dynamic function sort(_changes:stdgo.Slice<Change>):Void __self__.value.sort(_changes);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_multiSorter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sort_test.Sort_test.T_multiSorter_asInterface) class T_multiSorter_static_extension {
    @:keep
    static public function less( _ms:stdgo.Ref<T_multiSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _ms:stdgo.Ref<T_multiSorter> = _ms;
        var __0 = (stdgo.Go.setRef(_ms._changes[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.sort_test.Sort_test.Change>), __1 = (stdgo.Go.setRef(_ms._changes[(_j : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.sort_test.Sort_test.Change>);
var _q = __1, _p = __0;
        var _k:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            _k = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_k < ((_ms._less.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _k++, {
                var _less = _ms._less[(_k : stdgo.GoInt)];
                if (_less(_p, _q)) {
                    return true;
                } else if (_less(_q, _p)) {
                    return false;
                };
            });
        };
        return _ms._less[(_k : stdgo.GoInt)](_p, _q);
    }
    @:keep
    static public function swap( _ms:stdgo.Ref<T_multiSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _ms:stdgo.Ref<T_multiSorter> = _ms;
        {
            final __tmp__0 = _ms._changes[(_j : stdgo.GoInt)];
            final __tmp__1 = _ms._changes[(_i : stdgo.GoInt)];
            final __tmp__2 = _ms._changes;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _ms._changes;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function len( _ms:stdgo.Ref<T_multiSorter>):stdgo.GoInt {
        @:recv var _ms:stdgo.Ref<T_multiSorter> = _ms;
        return (_ms._changes.length);
    }
    @:keep
    static public function sort( _ms:stdgo.Ref<T_multiSorter>, _changes:stdgo.Slice<Change>):Void {
        @:recv var _ms:stdgo.Ref<T_multiSorter> = _ms;
        _ms._changes = _changes;
        stdgo._internal.sort.Sort.sort(stdgo.Go.asInterface(_ms));
    }
}
class ByName_asInterface {
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:embedded
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:embedded
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ByName>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sort_test.Sort_test.ByName_asInterface) class ByName_static_extension {
    @:keep
    static public function less( _s:ByName, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _s:ByName = _s?.__copy__();
        return (_s.organs[(_i : stdgo.GoInt)].name < _s.organs[(_j : stdgo.GoInt)].name : Bool);
    }
    @:embedded
    public static function swap( __self__:ByName, _i:stdgo.GoInt, _j:stdgo.GoInt) __self__.swap(_i, _j);
    @:embedded
    public static function len( __self__:ByName):stdgo.GoInt return __self__.len();
}
class ByWeight_asInterface {
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:embedded
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:embedded
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ByWeight>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sort_test.Sort_test.ByWeight_asInterface) class ByWeight_static_extension {
    @:keep
    static public function less( _s:ByWeight, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _s:ByWeight = _s?.__copy__();
        return (_s.organs[(_i : stdgo.GoInt)].weight < _s.organs[(_j : stdgo.GoInt)].weight : Bool);
    }
    @:embedded
    public static function swap( __self__:ByWeight, _i:stdgo.GoInt, _j:stdgo.GoInt) __self__.swap(_i, _j);
    @:embedded
    public static function len( __self__:ByWeight):stdgo.GoInt return __self__.len();
}
class T_nonDeterministicTestingData_asInterface {
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_nonDeterministicTestingData>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sort_test.Sort_test.T_nonDeterministicTestingData_asInterface) class T_nonDeterministicTestingData_static_extension {
    @:keep
    static public function swap( _t:stdgo.Ref<T_nonDeterministicTestingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _t:stdgo.Ref<T_nonDeterministicTestingData> = _t;
        if (((((_i < (0 : stdgo.GoInt) : Bool) || (_j < (0 : stdgo.GoInt) : Bool) : Bool) || (_i >= _t.len() : Bool) : Bool) || (_j >= _t.len() : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("nondeterministic comparison out of bounds" : stdgo.GoString));
        };
    }
    @:keep
    static public function less( _t:stdgo.Ref<T_nonDeterministicTestingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _t:stdgo.Ref<T_nonDeterministicTestingData> = _t;
        if (((((_i < (0 : stdgo.GoInt) : Bool) || (_j < (0 : stdgo.GoInt) : Bool) : Bool) || (_i >= _t.len() : Bool) : Bool) || (_j >= _t.len() : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("nondeterministic comparison out of bounds" : stdgo.GoString));
        };
        return (_t._r.float32() < (0.5 : stdgo.GoFloat64) : Bool);
    }
    @:keep
    static public function len( _t:stdgo.Ref<T_nonDeterministicTestingData>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<T_nonDeterministicTestingData> = _t;
        return (500 : stdgo.GoInt);
    }
}
class T_testingData_asInterface {
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testingData>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sort_test.Sort_test.T_testingData_asInterface) class T_testingData_static_extension {
    @:keep
    static public function swap( _d:stdgo.Ref<T_testingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _d:stdgo.Ref<T_testingData> = _d;
        if ((_d._nswap >= _d._maxswap : Bool)) {
            _d._t.fatalf(("%s: used %d swaps sorting slice of %d" : stdgo.GoString), stdgo.Go.toInterface(_d._desc), stdgo.Go.toInterface(_d._nswap), stdgo.Go.toInterface((_d._data.length)));
        };
        _d._nswap++;
        {
            final __tmp__0 = _d._data[(_j : stdgo.GoInt)];
            final __tmp__1 = _d._data[(_i : stdgo.GoInt)];
            final __tmp__2 = _d._data;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _d._data;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function less( _d:stdgo.Ref<T_testingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _d:stdgo.Ref<T_testingData> = _d;
        _d._ncmp++;
        return (_d._data[(_i : stdgo.GoInt)] < _d._data[(_j : stdgo.GoInt)] : Bool);
    }
    @:keep
    static public function len( _d:stdgo.Ref<T_testingData>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<T_testingData> = _d;
        return (_d._data.length);
    }
}
class T_adversaryTestingData_asInterface {
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_adversaryTestingData>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sort_test.Sort_test.T_adversaryTestingData_asInterface) class T_adversaryTestingData_static_extension {
    @:keep
    static public function swap( _d:stdgo.Ref<T_adversaryTestingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _d:stdgo.Ref<T_adversaryTestingData> = _d;
        {
            final __tmp__0 = _d._data[(_j : stdgo.GoInt)];
            final __tmp__1 = _d._data[(_i : stdgo.GoInt)];
            final __tmp__2 = _d._data;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _d._data;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function less( _d:stdgo.Ref<T_adversaryTestingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _d:stdgo.Ref<T_adversaryTestingData> = _d;
        if ((_d._ncmp >= _d._maxcmp : Bool)) {
            _d._t.fatalf(("used %d comparisons sorting adversary data with size %d" : stdgo.GoString), stdgo.Go.toInterface(_d._ncmp), stdgo.Go.toInterface((_d._data.length)));
        };
        _d._ncmp++;
        if (((_d._data[(_i : stdgo.GoInt)] == _d._gas) && (_d._data[(_j : stdgo.GoInt)] == _d._gas) : Bool)) {
            if (_i == (_d._candidate)) {
                _d._data[(_i : stdgo.GoInt)] = _d._nsolid;
                _d._nsolid++;
            } else {
                _d._data[(_j : stdgo.GoInt)] = _d._nsolid;
                _d._nsolid++;
            };
        };
        if (_d._data[(_i : stdgo.GoInt)] == (_d._gas)) {
            _d._candidate = _i;
        } else if (_d._data[(_j : stdgo.GoInt)] == (_d._gas)) {
            _d._candidate = _j;
        };
        return (_d._data[(_i : stdgo.GoInt)] < _d._data[(_j : stdgo.GoInt)] : Bool);
    }
    @:keep
    static public function len( _d:stdgo.Ref<T_adversaryTestingData>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<T_adversaryTestingData> = _d;
        return (_d._data.length);
    }
}
class ByAge_asInterface {
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ByAge>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sort_test.Sort_test.ByAge_asInterface) class ByAge_static_extension {
    @:keep
    static public function less( _a:ByAge, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _a:ByAge = _a;
        return (_a[(_i : stdgo.GoInt)].age < _a[(_j : stdgo.GoInt)].age : Bool);
    }
    @:keep
    static public function swap( _a:ByAge, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _a:ByAge = _a;
        {
            final __tmp__0 = _a[(_j : stdgo.GoInt)];
            final __tmp__1 = _a[(_i : stdgo.GoInt)];
            final __tmp__2 = _a;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _a;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function len( _a:ByAge):stdgo.GoInt {
        @:recv var _a:ByAge = _a;
        return (_a.length);
    }
}
class By_asInterface {
    @:keep
    public dynamic function sort(_planets:stdgo.Slice<Planet>):Void __self__.value.sort(_planets);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<By>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sort_test.Sort_test.By_asInterface) class By_static_extension {
    @:keep
    static public function sort( _by:By, _planets:stdgo.Slice<Planet>):Void {
        @:recv var _by:By = _by;
        var _ps = (stdgo.Go.setRef(({ _planets : _planets, _by : _by } : stdgo._internal.sort_test.Sort_test.T_planetSorter)) : stdgo.Ref<stdgo._internal.sort_test.Sort_test.T_planetSorter>);
        stdgo._internal.sort.Sort.sort(stdgo.Go.asInterface(_ps));
    }
}
class Grams_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Grams>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sort_test.Sort_test.Grams_asInterface) class Grams_static_extension {
    @:keep
    static public function string( _g:Grams):stdgo.GoString {
        @:recv var _g:Grams = _g;
        return stdgo._internal.fmt.Fmt.sprintf(("%dg" : stdgo.GoString), stdgo.Go.toInterface((_g : stdgo.GoInt)))?.__copy__();
    }
}
class Organs_asInterface {
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Organs>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sort_test.Sort_test.Organs_asInterface) class Organs_static_extension {
    @:keep
    static public function swap( _s:Organs, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _s:Organs = _s;
        {
            final __tmp__0 = _s[(_j : stdgo.GoInt)];
            final __tmp__1 = _s[(_i : stdgo.GoInt)];
            final __tmp__2 = _s;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _s;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function len( _s:Organs):stdgo.GoInt {
        @:recv var _s:Organs = _s;
        return (_s.length);
    }
}
class T_intPairs_asInterface {
    @:keep
    public dynamic function _inOrder():Bool return __self__.value._inOrder();
    @:keep
    public dynamic function _initB():Void __self__.value._initB();
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_intPairs>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sort_test.Sort_test.T_intPairs_asInterface) class T_intPairs_static_extension {
    @:keep
    static public function _inOrder( _d:T_intPairs):Bool {
        @:recv var _d:T_intPairs = _d;
        var __0 = (-1 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _lastB = __1, _lastA = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_d.length) : Bool), _i++, {
                if (_lastA != (_d[(_i : stdgo.GoInt)]._a)) {
                    _lastA = _d[(_i : stdgo.GoInt)]._a;
                    _lastB = _d[(_i : stdgo.GoInt)]._b;
                    continue;
                };
                if ((_d[(_i : stdgo.GoInt)]._b <= _lastB : Bool)) {
                    return false;
                };
                _lastB = _d[(_i : stdgo.GoInt)]._b;
            });
        };
        return true;
    }
    @:keep
    static public function _initB( _d:T_intPairs):Void {
        @:recv var _d:T_intPairs = _d;
        for (_i => _ in _d) {
            _d[(_i : stdgo.GoInt)]._b = _i;
        };
    }
    @:keep
    static public function swap( _d:T_intPairs, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _d:T_intPairs = _d;
        {
            final __tmp__0 = {
                final x = _d[(_j : stdgo.GoInt)];
                ({ _a : x._a, _b : x._b } : T__struct_4);
            };
            final __tmp__1 = {
                final x = _d[(_i : stdgo.GoInt)];
                ({ _a : x._a, _b : x._b } : T__struct_4);
            };
            final __tmp__2 = _d;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _d;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function less( _d:T_intPairs, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _d:T_intPairs = _d;
        return (_d[(_i : stdgo.GoInt)]._a < _d[(_j : stdgo.GoInt)]._a : Bool);
    }
    @:keep
    static public function len( _d:T_intPairs):stdgo.GoInt {
        @:recv var _d:T_intPairs = _d;
        return (_d.length);
    }
}
