package _internal.internal.types.errors_test;
import stdgo._internal.go.types.Types;
function _checkExample(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _example:stdgo.GoString):stdgo.Error {
        _t.helper();
        var _fset = stdgo._internal.go.token.Token_newFileSet.newFileSet();
        if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_example?.__copy__(), ("package" : stdgo.GoString))) {
            _example = (("package p\n\n" : stdgo.GoString) + _example?.__copy__() : stdgo.GoString)?.__copy__();
        };
        var __tmp__ = stdgo._internal.go.parser.Parser_parseFile.parseFile(_fset, ("example.go" : stdgo.GoString), stdgo.Go.toInterface(_example), (0u32 : stdgo._internal.go.parser.Parser_Mode.Mode)), _file:stdgo.Ref<stdgo._internal.go.ast.Ast_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _conf = ({ fakeImportC : true, importer : stdgo._internal.go.importer.Importer_default_.default_() } : stdgo._internal.go.types.Types_Config.Config);
        {
            var __tmp__ = _conf.check(("example" : stdgo.GoString), _fset, (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_File.File>>(1, 1, ...[_file]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_File.File>>), null);
            _err = __tmp__._1;
        };
        return _err;
    }
