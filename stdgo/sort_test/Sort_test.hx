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
var _planets : Slice<stdgo.sort_test.Sort_test.Planet> = ((new Slice<stdgo.sort_test.Sort_test.Planet>(((new stdgo.sort_test.Sort_test.Planet(((("Mercury" : GoString))), ((0.055 : GoFloat64)), ((0.4 : GoFloat64))) : stdgo.sort_test.Sort_test.Planet)), ((new stdgo.sort_test.Sort_test.Planet(((("Venus" : GoString))), ((0.815 : GoFloat64)), ((0.7 : GoFloat64))) : stdgo.sort_test.Sort_test.Planet)), ((new stdgo.sort_test.Sort_test.Planet(((("Earth" : GoString))), ((1 : GoFloat64)), ((1 : GoFloat64))) : stdgo.sort_test.Sort_test.Planet)), ((new stdgo.sort_test.Sort_test.Planet(((("Mars" : GoString))), ((0.107 : GoFloat64)), ((1.5 : GoFloat64))) : stdgo.sort_test.Sort_test.Planet))) : Slice<stdgo.sort_test.Sort_test.Planet>));
var _changes : Slice<stdgo.sort_test.Sort_test.Change> = ((new Slice<stdgo.sort_test.Sort_test.Change>(((new stdgo.sort_test.Sort_test.Change(((("gri" : GoString))), ((("Go" : GoString))), ((100 : GoInt))) : stdgo.sort_test.Sort_test.Change)), ((new stdgo.sort_test.Sort_test.Change(((("ken" : GoString))), ((("C" : GoString))), ((150 : GoInt))) : stdgo.sort_test.Sort_test.Change)), ((new stdgo.sort_test.Sort_test.Change(((("glenda" : GoString))), ((("Go" : GoString))), ((200 : GoInt))) : stdgo.sort_test.Sort_test.Change)), ((new stdgo.sort_test.Sort_test.Change(((("rsc" : GoString))), ((("Go" : GoString))), ((200 : GoInt))) : stdgo.sort_test.Sort_test.Change)), ((new stdgo.sort_test.Sort_test.Change(((("r" : GoString))), ((("Go" : GoString))), ((100 : GoInt))) : stdgo.sort_test.Sort_test.Change)), ((new stdgo.sort_test.Sort_test.Change(((("ken" : GoString))), ((("Go" : GoString))), ((200 : GoInt))) : stdgo.sort_test.Sort_test.Change)), ((new stdgo.sort_test.Sort_test.Change(((("dmr" : GoString))), ((("C" : GoString))), ((100 : GoInt))) : stdgo.sort_test.Sort_test.Change)), ((new stdgo.sort_test.Sort_test.Change(((("r" : GoString))), ((("C" : GoString))), ((150 : GoInt))) : stdgo.sort_test.Sort_test.Change)), ((new stdgo.sort_test.Sort_test.Change(((("gri" : GoString))), ((("Smalltalk" : GoString))), ((80 : GoInt))) : stdgo.sort_test.Sort_test.Change))) : Slice<stdgo.sort_test.Sort_test.Change>));
var _data : Slice<GoInt> = {
        var s:Slice<GoInt> = new Slice<GoInt>(...([for (i in 0 ... 14) 0]));
        s[0] = ((-10 : GoInt));
        s[1] = ((-5 : GoInt));
        s[2] = ((0 : GoInt));
        s[3] = ((1 : GoInt));
        s[4] = ((2 : GoInt));
        s[5] = ((3 : GoInt));
        s[6] = ((5 : GoInt));
        s[7] = ((7 : GoInt));
        s[8] = ((11 : GoInt));
        s[9] = ((100 : GoInt));
        s[10] = ((100 : GoInt));
        s[11] = ((100 : GoInt));
        s[12] = ((1000 : GoInt));
        s[13] = ((10000 : GoInt));
        s;
    };
var _tests : Slice<stdgo.sort_test.Sort_test.T__struct_1> = ((new Slice<stdgo.sort_test.Sort_test.T__struct_1>(
((new stdgo.sort_test.Sort_test.T__struct_1(((("empty" : GoString))), ((0 : GoInt)), null, ((0 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_1)),
((new stdgo.sort_test.Sort_test.T__struct_1(((("1 1" : GoString))), ((1 : GoInt)), function(_i:GoInt):Bool {
        return _i >= ((1 : GoInt));
    }, ((1 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_1)),
((new stdgo.sort_test.Sort_test.T__struct_1(((("1 true" : GoString))), ((1 : GoInt)), function(_i:GoInt):Bool {
        return true;
    }, ((0 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_1)),
((new stdgo.sort_test.Sort_test.T__struct_1(((("1 false" : GoString))), ((1 : GoInt)), function(_i:GoInt):Bool {
        return false;
    }, ((1 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_1)),
((new stdgo.sort_test.Sort_test.T__struct_1(((("1e9 991" : GoString))), ((1e+09 : GoInt)), function(_i:GoInt):Bool {
        return _i >= ((991 : GoInt));
    }, ((991 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_1)),
((new stdgo.sort_test.Sort_test.T__struct_1(((("1e9 true" : GoString))), ((1e+09 : GoInt)), function(_i:GoInt):Bool {
        return true;
    }, ((0 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_1)),
((new stdgo.sort_test.Sort_test.T__struct_1(((("1e9 false" : GoString))), ((1e+09 : GoInt)), function(_i:GoInt):Bool {
        return false;
    }, ((1e+09 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_1)),
((new stdgo.sort_test.Sort_test.T__struct_1(((("data -20" : GoString))), (_data != null ? _data.length : ((0 : GoInt))), _f(_data, ((-20 : GoInt))), ((0 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_1)),
((new stdgo.sort_test.Sort_test.T__struct_1(((("data -10" : GoString))), (_data != null ? _data.length : ((0 : GoInt))), _f(_data, ((-10 : GoInt))), ((0 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_1)),
((new stdgo.sort_test.Sort_test.T__struct_1(((("data -9" : GoString))), (_data != null ? _data.length : ((0 : GoInt))), _f(_data, ((-9 : GoInt))), ((1 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_1)),
((new stdgo.sort_test.Sort_test.T__struct_1(((("data -6" : GoString))), (_data != null ? _data.length : ((0 : GoInt))), _f(_data, ((-6 : GoInt))), ((1 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_1)),
((new stdgo.sort_test.Sort_test.T__struct_1(((("data -5" : GoString))), (_data != null ? _data.length : ((0 : GoInt))), _f(_data, ((-5 : GoInt))), ((1 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_1)),
((new stdgo.sort_test.Sort_test.T__struct_1(((("data 3" : GoString))), (_data != null ? _data.length : ((0 : GoInt))), _f(_data, ((3 : GoInt))), ((5 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_1)),
((new stdgo.sort_test.Sort_test.T__struct_1(((("data 11" : GoString))), (_data != null ? _data.length : ((0 : GoInt))), _f(_data, ((11 : GoInt))), ((8 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_1)),
((new stdgo.sort_test.Sort_test.T__struct_1(((("data 99" : GoString))), (_data != null ? _data.length : ((0 : GoInt))), _f(_data, ((99 : GoInt))), ((9 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_1)),
((new stdgo.sort_test.Sort_test.T__struct_1(((("data 100" : GoString))), (_data != null ? _data.length : ((0 : GoInt))), _f(_data, ((100 : GoInt))), ((9 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_1)),
((new stdgo.sort_test.Sort_test.T__struct_1(((("data 101" : GoString))), (_data != null ? _data.length : ((0 : GoInt))), _f(_data, ((101 : GoInt))), ((12 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_1)),
((new stdgo.sort_test.Sort_test.T__struct_1(((("data 10000" : GoString))), (_data != null ? _data.length : ((0 : GoInt))), _f(_data, ((10000 : GoInt))), ((13 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_1)),
((new stdgo.sort_test.Sort_test.T__struct_1(((("data 10001" : GoString))), (_data != null ? _data.length : ((0 : GoInt))), _f(_data, ((10001 : GoInt))), ((14 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_1)),
((new stdgo.sort_test.Sort_test.T__struct_1(((("descending a" : GoString))), ((7 : GoInt)), function(_i:GoInt):Bool {
        return (((new Slice<GoInt>(((99 : GoInt)), ((99 : GoInt)), ((59 : GoInt)), ((42 : GoInt)), ((7 : GoInt)), ((0 : GoInt)), ((-1 : GoInt)), ((-1 : GoInt))) : Slice<GoInt>)) != null ? ((new Slice<GoInt>(((99 : GoInt)), ((99 : GoInt)), ((59 : GoInt)), ((42 : GoInt)), ((7 : GoInt)), ((0 : GoInt)), ((-1 : GoInt)), ((-1 : GoInt))) : Slice<GoInt>))[_i] : ((0 : GoInt))) <= ((7 : GoInt));
    }, ((4 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_1)),
((new stdgo.sort_test.Sort_test.T__struct_1(((("descending 7" : GoString))), ((1e+09 : GoInt)), function(_i:GoInt):Bool {
        return (((1e+09 : GoInt)) - _i) <= ((7 : GoInt));
    }, ((999999993 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_1)),
((new stdgo.sort_test.Sort_test.T__struct_1(((("overflow" : GoString))), ((2e+09 : GoInt)), function(_i:GoInt):Bool {
        return false;
    }, ((2e+09 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_1))) : Slice<stdgo.sort_test.Sort_test.T__struct_1>));
var _fdata : Slice<GoFloat64> = {
        var s:Slice<GoFloat64> = new Slice<GoFloat64>(...([for (i in 0 ... 5) 0]));
        s[0] = ((-3.14 : GoFloat64));
        s[1] = ((0 : GoFloat64));
        s[2] = ((1 : GoFloat64));
        s[3] = ((2 : GoFloat64));
        s[4] = ((1000.7 : GoFloat64));
        s;
    };
var _sdata : Slice<GoString> = {
        var s:Slice<GoString> = new Slice<GoString>(...([for (i in 0 ... 4) ""]));
        s[0] = ((("f" : GoString)));
        s[1] = ((("foo" : GoString)));
        s[2] = ((("foobar" : GoString)));
        s[3] = ((("x" : GoString)));
        s;
    };
var _wrappertests : Slice<stdgo.sort_test.Sort_test.T__struct_2> = ((new Slice<stdgo.sort_test.Sort_test.T__struct_2>(((new stdgo.sort_test.Sort_test.T__struct_2(((("SearchInts" : GoString))), searchInts(_data, ((11 : GoInt))), ((8 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_2)), ((new stdgo.sort_test.Sort_test.T__struct_2(((("SearchFloat64s" : GoString))), searchFloat64s(_fdata, ((2.1 : GoFloat64))), ((4 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_2)), ((new stdgo.sort_test.Sort_test.T__struct_2(((("SearchStrings" : GoString))), searchStrings(_sdata, ("")), ((0 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_2)), ((new stdgo.sort_test.Sort_test.T__struct_2(((("IntSlice.Search" : GoString))), ((_data : IntSlice)).search(((0 : GoInt))), ((2 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_2)), ((new stdgo.sort_test.Sort_test.T__struct_2(((("Float64Slice.Search" : GoString))), ((_fdata : Float64Slice)).search(((2 : GoFloat64))), ((3 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_2)), ((new stdgo.sort_test.Sort_test.T__struct_2(((("StringSlice.Search" : GoString))), ((_sdata : StringSlice)).search(((("x" : GoString)))), ((3 : GoInt))) : stdgo.sort_test.Sort_test.T__struct_2))) : Slice<stdgo.sort_test.Sort_test.T__struct_2>));
var _ints : GoArray<GoInt> = ((new GoArray<GoInt>(
((74 : GoInt)),
((59 : GoInt)),
((238 : GoInt)),
((-784 : GoInt)),
((9845 : GoInt)),
((959 : GoInt)),
((905 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((42 : GoInt)),
((7586 : GoInt)),
((-5467984 : GoInt)),
((7586 : GoInt))) : GoArray<GoInt>));
var _float64s : GoArray<GoFloat64> = ((new GoArray<GoFloat64>(
((74.3 : GoFloat64)),
((59 : GoFloat64)),
stdgo.math.Math.inf(((1 : GoInt))),
((238.2 : GoFloat64)),
((-784 : GoFloat64)),
((2.3 : GoFloat64)),
stdgo.math.Math.naN(),
stdgo.math.Math.naN(),
stdgo.math.Math.inf(((-1 : GoInt))),
((9845.768 : GoFloat64)),
((-959.7485 : GoFloat64)),
((905 : GoFloat64)),
((7.8 : GoFloat64)),
((7.8 : GoFloat64))) : GoArray<GoFloat64>));
var _strings : GoArray<GoString> = ((new GoArray<GoString>((""), ((("Hello" : GoString))), ((("foo" : GoString))), ((("bar" : GoString))), ((("foo" : GoString))), ((("f00" : GoString))), ((("%*&^*&^&" : GoString))), ((("***" : GoString)))) : GoArray<GoString>));
var _countOpsSizes : Slice<GoInt> = ((new Slice<GoInt>(((100 : GoInt)), ((300 : GoInt)), ((1000 : GoInt)), ((3000 : GoInt)), ((10000 : GoInt)), ((30000 : GoInt)), ((100000 : GoInt)), ((300000 : GoInt)), ((1e+06 : GoInt))) : Slice<GoInt>));
@:structInit @:using(stdgo.sort_test.Sort_test.Person_static_extension) class Person {
    @:keep
    public function toString():GoString {
        var _p = this;
        (_p == null ? null : _p.__copy__());
        return stdgo.fmt.Fmt.sprintf(((("%s: %d" : GoString))), Go.toInterface(_p.name), Go.toInterface(_p.age));
    }
    public var name : GoString = (("" : GoString));
    public var age : GoInt = ((0 : GoInt));
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
    public var _name : GoString = (("" : GoString));
    public var _mass : stdgo.sort_test.Sort_test.T_earthMass = new stdgo.sort_test.Sort_test.T_earthMass();
    public var _distance : stdgo.sort_test.Sort_test.T_au = new stdgo.sort_test.Sort_test.T_au();
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
    @:keep
    public function less(_i:GoInt, _j:GoInt):Bool {
        var _s = this;
        _s;
        return _s._by((_s._planets != null ? _s._planets[_i] : new stdgo.sort_test.Sort_test.Planet()), (_s._planets != null ? _s._planets[_j] : new stdgo.sort_test.Sort_test.Planet()));
    }
    @:keep
    public function swap(_i:GoInt, _j:GoInt):Void {
        var _s = this;
        _s;
        {
            final __tmp__0 = ((_s._planets != null ? _s._planets[_j] : new stdgo.sort_test.Sort_test.Planet()) == null ? null : (_s._planets != null ? _s._planets[_j] : new stdgo.sort_test.Sort_test.Planet()).__copy__());
            final __tmp__1 = ((_s._planets != null ? _s._planets[_i] : new stdgo.sort_test.Sort_test.Planet()) == null ? null : (_s._planets != null ? _s._planets[_i] : new stdgo.sort_test.Sort_test.Planet()).__copy__());
            if (_s._planets != null) _s._planets[_i] = __tmp__0;
            if (_s._planets != null) _s._planets[_j] = __tmp__1;
        };
    }
    @:keep
    public function len():GoInt {
        var _s = this;
        _s;
        return (_s._planets != null ? _s._planets.length : ((0 : GoInt)));
    }
    public var _planets : Slice<stdgo.sort_test.Sort_test.Planet> = ((null : Slice<stdgo.sort_test.Sort_test.Planet>));
    public var _by : (stdgo.sort_test.Sort_test.Planet, stdgo.sort_test.Sort_test.Planet) -> Bool = null;
    public function new(?_planets:Slice<stdgo.sort_test.Sort_test.Planet>, ?_by:(stdgo.sort_test.Sort_test.Planet, stdgo.sort_test.Sort_test.Planet) -> Bool) {
        if (_planets != null) this._planets = _planets;
        if (_by != null) this._by = _by;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_planetSorter(_planets, _by);
    }
}
@:structInit class Change {
    public var _user : GoString = (("" : GoString));
    public var _language : GoString = (("" : GoString));
    public var _lines : GoInt = ((0 : GoInt));
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
    @:keep
    public function less(_i:GoInt, _j:GoInt):Bool {
        var _ms = this;
        _ms;
        var _p:stdgo.sort_test.Sort_test.Change = (_ms._changes != null ? _ms._changes[_i] : new stdgo.sort_test.Sort_test.Change()), _q:stdgo.sort_test.Sort_test.Change = (_ms._changes != null ? _ms._changes[_j] : new stdgo.sort_test.Sort_test.Change());
        var _k:GoInt = ((0 : GoInt));
        {
            _k = ((0 : GoInt));
            Go.cfor(_k < ((_ms._less != null ? _ms._less.length : ((0 : GoInt))) - ((1 : GoInt))), _k++, {
                var _less:stdgo.sort_test.Sort_test.T_lessFunc = (_ms._less != null ? _ms._less[_k] : ((null : stdgo.sort_test.Sort_test.T_lessFunc)));
                if (_less(_p, _q)) {
                    return true;
                } else if (_less(_q, _p)) {
                    return false;
                };
            });
        };
        return (_ms._less != null ? _ms._less[_k] : ((null : stdgo.sort_test.Sort_test.T_lessFunc)))(_p, _q);
    }
    @:keep
    public function swap(_i:GoInt, _j:GoInt):Void {
        var _ms = this;
        _ms;
        {
            final __tmp__0 = ((_ms._changes != null ? _ms._changes[_j] : new stdgo.sort_test.Sort_test.Change()) == null ? null : (_ms._changes != null ? _ms._changes[_j] : new stdgo.sort_test.Sort_test.Change()).__copy__());
            final __tmp__1 = ((_ms._changes != null ? _ms._changes[_i] : new stdgo.sort_test.Sort_test.Change()) == null ? null : (_ms._changes != null ? _ms._changes[_i] : new stdgo.sort_test.Sort_test.Change()).__copy__());
            if (_ms._changes != null) _ms._changes[_i] = __tmp__0;
            if (_ms._changes != null) _ms._changes[_j] = __tmp__1;
        };
    }
    @:keep
    public function len():GoInt {
        var _ms = this;
        _ms;
        return (_ms._changes != null ? _ms._changes.length : ((0 : GoInt)));
    }
    @:keep
    public function sort(_changes:Slice<Change>):Void {
        var _ms = this;
        _ms;
        _ms._changes = _changes;
        stdgo.sort.Sort.sort(_ms);
    }
    public var _changes : Slice<stdgo.sort_test.Sort_test.Change> = ((null : Slice<stdgo.sort_test.Sort_test.Change>));
    public var _less : Slice<stdgo.sort_test.Sort_test.T_lessFunc> = ((null : Slice<stdgo.sort_test.Sort_test.T_lessFunc>));
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
    public var name : GoString = (("" : GoString));
    public var weight : stdgo.sort_test.Sort_test.Grams = new stdgo.sort_test.Sort_test.Grams();
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
    @:keep
    public function less(_i:GoInt, _j:GoInt):Bool {
        var _s = this;
        (_s == null ? null : _s.__copy__());
        return (_s.organs != null ? _s.organs[_i] : ((null : stdgo.sort_test.Sort_test.Organ))).name < (_s.organs != null ? _s.organs[_j] : ((null : stdgo.sort_test.Sort_test.Organ))).name;
    }
    @:embedded
    public var organs : stdgo.sort_test.Sort_test.Organs = new stdgo.sort_test.Sort_test.Organs();
    public function new(?organs:stdgo.sort_test.Sort_test.Organs) {
        if (organs != null) this.organs = organs;
    }
    public function len():GoInt return organs.len();
    public function swap(_i:GoInt, _j:GoInt) organs.swap(_i, _j);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ByName(organs);
    }
}
@:structInit @:using(stdgo.sort_test.Sort_test.ByWeight_static_extension) class ByWeight {
    @:keep
    public function less(_i:GoInt, _j:GoInt):Bool {
        var _s = this;
        (_s == null ? null : _s.__copy__());
        return (_s.organs != null ? _s.organs[_i] : ((null : stdgo.sort_test.Sort_test.Organ))).weight < (_s.organs != null ? _s.organs[_j] : ((null : stdgo.sort_test.Sort_test.Organ))).weight;
    }
    @:embedded
    public var organs : stdgo.sort_test.Sort_test.Organs = new stdgo.sort_test.Sort_test.Organs();
    public function new(?organs:stdgo.sort_test.Sort_test.Organs) {
        if (organs != null) this.organs = organs;
    }
    public function len():GoInt return organs.len();
    public function swap(_i:GoInt, _j:GoInt) organs.swap(_i, _j);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ByWeight(organs);
    }
}
@:structInit @:using(stdgo.sort_test.Sort_test.T_nonDeterministicTestingData_static_extension) class T_nonDeterministicTestingData {
    @:keep
    public function swap(_i:GoInt, _j:GoInt):Void {
        var _t = this;
        _t;
        if ((((_i < ((0 : GoInt))) || (_j < ((0 : GoInt)))) || (_i >= _t.len())) || (_j >= _t.len())) {
            throw Go.toInterface(((("nondeterministic comparison out of bounds" : GoString))));
        };
    }
    @:keep
    public function less(_i:GoInt, _j:GoInt):Bool {
        var _t = this;
        _t;
        if ((((_i < ((0 : GoInt))) || (_j < ((0 : GoInt)))) || (_i >= _t.len())) || (_j >= _t.len())) {
            throw Go.toInterface(((("nondeterministic comparison out of bounds" : GoString))));
        };
        return _t._r.float32() < ((0.5 : GoFloat32));
    }
    @:keep
    public function len():GoInt {
        var _t = this;
        _t;
        return ((500 : GoInt));
    }
    public var _r : stdgo.math.rand.Rand.Rand = ((null : stdgo.math.rand.Rand.Rand));
    public function new(?_r:stdgo.math.rand.Rand.Rand) {
        if (_r != null) this._r = _r;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_nonDeterministicTestingData(_r);
    }
}
@:structInit @:using(stdgo.sort_test.Sort_test.T_testingData_static_extension) class T_testingData {
    @:keep
    public function swap(_i:GoInt, _j:GoInt):Void {
        var _d = this;
        _d;
        if (_d._nswap >= _d._maxswap) {
            _d._t.fatalf(((("%s: used %d swaps sorting slice of %d" : GoString))), Go.toInterface(_d._desc), Go.toInterface(_d._nswap), Go.toInterface((_d._data != null ? _d._data.length : ((0 : GoInt)))));
        };
        _d._nswap++;
        {
            final __tmp__0 = (_d._data != null ? _d._data[_j] : ((0 : GoInt)));
            final __tmp__1 = (_d._data != null ? _d._data[_i] : ((0 : GoInt)));
            if (_d._data != null) _d._data[_i] = __tmp__0;
            if (_d._data != null) _d._data[_j] = __tmp__1;
        };
    }
    @:keep
    public function less(_i:GoInt, _j:GoInt):Bool {
        var _d = this;
        _d;
        _d._ncmp++;
        return (_d._data != null ? _d._data[_i] : ((0 : GoInt))) < (_d._data != null ? _d._data[_j] : ((0 : GoInt)));
    }
    @:keep
    public function len():GoInt {
        var _d = this;
        _d;
        return (_d._data != null ? _d._data.length : ((0 : GoInt)));
    }
    public var _desc : GoString = (("" : GoString));
    public var _t : stdgo.testing.Testing.T_ = ((null : stdgo.testing.Testing.T_));
    public var _data : Slice<GoInt> = ((null : Slice<GoInt>));
    public var _maxswap : GoInt = ((0 : GoInt));
    public var _ncmp : GoInt = ((0 : GoInt));
    public var _nswap : GoInt = ((0 : GoInt));
    public function new(?_desc:GoString, ?_t:stdgo.testing.Testing.T_, ?_data:Slice<GoInt>, ?_maxswap:GoInt, ?_ncmp:GoInt, ?_nswap:GoInt) {
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
    @:keep
    public function swap(_i:GoInt, _j:GoInt):Void {
        var _d = this;
        _d;
        {
            final __tmp__0 = (_d._data != null ? _d._data[_j] : ((0 : GoInt)));
            final __tmp__1 = (_d._data != null ? _d._data[_i] : ((0 : GoInt)));
            if (_d._data != null) _d._data[_i] = __tmp__0;
            if (_d._data != null) _d._data[_j] = __tmp__1;
        };
    }
    @:keep
    public function less(_i:GoInt, _j:GoInt):Bool {
        var _d = this;
        _d;
        if (_d._ncmp >= _d._maxcmp) {
            _d._t.fatalf(((("used %d comparisons sorting adversary data with size %d" : GoString))), Go.toInterface(_d._ncmp), Go.toInterface((_d._data != null ? _d._data.length : ((0 : GoInt)))));
        };
        _d._ncmp++;
        if (((_d._data != null ? _d._data[_i] : ((0 : GoInt))) == _d._gas) && ((_d._data != null ? _d._data[_j] : ((0 : GoInt))) == _d._gas)) {
            if (_i == _d._candidate) {
                if (_d._data != null) _d._data[_i] = _d._nsolid;
                _d._nsolid++;
            } else {
                if (_d._data != null) _d._data[_j] = _d._nsolid;
                _d._nsolid++;
            };
        };
        if ((_d._data != null ? _d._data[_i] : ((0 : GoInt))) == _d._gas) {
            _d._candidate = _i;
        } else if ((_d._data != null ? _d._data[_j] : ((0 : GoInt))) == _d._gas) {
            _d._candidate = _j;
        };
        return (_d._data != null ? _d._data[_i] : ((0 : GoInt))) < (_d._data != null ? _d._data[_j] : ((0 : GoInt)));
    }
    @:keep
    public function len():GoInt {
        var _d = this;
        _d;
        return (_d._data != null ? _d._data.length : ((0 : GoInt)));
    }
    public var _t : stdgo.testing.Testing.T_ = ((null : stdgo.testing.Testing.T_));
    public var _data : Slice<GoInt> = ((null : Slice<GoInt>));
    public var _maxcmp : GoInt = ((0 : GoInt));
    public var _ncmp : GoInt = ((0 : GoInt));
    public var _nsolid : GoInt = ((0 : GoInt));
    public var _candidate : GoInt = ((0 : GoInt));
    public var _gas : GoInt = ((0 : GoInt));
    public function new(?_t:stdgo.testing.Testing.T_, ?_data:Slice<GoInt>, ?_maxcmp:GoInt, ?_ncmp:GoInt, ?_nsolid:GoInt, ?_candidate:GoInt, ?_gas:GoInt) {
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
@:structInit @:local class T__struct_0 {
    public var name : GoString = (("" : GoString));
    public var age : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(name) + " " + Go.string(age) + "}";
    public function new(?name:GoString, ?age:GoInt, ?toString) {
        if (name != null) this.name = name;
        if (age != null) this.age = age;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0(name, age);
    }
}
@:structInit @:local class T__struct_1 {
    public var _name : GoString = (("" : GoString));
    public var _n : GoInt = ((0 : GoInt));
    public var _f : GoInt -> Bool = null;
    public var _i : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_n) + " " + Go.string(_f) + " " + Go.string(_i) + "}";
    public function new(?_name:GoString, ?_n:GoInt, ?_f:GoInt -> Bool, ?_i:GoInt, ?toString) {
        if (_name != null) this._name = _name;
        if (_n != null) this._n = _n;
        if (_f != null) this._f = _f;
        if (_i != null) this._i = _i;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_1(_name, _n, _f, _i);
    }
}
@:structInit @:local class T__struct_2 {
    public var _name : GoString = (("" : GoString));
    public var _result : GoInt = ((0 : GoInt));
    public var _i : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_result) + " " + Go.string(_i) + "}";
    public function new(?_name:GoString, ?_result:GoInt, ?_i:GoInt, ?toString) {
        if (_name != null) this._name = _name;
        if (_result != null) this._result = _result;
        if (_i != null) this._i = _i;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_2(_name, _result, _i);
    }
}
@:structInit @:local class T__struct_3 {
    public var _a : GoInt = ((0 : GoInt));
    public var _b : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(_a) + " " + Go.string(_b) + "}";
    public function new(?_a:GoInt, ?_b:GoInt, ?toString) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_3(_a, _b);
    }
}
@:named @:using(stdgo.sort_test.Sort_test.ByAge_static_extension) typedef ByAge = Slice<stdgo.sort_test.Sort_test.Person>;
@:named typedef T_earthMass = GoFloat64;
@:named typedef T_au = GoFloat64;
@:named @:using(stdgo.sort_test.Sort_test.By_static_extension) typedef By = (stdgo.sort_test.Sort_test.Planet, stdgo.sort_test.Sort_test.Planet) -> Bool;
@:named typedef T_lessFunc = (stdgo.sort_test.Sort_test.Change, stdgo.sort_test.Sort_test.Change) -> Bool;
@:named @:using(stdgo.sort_test.Sort_test.Grams_static_extension) typedef Grams = GoInt;
@:named @:using(stdgo.sort_test.Sort_test.Organs_static_extension) typedef Organs = Slice<stdgo.sort_test.Sort_test.Organ>;
@:named @:using(stdgo.sort_test.Sort_test.T_intPairs_static_extension) typedef T_intPairs = Slice<stdgo.sort_test.Sort_test.T__struct_3>;
function example():Void {
        var _people:Slice<stdgo.sort_test.Sort_test.Person> = ((new Slice<stdgo.sort_test.Sort_test.Person>(((new stdgo.sort_test.Sort_test.Person(((("Bob" : GoString))), ((31 : GoInt))) : stdgo.sort_test.Sort_test.Person)), ((new stdgo.sort_test.Sort_test.Person(((("John" : GoString))), ((42 : GoInt))) : stdgo.sort_test.Sort_test.Person)), ((new stdgo.sort_test.Sort_test.Person(((("Michael" : GoString))), ((17 : GoInt))) : stdgo.sort_test.Sort_test.Person)), ((new stdgo.sort_test.Sort_test.Person(((("Jenny" : GoString))), ((26 : GoInt))) : stdgo.sort_test.Sort_test.Person))) : Slice<stdgo.sort_test.Sort_test.Person>));
        stdgo.fmt.Fmt.println(_people);
        stdgo.sort.Sort.sort(new stdgo.sort_test.Sort_test.ByAge_wrapper(((_people : ByAge))));
        stdgo.fmt.Fmt.println(_people);
        stdgo.sort.Sort.slice(Go.toInterface(_people), function(_i:GoInt, _j:GoInt):Bool {
            return (_people != null ? _people[_i] : new stdgo.sort_test.Sort_test.Person()).age > (_people != null ? _people[_j] : new stdgo.sort_test.Sort_test.Person()).age;
        });
        stdgo.fmt.Fmt.println(_people);
    }
function example_sortKeys():Void {
        var _name:(stdgo.sort_test.Sort_test.Planet, stdgo.sort_test.Sort_test.Planet) -> Bool = function(_p1:Planet, _p2:Planet):Bool {
            return _p1._name < _p2._name;
        };
        var _mass:(stdgo.sort_test.Sort_test.Planet, stdgo.sort_test.Sort_test.Planet) -> Bool = function(_p1:Planet, _p2:Planet):Bool {
            return _p1._mass < _p2._mass;
        };
        var _distance:(stdgo.sort_test.Sort_test.Planet, stdgo.sort_test.Sort_test.Planet) -> Bool = function(_p1:Planet, _p2:Planet):Bool {
            return _p1._distance < _p2._distance;
        };
        var _decreasingDistance:(stdgo.sort_test.Sort_test.Planet, stdgo.sort_test.Sort_test.Planet) -> Bool = function(_p1:Planet, _p2:Planet):Bool {
            return _distance(_p2, _p1);
        };
        ((_name : By)).sort(_planets);
        stdgo.fmt.Fmt.println(((("By name:" : GoString))), _planets);
        ((_mass : By)).sort(_planets);
        stdgo.fmt.Fmt.println(((("By mass:" : GoString))), _planets);
        ((_distance : By)).sort(_planets);
        stdgo.fmt.Fmt.println(((("By distance:" : GoString))), _planets);
        ((_decreasingDistance : By)).sort(_planets);
        stdgo.fmt.Fmt.println(((("By decreasing distance:" : GoString))), _planets);
    }
function orderedBy(_less:haxe.Rest<T_lessFunc>):T_multiSorter {
        var _less = new Slice<T_lessFunc>(..._less);
        return (({ _less : _less, _changes : ((null : Slice<stdgo.sort_test.Sort_test.Change>)) } : stdgo.sort_test.Sort_test.T_multiSorter));
    }
function example_sortMultiKeys():Void {
        var _user:(stdgo.sort_test.Sort_test.Change, stdgo.sort_test.Sort_test.Change) -> Bool = function(_c1:Change, _c2:Change):Bool {
            return _c1._user < _c2._user;
        };
        var _language:(stdgo.sort_test.Sort_test.Change, stdgo.sort_test.Sort_test.Change) -> Bool = function(_c1:Change, _c2:Change):Bool {
            return _c1._language < _c2._language;
        };
        var _increasingLines:(stdgo.sort_test.Sort_test.Change, stdgo.sort_test.Sort_test.Change) -> Bool = function(_c1:Change, _c2:Change):Bool {
            return _c1._lines < _c2._lines;
        };
        var _decreasingLines:(stdgo.sort_test.Sort_test.Change, stdgo.sort_test.Sort_test.Change) -> Bool = function(_c1:Change, _c2:Change):Bool {
            return _c1._lines > _c2._lines;
        };
        orderedBy(_user).sort(_changes);
        stdgo.fmt.Fmt.println(((("By user:" : GoString))), _changes);
        orderedBy(_user, _increasingLines).sort(_changes);
        stdgo.fmt.Fmt.println(((("By user,<lines:" : GoString))), _changes);
        orderedBy(_user, _decreasingLines).sort(_changes);
        stdgo.fmt.Fmt.println(((("By user,>lines:" : GoString))), _changes);
        orderedBy(_language, _increasingLines).sort(_changes);
        stdgo.fmt.Fmt.println(((("By language,<lines:" : GoString))), _changes);
        orderedBy(_language, _increasingLines, _user).sort(_changes);
        stdgo.fmt.Fmt.println(((("By language,<lines,user:" : GoString))), _changes);
    }
function exampleSearch():Void {
        var _a:Slice<GoInt> = ((new Slice<GoInt>(((1 : GoInt)), ((3 : GoInt)), ((6 : GoInt)), ((10 : GoInt)), ((15 : GoInt)), ((21 : GoInt)), ((28 : GoInt)), ((36 : GoInt)), ((45 : GoInt)), ((55 : GoInt))) : Slice<GoInt>));
        var _x:GoInt = ((6 : GoInt));
        var _i:GoInt = stdgo.sort.Sort.search((_a != null ? _a.length : ((0 : GoInt))), function(_i:GoInt):Bool {
            return (_a != null ? _a[_i] : ((0 : GoInt))) >= _x;
        });
        if ((_i < (_a != null ? _a.length : ((0 : GoInt)))) && ((_a != null ? _a[_i] : ((0 : GoInt))) == _x)) {
            stdgo.fmt.Fmt.printf(((("found %d at index %d in %v\n" : GoString))), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
        } else {
            stdgo.fmt.Fmt.printf(((("%d not found in %v\n" : GoString))), Go.toInterface(_x), Go.toInterface(_a));
        };
    }
function exampleSearch_descendingOrder():Void {
        var _a:Slice<GoInt> = ((new Slice<GoInt>(((55 : GoInt)), ((45 : GoInt)), ((36 : GoInt)), ((28 : GoInt)), ((21 : GoInt)), ((15 : GoInt)), ((10 : GoInt)), ((6 : GoInt)), ((3 : GoInt)), ((1 : GoInt))) : Slice<GoInt>));
        var _x:GoInt = ((6 : GoInt));
        var _i:GoInt = stdgo.sort.Sort.search((_a != null ? _a.length : ((0 : GoInt))), function(_i:GoInt):Bool {
            return (_a != null ? _a[_i] : ((0 : GoInt))) <= _x;
        });
        if ((_i < (_a != null ? _a.length : ((0 : GoInt)))) && ((_a != null ? _a[_i] : ((0 : GoInt))) == _x)) {
            stdgo.fmt.Fmt.printf(((("found %d at index %d in %v\n" : GoString))), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
        } else {
            stdgo.fmt.Fmt.printf(((("%d not found in %v\n" : GoString))), Go.toInterface(_x), Go.toInterface(_a));
        };
    }
function exampleSearchFloat64s():Void {
        var _a:Slice<GoFloat64> = ((new Slice<GoFloat64>(((1 : GoFloat64)), ((2 : GoFloat64)), ((3.3 : GoFloat64)), ((4.6 : GoFloat64)), ((6.1 : GoFloat64)), ((7.2 : GoFloat64)), ((8 : GoFloat64))) : Slice<GoFloat64>));
        var _x:GoFloat64 = ((2 : GoFloat64));
        var _i:GoInt = stdgo.sort.Sort.searchFloat64s(_a, _x);
        stdgo.fmt.Fmt.printf(((("found %g at index %d in %v\n" : GoString))), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
        _x = ((0.5 : GoFloat64));
        _i = stdgo.sort.Sort.searchFloat64s(_a, _x);
        stdgo.fmt.Fmt.printf(((("%g not found, can be inserted at index %d in %v\n" : GoString))), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
    }
function exampleSearchInts():Void {
        var _a:Slice<GoInt> = ((new Slice<GoInt>(((1 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((6 : GoInt)), ((7 : GoInt)), ((8 : GoInt))) : Slice<GoInt>));
        var _x:GoInt = ((2 : GoInt));
        var _i:GoInt = stdgo.sort.Sort.searchInts(_a, _x);
        stdgo.fmt.Fmt.printf(((("found %d at index %d in %v\n" : GoString))), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
        _x = ((5 : GoInt));
        _i = stdgo.sort.Sort.searchInts(_a, _x);
        stdgo.fmt.Fmt.printf(((("%d not found, can be inserted at index %d in %v\n" : GoString))), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
    }
function exampleInts():Void {
        var _s:Slice<GoInt> = ((new Slice<GoInt>(((5 : GoInt)), ((2 : GoInt)), ((6 : GoInt)), ((3 : GoInt)), ((1 : GoInt)), ((4 : GoInt))) : Slice<GoInt>));
        stdgo.sort.Sort.ints(_s);
        stdgo.fmt.Fmt.println(_s);
    }
function exampleIntsAreSorted():Void {
        var _s:Slice<GoInt> = ((new Slice<GoInt>(((1 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((5 : GoInt)), ((6 : GoInt))) : Slice<GoInt>));
        stdgo.fmt.Fmt.println(stdgo.sort.Sort.intsAreSorted(_s));
        _s = ((new Slice<GoInt>(((6 : GoInt)), ((5 : GoInt)), ((4 : GoInt)), ((3 : GoInt)), ((2 : GoInt)), ((1 : GoInt))) : Slice<GoInt>));
        stdgo.fmt.Fmt.println(stdgo.sort.Sort.intsAreSorted(_s));
        _s = ((new Slice<GoInt>(((3 : GoInt)), ((2 : GoInt)), ((4 : GoInt)), ((1 : GoInt)), ((5 : GoInt))) : Slice<GoInt>));
        stdgo.fmt.Fmt.println(stdgo.sort.Sort.intsAreSorted(_s));
    }
function exampleFloat64s():Void {
        var _s:Slice<GoFloat64> = ((new Slice<GoFloat64>(((5.2 : GoFloat64)), ((-1.3 : GoFloat64)), ((0.7 : GoFloat64)), ((-3.8 : GoFloat64)), ((2.6 : GoFloat64))) : Slice<GoFloat64>));
        stdgo.sort.Sort.float64s(_s);
        stdgo.fmt.Fmt.println(_s);
        _s = ((new Slice<GoFloat64>(stdgo.math.Math.inf(((1 : GoInt))), stdgo.math.Math.naN(), stdgo.math.Math.inf(((-1 : GoInt))), ((0 : GoFloat64))) : Slice<GoFloat64>));
        stdgo.sort.Sort.float64s(_s);
        stdgo.fmt.Fmt.println(_s);
    }
function exampleFloat64sAreSorted():Void {
        var _s:Slice<GoFloat64> = ((new Slice<GoFloat64>(((0.7 : GoFloat64)), ((1.3 : GoFloat64)), ((2.6 : GoFloat64)), ((3.8 : GoFloat64)), ((5.2 : GoFloat64))) : Slice<GoFloat64>));
        stdgo.fmt.Fmt.println(stdgo.sort.Sort.float64sAreSorted(_s));
        _s = ((new Slice<GoFloat64>(((5.2 : GoFloat64)), ((3.8 : GoFloat64)), ((2.6 : GoFloat64)), ((1.3 : GoFloat64)), ((0.7 : GoFloat64))) : Slice<GoFloat64>));
        stdgo.fmt.Fmt.println(stdgo.sort.Sort.float64sAreSorted(_s));
        _s = ((new Slice<GoFloat64>(((5.2 : GoFloat64)), ((1.3 : GoFloat64)), ((0.7 : GoFloat64)), ((3.8 : GoFloat64)), ((2.6 : GoFloat64))) : Slice<GoFloat64>));
        stdgo.fmt.Fmt.println(stdgo.sort.Sort.float64sAreSorted(_s));
    }
function exampleReverse():Void {
        var _s:Slice<GoInt> = ((new Slice<GoInt>(((5 : GoInt)), ((2 : GoInt)), ((6 : GoInt)), ((3 : GoInt)), ((1 : GoInt)), ((4 : GoInt))) : Slice<GoInt>));
        stdgo.sort.Sort.sort(stdgo.sort.Sort.reverse(new IntSlice_wrapper(((_s : IntSlice)))));
        stdgo.fmt.Fmt.println(_s);
    }
function exampleSlice():Void {
        var _people:Slice<stdgo.sort_test.Sort_test.Person> = ((new Slice<stdgo.sort_test.Sort_test.Person>(((new stdgo.sort_test.Sort_test.Person(((("Gopher" : GoString))), ((7 : GoInt))) : stdgo.sort_test.Sort_test.Person)), ((new stdgo.sort_test.Sort_test.Person(((("Alice" : GoString))), ((55 : GoInt))) : stdgo.sort_test.Sort_test.Person)), ((new stdgo.sort_test.Sort_test.Person(((("Vera" : GoString))), ((24 : GoInt))) : stdgo.sort_test.Sort_test.Person)), ((new stdgo.sort_test.Sort_test.Person(((("Bob" : GoString))), ((75 : GoInt))) : stdgo.sort_test.Sort_test.Person))) : Slice<stdgo.sort_test.Sort_test.Person>));
        stdgo.sort.Sort.slice(Go.toInterface(_people), function(_i:GoInt, _j:GoInt):Bool {
            return (_people != null ? _people[_i] : new stdgo.sort_test.Sort_test.Person()).name < (_people != null ? _people[_j] : new stdgo.sort_test.Sort_test.Person()).name;
        });
        stdgo.fmt.Fmt.println(((("By name:" : GoString))), _people);
        stdgo.sort.Sort.slice(Go.toInterface(_people), function(_i:GoInt, _j:GoInt):Bool {
            return (_people != null ? _people[_i] : new stdgo.sort_test.Sort_test.Person()).age < (_people != null ? _people[_j] : new stdgo.sort_test.Sort_test.Person()).age;
        });
        stdgo.fmt.Fmt.println(((("By age:" : GoString))), _people);
    }
function exampleSliceStable():Void {
        var _people:Slice<stdgo.sort_test.Sort_test.Person> = ((new Slice<stdgo.sort_test.Sort_test.Person>(((new stdgo.sort_test.Sort_test.Person(((("Alice" : GoString))), ((25 : GoInt))) : stdgo.sort_test.Sort_test.Person)), ((new stdgo.sort_test.Sort_test.Person(((("Elizabeth" : GoString))), ((75 : GoInt))) : stdgo.sort_test.Sort_test.Person)), ((new stdgo.sort_test.Sort_test.Person(((("Alice" : GoString))), ((75 : GoInt))) : stdgo.sort_test.Sort_test.Person)), ((new stdgo.sort_test.Sort_test.Person(((("Bob" : GoString))), ((75 : GoInt))) : stdgo.sort_test.Sort_test.Person)), ((new stdgo.sort_test.Sort_test.Person(((("Alice" : GoString))), ((75 : GoInt))) : stdgo.sort_test.Sort_test.Person)), ((new stdgo.sort_test.Sort_test.Person(((("Bob" : GoString))), ((25 : GoInt))) : stdgo.sort_test.Sort_test.Person)), ((new stdgo.sort_test.Sort_test.Person(((("Colin" : GoString))), ((25 : GoInt))) : stdgo.sort_test.Sort_test.Person)), ((new stdgo.sort_test.Sort_test.Person(((("Elizabeth" : GoString))), ((25 : GoInt))) : stdgo.sort_test.Sort_test.Person))) : Slice<stdgo.sort_test.Sort_test.Person>));
        stdgo.sort.Sort.sliceStable(Go.toInterface(_people), function(_i:GoInt, _j:GoInt):Bool {
            return (_people != null ? _people[_i] : new stdgo.sort_test.Sort_test.Person()).name < (_people != null ? _people[_j] : new stdgo.sort_test.Sort_test.Person()).name;
        });
        stdgo.fmt.Fmt.println(((("By name:" : GoString))), _people);
        stdgo.sort.Sort.sliceStable(Go.toInterface(_people), function(_i:GoInt, _j:GoInt):Bool {
            return (_people != null ? _people[_i] : new stdgo.sort_test.Sort_test.Person()).age < (_people != null ? _people[_j] : new stdgo.sort_test.Sort_test.Person()).age;
        });
        stdgo.fmt.Fmt.println(((("By age,name:" : GoString))), _people);
    }
function exampleStrings():Void {
        var _s:Slice<GoString> = ((new Slice<GoString>(((("Go" : GoString))), ((("Bravo" : GoString))), ((("Gopher" : GoString))), ((("Alpha" : GoString))), ((("Grin" : GoString))), ((("Delta" : GoString)))) : Slice<GoString>));
        stdgo.sort.Sort.strings(_s);
        stdgo.fmt.Fmt.println(_s);
    }
function example_sortWrapper():Void {
        var _s:Slice<stdgo.sort_test.Sort_test.Organ> = ((new Slice<stdgo.sort_test.Sort_test.Organ>(((new stdgo.sort_test.Sort_test.Organ(((("brain" : GoString))), ((1340 : GoInt))) : stdgo.sort_test.Sort_test.Organ)), ((new stdgo.sort_test.Sort_test.Organ(((("heart" : GoString))), ((290 : GoInt))) : stdgo.sort_test.Sort_test.Organ)), ((new stdgo.sort_test.Sort_test.Organ(((("liver" : GoString))), ((1494 : GoInt))) : stdgo.sort_test.Sort_test.Organ)), ((new stdgo.sort_test.Sort_test.Organ(((("pancreas" : GoString))), ((131 : GoInt))) : stdgo.sort_test.Sort_test.Organ)), ((new stdgo.sort_test.Sort_test.Organ(((("prostate" : GoString))), ((62 : GoInt))) : stdgo.sort_test.Sort_test.Organ)), ((new stdgo.sort_test.Sort_test.Organ(((("spleen" : GoString))), ((162 : GoInt))) : stdgo.sort_test.Sort_test.Organ))) : Slice<stdgo.sort_test.Sort_test.Organ>));
        stdgo.sort.Sort.sort(((new stdgo.sort_test.Sort_test.ByWeight((_s == null ? null : _s.__copy__())) : stdgo.sort_test.Sort_test.ByWeight)));
        stdgo.fmt.Fmt.println(((("Organs by weight:" : GoString))));
        _printOrgans(_s);
        stdgo.sort.Sort.sort(((new stdgo.sort_test.Sort_test.ByName((_s == null ? null : _s.__copy__())) : stdgo.sort_test.Sort_test.ByName)));
        stdgo.fmt.Fmt.println(((("Organs by name:" : GoString))));
        _printOrgans(_s);
    }
function _printOrgans(_s:Slice<Organ>):Void {
        for (_0 => _o in _s) {
            stdgo.fmt.Fmt.printf(((("%-8s (%v)\n" : GoString))), Go.toInterface(_o.name), Go.toInterface(_o.weight));
        };
    }
function _f(_a:Slice<GoInt>, _x:GoInt):GoInt -> Bool {
        return function(_i:GoInt):Bool {
            return (_a != null ? _a[_i] : ((0 : GoInt))) >= _x;
        };
    }
function testSearch(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _e in _tests) {
            var _i:GoInt = search(_e._n, _e._f);
            if (_i != _e._i) {
                _t.errorf(((("%s: expected index %d; got %d" : GoString))), Go.toInterface(_e._name), Go.toInterface(_e._i), Go.toInterface(_i));
            };
        };
    }
function _log2(_x:GoInt):GoInt {
        var _n:GoInt = ((0 : GoInt));
        {
            var _p:GoInt = ((1 : GoInt));
            Go.cfor(_p < _x, _p = _p + (_p), {
                _n++;
            });
        };
        return _n;
    }
function testSearchEfficiency(_t:stdgo.testing.Testing.T_):Void {
        var _n:GoInt = ((100 : GoInt));
        var _step:GoInt = ((1 : GoInt));
        {
            var _exp:GoInt = ((2 : GoInt));
            Go.cfor(_exp < ((10 : GoInt)), _exp++, {
                var _max:GoInt = _log2(_n);
                {
                    var _x:GoInt = ((0 : GoInt));
                    Go.cfor(_x < _n, _x = _x + (_step), {
                        var _count:GoInt = ((0 : GoInt));
                        var _i:GoInt = search(_n, function(_i:GoInt):Bool {
                            _count++;
                            return _i >= _x;
                        });
                        if (_i != _x) {
                            _t.errorf(((("n = %d: expected index %d; got %d" : GoString))), Go.toInterface(_n), Go.toInterface(_x), Go.toInterface(_i));
                        };
                        if (_count > _max) {
                            _t.errorf(((("n = %d, x = %d: expected <= %d calls; got %d" : GoString))), Go.toInterface(_n), Go.toInterface(_x), Go.toInterface(_max), Go.toInterface(_count));
                        };
                    });
                };
                _n = _n * (((10 : GoInt)));
                _step = _step * (((10 : GoInt)));
            });
        };
    }
function testSearchWrappers(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _e in _wrappertests) {
            if (_e._result != _e._i) {
                _t.errorf(((("%s: expected index %d; got %d" : GoString))), Go.toInterface(_e._name), Go.toInterface(_e._i), Go.toInterface(_e._result));
            };
        };
    }
function _runSearchWrappers():Void {
        searchInts(_data, ((11 : GoInt)));
        searchFloat64s(_fdata, ((2.1 : GoFloat64)));
        searchStrings(_sdata, (""));
        ((_data : IntSlice)).search(((0 : GoInt)));
        ((_fdata : Float64Slice)).search(((2 : GoFloat64)));
        ((_sdata : StringSlice)).search(((("x" : GoString))));
    }
function testSearchWrappersDontAlloc(_t:stdgo.testing.Testing.T_):Void {
        if (stdgo.testing.Testing.short()) {
            _t.skip(Go.toInterface(((("skipping malloc count in short mode" : GoString)))));
        };
        if (stdgo.runtime.Runtime.gomaxprocs(((0 : GoInt))) > ((1 : GoInt))) {
            _t.skip(Go.toInterface(((("skipping; GOMAXPROCS>1" : GoString)))));
        };
        var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun(((100 : GoInt)), _runSearchWrappers);
        if (_allocs != ((0 : GoFloat64))) {
            _t.errorf(((("expected no allocs for runSearchWrappers, got %v" : GoString))), Go.toInterface(_allocs));
        };
    }
function benchmarkSearchWrappers(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _runSearchWrappers();
            });
        };
    }
function testSearchExhaustive(_t:stdgo.testing.Testing.T_):Void {
        {
            var _size:GoInt = ((0 : GoInt));
            Go.cfor(_size <= ((100 : GoInt)), _size++, {
                {
                    var _targ:GoInt = ((0 : GoInt));
                    Go.cfor(_targ <= _size, _targ++, {
                        var _i:GoInt = search(_size, function(_i:GoInt):Bool {
                            return _i >= _targ;
                        });
                        if (_i != _targ) {
                            _t.errorf(((("Search(%d, %d) = %d" : GoString))), Go.toInterface(_size), Go.toInterface(_targ), Go.toInterface(_i));
                        };
                    });
                };
            });
        };
    }
function testSortIntSlice(_t:stdgo.testing.Testing.T_):Void {
        var _data:GoArray<GoInt> = (_ints == null ? null : _ints.__copy__());
        var _a:IntSlice = (((_data.__slice__(((0 : GoInt))) : IntSlice)) == null ? null : ((_data.__slice__(((0 : GoInt))) : IntSlice)).__copy__());
        sort(new IntSlice_wrapper(_a));
        if (!isSorted(new IntSlice_wrapper(_a))) {
            _t.errorf(((("sorted %v" : GoString))), Go.toInterface(_ints));
            _t.errorf(((("   got %v" : GoString))), Go.toInterface(_data));
        };
    }
function testSortFloat64Slice(_t:stdgo.testing.Testing.T_):Void {
        var _data:GoArray<GoFloat64> = (_float64s == null ? null : _float64s.__copy__());
        var _a:Float64Slice = (((_data.__slice__(((0 : GoInt))) : Float64Slice)) == null ? null : ((_data.__slice__(((0 : GoInt))) : Float64Slice)).__copy__());
        sort(new Float64Slice_wrapper(_a));
        if (!isSorted(new Float64Slice_wrapper(_a))) {
            _t.errorf(((("sorted %v" : GoString))), Go.toInterface(_float64s));
            _t.errorf(((("   got %v" : GoString))), Go.toInterface(_data));
        };
    }
function testSortStringSlice(_t:stdgo.testing.Testing.T_):Void {
        var _data:GoArray<GoString> = (_strings == null ? null : _strings.__copy__());
        var _a:StringSlice = (((_data.__slice__(((0 : GoInt))) : StringSlice)) == null ? null : ((_data.__slice__(((0 : GoInt))) : StringSlice)).__copy__());
        sort(new StringSlice_wrapper(_a));
        if (!isSorted(new StringSlice_wrapper(_a))) {
            _t.errorf(((("sorted %v" : GoString))), Go.toInterface(_strings));
            _t.errorf(((("   got %v" : GoString))), Go.toInterface(_data));
        };
    }
function testInts(_t:stdgo.testing.Testing.T_):Void {
        var _data:GoArray<GoInt> = (_ints == null ? null : _ints.__copy__());
        ints(_data.__slice__(((0 : GoInt))));
        if (!intsAreSorted(_data.__slice__(((0 : GoInt))))) {
            _t.errorf(((("sorted %v" : GoString))), Go.toInterface(_ints));
            _t.errorf(((("   got %v" : GoString))), Go.toInterface(_data));
        };
    }
function testFloat64s(_t:stdgo.testing.Testing.T_):Void {
        var _data:GoArray<GoFloat64> = (_float64s == null ? null : _float64s.__copy__());
        float64s(_data.__slice__(((0 : GoInt))));
        if (!float64sAreSorted(_data.__slice__(((0 : GoInt))))) {
            _t.errorf(((("sorted %v" : GoString))), Go.toInterface(_float64s));
            _t.errorf(((("   got %v" : GoString))), Go.toInterface(_data));
        };
    }
function testStrings(_t:stdgo.testing.Testing.T_):Void {
        var _data:GoArray<GoString> = (_strings == null ? null : _strings.__copy__());
        strings(_data.__slice__(((0 : GoInt))));
        if (!stringsAreSorted(_data.__slice__(((0 : GoInt))))) {
            _t.errorf(((("sorted %v" : GoString))), Go.toInterface(_strings));
            _t.errorf(((("   got %v" : GoString))), Go.toInterface(_data));
        };
    }
function testSlice(_t:stdgo.testing.Testing.T_):Void {
        var _data:GoArray<GoString> = (_strings == null ? null : _strings.__copy__());
        slice(Go.toInterface(_data.__slice__(0)), function(_i:GoInt, _j:GoInt):Bool {
            return (_data != null ? _data[_i] : (("" : GoString))) < (_data != null ? _data[_j] : (("" : GoString)));
        });
        if (!sliceIsSorted(Go.toInterface(_data.__slice__(0)), function(_i:GoInt, _j:GoInt):Bool {
            return (_data != null ? _data[_i] : (("" : GoString))) < (_data != null ? _data[_j] : (("" : GoString)));
        })) {
            _t.errorf(((("sorted %v" : GoString))), Go.toInterface(_strings));
            _t.errorf(((("   got %v" : GoString))), Go.toInterface(_data));
        };
    }
function testSortLarge_Random(_t:stdgo.testing.Testing.T_):Void {
        var _n:GoInt = ((1000000 : GoInt));
        if (stdgo.testing.Testing.short()) {
            _n = _n / (((100 : GoInt)));
        };
        var _data:Slice<GoInt> = new Slice<GoInt>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoInt))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_data != null ? _data.length : ((0 : GoInt))), _i++, {
                if (_data != null) _data[_i] = stdgo.math.rand.Rand.intn(((100 : GoInt)));
            });
        };
        if (intsAreSorted(_data)) {
            _t.fatalf(((("terrible rand.rand" : GoString))));
        };
        ints(_data);
        if (!intsAreSorted(_data)) {
            _t.errorf(((("sort didn\'t sort - 1M ints" : GoString))));
        };
    }
function testReverseSortIntSlice(_t:stdgo.testing.Testing.T_):Void {
        var _data:GoArray<GoInt> = (_ints == null ? null : _ints.__copy__());
        var _data1:GoArray<GoInt> = (_ints == null ? null : _ints.__copy__());
        var _a:IntSlice = (((_data.__slice__(((0 : GoInt))) : IntSlice)) == null ? null : ((_data.__slice__(((0 : GoInt))) : IntSlice)).__copy__());
        sort(new IntSlice_wrapper(_a));
        var _r:IntSlice = (((_data1.__slice__(((0 : GoInt))) : IntSlice)) == null ? null : ((_data1.__slice__(((0 : GoInt))) : IntSlice)).__copy__());
        sort(reverse(new IntSlice_wrapper(_r)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_data != null ? _data.length : ((0 : GoInt))), _i++, {
                if ((_a != null ? _a[_i] : ((0 : GoInt))) != (_r != null ? _r[((12 : GoInt)) - _i] : ((0 : GoInt)))) {
                    _t.errorf(((("reverse sort didn\'t sort" : GoString))));
                };
                if (_i > ((6 : GoInt))) {
                    break;
                };
            });
        };
    }
function testNonDeterministicComparison(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
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
            var _td:stdgo.sort_test.Sort_test.T_nonDeterministicTestingData = (({ _r : stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(((0 : GoInt64)))) } : stdgo.sort_test.Sort_test.T_nonDeterministicTestingData));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((10 : GoInt)), _i++, {
                    sort(_td);
                });
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function benchmarkSortString1K(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        var _unsorted:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]);
        for (_i => _ in _unsorted) {
            if (_unsorted != null) _unsorted[_i] = stdgo.strconv.Strconv.itoa(_i ^ ((716 : GoInt)));
        };
        var _data:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... (((_unsorted != null ? _unsorted.length : ((0 : GoInt))) : GoInt)).toBasic()) (("" : GoString))]);
        {
            var _i:GoInt = ((0 : GoInt));
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
        var _unsorted:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]);
        for (_i => _ in _unsorted) {
            if (_unsorted != null) _unsorted[_i] = stdgo.strconv.Strconv.itoa(_i ^ ((716 : GoInt)));
        };
        var _data:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... (((_unsorted != null ? _unsorted.length : ((0 : GoInt))) : GoInt)).toBasic()) (("" : GoString))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                Go.copySlice(_data, _unsorted);
                _b.startTimer();
                slice(Go.toInterface(_data), function(_i:GoInt, _j:GoInt):Bool {
                    return (_data != null ? _data[_i] : (("" : GoString))) < (_data != null ? _data[_j] : (("" : GoString)));
                });
                _b.stopTimer();
            });
        };
    }
function benchmarkStableString1K(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        var _unsorted:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]);
        for (_i => _ in _unsorted) {
            if (_unsorted != null) _unsorted[_i] = stdgo.strconv.Strconv.itoa(_i ^ ((716 : GoInt)));
        };
        var _data:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... (((_unsorted != null ? _unsorted.length : ((0 : GoInt))) : GoInt)).toBasic()) (("" : GoString))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                Go.copySlice(_data, _unsorted);
                _b.startTimer();
                stable(new StringSlice_wrapper(((_data : StringSlice))));
                _b.stopTimer();
            });
        };
    }
function benchmarkSortInt1K(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                var _data:Slice<GoInt> = new Slice<GoInt>(...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt))]);
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < (_data != null ? _data.length : ((0 : GoInt))), _i++, {
                        if (_data != null) _data[_i] = _i ^ ((716 : GoInt));
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
        var _unsorted:Slice<GoInt> = new Slice<GoInt>(...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt))]);
        for (_i => _ in _unsorted) {
            if (_unsorted != null) _unsorted[_i] = _i ^ ((716 : GoInt));
        };
        var _data:Slice<GoInt> = new Slice<GoInt>(...[for (i in 0 ... (((_unsorted != null ? _unsorted.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoInt))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                Go.copySlice(_data, _unsorted);
                _b.startTimer();
                stable(new IntSlice_wrapper(((_data : IntSlice))));
                _b.stopTimer();
            });
        };
    }
function benchmarkStableInt1K_Slice(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        var _unsorted:Slice<GoInt> = new Slice<GoInt>(...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt))]);
        for (_i => _ in _unsorted) {
            if (_unsorted != null) _unsorted[_i] = _i ^ ((716 : GoInt));
        };
        var _data:Slice<GoInt> = new Slice<GoInt>(...[for (i in 0 ... (((_unsorted != null ? _unsorted.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoInt))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                Go.copySlice(_data, _unsorted);
                _b.startTimer();
                sliceStable(Go.toInterface(_data), function(_i:GoInt, _j:GoInt):Bool {
                    return (_data != null ? _data[_i] : ((0 : GoInt))) < (_data != null ? _data[_j] : ((0 : GoInt)));
                });
                _b.stopTimer();
            });
        };
    }
function benchmarkSortInt64K(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                var _data:Slice<GoInt> = new Slice<GoInt>(...[for (i in 0 ... ((((65536 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt))]);
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < (_data != null ? _data.length : ((0 : GoInt))), _i++, {
                        if (_data != null) _data[_i] = _i ^ ((52428 : GoInt));
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
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                var _data:Slice<GoInt> = new Slice<GoInt>(...[for (i in 0 ... ((((65536 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt))]);
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < (_data != null ? _data.length : ((0 : GoInt))), _i++, {
                        if (_data != null) _data[_i] = _i ^ ((52428 : GoInt));
                    });
                };
                _b.startTimer();
                slice(Go.toInterface(_data), function(_i:GoInt, _j:GoInt):Bool {
                    return (_data != null ? _data[_i] : ((0 : GoInt))) < (_data != null ? _data[_j] : ((0 : GoInt)));
                });
                _b.stopTimer();
            });
        };
    }
function benchmarkStableInt64K(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                var _data:Slice<GoInt> = new Slice<GoInt>(...[for (i in 0 ... ((((65536 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt))]);
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < (_data != null ? _data.length : ((0 : GoInt))), _i++, {
                        if (_data != null) _data[_i] = _i ^ ((52428 : GoInt));
                    });
                };
                _b.startTimer();
                stable(new IntSlice_wrapper(((_data : IntSlice))));
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
        var _i:GoInt = ((0 : GoInt));
        while ((((1 : GoInt)) << ((_i : GoUInt))) < _n) {
            _i++;
        };
        return _i;
    }
function _testBentleyMcIlroy(_t:stdgo.testing.Testing.T_, _sort:Interface -> Void, _maxswap:GoInt -> GoInt):Void {
        var _sizes:Slice<GoInt> = ((new Slice<GoInt>(((100 : GoInt)), ((1023 : GoInt)), ((1024 : GoInt)), ((1025 : GoInt))) : Slice<GoInt>));
        if (stdgo.testing.Testing.short()) {
            _sizes = ((new Slice<GoInt>(((100 : GoInt)), ((127 : GoInt)), ((128 : GoInt)), ((129 : GoInt))) : Slice<GoInt>));
        };
        var _dists:Slice<GoString> = ((new Slice<GoString>(((("sawtooth" : GoString))), ((("rand" : GoString))), ((("stagger" : GoString))), ((("plateau" : GoString))), ((("shuffle" : GoString)))) : Slice<GoString>));
        var _modes:Slice<GoString> = ((new Slice<GoString>(((("copy" : GoString))), ((("reverse" : GoString))), ((("reverse1" : GoString))), ((("reverse2" : GoString))), ((("sort" : GoString))), ((("dither" : GoString)))) : Slice<GoString>));
        var _tmp1:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 1025) ((0 : GoInt))]), _tmp2:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 1025) ((0 : GoInt))]);
        for (_0 => _n in _sizes) {
            {
                var _m:GoInt = ((1 : GoInt));
                Go.cfor(_m < (((2 : GoInt)) * _n), _m = _m * (((2 : GoInt))), {
                    {
                        var _dist:GoInt = ((0 : GoInt));
                        Go.cfor(_dist < ((5 : GoInt)), _dist++, {
                            var _j:GoInt = ((0 : GoInt));
                            var _k:GoInt = ((1 : GoInt));
                            var _data:Slice<GoInt> = _tmp1.__slice__(((0 : GoInt)), _n);
                            {
                                var _i:GoInt = ((0 : GoInt));
                                Go.cfor(_i < _n, _i++, {
                                    if (_dist == ((0 : GoInt))) {
                                        if (_data != null) _data[_i] = _i % _m;
                                    } else if (_dist == ((1 : GoInt))) {
                                        if (_data != null) _data[_i] = stdgo.math.rand.Rand.intn(_m);
                                    } else if (_dist == ((2 : GoInt))) {
                                        if (_data != null) _data[_i] = ((_i * _m) + _i) % _n;
                                    } else if (_dist == ((3 : GoInt))) {
                                        if (_data != null) _data[_i] = _min(_i, _m);
                                    } else if (_dist == ((4 : GoInt))) {
                                        if (stdgo.math.rand.Rand.intn(_m) != ((0 : GoInt))) {
                                            _j = _j + (((2 : GoInt)));
                                            if (_data != null) _data[_i] = _j;
                                        } else {
                                            _k = _k + (((2 : GoInt)));
                                            if (_data != null) _data[_i] = _k;
                                        };
                                    };
                                });
                            };
                            var _mdata:Slice<GoInt> = _tmp2.__slice__(((0 : GoInt)), _n);
                            {
                                var _mode:GoInt = ((0 : GoInt));
                                Go.cfor(_mode < ((6 : GoInt)), _mode++, {
                                    if (_mode == ((0 : GoInt))) {
                                        {
                                            var _i:GoInt = ((0 : GoInt));
                                            Go.cfor(_i < _n, _i++, {
                                                if (_mdata != null) _mdata[_i] = (_data != null ? _data[_i] : ((0 : GoInt)));
                                            });
                                        };
                                    } else if (_mode == ((1 : GoInt))) {
                                        {
                                            var _i:GoInt = ((0 : GoInt));
                                            Go.cfor(_i < _n, _i++, {
                                                if (_mdata != null) _mdata[_i] = (_data != null ? _data[(_n - _i) - ((1 : GoInt))] : ((0 : GoInt)));
                                            });
                                        };
                                    } else if (_mode == ((2 : GoInt))) {
                                        {
                                            var _i:GoInt = ((0 : GoInt));
                                            Go.cfor(_i < (_n / ((2 : GoInt))), _i++, {
                                                if (_mdata != null) _mdata[_i] = (_data != null ? _data[((_n / ((2 : GoInt))) - _i) - ((1 : GoInt))] : ((0 : GoInt)));
                                            });
                                        };
                                        {
                                            var _i:GoInt = _n / ((2 : GoInt));
                                            Go.cfor(_i < _n, _i++, {
                                                if (_mdata != null) _mdata[_i] = (_data != null ? _data[_i] : ((0 : GoInt)));
                                            });
                                        };
                                    } else if (_mode == ((3 : GoInt))) {
                                        {
                                            var _i:GoInt = ((0 : GoInt));
                                            Go.cfor(_i < (_n / ((2 : GoInt))), _i++, {
                                                if (_mdata != null) _mdata[_i] = (_data != null ? _data[_i] : ((0 : GoInt)));
                                            });
                                        };
                                        {
                                            var _i:GoInt = _n / ((2 : GoInt));
                                            Go.cfor(_i < _n, _i++, {
                                                if (_mdata != null) _mdata[_i] = (_data != null ? _data[(_n - (_i - (_n / ((2 : GoInt))))) - ((1 : GoInt))] : ((0 : GoInt)));
                                            });
                                        };
                                    } else if (_mode == ((4 : GoInt))) {
                                        {
                                            var _i:GoInt = ((0 : GoInt));
                                            Go.cfor(_i < _n, _i++, {
                                                if (_mdata != null) _mdata[_i] = (_data != null ? _data[_i] : ((0 : GoInt)));
                                            });
                                        };
                                        ints(_mdata);
                                    } else if (_mode == ((5 : GoInt))) {
                                        {
                                            var _i:GoInt = ((0 : GoInt));
                                            Go.cfor(_i < _n, _i++, {
                                                if (_mdata != null) _mdata[_i] = (_data != null ? _data[_i] : ((0 : GoInt))) + (_i % ((5 : GoInt)));
                                            });
                                        };
                                    };
                                    var _desc:GoString = stdgo.fmt.Fmt.sprintf(((("n=%d m=%d dist=%s mode=%s" : GoString))), Go.toInterface(_n), Go.toInterface(_m), Go.toInterface((_dists != null ? _dists[_dist] : (("" : GoString)))), Go.toInterface((_modes != null ? _modes[_mode] : (("" : GoString)))));
                                    var _d:stdgo.sort_test.Sort_test.T_testingData = (({ _desc : _desc, _t : _t, _data : _mdata.__slice__(((0 : GoInt)), _n), _maxswap : _maxswap(_n), _ncmp : 0, _nswap : 0 } : stdgo.sort_test.Sort_test.T_testingData));
                                    _sort(_d);
                                    if (!intsAreSorted(_mdata)) {
                                        _t.fatalf(((("%s: ints not sorted\n\t%v" : GoString))), Go.toInterface(_desc), Go.toInterface(_mdata));
                                    };
                                });
                            };
                        });
                    };
                });
            };
        };
    }
function testSortBM(_t:stdgo.testing.Testing.T_):Void {
        _testBentleyMcIlroy(_t, sort, function(_n:GoInt):GoInt {
            return ((_n * _lg(_n)) * ((12 : GoInt))) / ((10 : GoInt));
        });
    }
function testHeapsortBM(_t:stdgo.testing.Testing.T_):Void {
        _testBentleyMcIlroy(_t, heapsort, function(_n:GoInt):GoInt {
            return ((_n * _lg(_n)) * ((12 : GoInt))) / ((10 : GoInt));
        });
    }
function testStableBM(_t:stdgo.testing.Testing.T_):Void {
        _testBentleyMcIlroy(_t, stable, function(_n:GoInt):GoInt {
            return ((_n * _lg(_n)) * _lg(_n)) / ((3 : GoInt));
        });
    }
function _newAdversaryTestingData(_t:stdgo.testing.Testing.T_, _size:GoInt, _maxcmp:GoInt):T_adversaryTestingData {
        var _gas:GoInt = _size - ((1 : GoInt));
        var _data:Slice<GoInt> = new Slice<GoInt>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoInt))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _size, _i++, {
                if (_data != null) _data[_i] = _gas;
            });
        };
        return (({ _t : _t, _data : _data, _maxcmp : _maxcmp, _gas : _gas, _ncmp : 0, _nsolid : 0, _candidate : 0 } : stdgo.sort_test.Sort_test.T_adversaryTestingData));
    }
function testAdversary(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _maxcmp:GoInt = (((10000 : GoInt)) * _lg(((10000 : GoInt)))) * ((4 : GoInt));
        var _d:stdgo.sort_test.Sort_test.T_adversaryTestingData = _newAdversaryTestingData(_t, ((10000 : GoInt)), _maxcmp);
        sort(_d);
        for (_i => _v in _d._data) {
            if (_v != _i) {
                _t.fatalf(((("adversary data not fully sorted" : GoString))));
            };
        };
    }
function testStableInts(_t:stdgo.testing.Testing.T_):Void {
        var _data:GoArray<GoInt> = (_ints == null ? null : _ints.__copy__());
        stable(new IntSlice_wrapper(((_data.__slice__(((0 : GoInt))) : IntSlice))));
        if (!intsAreSorted(_data.__slice__(((0 : GoInt))))) {
            _t.errorf(((("nsorted %v\n   got %v" : GoString))), Go.toInterface(_ints), Go.toInterface(_data));
        };
    }
function testStability(_t:stdgo.testing.Testing.T_):Void {
        var _n:GoInt = ((100000 : GoInt)), _m:GoInt = ((1000 : GoInt));
        if (stdgo.testing.Testing.short()) {
            {
                final __tmp__0 = ((1000 : GoInt));
                final __tmp__1 = ((100 : GoInt));
                _n = __tmp__0;
                _m = __tmp__1;
            };
        };
        var _data:stdgo.sort_test.Sort_test.T_intPairs = new Slice<stdgo.sort_test.Sort_test.T__struct_3>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) new stdgo.sort_test.Sort_test.T__struct_3()]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_data != null ? _data.length : ((0 : GoInt))), _i++, {
                (_data != null ? _data[_i] : new stdgo.sort_test.Sort_test.T__struct_3())._a = stdgo.math.rand.Rand.intn(_m);
            });
        };
        if (isSorted(new stdgo.sort_test.Sort_test.T_intPairs_wrapper(_data))) {
            _t.fatalf(((("terrible rand.rand" : GoString))));
        };
        _data._initB();
        stable(new stdgo.sort_test.Sort_test.T_intPairs_wrapper(_data));
        if (!isSorted(new stdgo.sort_test.Sort_test.T_intPairs_wrapper(_data))) {
            _t.errorf(((("Stable didn\'t sort %d ints" : GoString))), Go.toInterface(_n));
        };
        if (!_data._inOrder()) {
            _t.errorf(((("Stable wasn\'t stable on %d ints" : GoString))), Go.toInterface(_n));
        };
        _data._initB();
        stable(new stdgo.sort_test.Sort_test.T_intPairs_wrapper(_data));
        if (!isSorted(new stdgo.sort_test.Sort_test.T_intPairs_wrapper(_data))) {
            _t.errorf(((("Stable shuffled sorted %d ints (order)" : GoString))), Go.toInterface(_n));
        };
        if (!_data._inOrder()) {
            _t.errorf(((("Stable shuffled sorted %d ints (stability)" : GoString))), Go.toInterface(_n));
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_data != null ? _data.length : ((0 : GoInt))), _i++, {
                (_data != null ? _data[_i] : new stdgo.sort_test.Sort_test.T__struct_3())._a = (_data != null ? _data.length : ((0 : GoInt))) - _i;
            });
        };
        _data._initB();
        stable(new stdgo.sort_test.Sort_test.T_intPairs_wrapper(_data));
        if (!isSorted(new stdgo.sort_test.Sort_test.T_intPairs_wrapper(_data))) {
            _t.errorf(((("Stable didn\'t sort %d ints" : GoString))), Go.toInterface(_n));
        };
        if (!_data._inOrder()) {
            _t.errorf(((("Stable wasn\'t stable on %d ints" : GoString))), Go.toInterface(_n));
        };
    }
function _countOps(_t:stdgo.testing.Testing.T_, _algo:Interface -> Void, _name:GoString):Void {
        var _sizes:Slice<GoInt> = _countOpsSizes;
        if (stdgo.testing.Testing.short()) {
            _sizes = _sizes.__slice__(0, ((5 : GoInt)));
        };
        if (!stdgo.testing.Testing.verbose()) {
            _t.skip(Go.toInterface(((("Counting skipped as non-verbose mode." : GoString)))));
        };
        for (_0 => _n in _sizes) {
            var _td:stdgo.sort_test.Sort_test.T_testingData = ((({ _desc : _name, _t : _t, _data : new Slice<GoInt>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoInt))]), _maxswap : ((2147483647 : GoInt)), _ncmp : 0, _nswap : 0 } : stdgo.sort_test.Sort_test.T_testingData)) == null ? null : (({ _desc : _name, _t : _t, _data : new Slice<GoInt>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoInt))]), _maxswap : ((2147483647 : GoInt)), _ncmp : 0, _nswap : 0 } : stdgo.sort_test.Sort_test.T_testingData)).__copy__());
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _n, _i++, {
                    if (_td._data != null) _td._data[_i] = stdgo.math.rand.Rand.intn(_n / ((5 : GoInt)));
                });
            };
            _algo(_td);
            _t.logf(((("%s %8d elements: %11d Swap, %10d Less" : GoString))), Go.toInterface(_name), Go.toInterface(_n), Go.toInterface(_td._nswap), Go.toInterface(_td._ncmp));
        };
    }
function testCountStableOps(_t:stdgo.testing.Testing.T_):Void {
        _countOps(_t, stable, ((("Stable" : GoString))));
    }
function testCountSortOps(_t:stdgo.testing.Testing.T_):Void {
        _countOps(_t, sort, ((("Sort  " : GoString))));
    }
function _bench(_b:stdgo.testing.Testing.B, _size:GoInt, _algo:Interface -> Void, _name:GoString):Void {
        if (stdgo.strings.Strings.hasSuffix(stdgo.internal.testenv.Testenv.builder(), ((("-race" : GoString)))) && (_size > ((10000 : GoInt)))) {
            _b.skip(Go.toInterface(((("skipping slow benchmark on race builder" : GoString)))));
        };
        _b.stopTimer();
        var _data:stdgo.sort_test.Sort_test.T_intPairs = new Slice<stdgo.sort_test.Sort_test.T__struct_3>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) new stdgo.sort_test.Sort_test.T__struct_3()]);
        var _x:GoUInt32 = (("4294967295" : GoUInt32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                {
                    var _n:GoInt = _size - ((3 : GoInt));
                    Go.cfor(_n <= (_size + ((3 : GoInt))), _n++, {
                        {
                            var _i:GoInt = ((0 : GoInt));
                            Go.cfor(_i < (_data != null ? _data.length : ((0 : GoInt))), _i++, {
                                _x = _x + (_x);
                                _x = _x ^ (((1 : GoUInt32)));
                                if (((_x : GoInt32)) < ((0 : GoInt32))) {
                                    _x = _x ^ ((("2290650863" : GoUInt32)));
                                };
                                (_data != null ? _data[_i] : new stdgo.sort_test.Sort_test.T__struct_3())._a = (((_x % (((_n / ((5 : GoInt))) : GoUInt32))) : GoInt));
                            });
                        };
                        _data._initB();
                        _b.startTimer();
                        _algo(new stdgo.sort_test.Sort_test.T_intPairs_wrapper(_data));
                        _b.stopTimer();
                        if (!isSorted(new stdgo.sort_test.Sort_test.T_intPairs_wrapper(_data))) {
                            _b.errorf(((("%s did not sort %d ints" : GoString))), Go.toInterface(_name), Go.toInterface(_n));
                        };
                        if ((_name == ((("Stable" : GoString)))) && !_data._inOrder()) {
                            _b.errorf(((("%s unstable on %d ints" : GoString))), Go.toInterface(_name), Go.toInterface(_n));
                        };
                    });
                };
            });
        };
    }
function benchmarkSort1e2(_b:stdgo.testing.Testing.B):Void {
        _bench(_b, ((100 : GoInt)), sort, ((("Sort" : GoString))));
    }
function benchmarkStable1e2(_b:stdgo.testing.Testing.B):Void {
        _bench(_b, ((100 : GoInt)), stable, ((("Stable" : GoString))));
    }
function benchmarkSort1e4(_b:stdgo.testing.Testing.B):Void {
        _bench(_b, ((10000 : GoInt)), sort, ((("Sort" : GoString))));
    }
function benchmarkStable1e4(_b:stdgo.testing.Testing.B):Void {
        _bench(_b, ((10000 : GoInt)), stable, ((("Stable" : GoString))));
    }
function benchmarkSort1e6(_b:stdgo.testing.Testing.B):Void {
        _bench(_b, ((1e+06 : GoInt)), sort, ((("Sort" : GoString))));
    }
function benchmarkStable1e6(_b:stdgo.testing.Testing.B):Void {
        _bench(_b, ((1e+06 : GoInt)), stable, ((("Stable" : GoString))));
    }
@:keep class Person_static_extension {

}
class Person_wrapper {
    public var __t__ : Person;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_planetSorter_static_extension {

}
class T_planetSorter_wrapper {
    public var __t__ : T_planetSorter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_multiSorter_static_extension {

}
class T_multiSorter_wrapper {
    public var __t__ : T_multiSorter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class ByName_static_extension {

}
class ByName_wrapper {
    public var __t__ : ByName;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class ByWeight_static_extension {

}
class ByWeight_wrapper {
    public var __t__ : ByWeight;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_nonDeterministicTestingData_static_extension {

}
class T_nonDeterministicTestingData_wrapper {
    public var __t__ : T_nonDeterministicTestingData;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_testingData_static_extension {

}
class T_testingData_wrapper {
    public var __t__ : T_testingData;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_adversaryTestingData_static_extension {

}
class T_adversaryTestingData_wrapper {
    public var __t__ : T_adversaryTestingData;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class ByAge_static_extension {
    @:keep
    public static function less(_a:stdgo.sort_test.Sort_test.ByAge, _i:GoInt, _j:GoInt):Bool {
        (_a == null ? null : _a.__copy__());
        return (_a != null ? _a[_i] : new stdgo.sort_test.Sort_test.Person()).age < (_a != null ? _a[_j] : new stdgo.sort_test.Sort_test.Person()).age;
    }
    @:keep
    public static function swap(_a:stdgo.sort_test.Sort_test.ByAge, _i:GoInt, _j:GoInt):Void {
        (_a == null ? null : _a.__copy__());
        {
            final __tmp__0 = ((_a != null ? _a[_j] : new stdgo.sort_test.Sort_test.Person()) == null ? null : (_a != null ? _a[_j] : new stdgo.sort_test.Sort_test.Person()).__copy__());
            final __tmp__1 = ((_a != null ? _a[_i] : new stdgo.sort_test.Sort_test.Person()) == null ? null : (_a != null ? _a[_i] : new stdgo.sort_test.Sort_test.Person()).__copy__());
            if (_a != null) _a[_i] = __tmp__0;
            if (_a != null) _a[_j] = __tmp__1;
        };
    }
    @:keep
    public static function len(_a:stdgo.sort_test.Sort_test.ByAge):GoInt {
        (_a == null ? null : _a.__copy__());
        return (_a != null ? _a.length : ((0 : GoInt)));
    }
}
class ByAge_wrapper {
    @:keep
    public function less(_i:GoInt, _j:GoInt):Bool {
        var _a = __t__;
        (_a == null ? null : _a.__copy__());
        return (_a != null ? _a[_i] : new stdgo.sort_test.Sort_test.Person()).age < (_a != null ? _a[_j] : new stdgo.sort_test.Sort_test.Person()).age;
    }
    @:keep
    public function swap(_i:GoInt, _j:GoInt):Void {
        var _a = __t__;
        (_a == null ? null : _a.__copy__());
        {
            final __tmp__0 = ((_a != null ? _a[_j] : new stdgo.sort_test.Sort_test.Person()) == null ? null : (_a != null ? _a[_j] : new stdgo.sort_test.Sort_test.Person()).__copy__());
            final __tmp__1 = ((_a != null ? _a[_i] : new stdgo.sort_test.Sort_test.Person()) == null ? null : (_a != null ? _a[_i] : new stdgo.sort_test.Sort_test.Person()).__copy__());
            if (_a != null) _a[_i] = __tmp__0;
            if (_a != null) _a[_j] = __tmp__1;
        };
    }
    @:keep
    public function len():GoInt {
        var _a = __t__;
        (_a == null ? null : _a.__copy__());
        return (_a != null ? _a.length : ((0 : GoInt)));
    }
    public var __t__ : ByAge;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class By_static_extension {
    @:keep
    public static function sort(_by:stdgo.sort_test.Sort_test.By, _planets:Slice<Planet>):Void {
        _by;
        var _ps:stdgo.sort_test.Sort_test.T_planetSorter = (({ _planets : _planets, _by : _by } : stdgo.sort_test.Sort_test.T_planetSorter));
        stdgo.sort.Sort.sort(_ps);
    }
}
class By_wrapper {
    @:keep
    public function sort(_planets:Slice<Planet>):Void {
        var _by = __t__;
        _by;
        var _ps:stdgo.sort_test.Sort_test.T_planetSorter = (({ _planets : _planets, _by : _by } : stdgo.sort_test.Sort_test.T_planetSorter));
        stdgo.sort.Sort.sort(_ps);
    }
    public var __t__ : By;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class Grams_static_extension {
    @:keep
    public static function toString(_g:stdgo.sort_test.Sort_test.Grams):GoString {
        _g;
        return stdgo.fmt.Fmt.sprintf(((("%dg" : GoString))), Go.toInterface(((_g : GoInt))));
    }
}
class Grams_wrapper {
    @:keep
    public function toString():GoString {
        var _g = __t__;
        _g;
        return stdgo.fmt.Fmt.sprintf(((("%dg" : GoString))), Go.toInterface(((_g : GoInt))));
    }
    public var __t__ : Grams;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class Organs_static_extension {
    @:keep
    public static function swap(_s:stdgo.sort_test.Sort_test.Organs, _i:GoInt, _j:GoInt):Void {
        (_s == null ? null : _s.__copy__());
        {
            final __tmp__0 = (_s != null ? _s[_j] : ((null : stdgo.sort_test.Sort_test.Organ)));
            final __tmp__1 = (_s != null ? _s[_i] : ((null : stdgo.sort_test.Sort_test.Organ)));
            if (_s != null) _s[_i] = __tmp__0;
            if (_s != null) _s[_j] = __tmp__1;
        };
    }
    @:keep
    public static function len(_s:stdgo.sort_test.Sort_test.Organs):GoInt {
        (_s == null ? null : _s.__copy__());
        return (_s != null ? _s.length : ((0 : GoInt)));
    }
}
class Organs_wrapper {
    @:keep
    public function swap(_i:GoInt, _j:GoInt):Void {
        var _s = __t__;
        (_s == null ? null : _s.__copy__());
        {
            final __tmp__0 = (_s != null ? _s[_j] : ((null : stdgo.sort_test.Sort_test.Organ)));
            final __tmp__1 = (_s != null ? _s[_i] : ((null : stdgo.sort_test.Sort_test.Organ)));
            if (_s != null) _s[_i] = __tmp__0;
            if (_s != null) _s[_j] = __tmp__1;
        };
    }
    @:keep
    public function len():GoInt {
        var _s = __t__;
        (_s == null ? null : _s.__copy__());
        return (_s != null ? _s.length : ((0 : GoInt)));
    }
    public var __t__ : Organs;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_intPairs_static_extension {
    @:keep
    public static function _inOrder(_d:stdgo.sort_test.Sort_test.T_intPairs):Bool {
        (_d == null ? null : _d.__copy__());
        var _lastA:GoInt = ((-1 : GoInt)), _lastB:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_d != null ? _d.length : ((0 : GoInt))), _i++, {
                if (_lastA != (_d != null ? _d[_i] : new stdgo.sort_test.Sort_test.T__struct_3())._a) {
                    _lastA = (_d != null ? _d[_i] : new stdgo.sort_test.Sort_test.T__struct_3())._a;
                    _lastB = (_d != null ? _d[_i] : new stdgo.sort_test.Sort_test.T__struct_3())._b;
                    continue;
                };
                if ((_d != null ? _d[_i] : new stdgo.sort_test.Sort_test.T__struct_3())._b <= _lastB) {
                    return false;
                };
                _lastB = (_d != null ? _d[_i] : new stdgo.sort_test.Sort_test.T__struct_3())._b;
            });
        };
        return true;
    }
    @:keep
    public static function _initB(_d:stdgo.sort_test.Sort_test.T_intPairs):Void {
        (_d == null ? null : _d.__copy__());
        for (_i => _ in _d) {
            (_d != null ? _d[_i] : new stdgo.sort_test.Sort_test.T__struct_3())._b = _i;
        };
    }
    @:keep
    public static function swap(_d:stdgo.sort_test.Sort_test.T_intPairs, _i:GoInt, _j:GoInt):Void {
        (_d == null ? null : _d.__copy__());
        {
            final __tmp__0 = ((_d != null ? _d[_j] : new stdgo.sort_test.Sort_test.T__struct_3()) == null ? null : (_d != null ? _d[_j] : new stdgo.sort_test.Sort_test.T__struct_3()).__copy__());
            final __tmp__1 = ((_d != null ? _d[_i] : new stdgo.sort_test.Sort_test.T__struct_3()) == null ? null : (_d != null ? _d[_i] : new stdgo.sort_test.Sort_test.T__struct_3()).__copy__());
            if (_d != null) _d[_i] = __tmp__0;
            if (_d != null) _d[_j] = __tmp__1;
        };
    }
    @:keep
    public static function less(_d:stdgo.sort_test.Sort_test.T_intPairs, _i:GoInt, _j:GoInt):Bool {
        (_d == null ? null : _d.__copy__());
        return (_d != null ? _d[_i] : new stdgo.sort_test.Sort_test.T__struct_3())._a < (_d != null ? _d[_j] : new stdgo.sort_test.Sort_test.T__struct_3())._a;
    }
    @:keep
    public static function len(_d:stdgo.sort_test.Sort_test.T_intPairs):GoInt {
        (_d == null ? null : _d.__copy__());
        return (_d != null ? _d.length : ((0 : GoInt)));
    }
}
class T_intPairs_wrapper {
    @:keep
    public function _inOrder():Bool {
        var _d = __t__;
        (_d == null ? null : _d.__copy__());
        var _lastA:GoInt = ((-1 : GoInt)), _lastB:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_d != null ? _d.length : ((0 : GoInt))), _i++, {
                if (_lastA != (_d != null ? _d[_i] : new stdgo.sort_test.Sort_test.T__struct_3())._a) {
                    _lastA = (_d != null ? _d[_i] : new stdgo.sort_test.Sort_test.T__struct_3())._a;
                    _lastB = (_d != null ? _d[_i] : new stdgo.sort_test.Sort_test.T__struct_3())._b;
                    continue;
                };
                if ((_d != null ? _d[_i] : new stdgo.sort_test.Sort_test.T__struct_3())._b <= _lastB) {
                    return false;
                };
                _lastB = (_d != null ? _d[_i] : new stdgo.sort_test.Sort_test.T__struct_3())._b;
            });
        };
        return true;
    }
    @:keep
    public function _initB():Void {
        var _d = __t__;
        (_d == null ? null : _d.__copy__());
        for (_i => _ in _d) {
            (_d != null ? _d[_i] : new stdgo.sort_test.Sort_test.T__struct_3())._b = _i;
        };
    }
    @:keep
    public function swap(_i:GoInt, _j:GoInt):Void {
        var _d = __t__;
        (_d == null ? null : _d.__copy__());
        {
            final __tmp__0 = ((_d != null ? _d[_j] : new stdgo.sort_test.Sort_test.T__struct_3()) == null ? null : (_d != null ? _d[_j] : new stdgo.sort_test.Sort_test.T__struct_3()).__copy__());
            final __tmp__1 = ((_d != null ? _d[_i] : new stdgo.sort_test.Sort_test.T__struct_3()) == null ? null : (_d != null ? _d[_i] : new stdgo.sort_test.Sort_test.T__struct_3()).__copy__());
            if (_d != null) _d[_i] = __tmp__0;
            if (_d != null) _d[_j] = __tmp__1;
        };
    }
    @:keep
    public function less(_i:GoInt, _j:GoInt):Bool {
        var _d = __t__;
        (_d == null ? null : _d.__copy__());
        return (_d != null ? _d[_i] : new stdgo.sort_test.Sort_test.T__struct_3())._a < (_d != null ? _d[_j] : new stdgo.sort_test.Sort_test.T__struct_3())._a;
    }
    @:keep
    public function len():GoInt {
        var _d = __t__;
        (_d == null ? null : _d.__copy__());
        return (_d != null ? _d.length : ((0 : GoInt)));
    }
    public var __t__ : T_intPairs;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
