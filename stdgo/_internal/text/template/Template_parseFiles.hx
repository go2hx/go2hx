package stdgo._internal.text.template;
function parseFiles(_filenames:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>; var _1 : stdgo.Error; } {
        var _filenames = new stdgo.Slice<stdgo.GoString>(_filenames.length, 0, ..._filenames);
        return stdgo._internal.text.template.Template__parseFiles._parseFiles(null, stdgo._internal.text.template.Template__readFileOS._readFileOS, ...(_filenames : Array<stdgo.GoString>));
    }
