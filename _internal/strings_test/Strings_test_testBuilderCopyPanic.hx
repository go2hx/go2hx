package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testBuilderCopyPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        trace("testBuilderCopyPanic" + " skip function");
        return;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _tests = (new stdgo.Slice<_internal.strings_test.Strings_test_T__struct_1.T__struct_1>(9, 9, ...[({ _name : ("String" : stdgo.GoString), _wantPanic : false, _fn : function():Void {
                var _a:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
                _a.writeByte((120 : stdgo.GoUInt8));
                var _b = (_a?.__copy__() : stdgo._internal.strings.Strings_Builder.Builder);
                var __blank__ = (_b.string() : stdgo.GoString);
            } } : _internal.strings_test.Strings_test_T__struct_1.T__struct_1), ({ _name : ("Len" : stdgo.GoString), _wantPanic : false, _fn : function():Void {
                var _a:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
                _a.writeByte((120 : stdgo.GoUInt8));
                var _b = (_a?.__copy__() : stdgo._internal.strings.Strings_Builder.Builder);
                _b.len();
            } } : _internal.strings_test.Strings_test_T__struct_1.T__struct_1), ({ _name : ("Cap" : stdgo.GoString), _wantPanic : false, _fn : function():Void {
                var _a:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
                _a.writeByte((120 : stdgo.GoUInt8));
                var _b = (_a?.__copy__() : stdgo._internal.strings.Strings_Builder.Builder);
                _b.cap();
            } } : _internal.strings_test.Strings_test_T__struct_1.T__struct_1), ({ _name : ("Reset" : stdgo.GoString), _wantPanic : false, _fn : function():Void {
                var _a:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
                _a.writeByte((120 : stdgo.GoUInt8));
                var _b = (_a?.__copy__() : stdgo._internal.strings.Strings_Builder.Builder);
                _b.reset();
                _b.writeByte((121 : stdgo.GoUInt8));
            } } : _internal.strings_test.Strings_test_T__struct_1.T__struct_1), ({ _name : ("Write" : stdgo.GoString), _wantPanic : true, _fn : function():Void {
                var _a:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
                _a.write((("x" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
                var _b = (_a?.__copy__() : stdgo._internal.strings.Strings_Builder.Builder);
                _b.write((("y" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
            } } : _internal.strings_test.Strings_test_T__struct_1.T__struct_1), ({ _name : ("WriteByte" : stdgo.GoString), _wantPanic : true, _fn : function():Void {
                var _a:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
                _a.writeByte((120 : stdgo.GoUInt8));
                var _b = (_a?.__copy__() : stdgo._internal.strings.Strings_Builder.Builder);
                _b.writeByte((121 : stdgo.GoUInt8));
            } } : _internal.strings_test.Strings_test_T__struct_1.T__struct_1), ({ _name : ("WriteString" : stdgo.GoString), _wantPanic : true, _fn : function():Void {
                var _a:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
                _a.writeString(("x" : stdgo.GoString));
                var _b = (_a?.__copy__() : stdgo._internal.strings.Strings_Builder.Builder);
                _b.writeString(("y" : stdgo.GoString));
            } } : _internal.strings_test.Strings_test_T__struct_1.T__struct_1), ({ _name : ("WriteRune" : stdgo.GoString), _wantPanic : true, _fn : function():Void {
                var _a:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
                _a.writeRune((120 : stdgo.GoInt32));
                var _b = (_a?.__copy__() : stdgo._internal.strings.Strings_Builder.Builder);
                _b.writeRune((121 : stdgo.GoInt32));
            } } : _internal.strings_test.Strings_test_T__struct_1.T__struct_1), ({ _name : ("Grow" : stdgo.GoString), _wantPanic : true, _fn : function():Void {
                var _a:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
                _a.grow((1 : stdgo.GoInt));
                var _b = (_a?.__copy__() : stdgo._internal.strings.Strings_Builder.Builder);
                _b.grow((2 : stdgo.GoInt));
            } } : _internal.strings_test.Strings_test_T__struct_1.T__struct_1)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _fn : null, _wantPanic : false } : _internal.strings_test.Strings_test_T__struct_1.T__struct_1)])) : stdgo.Slice<_internal.strings_test.Strings_test_T__struct_1.T__struct_1>);
            for (__0 => _tt in _tests) {
                var _didPanic = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> {
                                var a = function():Void {
                                    var __deferstack__:Array<Void -> Void> = [];
                                    try {
                                        _didPanic.__send__(({
                                            final r = stdgo.Go.recover_exception;
                                            stdgo.Go.recover_exception = null;
                                            r;
                                        }) != null);
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
                            _tt._fn();
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
                {
                    var _got = (_didPanic.__get__() : Bool);
                    if (_got != (_tt._wantPanic)) {
                        _t.errorf(("%s: panicked = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._wantPanic));
                    };
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
