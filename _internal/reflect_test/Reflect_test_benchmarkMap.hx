package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function benchmarkMap(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        {};
        var _value = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((null : _internal.reflect_test.Reflect_test_T_benchmarkMap___localname___V_6812.T_benchmarkMap___localname___V_6812)))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _stringKeys = (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _mapOfStrings = ({
            final x = new stdgo.GoMap.GoStringMap<_internal.reflect_test.Reflect_test_T_benchmarkMap___localname___V_6812.T_benchmarkMap___localname___V_6812>();
            x.__defaultValue__ = () -> (null : _internal.reflect_test.Reflect_test_T_benchmarkMap___localname___V_6812.T_benchmarkMap___localname___V_6812);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, _internal.reflect_test.Reflect_test_T_benchmarkMap___localname___V_6812.T_benchmarkMap___localname___V_6812>);
        var _uint64Keys = (new stdgo.Slice<stdgo.GoUInt64>(0, 0, ...[]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var _mapOfUint64s = ({
            final x = new stdgo.GoMap.GoUInt64Map<_internal.reflect_test.Reflect_test_T_benchmarkMap___localname___V_6812.T_benchmarkMap___localname___V_6812>();
            x.__defaultValue__ = () -> (null : _internal.reflect_test.Reflect_test_T_benchmarkMap___localname___V_6812.T_benchmarkMap___localname___V_6812);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, _internal.reflect_test.Reflect_test_T_benchmarkMap___localname___V_6812.T_benchmarkMap___localname___V_6812>);
        var _userStringKeys = (new stdgo.Slice<_internal.reflect_test.Reflect_test_T_benchmarkMap___localname___S_6825.T_benchmarkMap___localname___S_6825>(0, 0, ...[]).__setString__() : stdgo.Slice<_internal.reflect_test.Reflect_test_T_benchmarkMap___localname___S_6825.T_benchmarkMap___localname___S_6825>);
        var _mapOfUserStrings = ({
            final x = new stdgo.GoMap.GoStringMap<_internal.reflect_test.Reflect_test_T_benchmarkMap___localname___V_6812.T_benchmarkMap___localname___V_6812>();
            x.__defaultValue__ = () -> (null : _internal.reflect_test.Reflect_test_T_benchmarkMap___localname___V_6812.T_benchmarkMap___localname___V_6812);
            {};
            x;
        } : stdgo.GoMap<_internal.reflect_test.Reflect_test_T_benchmarkMap___localname___S_6825.T_benchmarkMap___localname___S_6825, _internal.reflect_test.Reflect_test_T_benchmarkMap___localname___V_6812.T_benchmarkMap___localname___V_6812>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                var _stringKey = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("key%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__() : stdgo.GoString);
                _stringKeys = (_stringKeys.__append__(_stringKey?.__copy__()));
                _mapOfStrings[_stringKey] = null;
                var _uint64Key = (_i : stdgo.GoUInt64);
                _uint64Keys = (_uint64Keys.__append__(_uint64Key));
                _mapOfUint64s[_uint64Key] = null;
                var _userStringKey = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("key%d" : stdgo.GoString), stdgo.Go.toInterface(_i)) : _internal.reflect_test.Reflect_test_T_benchmarkMap___localname___S_6825.T_benchmarkMap___localname___S_6825);
                _userStringKeys = (_userStringKeys.__append__(_userStringKey));
                _mapOfUserStrings[_userStringKey] = null;
            });
        };
        var _tests = (new stdgo.Slice<_internal.reflect_test.Reflect_test_T__struct_104.T__struct_104>(3, 3, ...[({ _label : ("StringKeys" : stdgo.GoString), _m : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_mapOfStrings))?.__copy__(), _keys : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_stringKeys))?.__copy__(), _value : _value?.__copy__() } : _internal.reflect_test.Reflect_test_T__struct_104.T__struct_104), ({ _label : ("Uint64Keys" : stdgo.GoString), _m : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_mapOfUint64s))?.__copy__(), _keys : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_uint64Keys))?.__copy__(), _value : _value?.__copy__() } : _internal.reflect_test.Reflect_test_T__struct_104.T__struct_104), ({ _label : ("UserStringKeys" : stdgo.GoString), _m : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_mapOfUserStrings))?.__copy__(), _keys : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_userStringKeys))?.__copy__(), _value : _value?.__copy__() } : _internal.reflect_test.Reflect_test_T__struct_104.T__struct_104)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _label : ("" : stdgo.GoString), _m : ({} : stdgo._internal.reflect.Reflect_Value.Value), _keys : ({} : stdgo._internal.reflect.Reflect_Value.Value), _value : ({} : stdgo._internal.reflect.Reflect_Value.Value) } : _internal.reflect_test.Reflect_test_T__struct_104.T__struct_104)])) : stdgo.Slice<_internal.reflect_test.Reflect_test_T__struct_104.T__struct_104>);
        for (__7 => _tt in _tests) {
            _b.run(_tt._label?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                _b.run(("MapIndex" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    _b.reportAllocs();
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            {
                                var _j = (_tt._keys.len() - (1 : stdgo.GoInt) : stdgo.GoInt);
                                stdgo.Go.cfor((_j >= (0 : stdgo.GoInt) : Bool), _j--, {
                                    _tt._m.mapIndex(_tt._keys.index(_j)?.__copy__());
                                });
                            };
                        });
                    };
                });
                _b.run(("SetMapIndex" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    _b.reportAllocs();
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            {
                                var _j = (_tt._keys.len() - (1 : stdgo.GoInt) : stdgo.GoInt);
                                stdgo.Go.cfor((_j >= (0 : stdgo.GoInt) : Bool), _j--, {
                                    _tt._m.setMapIndex(_tt._keys.index(_j)?.__copy__(), _tt._value?.__copy__());
                                });
                            };
                        });
                    };
                });
            });
        };
    }
