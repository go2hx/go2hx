package _internal.internal.types.errors_test;
import stdgo._internal.go.types.Types;
function _walkCodes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _f:(stdgo.GoString, stdgo.GoInt, stdgo.Ref<stdgo._internal.go.ast.Ast_ValueSpec.ValueSpec>) -> Void):Void {
        _t.helper();
        var _fset = stdgo._internal.go.token.Token_newFileSet.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser_parseFile.parseFile(_fset, ("codes.go" : stdgo.GoString), (null : stdgo.AnyInterface), (4u32 : stdgo._internal.go.parser.Parser_Mode.Mode)), _file:stdgo.Ref<stdgo._internal.go.ast.Ast_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _conf = ({ importer : stdgo._internal.go.importer.Importer_default_.default_() } : stdgo._internal.go.types.Types_Config.Config);
        var _info = (stdgo.Go.setRef(({ types : ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.ast.Ast_Expr.Expr, stdgo._internal.go.types.Types_TypeAndValue.TypeAndValue>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.ast.Ast_Expr.Expr", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> ({} : stdgo._internal.go.types.Types_TypeAndValue.TypeAndValue);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.go.ast.Ast_Expr.Expr, stdgo._internal.go.types.Types_TypeAndValue.TypeAndValue>), defs : ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>, stdgo._internal.go.types.Types_Object.Object>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>, stdgo._internal.go.types.Types_Object.Object>), uses : ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>, stdgo._internal.go.types.Types_Object.Object>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>, stdgo._internal.go.types.Types_Object.Object>) } : stdgo._internal.go.types.Types_Info.Info)) : stdgo.Ref<stdgo._internal.go.types.Types_Info.Info>);
        {
            var __tmp__ = _conf.check(("types" : stdgo.GoString), _fset, (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_File.File>>(1, 1, ...[_file]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_File.File>>), _info);
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        for (__8 => _decl in _file.decls) {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_decl) : stdgo.Ref<stdgo._internal.go.ast.Ast_GenDecl.GenDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_GenDecl.GenDecl>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_GenDecl.GenDecl>), _1 : false };
            }, _decl = __tmp__._0, _ok = __tmp__._1;
            if ((!_ok || (_decl.tok != (64 : stdgo._internal.go.token.Token_Token.Token)) : Bool)) {
                continue;
            };
            for (__9 => _spec in _decl.specs) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_spec) : stdgo.Ref<stdgo._internal.go.ast.Ast_ValueSpec.ValueSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ValueSpec.ValueSpec>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ValueSpec.ValueSpec>), _1 : false };
                }, _spec = __tmp__._0, _ok = __tmp__._1;
                if ((!_ok || (_spec.names.length == (0 : stdgo.GoInt)) : Bool)) {
                    continue;
                };
                var _obj = (_info.objectOf(_spec.names[(0 : stdgo.GoInt)]) : stdgo._internal.go.types.Types_Object.Object);
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj.type()) : stdgo.Ref<stdgo._internal.go.types.Types_Named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_Named.Named>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_Named.Named>), _1 : false };
                    }, _named = __tmp__._0, _ok = __tmp__._1;
                    if ((_ok && (_named._check._environment._decl._tdecl.name.obj().name() == ("Code" : stdgo.GoString)) : Bool)) {
                        if ((_spec.names.length) != ((1 : stdgo.GoInt))) {
                            _t.fatalf(("bad Code declaration for %q: got %d names, want exactly 1" : stdgo.GoString), stdgo.Go.toInterface(_spec.names[(0 : stdgo.GoInt)].name), stdgo.Go.toInterface((_spec.names.length)));
                        };
                        var _codename = (_spec.names[(0 : stdgo.GoInt)].name?.__copy__() : stdgo.GoString);
                        var _value = ((stdgo.Go.typeAssert((stdgo._internal.go.constant.Constant_val.val((stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj) : stdgo.Ref<stdgo._internal.go.types.Types_Const.Const>)) : stdgo.Ref<stdgo._internal.go.types.Types_Const.Const>).val()) : stdgo.GoInt64)) : stdgo.GoInt64) : stdgo.GoInt);
                        _f(_codename?.__copy__(), _value, _spec);
                    };
                };
            };
        };
    }
