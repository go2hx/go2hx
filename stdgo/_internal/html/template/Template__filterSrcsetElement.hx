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
function _filterSrcsetElement(_s:stdgo.GoString, _left:stdgo.GoInt, _right:stdgo.GoInt, _b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        var _start = (_left : stdgo.GoInt);
        while (((_start < _right : Bool) && stdgo._internal.html.template.Template__isHTMLSpace._isHTMLSpace(_s[(_start : stdgo.GoInt)]) : Bool)) {
            _start++;
        };
        var _end = (_right : stdgo.GoInt);
        {
            var _i = (_start : stdgo.GoInt);
            while ((_i < _right : Bool)) {
                if (stdgo._internal.html.template.Template__isHTMLSpace._isHTMLSpace(_s[(_i : stdgo.GoInt)])) {
                    _end = _i;
                    break;
                };
                _i++;
            };
        };
        {
            var _url = ((_s.__slice__(_start, _end) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (stdgo._internal.html.template.Template__isSafeURL._isSafeURL(_url?.__copy__())) {
                var _metadataOk = (true : Bool);
                {
                    var _i = (_end : stdgo.GoInt);
                    while ((_i < _right : Bool)) {
                        if (!stdgo._internal.html.template.Template__isHTMLSpaceOrASCIIAlnum._isHTMLSpaceOrASCIIAlnum(_s[(_i : stdgo.GoInt)])) {
                            _metadataOk = false;
                            break;
                        };
                        _i++;
                    };
                };
                if (_metadataOk) {
                    @:check2r _b.writeString((_s.__slice__(_left, _start) : stdgo.GoString)?.__copy__());
                    stdgo._internal.html.template.Template__processURLOnto._processURLOnto(_url?.__copy__(), true, _b);
                    @:check2r _b.writeString((_s.__slice__(_end, _right) : stdgo.GoString)?.__copy__());
                    return;
                };
            };
        };
        @:check2r _b.writeString(("#" : stdgo.GoString));
        @:check2r _b.writeString(("ZgotmplZ" : stdgo.GoString));
    }
