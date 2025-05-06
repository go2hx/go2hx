package stdgo._internal.go.types;
function testTypeSetString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset_test.go#L21"
        for (_body => _want in ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set(("{}" : stdgo.GoString), ("𝓤" : stdgo.GoString));
x.set(("{int}" : stdgo.GoString), ("{int}" : stdgo.GoString));
x.set(("{~int}" : stdgo.GoString), ("{~int}" : stdgo.GoString));
x.set(("{int|string}" : stdgo.GoString), ("{int | string}" : stdgo.GoString));
x.set(("{int; string}" : stdgo.GoString), ("∅" : stdgo.GoString));
x.set(("{comparable}" : stdgo.GoString), ("{comparable}" : stdgo.GoString));
x.set(("{comparable; int}" : stdgo.GoString), ("{int}" : stdgo.GoString));
x.set(("{~int; comparable}" : stdgo.GoString), ("{~int}" : stdgo.GoString));
x.set(("{int|string; comparable}" : stdgo.GoString), ("{int | string}" : stdgo.GoString));
x.set(("{comparable; int; string}" : stdgo.GoString), ("∅" : stdgo.GoString));
x.set(("{m()}" : stdgo.GoString), ("{func (p.T).m()}" : stdgo.GoString));
x.set(("{m1(); m2() int }" : stdgo.GoString), ("{func (p.T).m1(); func (p.T).m2() int}" : stdgo.GoString));
x.set(("{error}" : stdgo.GoString), ("{func (error).Error() string}" : stdgo.GoString));
x.set(("{m(); comparable}" : stdgo.GoString), ("{comparable; func (p.T).m()}" : stdgo.GoString));
x.set(("{m1(); comparable; m2() int }" : stdgo.GoString), ("{comparable; func (p.T).m1(); func (p.T).m2() int}" : stdgo.GoString));
x.set(("{comparable; error}" : stdgo.GoString), ("{comparable; func (error).Error() string}" : stdgo.GoString));
x.set(("{m(); comparable; int|float32|string}" : stdgo.GoString), ("{func (p.T).m(); int | float32 | string}" : stdgo.GoString));
x.set(("{m1(); int; m2(); comparable }" : stdgo.GoString), ("{func (p.T).m1(); func (p.T).m2(); int}" : stdgo.GoString));
x.set(("{E}; type E interface{}" : stdgo.GoString), ("𝓤" : stdgo.GoString));
x.set(("{E}; type E interface{int;string}" : stdgo.GoString), ("∅" : stdgo.GoString));
x.set(("{E}; type E interface{comparable}" : stdgo.GoString), ("{comparable}" : stdgo.GoString));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>)) {
            var _src = ((("package p; type T interface" : stdgo.GoString) + _body?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
            var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(_fset, ("p.go" : stdgo.GoString), stdgo.Go.toInterface(_src), (32u32 : stdgo._internal.go.parser.Parser_mode.Mode)), _file:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset_test.go#L52"
            if (({
                final value = _file;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset_test.go#L53"
                _t.fatalf(("%s: %v (invalid test case)" : stdgo.GoString), stdgo.Go.toInterface(_body), stdgo.Go.toInterface(_err));
            };
            var _conf:stdgo._internal.go.types.Types_config.Config = ({} : stdgo._internal.go.types.Types_config.Config);
            var __tmp__ = _conf.check((@:checkr (@:checkr _file ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__(), _fset, (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>(1, 1, ...[_file]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>), null), _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset_test.go#L59"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset_test.go#L60"
                _t.fatalf(("%s: %v (invalid test case)" : stdgo.GoString), stdgo.Go.toInterface(_body), stdgo.Go.toInterface(_err));
            };
            var _obj = ((@:checkr _pkg ?? throw "null pointer dereference")._scope.lookup(("T" : stdgo.GoString)) : stdgo._internal.go.types.Types_object.Object);
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset_test.go#L65"
            if (_obj == null) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset_test.go#L66"
                _t.fatalf(("%s: T not found (invalid test case)" : stdgo.GoString), stdgo.Go.toInterface(_body));
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.go.types.Types__under._under(_obj.type())) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
            }, t = __tmp__._0, _ok = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset_test.go#L69"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset_test.go#L70"
                _t.fatalf(("%s: %v is not an interface (invalid test case)" : stdgo.GoString), stdgo.Go.toInterface(_body), stdgo.Go.toInterface(_obj));
            };
            var _got = ((t._typeSet().string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset_test.go#L75"
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset_test.go#L76"
                _t.errorf(("%s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_body), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
