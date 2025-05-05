package stdgo._internal.html.template;
function parseFiles(_filenames:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } {
        var _filenames = new stdgo.Slice<stdgo.GoString>(_filenames.length, 0, ..._filenames);
        //"file:///home/runner/.go/go1.21.3/src/html/template/template.go#L383"
        return stdgo._internal.html.template.Template__parsefiles._parseFiles(null, stdgo._internal.html.template.Template__readfileos._readFileOS, ...(_filenames : Array<stdgo.GoString>));
    }
