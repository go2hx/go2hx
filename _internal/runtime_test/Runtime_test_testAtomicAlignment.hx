package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function testAtomicAlignment(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveGoBuild.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        var _checked = ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>);
        var __tmp__ = stdgo._internal.os.Os_readFile.readFile(("./align_runtime_test.go" : stdgo.GoString)), _x:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("read failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _fieldDesc = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>);
        var _r = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("unsafe[.]Offsetof[(](\\w+){}[.](\\w+)[)]" : stdgo.GoString));
        var _matches = _r.findAllStringSubmatch((_x : stdgo.GoString)?.__copy__(), (-1 : stdgo.GoInt));
        for (_i => _v in _matches) {
            _checked[(((("field runtime." : stdgo.GoString) + _v[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + _v[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString)] = true;
            _fieldDesc[_i] = ((_v[(1 : stdgo.GoInt)] + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + _v[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString)?.__copy__();
        };
        var _varDesc = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>);
        _r = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("unsafe[.]Pointer[(]&(\\w+)[)]" : stdgo.GoString));
        _matches = _r.findAllStringSubmatch((_x : stdgo.GoString)?.__copy__(), (-1 : stdgo.GoInt));
        for (_i => _v in _matches) {
            _checked[(("var " : stdgo.GoString) + _v[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString)] = true;
            _varDesc[_i] = _v[(1 : stdgo.GoInt)]?.__copy__();
        };
        for (_i => _d in stdgo._internal.runtime.Runtime_atomicFields.atomicFields) {
            if ((_d % (8 : stdgo.GoUIntptr) : stdgo.GoUIntptr) != ((0 : stdgo.GoUIntptr))) {
                _t.errorf(("field alignment of %s failed: offset is %d" : stdgo.GoString), stdgo.Go.toInterface((_fieldDesc[_i] ?? ("" : stdgo.GoString))), stdgo.Go.toInterface(_d));
            };
        };
        for (_i => _p in stdgo._internal.runtime.Runtime_atomicVariables.atomicVariables) {
            if (((_p.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) % (8 : stdgo.GoUIntptr) : stdgo.GoUIntptr) != ((0 : stdgo.GoUIntptr))) {
                _t.errorf(("variable alignment of %s failed: address is %x" : stdgo.GoString), stdgo.Go.toInterface((_varDesc[_i] ?? ("" : stdgo.GoString))), stdgo.Go.toInterface(_p));
            };
        };
        var _fset = stdgo._internal.go.token.Token_newFileSet.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser_parseDir.parseDir(_fset, ("." : stdgo.GoString), null, (0u32 : stdgo._internal.go.parser.Parser_Mode.Mode)), _m:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_Package.Package>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("parsing runtime failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _pkg = (_m[("runtime" : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_Package.Package>));
        var _fileMap = ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>);
        for (__6 => _f in _internal.runtime_test.Runtime_test__buildableFiles._buildableFiles(_t, ("." : stdgo.GoString))) {
            _fileMap[_f] = true;
        };
        var _files:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_File.File>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_File.File>>);
        for (_fname => _f in _pkg.files) {
            if ((_fileMap[_fname] ?? false)) {
                _files = (_files.__append__(_f));
            };
        };
        var _info:stdgo._internal.go.types.Types_Info.Info = ({} : stdgo._internal.go.types.Types_Info.Info);
        _info.types = ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.ast.Ast_Expr.Expr, stdgo._internal.go.types.Types_TypeAndValue.TypeAndValue>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.ast.Ast_Expr.Expr", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> ({} : stdgo._internal.go.types.Types_TypeAndValue.TypeAndValue);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.go.ast.Ast_Expr.Expr, stdgo._internal.go.types.Types_TypeAndValue.TypeAndValue>);
        var _conf = ({ importer : stdgo._internal.go.importer.Importer_default_.default_() } : stdgo._internal.go.types.Types_Config.Config);
        {
            var __tmp__ = _conf.check(("runtime" : stdgo.GoString), _fset, _files, (stdgo.Go.setRef(_info) : stdgo.Ref<stdgo._internal.go.types.Types_Info.Info>));
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatalf(("typechecking runtime failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _v = ({ _t : _t, _fset : _fset, _types : _info.types, _checked : _checked } : _internal.runtime_test.Runtime_test_Visitor.Visitor);
        stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface((stdgo.Go.setRef(_v) : stdgo.Ref<_internal.runtime_test.Runtime_test_Visitor.Visitor>)), stdgo.Go.asInterface(_pkg));
    }
