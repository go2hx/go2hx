package stdgo._internal.text.template;
function _parseGlob(_t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, _pattern:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.path.filepath.Filepath_glob.glob(_pattern?.__copy__()), _filenames:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L125"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L126"
            return { _0 : null, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L128"
        if ((_filenames.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L129"
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("template: pattern matches no files: %#q" : stdgo.GoString), stdgo.Go.toInterface(_pattern)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L131"
        return stdgo._internal.text.template.Template__parsefiles._parseFiles(_t, stdgo._internal.text.template.Template__readfileos._readFileOS, ...(_filenames : Array<stdgo.GoString>));
    }
