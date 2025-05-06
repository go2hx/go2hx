package stdgo._internal.go.format;
function _parse(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _filename:stdgo.GoString, _src:stdgo.Slice<stdgo.GoUInt8>, _fragmentOk:Bool):{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>; var _1 : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } {
        var _file = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>), _sourceAdj = null, _indentAdj = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(_fset, _filename?.__copy__(), stdgo.Go.toInterface(_src), (68u32 : stdgo._internal.go.parser.Parser_mode.Mode));
            _file = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L34"
        if (((_err == null || !_fragmentOk : Bool) || !stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("expected \'package\'" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L35"
            return { _0 : _file, _1 : _sourceAdj, _2 : _indentAdj, _3 : _err };
        };
        var _psrc = (((("package p;" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_src : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(_fset, _filename?.__copy__(), stdgo.Go.toInterface(_psrc), (68u32 : stdgo._internal.go.parser.Parser_mode.Mode));
            _file = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L44"
        if (_err == null) {
            _sourceAdj = function(_src:stdgo.Slice<stdgo.GoUInt8>, _indent:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
                _src = (_src.__slice__((_indent + ((("package p\n" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L49"
                return stdgo._internal.bytes.Bytes_trimspace.trimSpace(_src);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L51"
            return { _0 : _file, _1 : _sourceAdj, _2 : _indentAdj, _3 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L56"
        if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("expected declaration" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L57"
            return { _0 : _file, _1 : _sourceAdj, _2 : _indentAdj, _3 : _err };
        };
        var _fsrc = ((((("package p; func _() {" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_src : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>).__append__((10 : stdgo.GoUInt8), (10 : stdgo.GoUInt8), (125 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(_fset, _filename?.__copy__(), stdgo.Go.toInterface(_fsrc), (68u32 : stdgo._internal.go.parser.Parser_mode.Mode));
            _file = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L68"
        if (_err == null) {
            _sourceAdj = function(_src:stdgo.Slice<stdgo.GoUInt8>, _indent:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
                //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L71"
                if ((_indent < (0 : stdgo.GoInt) : Bool)) {
                    _indent = (0 : stdgo.GoInt);
                };
                _src = (_src.__slice__((((2 : stdgo.GoInt) * _indent : stdgo.GoInt) + ((("package p\n\nfunc _() {" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                _src = (_src.__slice__(0, ((_src.length) - ((("}\n" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L80"
                return stdgo._internal.bytes.Bytes_trimspace.trimSpace(_src);
            };
            _indentAdj = (-1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L88"
        return { _0 : _file, _1 : _sourceAdj, _2 : _indentAdj, _3 : _err };
    }
