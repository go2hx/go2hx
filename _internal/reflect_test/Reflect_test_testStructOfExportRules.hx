package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testStructOfExportRules(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            {};
            {};
            {};
            var _testPanic = (function(_i:stdgo.GoInt, _mustPanic:Bool, _f:() -> Void):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                var _err = ({
                                    final r = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    r;
                                } : stdgo.AnyInterface);
                                if (((_err == null) && _mustPanic : Bool)) {
                                    _t.errorf(("test-%d did not panic" : stdgo.GoString), stdgo.Go.toInterface(_i));
                                };
                                if (((_err != null) && !_mustPanic : Bool)) {
                                    _t.errorf(("test-%d panicked: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_i), _err);
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
                    _f();
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
            } : (stdgo.GoInt, Bool, () -> Void) -> Void);
            var _tests = (new stdgo.Slice<_internal.reflect_test.Reflect_test_T__struct_84.T__struct_84>(28, 28, ...[
({ _field : ({ name : ("S1" : stdgo.GoString), anonymous : true, type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___S1_142172.T_testStructOfExportRules___localname___S1_142172() : _internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___S1_142172.T_testStructOfExportRules___localname___S1_142172))) } : stdgo._internal.reflect.Reflect_StructField.StructField), _exported : true, _mustPanic : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : ("S1" : stdgo.GoString), anonymous : true, type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.Ref<_internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___S1_142172.T_testStructOfExportRules___localname___S1_142172>))) } : stdgo._internal.reflect.Reflect_StructField.StructField), _exported : true, _mustPanic : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : ("s2" : stdgo.GoString), anonymous : true, type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___s2_142190.T_testStructOfExportRules___localname___s2_142190() : _internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___s2_142190.T_testStructOfExportRules___localname___s2_142190))) } : stdgo._internal.reflect.Reflect_StructField.StructField), _mustPanic : true, _exported : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : ("s2" : stdgo.GoString), anonymous : true, type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.Ref<_internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___s2_142190.T_testStructOfExportRules___localname___s2_142190>))) } : stdgo._internal.reflect.Reflect_StructField.StructField), _mustPanic : true, _exported : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : ("Name" : stdgo.GoString), type : (null : stdgo._internal.reflect.Reflect_Type_.Type_), pkgPath : stdgo.Go.str()?.__copy__() } : stdgo._internal.reflect.Reflect_StructField.StructField), _mustPanic : true, _exported : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : stdgo.Go.str()?.__copy__(), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___S1_142172.T_testStructOfExportRules___localname___S1_142172() : _internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___S1_142172.T_testStructOfExportRules___localname___S1_142172))), pkgPath : stdgo.Go.str()?.__copy__() } : stdgo._internal.reflect.Reflect_StructField.StructField), _mustPanic : true, _exported : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : ("S1" : stdgo.GoString), anonymous : true, type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___S1_142172.T_testStructOfExportRules___localname___S1_142172() : _internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___S1_142172.T_testStructOfExportRules___localname___S1_142172))), pkgPath : ("other/pkg" : stdgo.GoString) } : stdgo._internal.reflect.Reflect_StructField.StructField), _mustPanic : true, _exported : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : ("S1" : stdgo.GoString), anonymous : true, type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.Ref<_internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___S1_142172.T_testStructOfExportRules___localname___S1_142172>))), pkgPath : ("other/pkg" : stdgo.GoString) } : stdgo._internal.reflect.Reflect_StructField.StructField), _mustPanic : true, _exported : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : ("s2" : stdgo.GoString), anonymous : true, type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___s2_142190.T_testStructOfExportRules___localname___s2_142190() : _internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___s2_142190.T_testStructOfExportRules___localname___s2_142190))), pkgPath : ("other/pkg" : stdgo.GoString) } : stdgo._internal.reflect.Reflect_StructField.StructField), _mustPanic : true, _exported : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : ("s2" : stdgo.GoString), anonymous : true, type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.Ref<_internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___s2_142190.T_testStructOfExportRules___localname___s2_142190>))), pkgPath : ("other/pkg" : stdgo.GoString) } : stdgo._internal.reflect.Reflect_StructField.StructField), _mustPanic : true, _exported : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : ("s2" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt))), pkgPath : ("other/pkg" : stdgo.GoString) } : stdgo._internal.reflect.Reflect_StructField.StructField), _mustPanic : false, _exported : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : ("s2" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt))), pkgPath : ("other/pkg" : stdgo.GoString) } : stdgo._internal.reflect.Reflect_StructField.StructField), _mustPanic : false, _exported : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : ("S" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___S1_142172.T_testStructOfExportRules___localname___S1_142172() : _internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___S1_142172.T_testStructOfExportRules___localname___S1_142172))) } : stdgo._internal.reflect.Reflect_StructField.StructField), _exported : true, _mustPanic : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : ("S" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.Ref<_internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___S1_142172.T_testStructOfExportRules___localname___S1_142172>))) } : stdgo._internal.reflect.Reflect_StructField.StructField), _exported : true, _mustPanic : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : ("S" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___s2_142190.T_testStructOfExportRules___localname___s2_142190() : _internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___s2_142190.T_testStructOfExportRules___localname___s2_142190))) } : stdgo._internal.reflect.Reflect_StructField.StructField), _exported : true, _mustPanic : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : ("S" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.Ref<_internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___s2_142190.T_testStructOfExportRules___localname___s2_142190>))) } : stdgo._internal.reflect.Reflect_StructField.StructField), _exported : true, _mustPanic : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : ("s" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___S1_142172.T_testStructOfExportRules___localname___S1_142172() : _internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___S1_142172.T_testStructOfExportRules___localname___S1_142172))) } : stdgo._internal.reflect.Reflect_StructField.StructField), _mustPanic : true, _exported : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : ("s" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.Ref<_internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___S1_142172.T_testStructOfExportRules___localname___S1_142172>))) } : stdgo._internal.reflect.Reflect_StructField.StructField), _mustPanic : true, _exported : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : ("s" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___s2_142190.T_testStructOfExportRules___localname___s2_142190() : _internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___s2_142190.T_testStructOfExportRules___localname___s2_142190))) } : stdgo._internal.reflect.Reflect_StructField.StructField), _mustPanic : true, _exported : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : ("s" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.Ref<_internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___s2_142190.T_testStructOfExportRules___localname___s2_142190>))) } : stdgo._internal.reflect.Reflect_StructField.StructField), _mustPanic : true, _exported : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : ("s" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___S1_142172.T_testStructOfExportRules___localname___S1_142172() : _internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___S1_142172.T_testStructOfExportRules___localname___S1_142172))), pkgPath : ("other/pkg" : stdgo.GoString) } : stdgo._internal.reflect.Reflect_StructField.StructField), _mustPanic : false, _exported : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : ("s" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.Ref<_internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___S1_142172.T_testStructOfExportRules___localname___S1_142172>))), pkgPath : ("other/pkg" : stdgo.GoString) } : stdgo._internal.reflect.Reflect_StructField.StructField), _mustPanic : false, _exported : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : ("s" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___s2_142190.T_testStructOfExportRules___localname___s2_142190() : _internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___s2_142190.T_testStructOfExportRules___localname___s2_142190))), pkgPath : ("other/pkg" : stdgo.GoString) } : stdgo._internal.reflect.Reflect_StructField.StructField), _mustPanic : false, _exported : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : ("s" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.Ref<_internal.reflect_test.Reflect_test_T_testStructOfExportRules___localname___s2_142190.T_testStructOfExportRules___localname___s2_142190>))), pkgPath : ("other/pkg" : stdgo.GoString) } : stdgo._internal.reflect.Reflect_StructField.StructField), _mustPanic : false, _exported : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : stdgo.Go.str()?.__copy__(), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T__934Type.T__934Type() : _internal.reflect_test.Reflect_test_T__934Type.T__934Type))) } : stdgo._internal.reflect.Reflect_StructField.StructField), _mustPanic : true, _exported : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : stdgo.Go.str()?.__copy__(), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T__966Type.T__966Type() : _internal.reflect_test.Reflect_test_T__966Type.T__966Type))) } : stdgo._internal.reflect.Reflect_StructField.StructField), _mustPanic : true, _exported : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : ("Φ" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt))) } : stdgo._internal.reflect.Reflect_StructField.StructField), _exported : true, _mustPanic : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84),
({ _field : ({ name : ("φ" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt))) } : stdgo._internal.reflect.Reflect_StructField.StructField), _exported : false, _mustPanic : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84)].concat([for (i in 28 ... (28 > 28 ? 28 : 28 : stdgo.GoInt).toBasic()) ({ _field : ({} : stdgo._internal.reflect.Reflect_StructField.StructField), _mustPanic : false, _exported : false } : _internal.reflect_test.Reflect_test_T__struct_84.T__struct_84)])) : stdgo.Slice<_internal.reflect_test.Reflect_test_T__struct_84.T__struct_84>);
            for (_i => _test in _tests) {
                _testPanic(_i, _test._mustPanic, function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        var _typ = (stdgo._internal.reflect.Reflect_structOf.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(1, 1, ...[_test._field?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>)) : stdgo._internal.reflect.Reflect_Type_.Type_);
                        if ((_typ.string() : String) == (null.string() : String)) {
                            _t.errorf(("test-%d: error creating struct type" : stdgo.GoString), stdgo.Go.toInterface(_i));
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return;
                            };
                        };
                        var _field = (_typ.field((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_StructField.StructField);
                        var _n = (_field.name?.__copy__() : stdgo.GoString);
                        if (_n == (stdgo.Go.str())) {
                            throw stdgo.Go.toInterface(("field.Name must not be empty" : stdgo.GoString));
                        };
                        var _exported = (stdgo._internal.go.token.Token_isExported.isExported(_n?.__copy__()) : Bool);
                        if (_exported != (_test._exported)) {
                            _t.errorf(("test-%d: got exported=%v want exported=%v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_exported), stdgo.Go.toInterface(_test._exported));
                        };
                        if (_field.pkgPath != (_test._field.pkgPath)) {
                            _t.errorf(("test-%d: got PkgPath=%q want pkgPath=%q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_field.pkgPath), stdgo.Go.toInterface(_test._field.pkgPath));
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
