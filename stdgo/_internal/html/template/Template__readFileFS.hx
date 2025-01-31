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
function _readFileFS(_fsys:stdgo._internal.io.fs.Fs_FS.FS):stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        return function(_file:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
            var _name = ("" : stdgo.GoString), _b = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
            _name = stdgo._internal.path.Path_base.base(_file?.__copy__())?.__copy__();
            {
                var __tmp__ = stdgo._internal.io.fs.Fs_readFile.readFile(_fsys, _file?.__copy__());
                _b = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            return { _0 : _name, _1 : _b, _2 : _err };
        };
    }
