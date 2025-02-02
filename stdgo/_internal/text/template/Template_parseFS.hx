package stdgo._internal.text.template;
function parseFS(_fsys:stdgo._internal.io.fs.Fs_FS.FS, _patterns:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>; var _1 : stdgo.Error; } {
        var _patterns = new stdgo.Slice<stdgo.GoString>(_patterns.length, 0, ..._patterns);
        return stdgo._internal.text.template.Template__parseFS._parseFS(null, _fsys, _patterns);
    }
