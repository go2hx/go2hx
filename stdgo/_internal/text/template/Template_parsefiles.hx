package stdgo._internal.text.template;
function parseFiles(_filenames:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>; var _1 : stdgo.Error; } {
        var _filenames = new stdgo.Slice<stdgo.GoString>(_filenames.length, 0, ..._filenames);
        //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L41"
        return stdgo._internal.text.template.Template__parsefiles._parseFiles(null, stdgo._internal.text.template.Template__readfileos._readFileOS, ...(_filenames : Array<stdgo.GoString>));
    }
