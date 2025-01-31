package stdgo._internal.html.template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.text.template.parse.Parse;
import stdgo._internal.html.Html;
import stdgo._internal.text.template.Template;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
function _parseFiles(_t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>, _readFile:stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; }, _filenames:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } {
        var _filenames = new stdgo.Slice<stdgo.GoString>(_filenames.length, 0, ..._filenames);
        {
            var _err = (@:check2r _t._checkCanParse() : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        if ((_filenames.length) == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("html/template: no files named in call to ParseFiles" : stdgo.GoString)) };
        };
        for (__14 => _filename in _filenames) {
            var __tmp__ = _readFile(_filename?.__copy__()), _name:stdgo.GoString = __tmp__._0, _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            var _s = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var _tmpl:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
            if ((_t == null || (_t : Dynamic).__nil__)) {
                _t = stdgo._internal.html.template.Template_new_.new_(_name?.__copy__());
            };
            if (_name == (@:check2r _t.name())) {
                _tmpl = _t;
            } else {
                _tmpl = @:check2r _t.new_(_name?.__copy__());
            };
            {
                var __tmp__ = @:check2r _tmpl.parse(_s?.__copy__());
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _t, _1 : (null : stdgo.Error) };
    }
