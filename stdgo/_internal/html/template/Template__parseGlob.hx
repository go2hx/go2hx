package stdgo._internal.html.template;
function _parseGlob(_t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>, _pattern:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } {
        {
            var _err = (_t._checkCanParse() : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var __tmp__ = stdgo._internal.path.filepath.Filepath_glob.glob(_pattern?.__copy__()), _filenames:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        if ((_filenames.length) == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("html/template: pattern matches no files: %#q" : stdgo.GoString), stdgo.Go.toInterface(_pattern)) };
        };
        return stdgo._internal.html.template.Template__parseFiles._parseFiles(_t, stdgo._internal.html.template.Template__readFileOS._readFileOS, ...(_filenames : Array<stdgo.GoString>));
    }