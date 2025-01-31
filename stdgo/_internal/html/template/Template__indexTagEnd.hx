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
function _indexTagEnd(_s:stdgo.Slice<stdgo.GoUInt8>, _tag:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var _res = (0 : stdgo.GoInt);
        var _plen = (stdgo._internal.html.template.Template__specialTagEndPrefix._specialTagEndPrefix.length : stdgo.GoInt);
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            var _i = (stdgo._internal.bytes.Bytes_index.index(_s, stdgo._internal.html.template.Template__specialTagEndPrefix._specialTagEndPrefix) : stdgo.GoInt);
            if (_i == ((-1 : stdgo.GoInt))) {
                return _i;
            };
            _s = (_s.__slice__((_i + _plen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            if ((((_tag.length) <= (_s.length) : Bool) && stdgo._internal.bytes.Bytes_equalFold.equalFold(_tag, (_s.__slice__(0, (_tag.length)) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
                _s = (_s.__slice__((_tag.length)) : stdgo.Slice<stdgo.GoUInt8>);
                if ((((_s.length) > (0 : stdgo.GoInt) : Bool) && (stdgo._internal.bytes.Bytes_indexByte.indexByte(stdgo._internal.html.template.Template__tagEndSeparators._tagEndSeparators, _s[(0 : stdgo.GoInt)]) != (-1 : stdgo.GoInt)) : Bool)) {
                    return (_res + _i : stdgo.GoInt);
                };
                _res = (_res + ((_tag.length)) : stdgo.GoInt);
            };
            _res = (_res + ((_i + _plen : stdgo.GoInt)) : stdgo.GoInt);
        };
        return (-1 : stdgo.GoInt);
    }
