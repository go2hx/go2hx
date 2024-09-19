package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testStructOfTooLarge(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _t1 = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoUInt8))) : stdgo._internal.reflect.Reflect_Type_.Type_);
            var _t2 = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt16))) : stdgo._internal.reflect.Reflect_Type_.Type_);
            var _t4 = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt32))) : stdgo._internal.reflect.Reflect_Type_.Type_);
            var _t0 = (stdgo._internal.reflect.Reflect_arrayOf.arrayOf((0 : stdgo.GoInt), _t1) : stdgo._internal.reflect.Reflect_Type_.Type_);
            var _bigType = (stdgo._internal.reflect.Reflect_structOf.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(2, 2, ...[({ name : ("F1" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_arrayOf.arrayOf(((2147483647 : stdgo.GoUIntptr) : stdgo.GoInt), _t1) } : stdgo._internal.reflect.Reflect_StructField.StructField), ({ name : ("F2" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_arrayOf.arrayOf(((2147483646 : stdgo.GoUIntptr) : stdgo.GoInt), _t1) } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>)) : stdgo._internal.reflect.Reflect_Type_.Type_);
            {};
            var _tests = (new stdgo.GoArray<_internal.reflect_test.Reflect_test_T_testStructOfTooLarge___localname___test_156983.T_testStructOfTooLarge___localname___test_156983>(5, 5, ...[({ _shouldPanic : false, _fields : (new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(2, 2, ...[({ name : ("F1" : stdgo.GoString), type : _bigType } : stdgo._internal.reflect.Reflect_StructField.StructField), ({ name : ("F2" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_arrayOf.arrayOf((2 : stdgo.GoInt), _t1) } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>) } : _internal.reflect_test.Reflect_test_T_testStructOfTooLarge___localname___test_156983.T_testStructOfTooLarge___localname___test_156983), ({ _shouldPanic : true, _fields : (new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(2, 2, ...[({ name : ("F1" : stdgo.GoString), type : _bigType } : stdgo._internal.reflect.Reflect_StructField.StructField), ({ name : ("F2" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_arrayOf.arrayOf((3 : stdgo.GoInt), _t1) } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>) } : _internal.reflect_test.Reflect_test_T_testStructOfTooLarge___localname___test_156983.T_testStructOfTooLarge___localname___test_156983), ({ _shouldPanic : true, _fields : (new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(2, 2, ...[({ name : ("F1" : stdgo.GoString), type : _bigType } : stdgo._internal.reflect.Reflect_StructField.StructField), ({ name : ("F2" : stdgo.GoString), type : _t4 } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>) } : _internal.reflect_test.Reflect_test_T_testStructOfTooLarge___localname___test_156983.T_testStructOfTooLarge___localname___test_156983), ({ _shouldPanic : true, _fields : (new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(3, 3, ...[({ name : ("F1" : stdgo.GoString), type : _bigType } : stdgo._internal.reflect.Reflect_StructField.StructField), ({ name : ("F2" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_arrayOf.arrayOf((2 : stdgo.GoInt), _t1) } : stdgo._internal.reflect.Reflect_StructField.StructField), ({ name : ("F3" : stdgo.GoString), type : _t0 } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>) } : _internal.reflect_test.Reflect_test_T_testStructOfTooLarge___localname___test_156983.T_testStructOfTooLarge___localname___test_156983), ({ _shouldPanic : true, _fields : (new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(2, 2, ...[({ name : ("F1" : stdgo.GoString), type : _t2 } : stdgo._internal.reflect.Reflect_StructField.StructField), ({ name : ("F2" : stdgo.GoString), type : _bigType } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>) } : _internal.reflect_test.Reflect_test_T_testStructOfTooLarge___localname___test_156983.T_testStructOfTooLarge___localname___test_156983)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({} : _internal.reflect_test.Reflect_test_T_testStructOfTooLarge___localname___test_156983.T_testStructOfTooLarge___localname___test_156983)])) : stdgo.GoArray<_internal.reflect_test.Reflect_test_T_testStructOfTooLarge___localname___test_156983.T_testStructOfTooLarge___localname___test_156983>);
            for (_i => _tt in _tests) {
                {
                    var a = function():Void {
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
                                        if (!_tt._shouldPanic) {
                                            if (_err != null) {
                                                _t.errorf(("test %d should not panic, got %s" : stdgo.GoString), stdgo.Go.toInterface(_i), _err);
                                            };
                                            {
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                return;
                                            };
                                        };
                                        if (_err == null) {
                                            _t.errorf(("test %d expected to panic" : stdgo.GoString), stdgo.Go.toInterface(_i));
                                            {
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                return;
                                            };
                                        };
                                        var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s" : stdgo.GoString), _err)?.__copy__() : stdgo.GoString);
                                        if (_s != (("reflect.StructOf: struct size would exceed virtual address space" : stdgo.GoString))) {
                                            _t.errorf(("test %d wrong panic message: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_s));
                                            {
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                return;
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
                            var __blank__ = stdgo._internal.reflect.Reflect_structOf.structOf(_tt._fields);
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
