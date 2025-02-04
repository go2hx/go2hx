package stdgo._internal.html.template;
function parseFS(_fs:stdgo._internal.io.fs.Fs_fs.FS, _patterns:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } {
        var _patterns = new stdgo.Slice<stdgo.GoString>(_patterns.length, 0, ..._patterns);
        return stdgo._internal.html.template.Template__parsefs._parseFS(null, _fs, _patterns);
    }
