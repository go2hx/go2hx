package stdgo._internal.html.template;
function _parseGlob(_t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template>, _pattern:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/html/template/template.go#L467"
        {
            var _err = (_t._checkCanParse() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/template.go#L468"
                return { _0 : null, _1 : _err };
            };
        };
        var __tmp__ = stdgo._internal.path.filepath.Filepath_glob.glob(_pattern?.__copy__()), _filenames:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/html/template/template.go#L471"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/template.go#L472"
            return { _0 : null, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/template.go#L474"
        if ((_filenames.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/template.go#L475"
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("html/template: pattern matches no files: %#q" : stdgo.GoString), stdgo.Go.toInterface(_pattern)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/template.go#L477"
        return stdgo._internal.html.template.Template__parsefiles._parseFiles(_t, stdgo._internal.html.template.Template__readfileos._readFileOS, ...(_filenames : Array<stdgo.GoString>));
    }
