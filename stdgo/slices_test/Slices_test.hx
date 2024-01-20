package stdgo.slices_test;
import stdgo.slices.Slices;
function exampleBinarySearch():Void {
        var _names = (new stdgo.Slice<stdgo.GoString>(3, 3, ("Alice" : stdgo.GoString), ("Bob" : stdgo.GoString), ("Vera" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        var __tmp__ = stdgo.slices.Slices.binarySearch((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _names, ("Vera" : stdgo.GoString)), _n:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Vera:" : stdgo.GoString)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_found));
        {
            var __tmp__ = stdgo.slices.Slices.binarySearch((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _names, ("Bill" : stdgo.GoString));
            _n = __tmp__._0;
            _found = __tmp__._1;
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Bill:" : stdgo.GoString)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_found));
    }
/**
    
    
    
**/
@:structInit class T_exampleBinarySearchFunc_29___localname___Person {
    public var name : stdgo.GoString = "";
    public var age : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?age:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (age != null) this.age = age;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleBinarySearchFunc_29___localname___Person(name, age);
    }
}
function exampleBinarySearchFunc():Void {
        {};
        var _people = (new stdgo.Slice<stdgo.slices_test.Slices_test.T_exampleBinarySearchFunc_29___localname___Person>(3, 3, (new stdgo.slices_test.Slices_test.T_exampleBinarySearchFunc_29___localname___Person(("Alice" : stdgo.GoString), (55 : stdgo.GoInt)) : stdgo.slices_test.Slices_test.T_exampleBinarySearchFunc_29___localname___Person), (new stdgo.slices_test.Slices_test.T_exampleBinarySearchFunc_29___localname___Person(("Bob" : stdgo.GoString), (24 : stdgo.GoInt)) : stdgo.slices_test.Slices_test.T_exampleBinarySearchFunc_29___localname___Person), (new stdgo.slices_test.Slices_test.T_exampleBinarySearchFunc_29___localname___Person(("Gopher" : stdgo.GoString), (13 : stdgo.GoInt)) : stdgo.slices_test.Slices_test.T_exampleBinarySearchFunc_29___localname___Person)) : stdgo.Slice<stdgo.slices_test.Slices_test.T_exampleBinarySearchFunc_29___localname___Person>);
        var __tmp__ = stdgo.slices.Slices.binarySearchFunc((null : stdgo.Slice<stdgo.slices_test.Slices_test.T_exampleBinarySearchFunc_29___localname___Person>), ({} : stdgo.slices_test.Slices_test.T_exampleBinarySearchFunc_29___localname___Person), ({} : stdgo.slices_test.Slices_test.T_exampleBinarySearchFunc_29___localname___Person), _people, (new stdgo.slices_test.Slices_test.T_exampleBinarySearchFunc_29___localname___Person(("Bob" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo.slices_test.Slices_test.T_exampleBinarySearchFunc_29___localname___Person), function(_a:T_exampleBinarySearchFunc_29___localname___Person, _b:T_exampleBinarySearchFunc_29___localname___Person):stdgo.GoInt {
            return stdgo.cmp.Cmp.compare(("" : stdgo.GoString), _a.name?.__copy__(), _b.name?.__copy__());
        }), _n:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Bob:" : stdgo.GoString)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_found));
    }
function exampleCompact():Void {
        var _seq = (new stdgo.Slice<stdgo.GoInt>(7, 7, (0 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (5 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        _seq = stdgo.slices.Slices.compact((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _seq);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_seq));
    }
function exampleCompactFunc():Void {
        var _names = (new stdgo.Slice<stdgo.GoString>(5, 5, ("bob" : stdgo.GoString), ("Bob" : stdgo.GoString), ("alice" : stdgo.GoString), ("Vera" : stdgo.GoString), ("VERA" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        _names = stdgo.slices.Slices.compactFunc((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _names, function(_a:stdgo.GoString, _b:stdgo.GoString):Bool {
            return stdgo.strings.Strings.toLower(_a?.__copy__()) == (stdgo.strings.Strings.toLower(_b?.__copy__()));
        });
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_names));
    }
function exampleCompare():Void {
        var _names = (new stdgo.Slice<stdgo.GoString>(3, 3, ("Alice" : stdgo.GoString), ("Bob" : stdgo.GoString), ("Vera" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Equal:" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.slices.Slices.compare((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _names, (new stdgo.Slice<stdgo.GoString>(3, 3, ("Alice" : stdgo.GoString), ("Bob" : stdgo.GoString), ("Vera" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("V < X:" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.slices.Slices.compare((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _names, (new stdgo.Slice<stdgo.GoString>(3, 3, ("Alice" : stdgo.GoString), ("Bob" : stdgo.GoString), ("Xena" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("V > C:" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.slices.Slices.compare((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _names, (new stdgo.Slice<stdgo.GoString>(3, 3, ("Alice" : stdgo.GoString), ("Bob" : stdgo.GoString), ("Cat" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("3 > 2:" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.slices.Slices.compare((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _names, (new stdgo.Slice<stdgo.GoString>(2, 2, ("Alice" : stdgo.GoString), ("Bob" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>))));
    }
function exampleCompareFunc():Void {
        var _numbers = (new stdgo.Slice<stdgo.GoInt>(3, 3, (0 : stdgo.GoInt), (43 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        var _strings = (new stdgo.Slice<stdgo.GoString>(3, 3, ("0" : stdgo.GoString), ("0" : stdgo.GoString), ("8" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        var _result:stdgo.GoInt = stdgo.slices.Slices.compareFunc((null : stdgo.Slice<stdgo.GoInt>), (null : stdgo.Slice<stdgo.GoString>), (0 : stdgo.GoInt), ("" : stdgo.GoString), _numbers, _strings, function(_n:stdgo.GoInt, _s:stdgo.GoString):stdgo.GoInt {
            var __tmp__ = stdgo.strconv.Strconv.atoi(_s?.__copy__()), _sn:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return (1 : stdgo.GoInt);
            };
            return stdgo.cmp.Cmp.compare((0 : stdgo.GoInt), _n, _sn);
        });
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_result));
    }
function exampleContainsFunc():Void {
        var _numbers = (new stdgo.Slice<stdgo.GoInt>(4, 4, (0 : stdgo.GoInt), (42 : stdgo.GoInt), (-10 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        var _hasNegative:Bool = stdgo.slices.Slices.containsFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _numbers, function(_n:stdgo.GoInt):Bool {
            return _n < (0 : stdgo.GoInt);
        });
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Has a negative:" : stdgo.GoString)), stdgo.Go.toInterface(_hasNegative));
        var _hasOdd:Bool = stdgo.slices.Slices.containsFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _numbers, function(_n:stdgo.GoInt):Bool {
            return _n % (2 : stdgo.GoInt) != ((0 : stdgo.GoInt));
        });
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Has an odd number:" : stdgo.GoString)), stdgo.Go.toInterface(_hasOdd));
    }
function exampleDelete():Void {
        var _letters = (new stdgo.Slice<stdgo.GoString>(5, 5, ("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString), ("d" : stdgo.GoString), ("e" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        _letters = stdgo.slices.Slices.delete((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _letters, (1 : stdgo.GoInt), (4 : stdgo.GoInt));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_letters));
    }
function exampleDeleteFunc():Void {
        var _seq = (new stdgo.Slice<stdgo.GoInt>(7, 7, (0 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (5 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        _seq = stdgo.slices.Slices.deleteFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _seq, function(_n:stdgo.GoInt):Bool {
            return _n % (2 : stdgo.GoInt) != ((0 : stdgo.GoInt));
        });
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_seq));
    }
function exampleEqual():Void {
        var _numbers = (new stdgo.Slice<stdgo.GoInt>(3, 3, (0 : stdgo.GoInt), (42 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.slices.Slices.equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _numbers, (new stdgo.Slice<stdgo.GoInt>(3, 3, (0 : stdgo.GoInt), (42 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.slices.Slices.equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _numbers, (new stdgo.Slice<stdgo.GoInt>(1, 1, (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>))));
    }
function exampleEqualFunc():Void {
        var _numbers = (new stdgo.Slice<stdgo.GoInt>(3, 3, (0 : stdgo.GoInt), (42 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        var _strings = (new stdgo.Slice<stdgo.GoString>(3, 3, ("000" : stdgo.GoString), ("42" : stdgo.GoString), ("0o10" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        var _equal:Bool = stdgo.slices.Slices.equalFunc((null : stdgo.Slice<stdgo.GoInt>), (null : stdgo.Slice<stdgo.GoString>), (0 : stdgo.GoInt), ("" : stdgo.GoString), _numbers, _strings, function(_n:stdgo.GoInt, _s:stdgo.GoString):Bool {
            var __tmp__ = stdgo.strconv.Strconv.parseInt(_s?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _sn:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return false;
            };
            return _n == ((_sn : stdgo.GoInt));
        });
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_equal));
    }
function exampleIndex():Void {
        var _numbers = (new stdgo.Slice<stdgo.GoInt>(3, 3, (0 : stdgo.GoInt), (42 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.slices.Slices.index((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _numbers, (8 : stdgo.GoInt))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.slices.Slices.index((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _numbers, (7 : stdgo.GoInt))));
    }
function exampleIndexFunc():Void {
        var _numbers = (new stdgo.Slice<stdgo.GoInt>(4, 4, (0 : stdgo.GoInt), (42 : stdgo.GoInt), (-10 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        var _i:stdgo.GoInt = stdgo.slices.Slices.indexFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _numbers, function(_n:stdgo.GoInt):Bool {
            return _n < (0 : stdgo.GoInt);
        });
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("First negative at index" : stdgo.GoString)), stdgo.Go.toInterface(_i));
    }
function exampleInsert():Void {
        var _names = (new stdgo.Slice<stdgo.GoString>(3, 3, ("Alice" : stdgo.GoString), ("Bob" : stdgo.GoString), ("Vera" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        _names = stdgo.slices.Slices.insert((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _names, (1 : stdgo.GoInt), ("Bill" : stdgo.GoString), ("Billie" : stdgo.GoString));
        _names = stdgo.slices.Slices.insert((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _names, (_names.length), ("Zac" : stdgo.GoString));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_names));
    }
function exampleIsSorted():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.slices.Slices.isSorted((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(3, 3, ("Alice" : stdgo.GoString), ("Bob" : stdgo.GoString), ("Vera" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.slices.Slices.isSorted((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoInt>(3, 3, (0 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>))));
    }
function exampleIsSortedFunc():Void {
        var _names = (new stdgo.Slice<stdgo.GoString>(3, 3, ("alice" : stdgo.GoString), ("Bob" : stdgo.GoString), ("VERA" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        var _isSortedInsensitive:Bool = stdgo.slices.Slices.isSortedFunc((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _names, function(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt {
            return stdgo.cmp.Cmp.compare(("" : stdgo.GoString), stdgo.strings.Strings.toLower(_a?.__copy__())?.__copy__(), stdgo.strings.Strings.toLower(_b?.__copy__())?.__copy__());
        });
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_isSortedInsensitive));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.slices.Slices.isSorted((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _names)));
    }
function exampleMax():Void {
        var _numbers = (new stdgo.Slice<stdgo.GoInt>(4, 4, (0 : stdgo.GoInt), (42 : stdgo.GoInt), (-10 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.slices.Slices.max((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _numbers)));
    }
/**
    
    
    
**/
@:structInit class T_exampleMaxFunc_30___localname___Person {
    public var name : stdgo.GoString = "";
    public var age : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?age:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (age != null) this.age = age;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleMaxFunc_30___localname___Person(name, age);
    }
}
function exampleMaxFunc():Void {
        {};
        var _people = (new stdgo.Slice<stdgo.slices_test.Slices_test.T_exampleMaxFunc_30___localname___Person>(4, 4, (new stdgo.slices_test.Slices_test.T_exampleMaxFunc_30___localname___Person(("Gopher" : stdgo.GoString), (13 : stdgo.GoInt)) : stdgo.slices_test.Slices_test.T_exampleMaxFunc_30___localname___Person), (new stdgo.slices_test.Slices_test.T_exampleMaxFunc_30___localname___Person(("Alice" : stdgo.GoString), (55 : stdgo.GoInt)) : stdgo.slices_test.Slices_test.T_exampleMaxFunc_30___localname___Person), (new stdgo.slices_test.Slices_test.T_exampleMaxFunc_30___localname___Person(("Vera" : stdgo.GoString), (24 : stdgo.GoInt)) : stdgo.slices_test.Slices_test.T_exampleMaxFunc_30___localname___Person), (new stdgo.slices_test.Slices_test.T_exampleMaxFunc_30___localname___Person(("Bob" : stdgo.GoString), (55 : stdgo.GoInt)) : stdgo.slices_test.Slices_test.T_exampleMaxFunc_30___localname___Person)) : stdgo.Slice<stdgo.slices_test.Slices_test.T_exampleMaxFunc_30___localname___Person>);
        var _firstOldest:stdgo.slices_test.Slices_test.T_exampleMaxFunc_30___localname___Person = stdgo.slices.Slices.maxFunc((null : stdgo.Slice<stdgo.slices_test.Slices_test.T_exampleMaxFunc_30___localname___Person>), ({} : stdgo.slices_test.Slices_test.T_exampleMaxFunc_30___localname___Person), _people, function(_a:T_exampleMaxFunc_30___localname___Person, _b:T_exampleMaxFunc_30___localname___Person):stdgo.GoInt {
            return stdgo.cmp.Cmp.compare((0 : stdgo.GoInt), _a.age, _b.age);
        })?.__copy__();
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_firstOldest.name));
    }
function exampleMin():Void {
        var _numbers = (new stdgo.Slice<stdgo.GoInt>(4, 4, (0 : stdgo.GoInt), (42 : stdgo.GoInt), (-10 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.slices.Slices.min((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _numbers)));
    }
/**
    
    
    
**/
@:structInit class T_exampleMinFunc_31___localname___Person {
    public var name : stdgo.GoString = "";
    public var age : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?age:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (age != null) this.age = age;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleMinFunc_31___localname___Person(name, age);
    }
}
function exampleMinFunc():Void {
        {};
        var _people = (new stdgo.Slice<stdgo.slices_test.Slices_test.T_exampleMinFunc_31___localname___Person>(4, 4, (new stdgo.slices_test.Slices_test.T_exampleMinFunc_31___localname___Person(("Gopher" : stdgo.GoString), (13 : stdgo.GoInt)) : stdgo.slices_test.Slices_test.T_exampleMinFunc_31___localname___Person), (new stdgo.slices_test.Slices_test.T_exampleMinFunc_31___localname___Person(("Bob" : stdgo.GoString), (5 : stdgo.GoInt)) : stdgo.slices_test.Slices_test.T_exampleMinFunc_31___localname___Person), (new stdgo.slices_test.Slices_test.T_exampleMinFunc_31___localname___Person(("Vera" : stdgo.GoString), (24 : stdgo.GoInt)) : stdgo.slices_test.Slices_test.T_exampleMinFunc_31___localname___Person), (new stdgo.slices_test.Slices_test.T_exampleMinFunc_31___localname___Person(("Bill" : stdgo.GoString), (5 : stdgo.GoInt)) : stdgo.slices_test.Slices_test.T_exampleMinFunc_31___localname___Person)) : stdgo.Slice<stdgo.slices_test.Slices_test.T_exampleMinFunc_31___localname___Person>);
        var _firstYoungest:stdgo.slices_test.Slices_test.T_exampleMinFunc_31___localname___Person = stdgo.slices.Slices.minFunc((null : stdgo.Slice<stdgo.slices_test.Slices_test.T_exampleMinFunc_31___localname___Person>), ({} : stdgo.slices_test.Slices_test.T_exampleMinFunc_31___localname___Person), _people, function(_a:T_exampleMinFunc_31___localname___Person, _b:T_exampleMinFunc_31___localname___Person):stdgo.GoInt {
            return stdgo.cmp.Cmp.compare((0 : stdgo.GoInt), _a.age, _b.age);
        })?.__copy__();
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_firstYoungest.name));
    }
function exampleReplace():Void {
        var _names = (new stdgo.Slice<stdgo.GoString>(4, 4, ("Alice" : stdgo.GoString), ("Bob" : stdgo.GoString), ("Vera" : stdgo.GoString), ("Zac" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        _names = stdgo.slices.Slices.replace((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _names, (1 : stdgo.GoInt), (3 : stdgo.GoInt), ("Bill" : stdgo.GoString), ("Billie" : stdgo.GoString), ("Cat" : stdgo.GoString));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_names));
    }
function exampleReverse():Void {
        var _names = (new stdgo.Slice<stdgo.GoString>(3, 3, ("alice" : stdgo.GoString), ("Bob" : stdgo.GoString), ("VERA" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        stdgo.slices.Slices.reverse((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _names);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_names));
    }
function exampleSort():Void {
        var _smallInts = (new stdgo.Slice<stdgo.GoInt8>(4, 4, (0 : stdgo.GoInt8), (42 : stdgo.GoInt8), (-10 : stdgo.GoInt8), (8 : stdgo.GoInt8)) : stdgo.Slice<stdgo.GoInt8>);
        stdgo.slices.Slices.sort((null : stdgo.Slice<stdgo.GoInt8>), (0 : stdgo.GoInt8), _smallInts);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_smallInts));
    }
function exampleSortFunc_caseInsensitive():Void {
        var _names = (new stdgo.Slice<stdgo.GoString>(3, 3, ("Bob" : stdgo.GoString), ("alice" : stdgo.GoString), ("VERA" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        stdgo.slices.Slices.sortFunc((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _names, function(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt {
            return stdgo.cmp.Cmp.compare(("" : stdgo.GoString), stdgo.strings.Strings.toLower(_a?.__copy__())?.__copy__(), stdgo.strings.Strings.toLower(_b?.__copy__())?.__copy__());
        });
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_names));
    }
/**
    
    
    
**/
@:structInit class T_exampleSortFunc_multiField_32___localname___Person {
    public var name : stdgo.GoString = "";
    public var age : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?age:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (age != null) this.age = age;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleSortFunc_multiField_32___localname___Person(name, age);
    }
}
function exampleSortFunc_multiField():Void {
        {};
        var _people = (new stdgo.Slice<stdgo.slices_test.Slices_test.T_exampleSortFunc_multiField_32___localname___Person>(4, 4, (new stdgo.slices_test.Slices_test.T_exampleSortFunc_multiField_32___localname___Person(("Gopher" : stdgo.GoString), (13 : stdgo.GoInt)) : stdgo.slices_test.Slices_test.T_exampleSortFunc_multiField_32___localname___Person), (new stdgo.slices_test.Slices_test.T_exampleSortFunc_multiField_32___localname___Person(("Alice" : stdgo.GoString), (55 : stdgo.GoInt)) : stdgo.slices_test.Slices_test.T_exampleSortFunc_multiField_32___localname___Person), (new stdgo.slices_test.Slices_test.T_exampleSortFunc_multiField_32___localname___Person(("Bob" : stdgo.GoString), (24 : stdgo.GoInt)) : stdgo.slices_test.Slices_test.T_exampleSortFunc_multiField_32___localname___Person), (new stdgo.slices_test.Slices_test.T_exampleSortFunc_multiField_32___localname___Person(("Alice" : stdgo.GoString), (20 : stdgo.GoInt)) : stdgo.slices_test.Slices_test.T_exampleSortFunc_multiField_32___localname___Person)) : stdgo.Slice<stdgo.slices_test.Slices_test.T_exampleSortFunc_multiField_32___localname___Person>);
        stdgo.slices.Slices.sortFunc((null : stdgo.Slice<stdgo.slices_test.Slices_test.T_exampleSortFunc_multiField_32___localname___Person>), ({} : stdgo.slices_test.Slices_test.T_exampleSortFunc_multiField_32___localname___Person), _people, function(_a:T_exampleSortFunc_multiField_32___localname___Person, _b:T_exampleSortFunc_multiField_32___localname___Person):stdgo.GoInt {
            {
                var _n:stdgo.GoInt = stdgo.cmp.Cmp.compare(("" : stdgo.GoString), _a.name?.__copy__(), _b.name?.__copy__());
                if (_n != ((0 : stdgo.GoInt))) {
                    return _n;
                };
            };
            return stdgo.cmp.Cmp.compare((0 : stdgo.GoInt), _a.age, _b.age);
        });
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_people));
    }
/**
    
    
    
**/
@:structInit class T_exampleSortStableFunc_33___localname___Person {
    public var name : stdgo.GoString = "";
    public var age : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?age:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (age != null) this.age = age;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleSortStableFunc_33___localname___Person(name, age);
    }
}
function exampleSortStableFunc():Void {
        {};
        var _people = (new stdgo.Slice<stdgo.slices_test.Slices_test.T_exampleSortStableFunc_33___localname___Person>(4, 4, (new stdgo.slices_test.Slices_test.T_exampleSortStableFunc_33___localname___Person(("Gopher" : stdgo.GoString), (13 : stdgo.GoInt)) : stdgo.slices_test.Slices_test.T_exampleSortStableFunc_33___localname___Person), (new stdgo.slices_test.Slices_test.T_exampleSortStableFunc_33___localname___Person(("Alice" : stdgo.GoString), (20 : stdgo.GoInt)) : stdgo.slices_test.Slices_test.T_exampleSortStableFunc_33___localname___Person), (new stdgo.slices_test.Slices_test.T_exampleSortStableFunc_33___localname___Person(("Bob" : stdgo.GoString), (24 : stdgo.GoInt)) : stdgo.slices_test.Slices_test.T_exampleSortStableFunc_33___localname___Person), (new stdgo.slices_test.Slices_test.T_exampleSortStableFunc_33___localname___Person(("Alice" : stdgo.GoString), (55 : stdgo.GoInt)) : stdgo.slices_test.Slices_test.T_exampleSortStableFunc_33___localname___Person)) : stdgo.Slice<stdgo.slices_test.Slices_test.T_exampleSortStableFunc_33___localname___Person>);
        stdgo.slices.Slices.sortStableFunc((null : stdgo.Slice<stdgo.slices_test.Slices_test.T_exampleSortStableFunc_33___localname___Person>), ({} : stdgo.slices_test.Slices_test.T_exampleSortStableFunc_33___localname___Person), _people, function(_a:T_exampleSortStableFunc_33___localname___Person, _b:T_exampleSortStableFunc_33___localname___Person):stdgo.GoInt {
            return stdgo.cmp.Cmp.compare(("" : stdgo.GoString), _a.name?.__copy__(), _b.name?.__copy__());
        });
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_people));
    }
