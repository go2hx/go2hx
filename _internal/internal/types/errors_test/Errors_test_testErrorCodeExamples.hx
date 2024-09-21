package _internal.internal.types.errors_test;
import stdgo._internal.go.types.Types;
function testErrorCodeExamples(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveGoBuild.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        _internal.internal.types.errors_test.Errors_test__walkCodes._walkCodes(_t, function(_name:stdgo.GoString, _value:stdgo.GoInt, _spec:stdgo.Ref<stdgo._internal.go.ast.Ast_ValueSpec.ValueSpec>):Void {
            _t.run(_name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var _doc = (_spec.doc.text()?.__copy__() : stdgo.GoString);
                var _examples = stdgo._internal.strings.Strings_split.split(_doc?.__copy__(), ("Example:" : stdgo.GoString));
                {
                    var _i = (1 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (_examples.length) : Bool), _i++, {
                        var _example = (stdgo._internal.strings.Strings_trimSpace.trimSpace(_examples[(_i : stdgo.GoInt)]?.__copy__())?.__copy__() : stdgo.GoString);
                        var _err = (_internal.internal.types.errors_test.Errors_test__checkExample._checkExample(_t, _example?.__copy__()) : stdgo.Error);
                        if (_err == null) {
                            _t.fatalf(("no error in example #%d" : stdgo.GoString), stdgo.Go.toInterface(_i));
                        };
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.go.types.Types_Error.Error)) : stdgo._internal.go.types.Types_Error.Error), _1 : true };
                        } catch(_) {
                            { _0 : ({} : stdgo._internal.go.types.Types_Error.Error), _1 : false };
                        }, _typerr = __tmp__._0, _ok = __tmp__._1;
                        if (!_ok) {
                            _t.fatalf(("not a types.Error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        };
                        {
                            var _got = (_internal.internal.types.errors_test.Errors_test__readCode._readCode(_typerr?.__copy__()) : stdgo.GoInt);
                            if (_got != (_value)) {
                                _t.errorf(("%s: example #%d returned code %d (%s), want %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_value));
                            };
                        };
                    });
                };
            });
        });
    }
