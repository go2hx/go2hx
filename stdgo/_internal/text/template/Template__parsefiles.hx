package stdgo._internal.text.template;
function _parseFiles(_t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, _readFile:stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; }, _filenames:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>; var _1 : stdgo.Error; } {
        var _filenames = new stdgo.Slice<stdgo.GoString>(_filenames.length, 0, ..._filenames);
        //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L63"
        if ((_filenames.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L65"
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("template: no files named in call to ParseFiles" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L67"
        for (__8 => _filename in _filenames) {
            var __tmp__ = _readFile(_filename?.__copy__()), _name:stdgo.GoString = __tmp__._0, _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L69"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L70"
                return { _0 : null, _1 : _err };
            };
            var _s = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
            //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L80"
            if (({
                final value = _t;
                (value == null || (value : Dynamic).__nil__);
            })) {
                _t = stdgo._internal.text.template.Template_new_.new_(_name?.__copy__());
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L83"
            if (_name == (_t.name())) {
                _tmpl = _t;
            } else {
                _tmpl = _t.new_(_name?.__copy__());
            };
            {
                var __tmp__ = _tmpl.parse(_s?.__copy__());
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L89"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L90"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L93"
        return { _0 : _t, _1 : (null : stdgo.Error) };
    }
