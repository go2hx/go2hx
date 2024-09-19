package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function testFind(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _str1 = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("foo" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _str2 = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("ab" : stdgo.GoString), ("ca" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _str3 = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("mo" : stdgo.GoString), ("qo" : stdgo.GoString), ("vo" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _str4 = (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("ab" : stdgo.GoString), ("ad" : stdgo.GoString), ("ca" : stdgo.GoString), ("xy" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _strRepeats = (new stdgo.Slice<stdgo.GoString>(9, 9, ...[("ba" : stdgo.GoString), ("ca" : stdgo.GoString), ("da" : stdgo.GoString), ("da" : stdgo.GoString), ("da" : stdgo.GoString), ("ka" : stdgo.GoString), ("ma" : stdgo.GoString), ("ma" : stdgo.GoString), ("ta" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _strSame = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("xx" : stdgo.GoString), ("xx" : stdgo.GoString), ("xx" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _tests = (new stdgo.Slice<_internal.sort_test.Sort_test_T__struct_2.T__struct_2>(34, 34, ...[
({ _data : (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>), _target : ("foo" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>), _target : stdgo.Go.str()?.__copy__(), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str1, _target : ("foo" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str1, _target : ("bar" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str1, _target : ("zx" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : false } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str2, _target : ("aa" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str2, _target : ("ab" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str2, _target : ("ad" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : false } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str2, _target : ("ca" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : true } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str2, _target : ("ra" : stdgo.GoString), _wantPos : (2 : stdgo.GoInt), _wantFound : false } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str3, _target : ("bb" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str3, _target : ("mo" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str3, _target : ("nb" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : false } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str3, _target : ("qo" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : true } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str3, _target : ("tr" : stdgo.GoString), _wantPos : (2 : stdgo.GoInt), _wantFound : false } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str3, _target : ("vo" : stdgo.GoString), _wantPos : (2 : stdgo.GoInt), _wantFound : true } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str3, _target : ("xr" : stdgo.GoString), _wantPos : (3 : stdgo.GoInt), _wantFound : false } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str4, _target : ("aa" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str4, _target : ("ab" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str4, _target : ("ac" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : false } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str4, _target : ("ad" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : true } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str4, _target : ("ax" : stdgo.GoString), _wantPos : (2 : stdgo.GoInt), _wantFound : false } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str4, _target : ("ca" : stdgo.GoString), _wantPos : (2 : stdgo.GoInt), _wantFound : true } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str4, _target : ("cc" : stdgo.GoString), _wantPos : (3 : stdgo.GoInt), _wantFound : false } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str4, _target : ("dd" : stdgo.GoString), _wantPos : (3 : stdgo.GoInt), _wantFound : false } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str4, _target : ("xy" : stdgo.GoString), _wantPos : (3 : stdgo.GoInt), _wantFound : true } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _str4, _target : ("zz" : stdgo.GoString), _wantPos : (4 : stdgo.GoInt), _wantFound : false } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _strRepeats, _target : ("da" : stdgo.GoString), _wantPos : (2 : stdgo.GoInt), _wantFound : true } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _strRepeats, _target : ("db" : stdgo.GoString), _wantPos : (5 : stdgo.GoInt), _wantFound : false } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _strRepeats, _target : ("ma" : stdgo.GoString), _wantPos : (6 : stdgo.GoInt), _wantFound : true } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _strRepeats, _target : ("mb" : stdgo.GoString), _wantPos : (8 : stdgo.GoInt), _wantFound : false } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _strSame, _target : ("xx" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _strSame, _target : ("ab" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2),
({ _data : _strSame, _target : ("zz" : stdgo.GoString), _wantPos : (3 : stdgo.GoInt), _wantFound : false } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2)].concat([for (i in 34 ... (34 > 34 ? 34 : 34 : stdgo.GoInt).toBasic()) ({ _data : (null : stdgo.Slice<stdgo.GoString>), _target : ("" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : _internal.sort_test.Sort_test_T__struct_2.T__struct_2)])) : stdgo.Slice<_internal.sort_test.Sort_test_T__struct_2.T__struct_2>);
        for (__0 => _tt in _tests) {
            _t.run(_tt._target?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var _cmp = (function(_i:stdgo.GoInt):stdgo.GoInt {
                    return stdgo._internal.strings.Strings_compare.compare(_tt._target?.__copy__(), _tt._data[(_i : stdgo.GoInt)]?.__copy__());
                } : stdgo.GoInt -> stdgo.GoInt);
                var __tmp__ = stdgo._internal.sort.Sort_find.find((_tt._data.length), _cmp), _pos:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
                if (((_pos != _tt._wantPos) || (_found != _tt._wantFound) : Bool)) {
                    _t.errorf(("Find got (%v, %v), want (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._wantPos), stdgo.Go.toInterface(_tt._wantFound));
                };
            });
        };
    }