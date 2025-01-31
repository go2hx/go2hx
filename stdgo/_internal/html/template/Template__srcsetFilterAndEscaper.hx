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
function _srcsetFilterAndEscaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        var __tmp__ = stdgo._internal.html.template.Template__stringify._stringify(...(_args : Array<stdgo.AnyInterface>)), _s:stdgo.GoString = __tmp__._0, _t:stdgo._internal.html.template.Template_T_contentType.T_contentType = __tmp__._1;
        {
            final __value__ = _t;
            if (__value__ == ((7 : stdgo._internal.html.template.Template_T_contentType.T_contentType))) {
                return _s?.__copy__();
            } else if (__value__ == ((6 : stdgo._internal.html.template.Template_T_contentType.T_contentType))) {
                var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
                if (stdgo._internal.html.template.Template__processURLOnto._processURLOnto(_s?.__copy__(), true, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>))) {
                    _s = (@:check2 _b.string() : stdgo.GoString)?.__copy__();
                };
                return stdgo._internal.strings.Strings_replaceAll.replaceAll(_s?.__copy__(), ("," : stdgo.GoString), ("%2c" : stdgo.GoString))?.__copy__();
            };
        };
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        var _written = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                if (_s[(_i : stdgo.GoInt)] == ((44 : stdgo.GoUInt8))) {
                    stdgo._internal.html.template.Template__filterSrcsetElement._filterSrcsetElement(_s.__copy__(), _written, _i, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>));
                    @:check2 _b.writeString(("," : stdgo.GoString));
                    _written = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                };
                _i++;
            };
        };
        stdgo._internal.html.template.Template__filterSrcsetElement._filterSrcsetElement(_s?.__copy__(), _written, (_s.length), (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>));
        return (@:check2 _b.string() : stdgo.GoString)?.__copy__();
    }
