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
var _planets : Slice<stdgo.sort_test.Sort_test.Planet> = (new Slice<stdgo.sort_test.Sort_test.Planet>(0, 0, (new stdgo.sort_test.Sort_test.Planet((Go.str("Mercury") : GoString), (0.055 : stdgo.sort_test.Sort_test.T_earthMass), (0.4 : stdgo.sort_test.Sort_test.T_au)) : stdgo.sort_test.Sort_test.Planet), (new stdgo.sort_test.Sort_test.Planet((Go.str("Venus") : GoString), (0.815 : stdgo.sort_test.Sort_test.T_earthMass), (0.7 : stdgo.sort_test.Sort_test.T_au)) : stdgo.sort_test.Sort_test.Planet), (new stdgo.sort_test.Sort_test.Planet((Go.str("Earth") : GoString), (1 : stdgo.sort_test.Sort_test.T_earthMass), (1 : stdgo.sort_test.Sort_test.T_au)) : stdgo.sort_test.Sort_test.Planet), (new stdgo.sort_test.Sort_test.Planet((Go.str("Mars") : GoString), (0.107 : stdgo.sort_test.Sort_test.T_earthMass), (1.5 : stdgo.sort_test.Sort_test.T_au)) : stdgo.sort_test.Sort_test.Planet)) : Slice<stdgo.sort_test.Sort_test.Planet>);
var _changes : Slice<stdgo.sort_test.Sort_test.Change> = (new Slice<stdgo.sort_test.Sort_test.Change>(
0,
0,
(new stdgo.sort_test.Sort_test.Change((Go.str("gri") : GoString), (Go.str("Go") : GoString), (100 : GoInt)) : stdgo.sort_test.Sort_test.Change),
(new stdgo.sort_test.Sort_test.Change((Go.str("ken") : GoString), (Go.str("C") : GoString), (150 : GoInt)) : stdgo.sort_test.Sort_test.Change),
(new stdgo.sort_test.Sort_test.Change((Go.str("glenda") : GoString), (Go.str("Go") : GoString), (200 : GoInt)) : stdgo.sort_test.Sort_test.Change),
(new stdgo.sort_test.Sort_test.Change((Go.str("rsc") : GoString), (Go.str("Go") : GoString), (200 : GoInt)) : stdgo.sort_test.Sort_test.Change),
(new stdgo.sort_test.Sort_test.Change((Go.str("r") : GoString), (Go.str("Go") : GoString), (100 : GoInt)) : stdgo.sort_test.Sort_test.Change),
(new stdgo.sort_test.Sort_test.Change((Go.str("ken") : GoString), (Go.str("Go") : GoString), (200 : GoInt)) : stdgo.sort_test.Sort_test.Change),
(new stdgo.sort_test.Sort_test.Change((Go.str("dmr") : GoString), (Go.str("C") : GoString), (100 : GoInt)) : stdgo.sort_test.Sort_test.Change),
(new stdgo.sort_test.Sort_test.Change((Go.str("r") : GoString), (Go.str("C") : GoString), (150 : GoInt)) : stdgo.sort_test.Sort_test.Change),
(new stdgo.sort_test.Sort_test.Change((Go.str("gri") : GoString), (Go.str("Smalltalk") : GoString), (80 : GoInt)) : stdgo.sort_test.Sort_test.Change)) : Slice<stdgo.sort_test.Sort_test.Change>);
var _data : Slice<GoInt> = {
        var s:Slice<GoInt> = new Slice<GoInt>(0, 0, ...([for (i in 0 ... 14) 0]));
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
var _tests : Slice<T__struct_1> = (new Slice<T__struct_1>(
0,
0,
({ _name : (Go.str("empty") : GoString), _n : (0 : GoInt), _f : null, _i : (0 : GoInt) } : T__struct_1),
({ _name : (Go.str("1 1") : GoString), _n : (1 : GoInt), _f : function(_i:GoInt):Bool {
        return _i >= (1 : GoInt);
    }, _i : (1 : GoInt) } : T__struct_1),
({ _name : (Go.str("1 true") : GoString), _n : (1 : GoInt), _f : function(_i:GoInt):Bool {
        return true;
    }, _i : (0 : GoInt) } : T__struct_1),
({ _name : (Go.str("1 false") : GoString), _n : (1 : GoInt), _f : function(_i:GoInt):Bool {
        return false;
    }, _i : (1 : GoInt) } : T__struct_1),
({ _name : (Go.str("1e9 991") : GoString), _n : (1e+09 : GoInt), _f : function(_i:GoInt):Bool {
        return _i >= (991 : GoInt);
    }, _i : (991 : GoInt) } : T__struct_1),
({ _name : (Go.str("1e9 true") : GoString), _n : (1e+09 : GoInt), _f : function(_i:GoInt):Bool {
        return true;
    }, _i : (0 : GoInt) } : T__struct_1),
({ _name : (Go.str("1e9 false") : GoString), _n : (1e+09 : GoInt), _f : function(_i:GoInt):Bool {
        return false;
    }, _i : (1e+09 : GoInt) } : T__struct_1),
({ _name : (Go.str("data -20") : GoString), _n : (_data.length), _f : _f(_data, (-20 : GoInt)), _i : (0 : GoInt) } : T__struct_1),
({ _name : (Go.str("data -10") : GoString), _n : (_data.length), _f : _f(_data, (-10 : GoInt)), _i : (0 : GoInt) } : T__struct_1),
({ _name : (Go.str("data -9") : GoString), _n : (_data.length), _f : _f(_data, (-9 : GoInt)), _i : (1 : GoInt) } : T__struct_1),
({ _name : (Go.str("data -6") : GoString), _n : (_data.length), _f : _f(_data, (-6 : GoInt)), _i : (1 : GoInt) } : T__struct_1),
({ _name : (Go.str("data -5") : GoString), _n : (_data.length), _f : _f(_data, (-5 : GoInt)), _i : (1 : GoInt) } : T__struct_1),
({ _name : (Go.str("data 3") : GoString), _n : (_data.length), _f : _f(_data, (3 : GoInt)), _i : (5 : GoInt) } : T__struct_1),
({ _name : (Go.str("data 11") : GoString), _n : (_data.length), _f : _f(_data, (11 : GoInt)), _i : (8 : GoInt) } : T__struct_1),
({ _name : (Go.str("data 99") : GoString), _n : (_data.length), _f : _f(_data, (99 : GoInt)), _i : (9 : GoInt) } : T__struct_1),
({ _name : (Go.str("data 100") : GoString), _n : (_data.length), _f : _f(_data, (100 : GoInt)), _i : (9 : GoInt) } : T__struct_1),
({ _name : (Go.str("data 101") : GoString), _n : (_data.length), _f : _f(_data, (101 : GoInt)), _i : (12 : GoInt) } : T__struct_1),
({ _name : (Go.str("data 10000") : GoString), _n : (_data.length), _f : _f(_data, (10000 : GoInt)), _i : (13 : GoInt) } : T__struct_1),
({ _name : (Go.str("data 10001") : GoString), _n : (_data.length), _f : _f(_data, (10001 : GoInt)), _i : (14 : GoInt) } : T__struct_1),
({ _name : (Go.str("descending a") : GoString), _n : (7 : GoInt), _f : function(_i:GoInt):Bool {
        return (new Slice<GoInt>(0, 0, (99 : GoInt), (99 : GoInt), (59 : GoInt), (42 : GoInt), (7 : GoInt), (0 : GoInt), (-1 : GoInt), (-1 : GoInt)) : Slice<GoInt>)[_i] <= (7 : GoInt);
    }, _i : (4 : GoInt) } : T__struct_1),
({ _name : (Go.str("descending 7") : GoString), _n : (1e+09 : GoInt), _f : function(_i:GoInt):Bool {
        return ((1e+09 : GoInt) - _i) <= (7 : GoInt);
    }, _i : (999999993 : GoInt) } : T__struct_1),
({ _name : (Go.str("overflow") : GoString), _n : (2e+09 : GoInt), _f : function(_i:GoInt):Bool {
        return false;
    }, _i : (2e+09 : GoInt) } : T__struct_1)) : Slice<T__struct_1>);
var _fdata : Slice<GoFloat64> = {
        var s:Slice<GoFloat64> = new Slice<GoFloat64>(0, 0, ...([for (i in 0 ... 5) 0]));
        s[0] = (-3.14 : GoFloat64);
        s[1] = (0 : GoFloat64);
        s[2] = (1 : GoFloat64);
        s[3] = (2 : GoFloat64);
        s[4] = (1000.7 : GoFloat64);
        s;
    };
var _sdata : Slice<GoString> = {
        var s:Slice<GoString> = new Slice<GoString>(0, 0, ...([for (i in 0 ... 4) ""]));
        s[0] = (Go.str("f") : GoString);
        s[1] = (Go.str("foo") : GoString);
        s[2] = (Go.str("foobar") : GoString);
        s[3] = (Go.str("x") : GoString);
        s;
    };
var _wrappertests : Slice<T__struct_3> = (new Slice<T__struct_3>(0, 0, ({ _name : (Go.str("SearchInts") : GoString), _result : searchInts(_data, (11 : GoInt)), _i : (8 : GoInt) } : T__struct_3), ({ _name : (Go.str("SearchFloat64s") : GoString), _result : searchFloat64s(_fdata, (2.1 : GoFloat64)), _i : (4 : GoInt) } : T__struct_3), ({ _name : (Go.str("SearchStrings") : GoString), _result : searchStrings(_sdata, (Go.str() : GoString)), _i : (0 : GoInt) } : T__struct_3), ({ _name : (Go.str("IntSlice.Search") : GoString), _result : (_data : IntSlice).search((0 : GoInt)), _i : (2 : GoInt) } : T__struct_3), ({ _name : (Go.str("Float64Slice.Search") : GoString), _result : (_fdata : Float64Slice).search((2 : GoFloat64)), _i : (3 : GoInt) } : T__struct_3), ({ _name : (Go.str("StringSlice.Search") : GoString), _result : (_sdata : StringSlice).search((Go.str("x") : GoString)), _i : (3 : GoInt) } : T__struct_3)) : Slice<T__struct_3>);
var _ints : GoArray<GoInt> = (new GoArray<GoInt>(
(74 : GoInt),
(59 : GoInt),
(238 : GoInt),
(-784 : GoInt),
(9845 : GoInt),
(959 : GoInt),
(905 : GoInt),
(0 : GoInt),
(0 : GoInt),
(42 : GoInt),
(7586 : GoInt),
(-5467984 : GoInt),
(7586 : GoInt)) : GoArray<GoInt>);
var _float64s : GoArray<GoFloat64> = (new GoArray<GoFloat64>(
(74.3 : GoFloat64),
(59 : GoFloat64),
stdgo.math.Math.inf((1 : GoInt)),
(238.2 : GoFloat64),
(-784 : GoFloat64),
(2.3 : GoFloat64),
stdgo.math.Math.naN(),
stdgo.math.Math.naN(),
stdgo.math.Math.inf((-1 : GoInt)),
(9845.768 : GoFloat64),
(-959.7485 : GoFloat64),
(905 : GoFloat64),
(7.8 : GoFloat64),
(7.8 : GoFloat64)) : GoArray<GoFloat64>);
var _strings : GoArray<GoString> = (new GoArray<GoString>((Go.str() : GoString), (Go.str("Hello") : GoString), (Go.str("foo") : GoString), (Go.str("bar") : GoString), (Go.str("foo") : GoString), (Go.str("f00") : GoString), (Go.str("%*&^*&^&") : GoString), (Go.str("***") : GoString)) : GoArray<GoString>);
var _countOpsSizes : Slice<GoInt> = (new Slice<GoInt>(
0,
0,
(100 : GoInt),
(300 : GoInt),
(1000 : GoInt),
(3000 : GoInt),
(10000 : GoInt),
(30000 : GoInt),
(100000 : GoInt),
(300000 : GoInt),
(1e+06 : GoInt)) : Slice<GoInt>);
@:structInit @:using(stdgo.sort_test.Sort_test.Person_static_extension) class Person {
    public var name : GoString = "";
    public var age : GoInt = 0;
    public function new(?name:GoString, ?age:GoInt) {
        if (name != null) this.name = name;
        if (age != null) this.age = age;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Person(name, age);
    }
}
@:structInit class Planet {
    public var _name : GoString = "";
    public var _mass : stdgo.sort_test.Sort_test.T_earthMass = ((0 : GoFloat64) : stdgo.sort_test.Sort_test.T_earthMass);
    public var _distance : stdgo.sort_test.Sort_test.T_au = ((0 : GoFloat64) : stdgo.sort_test.Sort_test.T_au);
    public function new(?_name:GoString, ?_mass:stdgo.sort_test.Sort_test.T_earthMass, ?_distance:stdgo.sort_test.Sort_test.T_au) {
        if (_name != null) this._name = _name;
        if (_mass != null) this._mass = _mass;
        if (_distance != null) this._distance = _distance;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Planet(_name, _mass, _distance);
    }
}
@:structInit @:using(stdgo.sort_test.Sort_test.T_planetSorter_static_extension) class T_planetSorter {
    public var _planets : Slice<stdgo.sort_test.Sort_test.Planet> = (null : Slice<stdgo.sort_test.Sort_test.Planet>);
    public var _by : (Ref<stdgo.sort_test.Sort_test.Planet>, Ref<stdgo.sort_test.Sort_test.Planet>) -> Bool = null;
    public function new(?_planets:Slice<stdgo.sort_test.Sort_test.Planet>, ?_by:(Ref<stdgo.sort_test.Sort_test.Planet>, Ref<stdgo.sort_test.Sort_test.Planet>) -> Bool) {
        if (_planets != null) this._planets = _planets;
        if (_by != null) this._by = _by;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_planetSorter(_planets, _by);
    }
}
@:structInit class Change {
    public var _user : GoString = "";
    public var _language : GoString = "";
    public var _lines : GoInt = 0;
    public function new(?_user:GoString, ?_language:GoString, ?_lines:GoInt) {
        if (_user != null) this._user = _user;
        if (_language != null) this._language = _language;
        if (_lines != null) this._lines = _lines;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Change(_user, _language, _lines);
    }
}
@:structInit @:using(stdgo.sort_test.Sort_test.T_multiSorter_static_extension) class T_multiSorter {
    public var _changes : Slice<stdgo.sort_test.Sort_test.Change> = (null : Slice<stdgo.sort_test.Sort_test.Change>);
    public var _less : Slice<stdgo.sort_test.Sort_test.T_lessFunc> = (null : Slice<stdgo.sort_test.Sort_test.T_lessFunc>);
    public function new(?_changes:Slice<stdgo.sort_test.Sort_test.Change>, ?_less:Slice<stdgo.sort_test.Sort_test.T_lessFunc>) {
        if (_changes != null) this._changes = _changes;
        if (_less != null) this._less = _less;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_multiSorter(_changes, _less);
    }
}
@:structInit class Organ {
    public var name : GoString = "";
    public var weight : stdgo.sort_test.Sort_test.Grams = ((0 : GoInt) : stdgo.sort_test.Sort_test.Grams);
    public function new(?name:GoString, ?weight:stdgo.sort_test.Sort_test.Grams) {
        if (name != null) this.name = name;
        if (weight != null) this.weight = weight;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Organ(name, weight);
    }
}
@:structInit @:using(stdgo.sort_test.Sort_test.ByName_static_extension) class ByName {
    @:embedded
    public var organs : stdgo.sort_test.Sort_test.Organs = new stdgo.sort_test.Sort_test.Organs();
    public function new(?organs:stdgo.sort_test.Sort_test.Organs) {
        if (organs != null) this.organs = organs;
    }
    @:embedded
    public function len():GoInt return organs.len();
    @:embedded
    public function swap(_i:GoInt, _j:GoInt) organs.swap(_i, _j);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ByName(organs);
    }
}
@:structInit @:using(stdgo.sort_test.Sort_test.ByWeight_static_extension) class ByWeight {
    @:embedded
    public var organs : stdgo.sort_test.Sort_test.Organs = new stdgo.sort_test.Sort_test.Organs();
    public function new(?organs:stdgo.sort_test.Sort_test.Organs) {
        if (organs != null) this.organs = organs;
    }
    @:embedded
    public function len():GoInt return organs.len();
    @:embedded
    public function swap(_i:GoInt, _j:GoInt) organs.swap(_i, _j);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ByWeight(organs);
    }
}
@:structInit @:using(stdgo.sort_test.Sort_test.T_nonDeterministicTestingData_static_extension) class T_nonDeterministicTestingData {
    public var _r : Ref<stdgo.math.rand.Rand.Rand> = (null : stdgo.math.rand.Rand.Rand);
    public function new(?_r:Ref<stdgo.math.rand.Rand.Rand>) {
        if (_r != null) this._r = _r;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_nonDeterministicTestingData(_r);
    }
}
@:structInit @:using(stdgo.sort_test.Sort_test.T_testingData_static_extension) class T_testingData {
    public var _desc : GoString = "";
    public var _t : Ref<stdgo.testing.Testing.T> = (null : stdgo.testing.Testing.T);
    public var _data : Slice<GoInt> = (null : Slice<GoInt>);
    public var _maxswap : GoInt = 0;
    public var _ncmp : GoInt = 0;
    public var _nswap : GoInt = 0;
    public function new(?_desc:GoString, ?_t:Ref<stdgo.testing.Testing.T>, ?_data:Slice<GoInt>, ?_maxswap:GoInt, ?_ncmp:GoInt, ?_nswap:GoInt) {
        if (_desc != null) this._desc = _desc;
        if (_t != null) this._t = _t;
        if (_data != null) this._data = _data;
        if (_maxswap != null) this._maxswap = _maxswap;
        if (_ncmp != null) this._ncmp = _ncmp;
        if (_nswap != null) this._nswap = _nswap;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_testingData(_desc, _t, _data, _maxswap, _ncmp, _nswap);
    }
}
@:structInit @:using(stdgo.sort_test.Sort_test.T_adversaryTestingData_static_extension) class T_adversaryTestingData {
    public var _t : Ref<stdgo.testing.Testing.T> = (null : stdgo.testing.Testing.T);
    public var _data : Slice<GoInt> = (null : Slice<GoInt>);
    public var _maxcmp : GoInt = 0;
    public var _ncmp : GoInt = 0;
    public var _nsolid : GoInt = 0;
    public var _candidate : GoInt = 0;
    public var _gas : GoInt = 0;
    public function new(?_t:Ref<stdgo.testing.Testing.T>, ?_data:Slice<GoInt>, ?_maxcmp:GoInt, ?_ncmp:GoInt, ?_nsolid:GoInt, ?_candidate:GoInt, ?_gas:GoInt) {
        if (_t != null) this._t = _t;
        if (_data != null) this._data = _data;
        if (_maxcmp != null) this._maxcmp = _maxcmp;
        if (_ncmp != null) this._ncmp = _ncmp;
        if (_nsolid != null) this._nsolid = _nsolid;
        if (_candidate != null) this._candidate = _candidate;
        if (_gas != null) this._gas = _gas;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_adversaryTestingData(_t, _data, _maxcmp, _ncmp, _nsolid, _candidate, _gas);
    }
}
@:local typedef T__struct_0 = {
    public var name : GoString;
    public var age : GoInt;
};
@:local typedef T__struct_1 = {
    public var _name : GoString;
    public var _n : GoInt;
    public var _f : GoInt -> Bool;
    public var _i : GoInt;
};
@:local typedef T__struct_2 = {
    public var _data : Slice<GoString>;
    public var _target : GoString;
    public var _wantPos : GoInt;
    public var _wantFound : Bool;
};
@:local typedef T__struct_3 = {
    public var _name : GoString;
    public var _result : GoInt;
    public var _i : GoInt;
};
@:local typedef T__struct_4 = {
    public var _a : GoInt;
    public var _b : GoInt;
};
@:named @:using(stdgo.sort_test.Sort_test.ByAge_static_extension) typedef ByAge = Slice<stdgo.sort_test.Sort_test.Person>;
@:named typedef T_earthMass = GoFloat64;
@:named typedef T_au = GoFloat64;
@:named @:using(stdgo.sort_test.Sort_test.By_static_extension) typedef By = (Ref<stdgo.sort_test.Sort_test.Planet>, Ref<stdgo.sort_test.Sort_test.Planet>) -> Bool;
@:named typedef T_lessFunc = (Ref<stdgo.sort_test.Sort_test.Change>, Ref<stdgo.sort_test.Sort_test.Change>) -> Bool;
@:named @:using(stdgo.sort_test.Sort_test.Grams_static_extension) typedef Grams = GoInt;
@:named @:using(stdgo.sort_test.Sort_test.Organs_static_extension) typedef Organs = Slice<Ref<stdgo.sort_test.Sort_test.Organ>>;
@:named @:using(stdgo.sort_test.Sort_test.T_intPairs_static_extension) typedef T_intPairs = Slice<T__struct_4>;
function example():Void {
        var _people = (new Slice<stdgo.sort_test.Sort_test.Person>(0, 0, (new stdgo.sort_test.Sort_test.Person((Go.str("Bob") : GoString), (31 : GoInt)) : stdgo.sort_test.Sort_test.Person), (new stdgo.sort_test.Sort_test.Person((Go.str("John") : GoString), (42 : GoInt)) : stdgo.sort_test.Sort_test.Person), (new stdgo.sort_test.Sort_test.Person((Go.str("Michael") : GoString), (17 : GoInt)) : stdgo.sort_test.Sort_test.Person), (new stdgo.sort_test.Sort_test.Person((Go.str("Jenny") : GoString), (26 : GoInt)) : stdgo.sort_test.Sort_test.Person)) : Slice<stdgo.sort_test.Sort_test.Person>);
        stdgo.fmt.Fmt.println(_people);
        stdgo.sort.Sort.sort({
            final __self__ = new stdgo.sort_test.Sort_test.ByAge_wrapper((_people : ByAge));
            __self__.len = #if !macro function():GoInt return (_people : ByAge).len() #else null #end;
            __self__.less = #if !macro function(_i:GoInt, _j:GoInt):Bool return (_people : ByAge).less(_i, _j) #else null #end;
            __self__.swap = #if !macro function(_i:GoInt, _j:GoInt):Void (_people : ByAge).swap(_i, _j) #else null #end;
            __self__;
        });
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
        var _name = function(_p1:Planet, _p2:Planet):Bool {
            return _p1._name < _p2._name;
        };
        var _mass = function(_p1:Planet, _p2:Planet):Bool {
            return _p1._mass < _p2._mass;
        };
        var _distance = function(_p1:Planet, _p2:Planet):Bool {
            return _p1._distance < _p2._distance;
        };
        var _decreasingDistance = function(_p1:Planet, _p2:Planet):Bool {
            return _distance(_p2, _p1);
        };
        (_name : By).sort(_planets);
        stdgo.fmt.Fmt.println((Go.str("By name:") : GoString), _planets);
        (_mass : By).sort(_planets);
        stdgo.fmt.Fmt.println((Go.str("By mass:") : GoString), _planets);
        (_distance : By).sort(_planets);
        stdgo.fmt.Fmt.println((Go.str("By distance:") : GoString), _planets);
        (_decreasingDistance : By).sort(_planets);
        stdgo.fmt.Fmt.println((Go.str("By decreasing distance:") : GoString), _planets);
    }
/**
    // OrderedBy returns a Sorter that sorts using the less functions, in order.
    // Call its Sort method to sort the data.
**/
function orderedBy(_less:haxe.Rest<T_lessFunc>):T_multiSorter {
        var _less = new Slice<T_lessFunc>(0, 0, ..._less);
        return ({ _less : _less } : stdgo.sort_test.Sort_test.T_multiSorter);
    }
/**
    // ExampleMultiKeys demonstrates a technique for sorting a struct type using different
    // sets of multiple fields in the comparison. We chain together "Less" functions, each of
    // which compares a single field.
**/
function example_sortMultiKeys():Void {
        var _user = function(_c1:Change, _c2:Change):Bool {
            return _c1._user < _c2._user;
        };
        var _language = function(_c1:Change, _c2:Change):Bool {
            return _c1._language < _c2._language;
        };
        var _increasingLines = function(_c1:Change, _c2:Change):Bool {
            return _c1._lines < _c2._lines;
        };
        var _decreasingLines = function(_c1:Change, _c2:Change):Bool {
            return _c1._lines > _c2._lines;
        };
        orderedBy(_user).sort(_changes);
        stdgo.fmt.Fmt.println((Go.str("By user:") : GoString), _changes);
        orderedBy(_user, _increasingLines).sort(_changes);
        stdgo.fmt.Fmt.println((Go.str("By user,<lines:") : GoString), _changes);
        orderedBy(_user, _decreasingLines).sort(_changes);
        stdgo.fmt.Fmt.println((Go.str("By user,>lines:") : GoString), _changes);
        orderedBy(_language, _increasingLines).sort(_changes);
        stdgo.fmt.Fmt.println((Go.str("By language,<lines:") : GoString), _changes);
        orderedBy(_language, _increasingLines, _user).sort(_changes);
        stdgo.fmt.Fmt.println((Go.str("By language,<lines,user:") : GoString), _changes);
    }
/**
    // This example demonstrates searching a list sorted in ascending order.
**/
function exampleSearch():Void {
        var _a = (new Slice<GoInt>(
0,
0,
(1 : GoInt),
(3 : GoInt),
(6 : GoInt),
(10 : GoInt),
(15 : GoInt),
(21 : GoInt),
(28 : GoInt),
(36 : GoInt),
(45 : GoInt),
(55 : GoInt)) : Slice<GoInt>);
        var _x:GoInt = (6 : GoInt);
        var _i:GoInt = stdgo.sort.Sort.search((_a.length), function(_i:GoInt):Bool {
            return _a[_i] >= _x;
        });
        if ((_i < _a.length) && (_a[_i] == _x)) {
            stdgo.fmt.Fmt.printf((Go.str("found %d at index %d in %v\n") : GoString), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
        } else {
            stdgo.fmt.Fmt.printf((Go.str("%d not found in %v\n") : GoString), Go.toInterface(_x), Go.toInterface(_a));
        };
    }
/**
    // This example demonstrates searching a list sorted in descending order.
    // The approach is the same as searching a list in ascending order,
    // but with the condition inverted.
**/
function exampleSearch_descendingOrder():Void {
        var _a = (new Slice<GoInt>(
0,
0,
(55 : GoInt),
(45 : GoInt),
(36 : GoInt),
(28 : GoInt),
(21 : GoInt),
(15 : GoInt),
(10 : GoInt),
(6 : GoInt),
(3 : GoInt),
(1 : GoInt)) : Slice<GoInt>);
        var _x:GoInt = (6 : GoInt);
        var _i:GoInt = stdgo.sort.Sort.search((_a.length), function(_i:GoInt):Bool {
            return _a[_i] <= _x;
        });
        if ((_i < _a.length) && (_a[_i] == _x)) {
            stdgo.fmt.Fmt.printf((Go.str("found %d at index %d in %v\n") : GoString), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
        } else {
            stdgo.fmt.Fmt.printf((Go.str("%d not found in %v\n") : GoString), Go.toInterface(_x), Go.toInterface(_a));
        };
    }
/**
    // This example demonstrates searching for float64 in a list sorted in ascending order.
**/
function exampleSearchFloat64s():Void {
        var _a = (new Slice<GoFloat64>(0, 0, (1 : GoFloat64), (2 : GoFloat64), (3.3 : GoFloat64), (4.6 : GoFloat64), (6.1 : GoFloat64), (7.2 : GoFloat64), (8 : GoFloat64)) : Slice<GoFloat64>);
        var _x:GoFloat64 = (2 : GoFloat64);
        var _i:GoInt = stdgo.sort.Sort.searchFloat64s(_a, _x);
        stdgo.fmt.Fmt.printf((Go.str("found %g at index %d in %v\n") : GoString), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
        _x = (0.5 : GoFloat64);
        _i = stdgo.sort.Sort.searchFloat64s(_a, _x);
        stdgo.fmt.Fmt.printf((Go.str("%g not found, can be inserted at index %d in %v\n") : GoString), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
    }
/**
    // This example demonstrates searching for int in a list sorted in ascending order.
**/
function exampleSearchInts():Void {
        var _a = (new Slice<GoInt>(0, 0, (1 : GoInt), (2 : GoInt), (3 : GoInt), (4 : GoInt), (6 : GoInt), (7 : GoInt), (8 : GoInt)) : Slice<GoInt>);
        var _x:GoInt = (2 : GoInt);
        var _i:GoInt = stdgo.sort.Sort.searchInts(_a, _x);
        stdgo.fmt.Fmt.printf((Go.str("found %d at index %d in %v\n") : GoString), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
        _x = (5 : GoInt);
        _i = stdgo.sort.Sort.searchInts(_a, _x);
        stdgo.fmt.Fmt.printf((Go.str("%d not found, can be inserted at index %d in %v\n") : GoString), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
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
        _s = (new Slice<GoFloat64>(0, 0, stdgo.math.Math.inf((1 : GoInt)), stdgo.math.Math.naN(), stdgo.math.Math.inf((-1 : GoInt)), (0 : GoFloat64)) : Slice<GoFloat64>);
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
        stdgo.sort.Sort.sort(stdgo.sort.Sort.reverse({
            final __self__ = new IntSlice_wrapper((_s : IntSlice));
            __self__.len = #if !macro function():GoInt return (_s : IntSlice).len() #else null #end;
            __self__.less = #if !macro function(_i:GoInt, _j:GoInt):Bool return (_s : IntSlice).less(_i, _j) #else null #end;
            __self__.search = #if !macro function(__0:GoInt):GoInt return (_s : IntSlice).search(__0) #else null #end;
            __self__.sort = #if !macro function():Void (_s : IntSlice).sort() #else null #end;
            __self__.swap = #if !macro function(_i:GoInt, _j:GoInt):Void (_s : IntSlice).swap(_i, _j) #else null #end;
            __self__;
        }));
        stdgo.fmt.Fmt.println(_s);
    }
function exampleSlice():Void {
        var _people = (new Slice<Person>(0, 0, (new Person((Go.str("Gopher") : GoString), (7 : GoInt)) : Person), (new Person((Go.str("Alice") : GoString), (55 : GoInt)) : Person), (new Person((Go.str("Vera") : GoString), (24 : GoInt)) : Person), (new Person((Go.str("Bob") : GoString), (75 : GoInt)) : Person)) : Slice<Person>);
        stdgo.sort.Sort.slice(Go.toInterface(_people), function(_i:GoInt, _j:GoInt):Bool {
            return _people[_i].name < _people[_j].name;
        });
        stdgo.fmt.Fmt.println((Go.str("By name:") : GoString), _people);
        stdgo.sort.Sort.slice(Go.toInterface(_people), function(_i:GoInt, _j:GoInt):Bool {
            return _people[_i].age < _people[_j].age;
        });
        stdgo.fmt.Fmt.println((Go.str("By age:") : GoString), _people);
    }
function exampleSliceStable():Void {
        var _people = (new Slice<Person>(0, 0, (new Person((Go.str("Alice") : GoString), (25 : GoInt)) : Person), (new Person((Go.str("Elizabeth") : GoString), (75 : GoInt)) : Person), (new Person((Go.str("Alice") : GoString), (75 : GoInt)) : Person), (new Person((Go.str("Bob") : GoString), (75 : GoInt)) : Person), (new Person((Go.str("Alice") : GoString), (75 : GoInt)) : Person), (new Person((Go.str("Bob") : GoString), (25 : GoInt)) : Person), (new Person((Go.str("Colin") : GoString), (25 : GoInt)) : Person), (new Person((Go.str("Elizabeth") : GoString), (25 : GoInt)) : Person)) : Slice<Person>);
        stdgo.sort.Sort.sliceStable(Go.toInterface(_people), function(_i:GoInt, _j:GoInt):Bool {
            return _people[_i].name < _people[_j].name;
        });
        stdgo.fmt.Fmt.println((Go.str("By name:") : GoString), _people);
        stdgo.sort.Sort.sliceStable(Go.toInterface(_people), function(_i:GoInt, _j:GoInt):Bool {
            return _people[_i].age < _people[_j].age;
        });
        stdgo.fmt.Fmt.println((Go.str("By age,name:") : GoString), _people);
    }
function exampleStrings():Void {
        var _s = (new Slice<GoString>(0, 0, (Go.str("Go") : GoString), (Go.str("Bravo") : GoString), (Go.str("Gopher") : GoString), (Go.str("Alpha") : GoString), (Go.str("Grin") : GoString), (Go.str("Delta") : GoString)) : Slice<GoString>);
        stdgo.sort.Sort.strings(_s);
        stdgo.fmt.Fmt.println(_s);
    }
function example_sortWrapper():Void {
        var _s = (new Slice<Ref>(0, 0, new Ref((Go.str("brain") : GoString), (1340 : stdgo.sort_test.Sort_test.Grams)), (new Ref((Go.str("heart") : GoString), (290 : stdgo.sort_test.Sort_test.Grams)) : Ref), (new Ref((Go.str("liver") : GoString), (1494 : stdgo.sort_test.Sort_test.Grams)) : Ref), (new Ref((Go.str("pancreas") : GoString), (131 : stdgo.sort_test.Sort_test.Grams)) : Ref), (new Ref((Go.str("prostate") : GoString), (62 : stdgo.sort_test.Sort_test.Grams)) : Ref), (new Ref((Go.str("spleen") : GoString), (162 : stdgo.sort_test.Sort_test.Grams)) : Ref)) : Slice<Ref>);
        stdgo.sort.Sort.sort({
            final __self__ = new stdgo.sort_test.Sort_test.ByWeight_wrapper((new stdgo.sort_test.Sort_test.ByWeight(_s) : stdgo.sort_test.Sort_test.ByWeight));
            __self__.len = #if !macro function():GoInt return (new stdgo.sort_test.Sort_test.ByWeight(_s) : stdgo.sort_test.Sort_test.ByWeight).len() #else null #end;
            __self__.less = #if !macro function(_i:GoInt, _j:GoInt):Bool return (new stdgo.sort_test.Sort_test.ByWeight(_s) : stdgo.sort_test.Sort_test.ByWeight).less(_i, _j) #else null #end;
            __self__.swap = #if !macro function(_i:GoInt, _j:GoInt):Void (new stdgo.sort_test.Sort_test.ByWeight(_s) : stdgo.sort_test.Sort_test.ByWeight).swap(_i, _j) #else null #end;
            __self__;
        });
        stdgo.fmt.Fmt.println((Go.str("Organs by weight:") : GoString));
        _printOrgans(_s);
        stdgo.sort.Sort.sort({
            final __self__ = new stdgo.sort_test.Sort_test.ByName_wrapper((new stdgo.sort_test.Sort_test.ByName(_s) : stdgo.sort_test.Sort_test.ByName));
            __self__.len = #if !macro function():GoInt return (new stdgo.sort_test.Sort_test.ByName(_s) : stdgo.sort_test.Sort_test.ByName).len() #else null #end;
            __self__.less = #if !macro function(_i:GoInt, _j:GoInt):Bool return (new stdgo.sort_test.Sort_test.ByName(_s) : stdgo.sort_test.Sort_test.ByName).less(_i, _j) #else null #end;
            __self__.swap = #if !macro function(_i:GoInt, _j:GoInt):Void (new stdgo.sort_test.Sort_test.ByName(_s) : stdgo.sort_test.Sort_test.ByName).swap(_i, _j) #else null #end;
            __self__;
        });
        stdgo.fmt.Fmt.println((Go.str("Organs by name:") : GoString));
        _printOrgans(_s);
    }
function _printOrgans(_s:Slice<Organ>):Void {
        for (_0 => _o in _s) {
            stdgo.fmt.Fmt.printf((Go.str("%-8s (%v)\n") : GoString), Go.toInterface(_o.name), Go.toInterface({
                final __self__ = new stdgo.sort_test.Sort_test.Grams_wrapper(_o.weight);
                __self__.string = #if !macro function():GoString return _o.weight.string() #else null #end;
                __self__;
            }));
        };
    }
function _f(_a:Slice<GoInt>, _x:GoInt):GoInt -> Bool {
        return function(_i:GoInt):Bool {
            return _a[_i] >= _x;
        };
    }
function testSearch(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _e in _tests) {
            var _i:GoInt = search(_e._n, _e._f);
            if (_i != _e._i) {
                _t.errorf((Go.str("%s: expected index %d; got %d") : GoString), Go.toInterface(_e._name), Go.toInterface(_e._i), Go.toInterface(_i));
            };
        };
    }
function testFind(_t:stdgo.testing.Testing.T):Void {
        var _str1 = (new Slice<GoString>(0, 0, (Go.str("foo") : GoString)) : Slice<GoString>);
        var _str2 = (new Slice<GoString>(0, 0, (Go.str("ab") : GoString), (Go.str("ca") : GoString)) : Slice<GoString>);
        var _str3 = (new Slice<GoString>(0, 0, (Go.str("mo") : GoString), (Go.str("qo") : GoString), (Go.str("vo") : GoString)) : Slice<GoString>);
        var _str4 = (new Slice<GoString>(0, 0, (Go.str("ab") : GoString), (Go.str("ad") : GoString), (Go.str("ca") : GoString), (Go.str("xy") : GoString)) : Slice<GoString>);
        var _strRepeats = (new Slice<GoString>(
0,
0,
(Go.str("ba") : GoString),
(Go.str("ca") : GoString),
(Go.str("da") : GoString),
(Go.str("da") : GoString),
(Go.str("da") : GoString),
(Go.str("ka") : GoString),
(Go.str("ma") : GoString),
(Go.str("ma") : GoString),
(Go.str("ta") : GoString)) : Slice<GoString>);
        var _strSame = (new Slice<GoString>(0, 0, (Go.str("xx") : GoString), (Go.str("xx") : GoString), (Go.str("xx") : GoString)) : Slice<GoString>);
        var _tests = (new Slice<T__struct_2>(
0,
0,
({ _data : (new Slice<GoString>(0, 0) : Slice<GoString>), _target : (Go.str("foo") : GoString), _wantPos : (0 : GoInt), _wantFound : false } : T__struct_2),
({ _data : (new Slice<GoString>(0, 0) : Slice<GoString>), _target : (Go.str() : GoString), _wantPos : (0 : GoInt), _wantFound : false } : T__struct_2),
({ _data : _str1, _target : (Go.str("foo") : GoString), _wantPos : (0 : GoInt), _wantFound : true } : T__struct_2),
({ _data : _str1, _target : (Go.str("bar") : GoString), _wantPos : (0 : GoInt), _wantFound : false } : T__struct_2),
({ _data : _str1, _target : (Go.str("zx") : GoString), _wantPos : (1 : GoInt), _wantFound : false } : T__struct_2),
({ _data : _str2, _target : (Go.str("aa") : GoString), _wantPos : (0 : GoInt), _wantFound : false } : T__struct_2),
({ _data : _str2, _target : (Go.str("ab") : GoString), _wantPos : (0 : GoInt), _wantFound : true } : T__struct_2),
({ _data : _str2, _target : (Go.str("ad") : GoString), _wantPos : (1 : GoInt), _wantFound : false } : T__struct_2),
({ _data : _str2, _target : (Go.str("ca") : GoString), _wantPos : (1 : GoInt), _wantFound : true } : T__struct_2),
({ _data : _str2, _target : (Go.str("ra") : GoString), _wantPos : (2 : GoInt), _wantFound : false } : T__struct_2),
({ _data : _str3, _target : (Go.str("bb") : GoString), _wantPos : (0 : GoInt), _wantFound : false } : T__struct_2),
({ _data : _str3, _target : (Go.str("mo") : GoString), _wantPos : (0 : GoInt), _wantFound : true } : T__struct_2),
({ _data : _str3, _target : (Go.str("nb") : GoString), _wantPos : (1 : GoInt), _wantFound : false } : T__struct_2),
({ _data : _str3, _target : (Go.str("qo") : GoString), _wantPos : (1 : GoInt), _wantFound : true } : T__struct_2),
({ _data : _str3, _target : (Go.str("tr") : GoString), _wantPos : (2 : GoInt), _wantFound : false } : T__struct_2),
({ _data : _str3, _target : (Go.str("vo") : GoString), _wantPos : (2 : GoInt), _wantFound : true } : T__struct_2),
({ _data : _str3, _target : (Go.str("xr") : GoString), _wantPos : (3 : GoInt), _wantFound : false } : T__struct_2),
({ _data : _str4, _target : (Go.str("aa") : GoString), _wantPos : (0 : GoInt), _wantFound : false } : T__struct_2),
({ _data : _str4, _target : (Go.str("ab") : GoString), _wantPos : (0 : GoInt), _wantFound : true } : T__struct_2),
({ _data : _str4, _target : (Go.str("ac") : GoString), _wantPos : (1 : GoInt), _wantFound : false } : T__struct_2),
({ _data : _str4, _target : (Go.str("ad") : GoString), _wantPos : (1 : GoInt), _wantFound : true } : T__struct_2),
({ _data : _str4, _target : (Go.str("ax") : GoString), _wantPos : (2 : GoInt), _wantFound : false } : T__struct_2),
({ _data : _str4, _target : (Go.str("ca") : GoString), _wantPos : (2 : GoInt), _wantFound : true } : T__struct_2),
({ _data : _str4, _target : (Go.str("cc") : GoString), _wantPos : (3 : GoInt), _wantFound : false } : T__struct_2),
({ _data : _str4, _target : (Go.str("dd") : GoString), _wantPos : (3 : GoInt), _wantFound : false } : T__struct_2),
({ _data : _str4, _target : (Go.str("xy") : GoString), _wantPos : (3 : GoInt), _wantFound : true } : T__struct_2),
({ _data : _str4, _target : (Go.str("zz") : GoString), _wantPos : (4 : GoInt), _wantFound : false } : T__struct_2),
({ _data : _strRepeats, _target : (Go.str("da") : GoString), _wantPos : (2 : GoInt), _wantFound : true } : T__struct_2),
({ _data : _strRepeats, _target : (Go.str("db") : GoString), _wantPos : (5 : GoInt), _wantFound : false } : T__struct_2),
({ _data : _strRepeats, _target : (Go.str("ma") : GoString), _wantPos : (6 : GoInt), _wantFound : true } : T__struct_2),
({ _data : _strRepeats, _target : (Go.str("mb") : GoString), _wantPos : (8 : GoInt), _wantFound : false } : T__struct_2),
({ _data : _strSame, _target : (Go.str("xx") : GoString), _wantPos : (0 : GoInt), _wantFound : true } : T__struct_2),
({ _data : _strSame, _target : (Go.str("ab") : GoString), _wantPos : (0 : GoInt), _wantFound : false } : T__struct_2),
({ _data : _strSame, _target : (Go.str("zz") : GoString), _wantPos : (3 : GoInt), _wantFound : false } : T__struct_2)) : Slice<T__struct_2>);
        for (_0 => _tt in _tests) {
            _t.run(_tt._target, function(_t:stdgo.testing.Testing.T):Void {
                var _cmp:GoInt -> GoInt = function(_i:GoInt):GoInt {
                    return stdgo.strings.Strings.compare(_tt._target, _tt._data[_i]);
                };
                var __tmp__ = find((_tt._data.length), _cmp), _pos:GoInt = __tmp__._0, _found:Bool = __tmp__._1;
                if ((_pos != _tt._wantPos) || (_found != _tt._wantFound)) {
                    _t.errorf((Go.str("Find got (%v, %v), want (%v, %v)") : GoString), Go.toInterface(_pos), Go.toInterface(_found), Go.toInterface(_tt._wantPos), Go.toInterface(_tt._wantFound));
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
function testSearchEfficiency(_t:stdgo.testing.Testing.T):Void {
        var _n:GoInt = (100 : GoInt);
        var _step:GoInt = (1 : GoInt);
        {
            var _exp:GoInt = (2 : GoInt);
            Go.cfor(_exp < (10 : GoInt), _exp++, {
                var _max:GoInt = _log2(_n);
                {
                    var _x:GoInt = (0 : GoInt);
                    Go.cfor(_x < _n, _x = _x + (_step), {
                        var _count:GoInt = (0 : GoInt);
                        var _i:GoInt = search(_n, function(_i:GoInt):Bool {
                            _count++;
                            return _i >= _x;
                        });
                        if (_i != _x) {
                            _t.errorf((Go.str("n = %d: expected index %d; got %d") : GoString), Go.toInterface(_n), Go.toInterface(_x), Go.toInterface(_i));
                        };
                        if (_count > _max) {
                            _t.errorf((Go.str("n = %d, x = %d: expected <= %d calls; got %d") : GoString), Go.toInterface(_n), Go.toInterface(_x), Go.toInterface(_max), Go.toInterface(_count));
                        };
                    });
                };
                _n = _n * ((10 : GoInt));
                _step = _step * ((10 : GoInt));
            });
        };
    }
function testSearchWrappers(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _e in _wrappertests) {
            if (_e._result != _e._i) {
                _t.errorf((Go.str("%s: expected index %d; got %d") : GoString), Go.toInterface(_e._name), Go.toInterface(_e._i), Go.toInterface(_e._result));
            };
        };
    }
function _runSearchWrappers():Void {
        searchInts(_data, (11 : GoInt));
        searchFloat64s(_fdata, (2.1 : GoFloat64));
        searchStrings(_sdata, (Go.str() : GoString));
        (_data : IntSlice).search((0 : GoInt));
        (_fdata : Float64Slice).search((2 : GoFloat64));
        (_sdata : StringSlice).search((Go.str("x") : GoString));
    }
function testSearchWrappersDontAlloc(_t:stdgo.testing.Testing.T):Void {
        if (stdgo.testing.Testing.short()) {
            _t.skip(Go.toInterface((Go.str("skipping malloc count in short mode") : GoString)));
        };
        if (stdgo.runtime.Runtime.gomaxprocs((0 : GoInt)) > (1 : GoInt)) {
            _t.skip(Go.toInterface((Go.str("skipping; GOMAXPROCS>1") : GoString)));
        };
        var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : GoInt), _runSearchWrappers);
        if (_allocs != (0 : GoFloat64)) {
            _t.errorf((Go.str("expected no allocs for runSearchWrappers, got %v") : GoString), Go.toInterface(_allocs));
        };
    }
function benchmarkSearchWrappers(_b:stdgo.testing.Testing.B):Void {
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
function testSearchExhaustive(_t:stdgo.testing.Testing.T):Void {
        {
            var _size:GoInt = (0 : GoInt);
            Go.cfor(_size <= (100 : GoInt), _size++, {
                {
                    var _targ:GoInt = (0 : GoInt);
                    Go.cfor(_targ <= _size, _targ++, {
                        var _i:GoInt = search(_size, function(_i:GoInt):Bool {
                            return _i >= _targ;
                        });
                        if (_i != _targ) {
                            _t.errorf((Go.str("Search(%d, %d) = %d") : GoString), Go.toInterface(_size), Go.toInterface(_targ), Go.toInterface(_i));
                        };
                    });
                };
            });
        };
    }
/**
    // Abstract exhaustive test for Find.
**/
function testFindExhaustive(_t:stdgo.testing.Testing.T):Void {
        {
            var _size:GoInt = (0 : GoInt);
            Go.cfor(_size <= (100 : GoInt), _size++, {
                {
                    var _x:GoInt = (1 : GoInt);
                    Go.cfor(_x <= (_size * (2 : GoInt) + (1 : GoInt)), _x++, {
                        var _wantFound:Bool = false;
                        var _wantPos:GoInt = (0 : GoInt);
                        var _cmp:GoInt -> GoInt = function(_i:GoInt):GoInt {
                            return _x - (_i + (1 : GoInt) * (2 : GoInt));
                        };
                        var __tmp__ = find(_size, _cmp), _pos:GoInt = __tmp__._0, _found:Bool = __tmp__._1;
                        if ((_x % (2 : GoInt)) == (0 : GoInt)) {
                            _wantPos = (_x / (2 : GoInt)) - (1 : GoInt);
                            _wantFound = true;
                        } else {
                            _wantPos = _x / (2 : GoInt);
                            _wantFound = false;
                        };
                        if ((_found != _wantFound) || (_pos != _wantPos)) {
                            _t.errorf((Go.str("Find(%d, %d): got (%v, %v), want (%v, %v)") : GoString), Go.toInterface(_size), Go.toInterface(_x), Go.toInterface(_pos), Go.toInterface(_found), Go.toInterface(_wantPos), Go.toInterface(_wantFound));
                        };
                    });
                };
            });
        };
    }
function testSortIntSlice(_t:stdgo.testing.Testing.T):Void {
        var _data = (_ints == null ? null : _ints.__copy__());
        var _a:IntSlice = ((_data.__slice__((0 : GoInt)) : Slice<GoInt>) : IntSlice);
        sort({
            final __self__ = new IntSlice_wrapper(_a);
            __self__.len = #if !macro function():GoInt return _a.len() #else null #end;
            __self__.less = #if !macro function(_i:GoInt, _j:GoInt):Bool return _a.less(_i, _j) #else null #end;
            __self__.search = #if !macro function(__0:GoInt):GoInt return _a.search(__0) #else null #end;
            __self__.sort = #if !macro function():Void _a.sort() #else null #end;
            __self__.swap = #if !macro function(_i:GoInt, _j:GoInt):Void _a.swap(_i, _j) #else null #end;
            __self__;
        });
        if (!isSorted({
            final __self__ = new IntSlice_wrapper(_a);
            __self__.len = #if !macro function():GoInt return _a.len() #else null #end;
            __self__.less = #if !macro function(_i:GoInt, _j:GoInt):Bool return _a.less(_i, _j) #else null #end;
            __self__.search = #if !macro function(__0:GoInt):GoInt return _a.search(__0) #else null #end;
            __self__.sort = #if !macro function():Void _a.sort() #else null #end;
            __self__.swap = #if !macro function(_i:GoInt, _j:GoInt):Void _a.swap(_i, _j) #else null #end;
            __self__;
        })) {
            _t.errorf((Go.str("sorted %v") : GoString), Go.toInterface(_ints));
            _t.errorf((Go.str("   got %v") : GoString), Go.toInterface(_data));
        };
    }
function testSortFloat64Slice(_t:stdgo.testing.Testing.T):Void {
        var _data = (_float64s == null ? null : _float64s.__copy__());
        var _a:Float64Slice = ((_data.__slice__((0 : GoInt)) : Slice<GoFloat64>) : Float64Slice);
        sort({
            final __self__ = new Float64Slice_wrapper(_a);
            __self__.len = #if !macro function():GoInt return _a.len() #else null #end;
            __self__.less = #if !macro function(_i:GoInt, _j:GoInt):Bool return _a.less(_i, _j) #else null #end;
            __self__.search = #if !macro function(_x:GoFloat64):GoInt return _a.search(_x) #else null #end;
            __self__.sort = #if !macro function():Void _a.sort() #else null #end;
            __self__.swap = #if !macro function(_i:GoInt, _j:GoInt):Void _a.swap(_i, _j) #else null #end;
            __self__;
        });
        if (!isSorted({
            final __self__ = new Float64Slice_wrapper(_a);
            __self__.len = #if !macro function():GoInt return _a.len() #else null #end;
            __self__.less = #if !macro function(_i:GoInt, _j:GoInt):Bool return _a.less(_i, _j) #else null #end;
            __self__.search = #if !macro function(_x:GoFloat64):GoInt return _a.search(_x) #else null #end;
            __self__.sort = #if !macro function():Void _a.sort() #else null #end;
            __self__.swap = #if !macro function(_i:GoInt, _j:GoInt):Void _a.swap(_i, _j) #else null #end;
            __self__;
        })) {
            _t.errorf((Go.str("sorted %v") : GoString), Go.toInterface(_float64s));
            _t.errorf((Go.str("   got %v") : GoString), Go.toInterface(_data));
        };
    }
function testSortStringSlice(_t:stdgo.testing.Testing.T):Void {
        var _data = (_strings == null ? null : _strings.__copy__());
        var _a:StringSlice = ((_data.__slice__((0 : GoInt)) : Slice<GoString>) : StringSlice);
        sort({
            final __self__ = new StringSlice_wrapper(_a);
            __self__.len = #if !macro function():GoInt return _a.len() #else null #end;
            __self__.less = #if !macro function(_i:GoInt, _j:GoInt):Bool return _a.less(_i, _j) #else null #end;
            __self__.search = #if !macro function(_x:GoString):GoInt return _a.search(_x) #else null #end;
            __self__.sort = #if !macro function():Void _a.sort() #else null #end;
            __self__.swap = #if !macro function(_i:GoInt, _j:GoInt):Void _a.swap(_i, _j) #else null #end;
            __self__;
        });
        if (!isSorted({
            final __self__ = new StringSlice_wrapper(_a);
            __self__.len = #if !macro function():GoInt return _a.len() #else null #end;
            __self__.less = #if !macro function(_i:GoInt, _j:GoInt):Bool return _a.less(_i, _j) #else null #end;
            __self__.search = #if !macro function(_x:GoString):GoInt return _a.search(_x) #else null #end;
            __self__.sort = #if !macro function():Void _a.sort() #else null #end;
            __self__.swap = #if !macro function(_i:GoInt, _j:GoInt):Void _a.swap(_i, _j) #else null #end;
            __self__;
        })) {
            _t.errorf((Go.str("sorted %v") : GoString), Go.toInterface(_strings));
            _t.errorf((Go.str("   got %v") : GoString), Go.toInterface(_data));
        };
    }
function testInts(_t:stdgo.testing.Testing.T):Void {
        var _data = (_ints == null ? null : _ints.__copy__());
        ints((_data.__slice__((0 : GoInt)) : Slice<GoInt>));
        if (!intsAreSorted((_data.__slice__((0 : GoInt)) : Slice<GoInt>))) {
            _t.errorf((Go.str("sorted %v") : GoString), Go.toInterface(_ints));
            _t.errorf((Go.str("   got %v") : GoString), Go.toInterface(_data));
        };
    }
function testFloat64s(_t:stdgo.testing.Testing.T):Void {
        var _data = (_float64s == null ? null : _float64s.__copy__());
        float64s((_data.__slice__((0 : GoInt)) : Slice<GoFloat64>));
        if (!float64sAreSorted((_data.__slice__((0 : GoInt)) : Slice<GoFloat64>))) {
            _t.errorf((Go.str("sorted %v") : GoString), Go.toInterface(_float64s));
            _t.errorf((Go.str("   got %v") : GoString), Go.toInterface(_data));
        };
    }
function testStrings(_t:stdgo.testing.Testing.T):Void {
        var _data = (_strings == null ? null : _strings.__copy__());
        strings((_data.__slice__((0 : GoInt)) : Slice<GoString>));
        if (!stringsAreSorted((_data.__slice__((0 : GoInt)) : Slice<GoString>))) {
            _t.errorf((Go.str("sorted %v") : GoString), Go.toInterface(_strings));
            _t.errorf((Go.str("   got %v") : GoString), Go.toInterface(_data));
        };
    }
function testSlice(_t:stdgo.testing.Testing.T):Void {
        var _data = (_strings == null ? null : _strings.__copy__());
        slice(Go.toInterface((_data.__slice__(0) : Slice<GoString>)), function(_i:GoInt, _j:GoInt):Bool {
            return _data[_i] < _data[_j];
        });
        if (!sliceIsSorted(Go.toInterface((_data.__slice__(0) : Slice<GoString>)), function(_i:GoInt, _j:GoInt):Bool {
            return _data[_i] < _data[_j];
        })) {
            _t.errorf((Go.str("sorted %v") : GoString), Go.toInterface(_strings));
            _t.errorf((Go.str("   got %v") : GoString), Go.toInterface(_data));
        };
    }
function testSortLarge_Random(_t:stdgo.testing.Testing.T):Void {
        var _n:GoInt = (1000000 : GoInt);
        if (stdgo.testing.Testing.short()) {
            _n = _n / ((100 : GoInt));
        };
        var _data = new Slice<GoInt>((_n : GoInt).toBasic(), 0, ...[for (i in 0 ... (_n : GoInt).toBasic()) (0 : GoInt)]);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_data.length), _i++, {
                _data[_i] = stdgo.math.rand.Rand.intn((100 : GoInt));
            });
        };
        if (intsAreSorted(_data)) {
            _t.fatalf((Go.str("terrible rand.rand") : GoString));
        };
        ints(_data);
        if (!intsAreSorted(_data)) {
            _t.errorf((Go.str("sort didn\'t sort - 1M ints") : GoString));
        };
    }
function testReverseSortIntSlice(_t:stdgo.testing.Testing.T):Void {
        var _data = (_ints == null ? null : _ints.__copy__());
        var _data1 = (_ints == null ? null : _ints.__copy__());
        var _a:IntSlice = ((_data.__slice__((0 : GoInt)) : Slice<GoInt>) : IntSlice);
        sort({
            final __self__ = new IntSlice_wrapper(_a);
            __self__.len = #if !macro function():GoInt return _a.len() #else null #end;
            __self__.less = #if !macro function(_i:GoInt, _j:GoInt):Bool return _a.less(_i, _j) #else null #end;
            __self__.search = #if !macro function(__0:GoInt):GoInt return _a.search(__0) #else null #end;
            __self__.sort = #if !macro function():Void _a.sort() #else null #end;
            __self__.swap = #if !macro function(_i:GoInt, _j:GoInt):Void _a.swap(_i, _j) #else null #end;
            __self__;
        });
        var _r:IntSlice = ((_data1.__slice__((0 : GoInt)) : Slice<GoInt>) : IntSlice);
        sort(reverse({
            final __self__ = new IntSlice_wrapper(_r);
            __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
            __self__.less = #if !macro function(_i:GoInt, _j:GoInt):Bool return _r.less(_i, _j) #else null #end;
            __self__.search = #if !macro function(__0:GoInt):GoInt return _r.search(__0) #else null #end;
            __self__.sort = #if !macro function():Void _r.sort() #else null #end;
            __self__.swap = #if !macro function(_i:GoInt, _j:GoInt):Void _r.swap(_i, _j) #else null #end;
            __self__;
        }));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_data.length), _i++, {
                if (_a[_i] != _r[(12 : GoInt) - _i]) {
                    _t.errorf((Go.str("reverse sort didn\'t sort") : GoString));
                };
                if (_i > (6 : GoInt)) {
                    break;
                };
            });
        };
    }
function testBreakPatterns(_t:stdgo.testing.Testing.T):Void {
        var _data = new Slice<GoInt>((30 : GoInt).toBasic(), 0, ...[for (i in 0 ... (30 : GoInt).toBasic()) (0 : GoInt)]);
        for (_i => _ in _data) {
            _data[_i] = (10 : GoInt);
        };
        _data[(_data.length / (4 : GoInt)) * (1 : GoInt)] = (0 : GoInt);
        _data[(_data.length / (4 : GoInt)) * (2 : GoInt)] = (1 : GoInt);
        _data[(_data.length / (4 : GoInt)) * (3 : GoInt)] = (2 : GoInt);
        sort({
            final __self__ = new IntSlice_wrapper((_data : IntSlice));
            __self__.len = #if !macro function():GoInt return (_data : IntSlice).len() #else null #end;
            __self__.less = #if !macro function(_i:GoInt, _j:GoInt):Bool return (_data : IntSlice).less(_i, _j) #else null #end;
            __self__.search = #if !macro function(__0:GoInt):GoInt return (_data : IntSlice).search(__0) #else null #end;
            __self__.sort = #if !macro function():Void (_data : IntSlice).sort() #else null #end;
            __self__.swap = #if !macro function(_i:GoInt, _j:GoInt):Void (_data : IntSlice).swap(_i, _j) #else null #end;
            __self__;
        });
    }
function testReverseRange(_t:stdgo.testing.Testing.T):Void {
        var _data = (new Slice<GoInt>(0, 0, (1 : GoInt), (2 : GoInt), (3 : GoInt), (4 : GoInt), (5 : GoInt), (6 : GoInt), (7 : GoInt)) : Slice<GoInt>);
        reverseRange({
            final __self__ = new IntSlice_wrapper((_data : IntSlice));
            __self__.len = #if !macro function():GoInt return (_data : IntSlice).len() #else null #end;
            __self__.less = #if !macro function(_i:GoInt, _j:GoInt):Bool return (_data : IntSlice).less(_i, _j) #else null #end;
            __self__.search = #if !macro function(__0:GoInt):GoInt return (_data : IntSlice).search(__0) #else null #end;
            __self__.sort = #if !macro function():Void (_data : IntSlice).sort() #else null #end;
            __self__.swap = #if !macro function(_i:GoInt, _j:GoInt):Void (_data : IntSlice).swap(_i, _j) #else null #end;
            __self__;
        }, (0 : GoInt), (_data.length));
        {
            var _i:GoInt = (_data.length) - (1 : GoInt);
            Go.cfor(_i > (0 : GoInt), _i--, {
                if (_data[_i] > _data[_i - (1 : GoInt)]) {
                    _t.fatalf((Go.str("reverseRange didn\'t work") : GoString));
                };
            });
        };
        var _data1 = (new Slice<GoInt>(0, 0, (1 : GoInt), (2 : GoInt), (3 : GoInt), (4 : GoInt), (5 : GoInt), (6 : GoInt), (7 : GoInt)) : Slice<GoInt>);
        var _data2 = (new Slice<GoInt>(0, 0, (1 : GoInt), (2 : GoInt), (5 : GoInt), (4 : GoInt), (3 : GoInt), (6 : GoInt), (7 : GoInt)) : Slice<GoInt>);
        reverseRange({
            final __self__ = new IntSlice_wrapper((_data1 : IntSlice));
            __self__.len = #if !macro function():GoInt return (_data1 : IntSlice).len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j:GoInt):Bool return (_data1 : IntSlice).less(_i_, _j) #else null #end;
            __self__.search = #if !macro function(__0:GoInt):GoInt return (_data1 : IntSlice).search(__0) #else null #end;
            __self__.sort = #if !macro function():Void (_data1 : IntSlice).sort() #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j:GoInt):Void (_data1 : IntSlice).swap(_i__, _j) #else null #end;
            __self__;
        }, (2 : GoInt), (5 : GoInt));
        for (_i => _v in _data1) {
            if (_v != _data2[_i]) {
                _t.fatalf((Go.str("reverseRange didn\'t work") : GoString));
            };
        };
    }
function testNonDeterministicComparison(_t:stdgo.testing.Testing.T):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __recover_exception__:AnyInterface = null;
                    {
                        var _r:AnyInterface = Go.toInterface(({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }));
                        if (_r != null) {
                            _t.error(Go.toInterface(_r));
                        };
                    };
                };
                a();
            });
            var _td = ({ _r : stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource((0 : GoInt64))) } : stdgo.sort_test.Sort_test.T_nonDeterministicTestingData);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (10 : GoInt), _i++, {
                    sort({
                        final __self__ = new stdgo.sort_test.Sort_test.T_nonDeterministicTestingData_wrapper(_td);
                        __self__.len = #if !macro function():GoInt return _td.len() #else null #end;
                        __self__.less = #if !macro function(_i:GoInt, _j:GoInt):Bool return _td.less(_i, _j) #else null #end;
                        __self__.swap = #if !macro function(_i:GoInt, _j:GoInt):Void _td.swap(_i, _j) #else null #end;
                        __self__;
                    });
                });
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            for (defer in __deferstack__) {
                defer();
            };
            if (__recover_exception__ != null) throw __recover_exception__;
            return;
        };
    }
function benchmarkSortString1K(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        var _unsorted = new Slice<GoString>((1024 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1024 : GoInt).toBasic()) ("" : GoString)]);
        for (_i => _ in _unsorted) {
            _unsorted[_i] = stdgo.strconv.Strconv.itoa(_i ^ (716 : GoInt));
        };
        var _data = new Slice<GoString>((_unsorted.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_unsorted.length : GoInt).toBasic()) ("" : GoString)]);
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
function benchmarkSortString1K_Slice(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        var _unsorted = new Slice<GoString>((1024 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1024 : GoInt).toBasic()) ("" : GoString)]);
        for (_i => _ in _unsorted) {
            _unsorted[_i] = stdgo.strconv.Strconv.itoa(_i ^ (716 : GoInt));
        };
        var _data = new Slice<GoString>((_unsorted.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_unsorted.length : GoInt).toBasic()) ("" : GoString)]);
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
function benchmarkStableString1K(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        var _unsorted = new Slice<GoString>((1024 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1024 : GoInt).toBasic()) ("" : GoString)]);
        for (_i => _ in _unsorted) {
            _unsorted[_i] = stdgo.strconv.Strconv.itoa(_i ^ (716 : GoInt));
        };
        var _data = new Slice<GoString>((_unsorted.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_unsorted.length : GoInt).toBasic()) ("" : GoString)]);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                Go.copySlice(_data, _unsorted);
                _b.startTimer();
                stable({
                    final __self__ = new StringSlice_wrapper((_data : StringSlice));
                    __self__.len = #if !macro function():GoInt return (_data : StringSlice).len() #else null #end;
                    __self__.less = #if !macro function(_i:GoInt, _j:GoInt):Bool return (_data : StringSlice).less(_i, _j) #else null #end;
                    __self__.search = #if !macro function(_x:GoString):GoInt return (_data : StringSlice).search(_x) #else null #end;
                    __self__.sort = #if !macro function():Void (_data : StringSlice).sort() #else null #end;
                    __self__.swap = #if !macro function(_i:GoInt, _j:GoInt):Void (_data : StringSlice).swap(_i, _j) #else null #end;
                    __self__;
                });
                _b.stopTimer();
            });
        };
    }
function benchmarkSortInt1K(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                var _data = new Slice<GoInt>((1024 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1024 : GoInt).toBasic()) (0 : GoInt)]);
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
function benchmarkSortInt1K_Sorted(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                var _data = new Slice<GoInt>((1024 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1024 : GoInt).toBasic()) (0 : GoInt)]);
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
function benchmarkSortInt1K_Reversed(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                var _data = new Slice<GoInt>((1024 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1024 : GoInt).toBasic()) (0 : GoInt)]);
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
function benchmarkSortInt1K_Mod8(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                var _data = new Slice<GoInt>((1024 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1024 : GoInt).toBasic()) (0 : GoInt)]);
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
function benchmarkStableInt1K(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        var _unsorted = new Slice<GoInt>((1024 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1024 : GoInt).toBasic()) (0 : GoInt)]);
        for (_i => _ in _unsorted) {
            _unsorted[_i] = _i ^ (716 : GoInt);
        };
        var _data = new Slice<GoInt>((_unsorted.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_unsorted.length : GoInt).toBasic()) (0 : GoInt)]);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                Go.copySlice(_data, _unsorted);
                _b.startTimer();
                stable({
                    final __self__ = new IntSlice_wrapper((_data : IntSlice));
                    __self__.len = #if !macro function():GoInt return (_data : IntSlice).len() #else null #end;
                    __self__.less = #if !macro function(_i:GoInt, _j:GoInt):Bool return (_data : IntSlice).less(_i, _j) #else null #end;
                    __self__.search = #if !macro function(__0:GoInt):GoInt return (_data : IntSlice).search(__0) #else null #end;
                    __self__.sort = #if !macro function():Void (_data : IntSlice).sort() #else null #end;
                    __self__.swap = #if !macro function(_i:GoInt, _j:GoInt):Void (_data : IntSlice).swap(_i, _j) #else null #end;
                    __self__;
                });
                _b.stopTimer();
            });
        };
    }
function benchmarkStableInt1K_Slice(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        var _unsorted = new Slice<GoInt>((1024 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1024 : GoInt).toBasic()) (0 : GoInt)]);
        for (_i => _ in _unsorted) {
            _unsorted[_i] = _i ^ (716 : GoInt);
        };
        var _data = new Slice<GoInt>((_unsorted.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_unsorted.length : GoInt).toBasic()) (0 : GoInt)]);
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
function benchmarkSortInt64K(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                var _data = new Slice<GoInt>((65536 : GoInt).toBasic(), 0, ...[for (i in 0 ... (65536 : GoInt).toBasic()) (0 : GoInt)]);
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
function benchmarkSortInt64K_Slice(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                var _data = new Slice<GoInt>((65536 : GoInt).toBasic(), 0, ...[for (i in 0 ... (65536 : GoInt).toBasic()) (0 : GoInt)]);
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
function benchmarkStableInt64K(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                var _data = new Slice<GoInt>((65536 : GoInt).toBasic(), 0, ...[for (i in 0 ... (65536 : GoInt).toBasic()) (0 : GoInt)]);
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < (_data.length), _i++, {
                        _data[_i] = _i ^ (52428 : GoInt);
                    });
                };
                _b.startTimer();
                stable({
                    final __self__ = new IntSlice_wrapper((_data : IntSlice));
                    __self__.len = #if !macro function():GoInt return (_data : IntSlice).len() #else null #end;
                    __self__.less = #if !macro function(_i_:GoInt, _j:GoInt):Bool return (_data : IntSlice).less(_i_, _j) #else null #end;
                    __self__.search = #if !macro function(__0:GoInt):GoInt return (_data : IntSlice).search(__0) #else null #end;
                    __self__.sort = #if !macro function():Void (_data : IntSlice).sort() #else null #end;
                    __self__.swap = #if !macro function(_i__:GoInt, _j:GoInt):Void (_data : IntSlice).swap(_i__, _j) #else null #end;
                    __self__;
                });
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
function _testBentleyMcIlroy(_t:stdgo.testing.Testing.T, _sort:Interface -> Void, _maxswap:GoInt -> GoInt):Void {
        var _sizes = (new Slice<GoInt>(0, 0, (100 : GoInt), (1023 : GoInt), (1024 : GoInt), (1025 : GoInt)) : Slice<GoInt>);
        if (stdgo.testing.Testing.short()) {
            _sizes = (new Slice<GoInt>(0, 0, (100 : GoInt), (127 : GoInt), (128 : GoInt), (129 : GoInt)) : Slice<GoInt>);
        };
        var _dists = (new Slice<GoString>(0, 0, (Go.str("sawtooth") : GoString), (Go.str("rand") : GoString), (Go.str("stagger") : GoString), (Go.str("plateau") : GoString), (Go.str("shuffle") : GoString)) : Slice<GoString>);
        var _modes = (new Slice<GoString>(0, 0, (Go.str("copy") : GoString), (Go.str("reverse") : GoString), (Go.str("reverse1") : GoString), (Go.str("reverse2") : GoString), (Go.str("sort") : GoString), (Go.str("dither") : GoString)) : Slice<GoString>);
        var _tmp1:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 1025) (0 : GoInt)]), _tmp2:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 1025) (0 : GoInt)]);
        for (_0 => _n in _sizes) {
            {
                var _m:GoInt = (1 : GoInt);
                Go.cfor(_m < ((2 : GoInt) * _n), _m = _m * ((2 : GoInt)), {
                    {
                        var _dist:GoInt = (0 : GoInt);
                        Go.cfor(_dist < (5 : GoInt), _dist++, {
                            var _j:GoInt = (0 : GoInt);
                            var _k:GoInt = (1 : GoInt);
                            var _data = (_tmp1.__slice__((0 : GoInt), _n) : Slice<GoInt>);
                            {
                                var _i:GoInt = (0 : GoInt);
                                Go.cfor(_i < _n, _i++, {
                                    if (_dist == (0 : GoInt)) {
                                        _data[_i] = _i % _m;
                                    } else if (_dist == (1 : GoInt)) {
                                        _data[_i] = stdgo.math.rand.Rand.intn(_m);
                                    } else if (_dist == (2 : GoInt)) {
                                        _data[_i] = (_i * _m + _i) % _n;
                                    } else if (_dist == (3 : GoInt)) {
                                        _data[_i] = _min(_i, _m);
                                    } else if (_dist == (4 : GoInt)) {
                                        if (stdgo.math.rand.Rand.intn(_m) != (0 : GoInt)) {
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
                                Go.cfor(_mode < (6 : GoInt), _mode++, {
                                    if (_mode == (0 : GoInt)) {
                                        {
                                            var _i:GoInt = (0 : GoInt);
                                            Go.cfor(_i < _n, _i++, {
                                                _mdata[_i] = _data[_i];
                                            });
                                        };
                                    } else if (_mode == (1 : GoInt)) {
                                        {
                                            var _i:GoInt = (0 : GoInt);
                                            Go.cfor(_i < _n, _i++, {
                                                _mdata[_i] = _data[(_n - _i) - (1 : GoInt)];
                                            });
                                        };
                                    } else if (_mode == (2 : GoInt)) {
                                        {
                                            var _i:GoInt = (0 : GoInt);
                                            Go.cfor(_i < (_n / (2 : GoInt)), _i++, {
                                                _mdata[_i] = _data[(_n / (2 : GoInt) - _i) - (1 : GoInt)];
                                            });
                                        };
                                        {
                                            var _i:GoInt = _n / (2 : GoInt);
                                            Go.cfor(_i < _n, _i++, {
                                                _mdata[_i] = _data[_i];
                                            });
                                        };
                                    } else if (_mode == (3 : GoInt)) {
                                        {
                                            var _i:GoInt = (0 : GoInt);
                                            Go.cfor(_i < (_n / (2 : GoInt)), _i++, {
                                                _mdata[_i] = _data[_i];
                                            });
                                        };
                                        {
                                            var _i:GoInt = _n / (2 : GoInt);
                                            Go.cfor(_i < _n, _i++, {
                                                _mdata[_i] = _data[(_n - _i - (_n / (2 : GoInt))) - (1 : GoInt)];
                                            });
                                        };
                                    } else if (_mode == (4 : GoInt)) {
                                        {
                                            var _i:GoInt = (0 : GoInt);
                                            Go.cfor(_i < _n, _i++, {
                                                _mdata[_i] = _data[_i];
                                            });
                                        };
                                        ints(_mdata);
                                    } else if (_mode == (5 : GoInt)) {
                                        {
                                            var _i:GoInt = (0 : GoInt);
                                            Go.cfor(_i < _n, _i++, {
                                                _mdata[_i] = _data[_i] + (_i % (5 : GoInt));
                                            });
                                        };
                                    };
                                    var _desc:GoString = stdgo.fmt.Fmt.sprintf((Go.str("n=%d m=%d dist=%s mode=%s") : GoString), Go.toInterface(_n), Go.toInterface(_m), Go.toInterface(_dists[_dist]), Go.toInterface(_modes[_mode]));
                                    var _d = ({ _desc : _desc, _t : _t, _data : (_mdata.__slice__((0 : GoInt), _n) : Slice<GoInt>), _maxswap : _maxswap(_n) } : stdgo.sort_test.Sort_test.T_testingData);
                                    _sort({
                                        final __self__ = new stdgo.sort_test.Sort_test.T_testingData_wrapper(_d);
                                        __self__.len = #if !macro function():GoInt return _d.len() #else null #end;
                                        __self__.less = #if !macro function(_i_:GoInt, _j_:GoInt):Bool return _d.less(_i_, _j_) #else null #end;
                                        __self__.swap = #if !macro function(_i__:GoInt, _j__:GoInt):Void _d.swap(_i__, _j__) #else null #end;
                                        __self__;
                                    });
                                    if (!intsAreSorted(_mdata)) {
                                        _t.fatalf((Go.str("%s: ints not sorted\n\t%v") : GoString), Go.toInterface(_desc), Go.toInterface(_mdata));
                                    };
                                });
                            };
                        });
                    };
                });
            };
        };
    }
function testSortBM(_t:stdgo.testing.Testing.T):Void {
        _testBentleyMcIlroy(_t, sort, function(_n:GoInt):GoInt {
            return (_n * _lg(_n) * (12 : GoInt)) / (10 : GoInt);
        });
    }
function testHeapsortBM(_t:stdgo.testing.Testing.T):Void {
        _testBentleyMcIlroy(_t, heapsort, function(_n:GoInt):GoInt {
            return (_n * _lg(_n) * (12 : GoInt)) / (10 : GoInt);
        });
    }
function testStableBM(_t:stdgo.testing.Testing.T):Void {
        _testBentleyMcIlroy(_t, stable, function(_n:GoInt):GoInt {
            return (_n * _lg(_n) * _lg(_n)) / (3 : GoInt);
        });
    }
function _newAdversaryTestingData(_t:stdgo.testing.Testing.T, _size:GoInt, _maxcmp:GoInt):T_adversaryTestingData {
        var _gas:GoInt = _size - (1 : GoInt);
        var _data = new Slice<GoInt>((_size : GoInt).toBasic(), 0, ...[for (i in 0 ... (_size : GoInt).toBasic()) (0 : GoInt)]);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _size, _i++, {
                _data[_i] = _gas;
            });
        };
        return ({ _t : _t, _data : _data, _maxcmp : _maxcmp, _gas : _gas } : stdgo.sort_test.Sort_test.T_adversaryTestingData);
    }
function testAdversary(_t:stdgo.testing.Testing.T):Void {
        {};
        var _maxcmp:GoInt = ((10000 : GoInt) * _lg((10000 : GoInt))) * (4 : GoInt);
        var _d = _newAdversaryTestingData(_t, (10000 : GoInt), _maxcmp);
        sort({
            final __self__ = new stdgo.sort_test.Sort_test.T_adversaryTestingData_wrapper(_d);
            __self__.len = #if !macro function():GoInt return _d.len() #else null #end;
            __self__.less = #if !macro function(_i:GoInt, _j:GoInt):Bool return _d.less(_i, _j) #else null #end;
            __self__.swap = #if !macro function(_i:GoInt, _j:GoInt):Void _d.swap(_i, _j) #else null #end;
            __self__;
        });
        for (_i => _v in _d._data) {
            if (_v != _i) {
                _t.fatalf((Go.str("adversary data not fully sorted") : GoString));
            };
        };
    }
function testStableInts(_t:stdgo.testing.Testing.T):Void {
        var _data = (_ints == null ? null : _ints.__copy__());
        stable({
            final __self__ = new IntSlice_wrapper(((_data.__slice__((0 : GoInt)) : Slice<GoInt>) : IntSlice));
            __self__.len = #if !macro function():GoInt return ((_data.__slice__((0 : GoInt)) : Slice<GoInt>) : IntSlice).len() #else null #end;
            __self__.less = #if !macro function(_i:GoInt, _j:GoInt):Bool return ((_data.__slice__((0 : GoInt)) : Slice<GoInt>) : IntSlice).less(_i, _j) #else null #end;
            __self__.search = #if !macro function(__0:GoInt):GoInt return ((_data.__slice__((0 : GoInt)) : Slice<GoInt>) : IntSlice).search(__0) #else null #end;
            __self__.sort = #if !macro function():Void ((_data.__slice__((0 : GoInt)) : Slice<GoInt>) : IntSlice).sort() #else null #end;
            __self__.swap = #if !macro function(_i:GoInt, _j:GoInt):Void ((_data.__slice__((0 : GoInt)) : Slice<GoInt>) : IntSlice).swap(_i, _j) #else null #end;
            __self__;
        });
        if (!intsAreSorted((_data.__slice__((0 : GoInt)) : Slice<GoInt>))) {
            _t.errorf((Go.str("nsorted %v\n   got %v") : GoString), Go.toInterface(_ints), Go.toInterface(_data));
        };
    }
function testStability(_t:stdgo.testing.Testing.T):Void {
        var _n:GoInt = (100000 : GoInt), _m:GoInt = (1000 : GoInt);
        if (stdgo.testing.Testing.short()) {
            {
                final __tmp__0 = (1000 : GoInt);
                final __tmp__1 = (100 : GoInt);
                _n = __tmp__0;
                _m = __tmp__1;
            };
        };
        var _data:stdgo.sort_test.Sort_test.T_intPairs = new stdgo.sort_test.Sort_test.T_intPairs((_n : GoInt).toBasic(), 0, ...[for (i in 0 ... (_n : GoInt).toBasic()) ({ _a : (0 : GoInt), _b : (0 : GoInt) } : T__struct_4)]);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_data.length), _i++, {
                _data[_i]._a = stdgo.math.rand.Rand.intn(_m);
            });
        };
        if (isSorted({
            final __self__ = new stdgo.sort_test.Sort_test.T_intPairs_wrapper(_data);
            __self__.len = #if !macro function():GoInt return _data.len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j:GoInt):Bool return _data.less(_i_, _j) #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j:GoInt):Void _data.swap(_i__, _j) #else null #end;
            __self__._inOrder = #if !macro function():Bool return _data._inOrder() #else null #end;
            __self__._initB = #if !macro function():Void _data._initB() #else null #end;
            __self__;
        })) {
            _t.fatalf((Go.str("terrible rand.rand") : GoString));
        };
        _data._initB();
        stable({
            final __self__ = new stdgo.sort_test.Sort_test.T_intPairs_wrapper(_data);
            __self__.len = #if !macro function():GoInt return _data.len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j:GoInt):Bool return _data.less(_i_, _j) #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j:GoInt):Void _data.swap(_i__, _j) #else null #end;
            __self__._inOrder = #if !macro function():Bool return _data._inOrder() #else null #end;
            __self__._initB = #if !macro function():Void _data._initB() #else null #end;
            __self__;
        });
        if (!isSorted({
            final __self__ = new stdgo.sort_test.Sort_test.T_intPairs_wrapper(_data);
            __self__.len = #if !macro function():GoInt return _data.len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j:GoInt):Bool return _data.less(_i_, _j) #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j:GoInt):Void _data.swap(_i__, _j) #else null #end;
            __self__._inOrder = #if !macro function():Bool return _data._inOrder() #else null #end;
            __self__._initB = #if !macro function():Void _data._initB() #else null #end;
            __self__;
        })) {
            _t.errorf((Go.str("Stable didn\'t sort %d ints") : GoString), Go.toInterface(_n));
        };
        if (!_data._inOrder()) {
            _t.errorf((Go.str("Stable wasn\'t stable on %d ints") : GoString), Go.toInterface(_n));
        };
        _data._initB();
        stable({
            final __self__ = new stdgo.sort_test.Sort_test.T_intPairs_wrapper(_data);
            __self__.len = #if !macro function():GoInt return _data.len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j:GoInt):Bool return _data.less(_i_, _j) #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j:GoInt):Void _data.swap(_i__, _j) #else null #end;
            __self__._inOrder = #if !macro function():Bool return _data._inOrder() #else null #end;
            __self__._initB = #if !macro function():Void _data._initB() #else null #end;
            __self__;
        });
        if (!isSorted({
            final __self__ = new stdgo.sort_test.Sort_test.T_intPairs_wrapper(_data);
            __self__.len = #if !macro function():GoInt return _data.len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j:GoInt):Bool return _data.less(_i_, _j) #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j:GoInt):Void _data.swap(_i__, _j) #else null #end;
            __self__._inOrder = #if !macro function():Bool return _data._inOrder() #else null #end;
            __self__._initB = #if !macro function():Void _data._initB() #else null #end;
            __self__;
        })) {
            _t.errorf((Go.str("Stable shuffled sorted %d ints (order)") : GoString), Go.toInterface(_n));
        };
        if (!_data._inOrder()) {
            _t.errorf((Go.str("Stable shuffled sorted %d ints (stability)") : GoString), Go.toInterface(_n));
        };
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_data.length), _i++, {
                _data[_i]._a = (_data.length) - _i;
            });
        };
        _data._initB();
        stable({
            final __self__ = new stdgo.sort_test.Sort_test.T_intPairs_wrapper(_data);
            __self__.len = #if !macro function():GoInt return _data.len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j:GoInt):Bool return _data.less(_i_, _j) #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j:GoInt):Void _data.swap(_i__, _j) #else null #end;
            __self__._inOrder = #if !macro function():Bool return _data._inOrder() #else null #end;
            __self__._initB = #if !macro function():Void _data._initB() #else null #end;
            __self__;
        });
        if (!isSorted({
            final __self__ = new stdgo.sort_test.Sort_test.T_intPairs_wrapper(_data);
            __self__.len = #if !macro function():GoInt return _data.len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j:GoInt):Bool return _data.less(_i_, _j) #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j:GoInt):Void _data.swap(_i__, _j) #else null #end;
            __self__._inOrder = #if !macro function():Bool return _data._inOrder() #else null #end;
            __self__._initB = #if !macro function():Void _data._initB() #else null #end;
            __self__;
        })) {
            _t.errorf((Go.str("Stable didn\'t sort %d ints") : GoString), Go.toInterface(_n));
        };
        if (!_data._inOrder()) {
            _t.errorf((Go.str("Stable wasn\'t stable on %d ints") : GoString), Go.toInterface(_n));
        };
    }
function _countOps(_t:stdgo.testing.Testing.T, _algo:Interface -> Void, _name:GoString):Void {
        var _sizes = _countOpsSizes;
        if (stdgo.testing.Testing.short()) {
            _sizes = (_sizes.__slice__(0, (5 : GoInt)) : Slice<GoInt>);
        };
        if (!stdgo.testing.Testing.verbose()) {
            _t.skip(Go.toInterface((Go.str("Counting skipped as non-verbose mode.") : GoString)));
        };
        for (_0 => _n in _sizes) {
            var _td:stdgo.sort_test.Sort_test.T_testingData = ({ _desc : _name, _t : _t, _data : new Slice<GoInt>((_n : GoInt).toBasic(), 0, ...[for (i in 0 ... (_n : GoInt).toBasic()) (0 : GoInt)]), _maxswap : (2147483647 : GoInt) } : stdgo.sort_test.Sort_test.T_testingData);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _n, _i++, {
                    _td._data[_i] = stdgo.math.rand.Rand.intn(_n / (5 : GoInt));
                });
            };
            _algo({
                final __self__ = new stdgo.sort_test.Sort_test.T_testingData_wrapper(_td);
                __self__.len = #if !macro function():GoInt return _td.len() #else null #end;
                __self__.less = #if !macro function(_i_:GoInt, _j:GoInt):Bool return _td.less(_i_, _j) #else null #end;
                __self__.swap = #if !macro function(_i__:GoInt, _j:GoInt):Void _td.swap(_i__, _j) #else null #end;
                __self__;
            });
            _t.logf((Go.str("%s %8d elements: %11d Swap, %10d Less") : GoString), Go.toInterface(_name), Go.toInterface(_n), Go.toInterface(_td._nswap), Go.toInterface(_td._ncmp));
        };
    }
function testCountStableOps(_t:stdgo.testing.Testing.T):Void {
        _countOps(_t, stable, (Go.str("Stable") : GoString));
    }
function testCountSortOps(_t:stdgo.testing.Testing.T):Void {
        _countOps(_t, sort, (Go.str("Sort  ") : GoString));
    }
function _bench(_b:stdgo.testing.Testing.B, _size:GoInt, _algo:Interface -> Void, _name:GoString):Void {
        if (stdgo.strings.Strings.hasSuffix(stdgo.internal.testenv.Testenv.builder(), (Go.str("-race") : GoString)) && (_size > (10000 : GoInt))) {
            _b.skip(Go.toInterface((Go.str("skipping slow benchmark on race builder") : GoString)));
        };
        _b.stopTimer();
        var _data:stdgo.sort_test.Sort_test.T_intPairs = new stdgo.sort_test.Sort_test.T_intPairs((_size : GoInt).toBasic(), 0, ...[for (i in 0 ... (_size : GoInt).toBasic()) ({ _a : (0 : GoInt), _b : (0 : GoInt) } : T__struct_4)]);
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
                                _x = _x ^ ((1 : GoUInt32));
                                if ((_x : GoInt32) < (0 : GoInt32)) {
                                    _x = _x ^ (("2290650863" : GoUInt32));
                                };
                                _data[_i]._a = (_x % (_n / (5 : GoInt) : GoUInt32) : GoInt);
                            });
                        };
                        _data._initB();
                        _b.startTimer();
                        _algo({
                            final __self__ = new stdgo.sort_test.Sort_test.T_intPairs_wrapper(_data);
                            __self__.len = #if !macro function():GoInt return _data.len() #else null #end;
                            __self__.less = #if !macro function(_i_:GoInt, _j:GoInt):Bool return _data.less(_i_, _j) #else null #end;
                            __self__.swap = #if !macro function(_i__:GoInt, _j:GoInt):Void _data.swap(_i__, _j) #else null #end;
                            __self__._inOrder = #if !macro function():Bool return _data._inOrder() #else null #end;
                            __self__._initB = #if !macro function():Void _data._initB() #else null #end;
                            __self__;
                        });
                        _b.stopTimer();
                        if (!isSorted({
                            final __self__ = new stdgo.sort_test.Sort_test.T_intPairs_wrapper(_data);
                            __self__.len = #if !macro function():GoInt return _data.len() #else null #end;
                            __self__.less = #if !macro function(_i_:GoInt, _j:GoInt):Bool return _data.less(_i_, _j) #else null #end;
                            __self__.swap = #if !macro function(_i__:GoInt, _j:GoInt):Void _data.swap(_i__, _j) #else null #end;
                            __self__._inOrder = #if !macro function():Bool return _data._inOrder() #else null #end;
                            __self__._initB = #if !macro function():Void _data._initB() #else null #end;
                            __self__;
                        })) {
                            _b.errorf((Go.str("%s did not sort %d ints") : GoString), Go.toInterface(_name), Go.toInterface(_n));
                        };
                        if ((_name == (Go.str("Stable") : GoString)) && !_data._inOrder()) {
                            _b.errorf((Go.str("%s unstable on %d ints") : GoString), Go.toInterface(_name), Go.toInterface(_n));
                        };
                    });
                };
            });
        };
    }
function benchmarkSort1e2(_b:stdgo.testing.Testing.B):Void {
        _bench(_b, (100 : GoInt), sort, (Go.str("Sort") : GoString));
    }
function benchmarkStable1e2(_b:stdgo.testing.Testing.B):Void {
        _bench(_b, (100 : GoInt), stable, (Go.str("Stable") : GoString));
    }
function benchmarkSort1e4(_b:stdgo.testing.Testing.B):Void {
        _bench(_b, (10000 : GoInt), sort, (Go.str("Sort") : GoString));
    }
function benchmarkStable1e4(_b:stdgo.testing.Testing.B):Void {
        _bench(_b, (10000 : GoInt), stable, (Go.str("Stable") : GoString));
    }
function benchmarkSort1e6(_b:stdgo.testing.Testing.B):Void {
        _bench(_b, (1e+06 : GoInt), sort, (Go.str("Sort") : GoString));
    }
function benchmarkStable1e6(_b:stdgo.testing.Testing.B):Void {
        _bench(_b, (1e+06 : GoInt), stable, (Go.str("Stable") : GoString));
    }
@:keep class Person_static_extension {
    @:keep
    static public function string( _p:Person):GoString {
        return stdgo.fmt.Fmt.sprintf((Go.str("%s: %d") : GoString), Go.toInterface(_p.name), Go.toInterface(_p.age));
    }
}
class Person_wrapper {
    @:keep
    public var string : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : Person;
}
@:keep class T_planetSorter_static_extension {
    /**
        // Less is part of sort.Interface. It is implemented by calling the "by" closure in the sorter.
    **/
    @:keep
    static public function less( _s:T_planetSorter, _i:GoInt, _j:GoInt):Bool {
        return _s._by(_s._planets[_i], _s._planets[_j]);
    }
    /**
        // Swap is part of sort.Interface.
    **/
    @:keep
    static public function swap( _s:T_planetSorter, _i:GoInt, _j:GoInt):Void {
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
    static public function len( _s:T_planetSorter):GoInt {
        return (_s._planets.length);
    }
}
class T_planetSorter_wrapper {
    /**
        // Less is part of sort.Interface. It is implemented by calling the "by" closure in the sorter.
    **/
    @:keep
    public var less : (GoInt, GoInt) -> Bool = null;
    /**
        // Swap is part of sort.Interface.
    **/
    @:keep
    public var swap : (GoInt, GoInt) -> Void = null;
    /**
        // Len is part of sort.Interface.
    **/
    @:keep
    public var len : () -> GoInt = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_planetSorter;
}
@:keep class T_multiSorter_static_extension {
    /**
        // Less is part of sort.Interface. It is implemented by looping along the
        // less functions until it finds a comparison that discriminates between
        // the two items (one is less than the other). Note that it can call the
        // less functions twice per call. We could change the functions to return
        // -1, 0, 1 and reduce the number of calls for greater efficiency: an
        // exercise for the reader.
    **/
    @:keep
    static public function less( _ms:T_multiSorter, _i:GoInt, _j:GoInt):Bool {
        var _p = _ms._changes[_i], _q = _ms._changes[_j];
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
    static public function swap( _ms:T_multiSorter, _i:GoInt, _j:GoInt):Void {
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
    static public function len( _ms:T_multiSorter):GoInt {
        return (_ms._changes.length);
    }
    /**
        // Sort sorts the argument slice according to the less functions passed to OrderedBy.
    **/
    @:keep
    static public function sort( _ms:T_multiSorter, _changes:Slice<Change>):Void {
        _ms._changes = _changes;
        stdgo.sort.Sort.sort({
            final __self__ = new stdgo.sort_test.Sort_test.T_multiSorter_wrapper(_ms);
            __self__.len = #if !macro function():GoInt return _ms.len() #else null #end;
            __self__.less = #if !macro function(_i:GoInt, _j:GoInt):Bool return _ms.less(_i, _j) #else null #end;
            __self__.sort = #if !macro function(_changes_:Slice<stdgo.sort_test.Sort_test.Change>):Void _ms.sort(_changes_) #else null #end;
            __self__.swap = #if !macro function(_i:GoInt, _j:GoInt):Void _ms.swap(_i, _j) #else null #end;
            __self__;
        });
    }
}
class T_multiSorter_wrapper {
    /**
        // Less is part of sort.Interface. It is implemented by looping along the
        // less functions until it finds a comparison that discriminates between
        // the two items (one is less than the other). Note that it can call the
        // less functions twice per call. We could change the functions to return
        // -1, 0, 1 and reduce the number of calls for greater efficiency: an
        // exercise for the reader.
    **/
    @:keep
    public var less : (GoInt, GoInt) -> Bool = null;
    /**
        // Swap is part of sort.Interface.
    **/
    @:keep
    public var swap : (GoInt, GoInt) -> Void = null;
    /**
        // Len is part of sort.Interface.
    **/
    @:keep
    public var len : () -> GoInt = null;
    /**
        // Sort sorts the argument slice according to the less functions passed to OrderedBy.
    **/
    @:keep
    public var sort : Slice<Change> -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_multiSorter;
}
@:keep class ByName_static_extension {
    @:keep
    static public function less( _s:ByName, _i:GoInt, _j:GoInt):Bool {
        return _s.organs[_i].name < _s.organs[_j].name;
    }
    @:embedded
    public static function swap( __self__:ByName, _i:GoInt, _j:GoInt) __self__.swap(_i, _j);
    @:embedded
    public static function len( __self__:ByName):GoInt return __self__.len();
}
class ByName_wrapper {
    @:keep
    public var less : (GoInt, GoInt) -> Bool = null;
    @:embedded
    public var swap : (GoInt, GoInt) -> Void = null;
    @:embedded
    public var len : () -> GoInt = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : ByName;
}
@:keep class ByWeight_static_extension {
    @:keep
    static public function less( _s:ByWeight, _i:GoInt, _j:GoInt):Bool {
        return _s.organs[_i].weight < _s.organs[_j].weight;
    }
    @:embedded
    public static function swap( __self__:ByWeight, _i:GoInt, _j:GoInt) __self__.swap(_i, _j);
    @:embedded
    public static function len( __self__:ByWeight):GoInt return __self__.len();
}
class ByWeight_wrapper {
    @:keep
    public var less : (GoInt, GoInt) -> Bool = null;
    @:embedded
    public var swap : (GoInt, GoInt) -> Void = null;
    @:embedded
    public var len : () -> GoInt = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : ByWeight;
}
@:keep class T_nonDeterministicTestingData_static_extension {
    @:keep
    static public function swap( _t:T_nonDeterministicTestingData, _i:GoInt, _j:GoInt):Void {
        if (((_i < (0 : GoInt)) || (_j < (0 : GoInt)) || _i >= _t.len()) || (_j >= _t.len())) {
            throw Go.toInterface((Go.str("nondeterministic comparison out of bounds") : GoString));
        };
    }
    @:keep
    static public function less( _t:T_nonDeterministicTestingData, _i:GoInt, _j:GoInt):Bool {
        if (((_i < (0 : GoInt)) || (_j < (0 : GoInt)) || _i >= _t.len()) || (_j >= _t.len())) {
            throw Go.toInterface((Go.str("nondeterministic comparison out of bounds") : GoString));
        };
        return _t._r.float32() < (0.5 : GoFloat32);
    }
    @:keep
    static public function len( _t:T_nonDeterministicTestingData):GoInt {
        return (500 : GoInt);
    }
}
class T_nonDeterministicTestingData_wrapper {
    @:keep
    public var swap : (GoInt, GoInt) -> Void = null;
    @:keep
    public var less : (GoInt, GoInt) -> Bool = null;
    @:keep
    public var len : () -> GoInt = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_nonDeterministicTestingData;
}
@:keep class T_testingData_static_extension {
    @:keep
    static public function swap( _d:T_testingData, _i:GoInt, _j:GoInt):Void {
        if (_d._nswap >= _d._maxswap) {
            _d._t.fatalf((Go.str("%s: used %d swaps sorting slice of %d") : GoString), Go.toInterface(_d._desc), Go.toInterface(_d._nswap), Go.toInterface((_d._data.length)));
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
    static public function less( _d:T_testingData, _i:GoInt, _j:GoInt):Bool {
        _d._ncmp++;
        return _d._data[_i] < _d._data[_j];
    }
    @:keep
    static public function len( _d:T_testingData):GoInt {
        return (_d._data.length);
    }
}
class T_testingData_wrapper {
    @:keep
    public var swap : (GoInt, GoInt) -> Void = null;
    @:keep
    public var less : (GoInt, GoInt) -> Bool = null;
    @:keep
    public var len : () -> GoInt = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_testingData;
}
@:keep class T_adversaryTestingData_static_extension {
    @:keep
    static public function swap( _d:T_adversaryTestingData, _i:GoInt, _j:GoInt):Void {
        {
            final __tmp__0 = _d._data[_j];
            final __tmp__1 = _d._data[_i];
            _d._data[_i] = __tmp__0;
            _d._data[_j] = __tmp__1;
        };
    }
    @:keep
    static public function less( _d:T_adversaryTestingData, _i:GoInt, _j:GoInt):Bool {
        if (_d._ncmp >= _d._maxcmp) {
            _d._t.fatalf((Go.str("used %d comparisons sorting adversary data with size %d") : GoString), Go.toInterface(_d._ncmp), Go.toInterface((_d._data.length)));
        };
        _d._ncmp++;
        if ((_d._data[_i] == _d._gas) && (_d._data[_j] == _d._gas)) {
            if (_i == _d._candidate) {
                _d._data[_i] = _d._nsolid;
                _d._nsolid++;
            } else {
                _d._data[_j] = _d._nsolid;
                _d._nsolid++;
            };
        };
        if (_d._data[_i] == _d._gas) {
            _d._candidate = _i;
        } else if (_d._data[_j] == _d._gas) {
            _d._candidate = _j;
        };
        return _d._data[_i] < _d._data[_j];
    }
    @:keep
    static public function len( _d:T_adversaryTestingData):GoInt {
        return (_d._data.length);
    }
}
class T_adversaryTestingData_wrapper {
    @:keep
    public var swap : (GoInt, GoInt) -> Void = null;
    @:keep
    public var less : (GoInt, GoInt) -> Bool = null;
    @:keep
    public var len : () -> GoInt = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_adversaryTestingData;
}
@:keep class ByAge_static_extension {
    @:keep
    static public function less( _a:ByAge, _i:GoInt, _j:GoInt):Bool {
        return _a[_i].age < _a[_j].age;
    }
    @:keep
    static public function swap( _a:ByAge, _i:GoInt, _j:GoInt):Void {
        {
            final __tmp__0 = (_a[_j] == null ? null : _a[_j].__copy__());
            final __tmp__1 = (_a[_i] == null ? null : _a[_i].__copy__());
            _a[_i] = __tmp__0;
            _a[_j] = __tmp__1;
        };
    }
    @:keep
    static public function len( _a:ByAge):GoInt {
        return (_a.length);
    }
}
class ByAge_wrapper {
    @:keep
    public var less : (GoInt, GoInt) -> Bool = null;
    @:keep
    public var swap : (GoInt, GoInt) -> Void = null;
    @:keep
    public var len : () -> GoInt = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : ByAge;
}
@:keep class By_static_extension {
    /**
        // Sort is a method on the function type, By, that sorts the argument slice according to the function.
    **/
    @:keep
    static public function sort( _by:By, _planets:Slice<Planet>):Void {
        var _ps = ({ _planets : _planets, _by : _by } : stdgo.sort_test.Sort_test.T_planetSorter);
        stdgo.sort.Sort.sort({
            final __self__ = new stdgo.sort_test.Sort_test.T_planetSorter_wrapper(_ps);
            __self__.len = #if !macro function():GoInt return _ps.len() #else null #end;
            __self__.less = #if !macro function(_i:GoInt, _j:GoInt):Bool return _ps.less(_i, _j) #else null #end;
            __self__.swap = #if !macro function(_i:GoInt, _j:GoInt):Void _ps.swap(_i, _j) #else null #end;
            __self__;
        });
    }
}
class By_wrapper {
    /**
        // Sort is a method on the function type, By, that sorts the argument slice according to the function.
    **/
    @:keep
    public var sort : Slice<Planet> -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : By;
}
@:keep class Grams_static_extension {
    @:keep
    static public function string( _g:Grams):GoString {
        return stdgo.fmt.Fmt.sprintf((Go.str("%dg") : GoString), Go.toInterface((_g : GoInt)));
    }
}
class Grams_wrapper {
    @:keep
    public var string : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : Grams;
}
@:keep class Organs_static_extension {
    @:keep
    static public function swap( _s:Organs, _i:GoInt, _j:GoInt):Void {
        {
            final __tmp__0 = _s[_j];
            final __tmp__1 = _s[_i];
            _s[_i] = __tmp__0;
            _s[_j] = __tmp__1;
        };
    }
    @:keep
    static public function len( _s:Organs):GoInt {
        return (_s.length);
    }
}
class Organs_wrapper {
    @:keep
    public var swap : (GoInt, GoInt) -> Void = null;
    @:keep
    public var len : () -> GoInt = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : Organs;
}
@:keep class T_intPairs_static_extension {
    /**
        // InOrder checks if a-equal elements were not reordered.
    **/
    @:keep
    static public function _inOrder( _d:T_intPairs):Bool {
        var _lastA:GoInt = (-1 : GoInt), _lastB:GoInt = (0 : GoInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_d.length), _i++, {
                if (_lastA != _d[_i]._a) {
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
    static public function _initB( _d:T_intPairs):Void {
        for (_i => _ in _d) {
            _d[_i]._b = _i;
        };
    }
    @:keep
    static public function swap( _d:T_intPairs, _i:GoInt, _j:GoInt):Void {
        {
            final __tmp__0 = (_d[_j] == null ? null : _d[_j].__copy__());
            final __tmp__1 = (_d[_i] == null ? null : _d[_i].__copy__());
            _d[_i] = __tmp__0;
            _d[_j] = __tmp__1;
        };
    }
    @:keep
    static public function less( _d:T_intPairs, _i:GoInt, _j:GoInt):Bool {
        return _d[_i]._a < _d[_j]._a;
    }
    /**
        // IntPairs compare on a only.
    **/
    @:keep
    static public function len( _d:T_intPairs):GoInt {
        return (_d.length);
    }
}
class T_intPairs_wrapper {
    /**
        // InOrder checks if a-equal elements were not reordered.
    **/
    @:keep
    public var _inOrder : () -> Bool = null;
    /**
        // Record initial order in B.
    **/
    @:keep
    public var _initB : () -> Void = null;
    @:keep
    public var swap : (GoInt, GoInt) -> Void = null;
    @:keep
    public var less : (GoInt, GoInt) -> Bool = null;
    /**
        // IntPairs compare on a only.
    **/
    @:keep
    public var len : () -> GoInt = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_intPairs;
}
