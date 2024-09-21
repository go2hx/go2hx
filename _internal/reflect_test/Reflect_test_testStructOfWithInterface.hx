package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testStructOfWithInterface(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            {};
            {};
            var _tests = (new stdgo.Slice<_internal.reflect_test.Reflect_test_T__struct_86.T__struct_86>(4, 4, ...[({ _name : ("StructI" : stdgo.GoString), _typ : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((42 : _internal.reflect_test.Reflect_test_StructI.StructI)))), _val : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((42 : _internal.reflect_test.Reflect_test_StructI.StructI))))?.__copy__(), _impl : true } : _internal.reflect_test.Reflect_test_T__struct_86.T__struct_86), ({ _name : ("StructI" : stdgo.GoString), _typ : stdgo._internal.reflect.Reflect_pointerTo.pointerTo(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((42 : _internal.reflect_test.Reflect_test_StructI.StructI))))), _val : stdgo._internal.reflect.Reflect_valueOf.valueOf({
                var a = function():stdgo.AnyInterface {
                    var _v = ((42 : _internal.reflect_test.Reflect_test_StructI.StructI) : _internal.reflect_test.Reflect_test_StructI.StructI);
                    return stdgo.Go.toInterface(stdgo.Go.pointer(_v));
                };
                a();
            })?.__copy__(), _impl : true } : _internal.reflect_test.Reflect_test_T__struct_86.T__struct_86), ({ _name : ("StructIPtr" : stdgo.GoString), _typ : stdgo._internal.reflect.Reflect_pointerTo.pointerTo(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((42 : _internal.reflect_test.Reflect_test_StructIPtr.StructIPtr))))), _val : stdgo._internal.reflect.Reflect_valueOf.valueOf({
                var a = function():stdgo.AnyInterface {
                    var _v = ((42 : _internal.reflect_test.Reflect_test_StructIPtr.StructIPtr) : _internal.reflect_test.Reflect_test_StructIPtr.StructIPtr);
                    return stdgo.Go.toInterface(stdgo.Go.pointer(_v));
                };
                a();
            })?.__copy__(), _impl : true } : _internal.reflect_test.Reflect_test_T__struct_86.T__struct_86), ({ _name : ("StructIPtr" : stdgo.GoString), _typ : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((42 : _internal.reflect_test.Reflect_test_StructIPtr.StructIPtr)))), _val : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((42 : _internal.reflect_test.Reflect_test_StructIPtr.StructIPtr))))?.__copy__(), _impl : false } : _internal.reflect_test.Reflect_test_T__struct_86.T__struct_86)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _typ : (null : stdgo._internal.reflect.Reflect_Type_.Type_), _val : ({} : stdgo._internal.reflect.Reflect_Value.Value), _impl : false } : _internal.reflect_test.Reflect_test_T__struct_86.T__struct_86)])) : stdgo.Slice<_internal.reflect_test.Reflect_test_T__struct_86.T__struct_86>);
            for (_i => _table in _tests) {
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (2 : stdgo.GoInt) : Bool), _j++, {
                        var _fields:stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField> = (null : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>);
                        if (_j == ((1 : stdgo.GoInt))) {
                            _fields = (_fields.__append__(({ name : ("Dummy" : stdgo.GoString), pkgPath : stdgo.Go.str()?.__copy__(), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt))) } : stdgo._internal.reflect.Reflect_StructField.StructField)));
                        };
                        _fields = (_fields.__append__(({ name : _table._name?.__copy__(), anonymous : true, pkgPath : stdgo.Go.str()?.__copy__(), type : _table._typ } : stdgo._internal.reflect.Reflect_StructField.StructField)));
                        if (((_j == (1 : stdgo.GoInt)) && _table._impl : Bool)) {
                            {
                                var a = function():Void {
                                    var __deferstack__:Array<Void -> Void> = [];
                                    try {
                                        __deferstack__.unshift(() -> {
                                            var a = function():Void {
                                                var __deferstack__:Array<Void -> Void> = [];
                                                try {
                                                    {
                                                        var _err = ({
                                                            final r = stdgo.Go.recover_exception;
                                                            stdgo.Go.recover_exception = null;
                                                            r;
                                                        } : stdgo.AnyInterface);
                                                        if (_err == null) {
                                                            _t.errorf(("test-%d-%d did not panic" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j));
                                                        };
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
                                                        if (__exception__.message == "__return__") throw "__return__";
                                                        exe = stdgo.Go.toInterface(__exception__.message);
                                                    };
                                                    stdgo.Go.recover_exception = exe;
                                                    for (defer in __deferstack__) {
                                                        defer();
                                                    };
                                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                                    return;
                                                };
                                            };
                                            a();
                                        });
                                        var __blank__ = stdgo._internal.reflect.Reflect_structOf.structOf(_fields);
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
                                            if (__exception__.message == "__return__") throw "__return__";
                                            exe = stdgo.Go.toInterface(__exception__.message);
                                        };
                                        stdgo.Go.recover_exception = exe;
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                        return;
                                    };
                                };
                                a();
                            };
                            continue;
                        };
                        var _rt = (stdgo._internal.reflect.Reflect_structOf.structOf(_fields) : stdgo._internal.reflect.Reflect_Type_.Type_);
                        var _rv = (stdgo._internal.reflect.Reflect_new_.new_(_rt).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                        _rv.field(_j).set(_table._val?.__copy__());
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_rv.interface_() : _internal.reflect_test.Reflect_test_T_testStructOfWithInterface___localname___Iface_151773.T_testStructOfWithInterface___localname___Iface_151773)) : _internal.reflect_test.Reflect_test_T_testStructOfWithInterface___localname___Iface_151773.T_testStructOfWithInterface___localname___Iface_151773), _1 : true };
                            } catch(_) {
                                { _0 : (null : _internal.reflect_test.Reflect_test_T_testStructOfWithInterface___localname___Iface_151773.T_testStructOfWithInterface___localname___Iface_151773), _1 : false };
                            }, __6 = __tmp__._0, _ok = __tmp__._1;
                            if (_ok != (_table._impl)) {
                                if (_table._impl) {
                                    _t.errorf(("test-%d-%d: type=%v fails to implement Iface.\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_table._typ));
                                } else {
                                    _t.errorf(("test-%d-%d: type=%v should NOT implement Iface\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_table._typ));
                                };
                                continue;
                            };
                        };
                        if (!_table._impl) {
                            continue;
                        };
                        var _v = ((stdgo.Go.typeAssert((_rv.interface_() : _internal.reflect_test.Reflect_test_T_testStructOfWithInterface___localname___Iface_151773.T_testStructOfWithInterface___localname___Iface_151773)) : _internal.reflect_test.Reflect_test_T_testStructOfWithInterface___localname___Iface_151773.T_testStructOfWithInterface___localname___Iface_151773).get() : stdgo.GoInt);
                        if (_v != ((42 : stdgo.GoInt))) {
                            _t.errorf(("test-%d-%d: x.Get()=%v. want=%v\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_v), stdgo.Go.toInterface((42 : stdgo.GoInt)));
                        };
                        var _fct = (_rv.methodByName(("Get" : stdgo.GoString))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                        var _out = _fct.call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
                        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_out[(0 : stdgo.GoInt)].interface_(), stdgo.Go.toInterface((42 : stdgo.GoInt)))) {
                            _t.errorf(("test-%d-%d: x.Get()=%v. want=%v\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), _out[(0 : stdgo.GoInt)].interface_(), stdgo.Go.toInterface((42 : stdgo.GoInt)));
                        };
                    });
                };
            };
            var _fields = (new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(1, 1, ...[({ name : ("StructIPtr" : stdgo.GoString), anonymous : true, type : stdgo._internal.reflect.Reflect_pointerTo.pointerTo(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((42 : _internal.reflect_test.Reflect_test_StructIPtr.StructIPtr))))) } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>);
            var _rt = (stdgo._internal.reflect.Reflect_structOf.structOf(_fields) : stdgo._internal.reflect.Reflect_Type_.Type_);
            var _rv = (stdgo._internal.reflect.Reflect_new_.new_(_rt).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(stdgo.Go.str()?.__copy__(), function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    (stdgo.Go.typeAssert((_rv.interface_() : _internal.reflect_test.Reflect_test_T_testStructOfWithInterface___localname___IfaceSet_151812.T_testStructOfWithInterface___localname___IfaceSet_151812)) : _internal.reflect_test.Reflect_test_T_testStructOfWithInterface___localname___IfaceSet_151812.T_testStructOfWithInterface___localname___IfaceSet_151812).set((42 : stdgo.GoInt));
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
                        if (__exception__.message == "__return__") throw "__return__";
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            });
            _fields = (new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(1, 1, ...[({ name : ("SettableStruct" : stdgo.GoString), anonymous : true, type : stdgo._internal.reflect.Reflect_pointerTo.pointerTo(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_SettableStruct.SettableStruct() : _internal.reflect_test.Reflect_test_SettableStruct.SettableStruct))))) } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>);
            _rt = stdgo._internal.reflect.Reflect_structOf.structOf(_fields);
            _rv = stdgo._internal.reflect.Reflect_new_.new_(_rt).elem()?.__copy__();
            _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(stdgo.Go.str()?.__copy__(), function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    (stdgo.Go.typeAssert((_rv.interface_() : _internal.reflect_test.Reflect_test_T_testStructOfWithInterface___localname___IfaceSet_151812.T_testStructOfWithInterface___localname___IfaceSet_151812)) : _internal.reflect_test.Reflect_test_T_testStructOfWithInterface___localname___IfaceSet_151812.T_testStructOfWithInterface___localname___IfaceSet_151812).set((42 : stdgo.GoInt));
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
                        if (__exception__.message == "__return__") throw "__return__";
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            });
            _fields = (new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(2, 2, ...[({ name : ("SettableStruct" : stdgo.GoString), anonymous : true, type : stdgo._internal.reflect.Reflect_pointerTo.pointerTo(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_SettableStruct.SettableStruct() : _internal.reflect_test.Reflect_test_SettableStruct.SettableStruct))))) } : stdgo._internal.reflect.Reflect_StructField.StructField), ({ name : ("EmptyStruct" : stdgo.GoString), anonymous : true, type : stdgo._internal.reflect.Reflect_structOf.structOf((null : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>)) } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>);
            _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(stdgo.Go.str()?.__copy__(), function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    stdgo._internal.reflect.Reflect_structOf.structOf(_fields);
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
                        if (__exception__.message == "__return__") throw "__return__";
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            });
            _fields = (new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(2, 2, ...[({ name : ("SettablePointer" : stdgo.GoString), anonymous : true, type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_SettablePointer.SettablePointer() : _internal.reflect_test.Reflect_test_SettablePointer.SettablePointer)))) } : stdgo._internal.reflect.Reflect_StructField.StructField), ({ name : ("EmptyStruct" : stdgo.GoString), anonymous : true, type : stdgo._internal.reflect.Reflect_structOf.structOf((null : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>)) } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>);
            _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(stdgo.Go.str()?.__copy__(), function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    stdgo._internal.reflect.Reflect_structOf.structOf(_fields);
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
                        if (__exception__.message == "__return__") throw "__return__";
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            });
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
                if (__exception__.message == "__return__") throw "__return__";
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
