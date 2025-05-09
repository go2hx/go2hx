package stdgo._internal.text.template;
function _parseFS(_t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, _fsys:stdgo._internal.io.fs.Fs_fs.FS, _patterns:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>; var _1 : stdgo.Error; } {
        var _filenames:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L153"
        for (__8 => _pattern in _patterns) {
            var __tmp__ = stdgo._internal.io.fs.Fs_glob.glob(_fsys, _pattern?.__copy__()), _list:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L155"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L156"
                return { _0 : null, _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L158"
            if ((_list.length) == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L159"
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("template: pattern matches no files: %#q" : stdgo.GoString), stdgo.Go.toInterface(_pattern)) };
            };
            _filenames = (_filenames.__append__(...(_list : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L163"
        return stdgo._internal.text.template.Template__parsefiles._parseFiles(_t, stdgo._internal.text.template.Template__readfilefs._readFileFS(_fsys), ...(_filenames : Array<stdgo.GoString>));
    }
