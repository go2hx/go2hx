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
function _htmlNameFilter(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        var __tmp__ = stdgo._internal.html.template.Template__stringify._stringify(...(_args : Array<stdgo.AnyInterface>)), _s:stdgo.GoString = __tmp__._0, _t:stdgo._internal.html.template.Template_T_contentType.T_contentType = __tmp__._1;
        if (_t == ((3 : stdgo._internal.html.template.Template_T_contentType.T_contentType))) {
            return _s?.__copy__();
        };
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return ("ZgotmplZ" : stdgo.GoString);
        };
        _s = stdgo._internal.strings.Strings_toLower.toLower(_s?.__copy__())?.__copy__();
        {
            var _t = (stdgo._internal.html.template.Template__attrType._attrType(_s?.__copy__()) : stdgo._internal.html.template.Template_T_contentType.T_contentType);
            if (_t != ((0 : stdgo._internal.html.template.Template_T_contentType.T_contentType))) {
                return ("ZgotmplZ" : stdgo.GoString);
            };
        };
        for (__6 => _r in _s) {
            if ((((48 : stdgo.GoInt32) <= _r : Bool) && (_r <= (57 : stdgo.GoInt32) : Bool) : Bool)) {} else if ((((97 : stdgo.GoInt32) <= _r : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {} else {
                return ("ZgotmplZ" : stdgo.GoString);
            };
        };
        return _s?.__copy__();
    }
