package stdgo._internal.text.template;
function parseFS(_fsys:stdgo._internal.io.fs.Fs_fs.FS, _patterns:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>; var _1 : stdgo.Error; } {
        var _patterns = new stdgo.Slice<stdgo.GoString>(_patterns.length, 0, ..._patterns);
        //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L139"
        return stdgo._internal.text.template.Template__parsefs._parseFS(null, _fsys, _patterns);
    }
