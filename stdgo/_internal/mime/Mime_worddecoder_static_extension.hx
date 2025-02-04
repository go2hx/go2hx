package stdgo._internal.mime;
@:keep @:allow(stdgo._internal.mime.Mime.WordDecoder_asInterface) class WordDecoder_static_extension {
    @:keep
    @:tdfield
    static public function _convert( _d:stdgo.Ref<stdgo._internal.mime.Mime_worddecoder.WordDecoder>, _buf:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _charset:stdgo.GoString, _content:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.mime.Mime_worddecoder.WordDecoder> = _d;
        if (stdgo._internal.strings.Strings_equalfold.equalFold(("utf-8" : stdgo.GoString), _charset?.__copy__())) {
            @:check2r _buf.write(_content);
        } else if (stdgo._internal.strings.Strings_equalfold.equalFold(("iso-8859-1" : stdgo.GoString), _charset?.__copy__())) {
            for (__0 => _c in _content) {
                @:check2r _buf.writeRune((_c : stdgo.GoInt32));
            };
        } else if (stdgo._internal.strings.Strings_equalfold.equalFold(("us-ascii" : stdgo.GoString), _charset?.__copy__())) {
            for (__0 => _c in _content) {
                if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                    @:check2r _buf.writeRune((65533 : stdgo.GoInt32));
                } else {
                    @:check2r _buf.writeByte(_c);
                };
            };
        } else {
            if ((@:checkr _d ?? throw "null pointer dereference").charsetReader == null) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("mime: unhandled charset %q" : stdgo.GoString), stdgo.Go.toInterface(_charset));
            };
            var __tmp__ = (@:checkr _d ?? throw "null pointer dereference").charsetReader(stdgo._internal.strings.Strings_tolower.toLower(_charset?.__copy__())?.__copy__(), stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_content))), _r:stdgo._internal.io.Io_reader.Reader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            {
                {
                    var __tmp__ = stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(_buf), _r);
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function decodeHeader( _d:stdgo.Ref<stdgo._internal.mime.Mime_worddecoder.WordDecoder>, _header:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.mime.Mime_worddecoder.WordDecoder> = _d;
        var _i = (stdgo._internal.strings.Strings_index.index(_header?.__copy__(), ("=?" : stdgo.GoString)) : stdgo.GoInt);
        if (_i == ((-1 : stdgo.GoInt))) {
            return { _0 : _header?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        @:check2 _buf.writeString((_header.__slice__(0, _i) : stdgo.GoString)?.__copy__());
        _header = (_header.__slice__(_i) : stdgo.GoString)?.__copy__();
        var _betweenWords = (false : Bool);
        while (true) {
            var _start = (stdgo._internal.strings.Strings_index.index(_header?.__copy__(), ("=?" : stdgo.GoString)) : stdgo.GoInt);
            if (_start == ((-1 : stdgo.GoInt))) {
                break;
            };
            var _cur = (_start + ((("=?" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt);
            var _i = (stdgo._internal.strings.Strings_index.index((_header.__slice__(_cur) : stdgo.GoString)?.__copy__(), ("?" : stdgo.GoString)) : stdgo.GoInt);
            if (_i == ((-1 : stdgo.GoInt))) {
                break;
            };
            var _charset = ((_header.__slice__(_cur, (_cur + _i : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            _cur = (_cur + ((_i + ((("?" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.GoInt);
            if (((_header.length) < (_cur + ((("Q??=" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt) : Bool)) {
                break;
            };
            var _encoding = (_header[(_cur : stdgo.GoInt)] : stdgo.GoUInt8);
            _cur++;
            if (_header[(_cur : stdgo.GoInt)] != ((63 : stdgo.GoUInt8))) {
                break;
            };
            _cur++;
            var _j = (stdgo._internal.strings.Strings_index.index((_header.__slice__(_cur) : stdgo.GoString)?.__copy__(), ("?=" : stdgo.GoString)) : stdgo.GoInt);
            if (_j == ((-1 : stdgo.GoInt))) {
                break;
            };
            var _text = ((_header.__slice__(_cur, (_cur + _j : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var _end = ((_cur + _j : stdgo.GoInt) + ((("?=" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt);
            var __tmp__ = stdgo._internal.mime.Mime__decode._decode(_encoding, _text?.__copy__()), _content:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _betweenWords = false;
                @:check2 _buf.writeString((_header.__slice__(0, (_start + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                _header = (_header.__slice__((_start + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                continue;
            };
            if (((_start > (0 : stdgo.GoInt) : Bool) && ((!_betweenWords || stdgo._internal.mime.Mime__hasnonwhitespace._hasNonWhitespace((_header.__slice__(0, _start) : stdgo.GoString)?.__copy__()) : Bool)) : Bool)) {
                @:check2 _buf.writeString((_header.__slice__(0, _start) : stdgo.GoString)?.__copy__());
            };
            {
                var _err = (@:check2r _d._convert((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), _charset?.__copy__(), _content) : stdgo.Error);
                if (_err != null) {
                    return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                };
            };
            _header = (_header.__slice__(_end) : stdgo.GoString)?.__copy__();
            _betweenWords = true;
        };
        if (((_header.length) > (0 : stdgo.GoInt) : Bool)) {
            @:check2 _buf.writeString(_header?.__copy__());
        };
        return { _0 : (@:check2 _buf.string() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function decode( _d:stdgo.Ref<stdgo._internal.mime.Mime_worddecoder.WordDecoder>, _word:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.mime.Mime_worddecoder.WordDecoder> = _d;
        if ((((((_word.length) < (8 : stdgo.GoInt) : Bool) || !stdgo._internal.strings.Strings_hasprefix.hasPrefix(_word?.__copy__(), ("=?" : stdgo.GoString)) : Bool) || !stdgo._internal.strings.Strings_hassuffix.hasSuffix(_word?.__copy__(), ("?=" : stdgo.GoString)) : Bool) || (stdgo._internal.strings.Strings_count.count(_word?.__copy__(), ("?" : stdgo.GoString)) != (4 : stdgo.GoInt)) : Bool)) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.mime.Mime__errinvalidword._errInvalidWord };
        };
        _word = (_word.__slice__((2 : stdgo.GoInt), ((_word.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_word?.__copy__(), ("?" : stdgo.GoString)), _charset:stdgo.GoString = __tmp__._0, _text:stdgo.GoString = __tmp__._1, __0:Bool = __tmp__._2;
        if (_charset == ((stdgo.Go.str() : stdgo.GoString))) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.mime.Mime__errinvalidword._errInvalidWord };
        };
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_text?.__copy__(), ("?" : stdgo.GoString)), _encoding:stdgo.GoString = __tmp__._0, _text:stdgo.GoString = __tmp__._1, __1:Bool = __tmp__._2;
        if ((_encoding.length) != ((1 : stdgo.GoInt))) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.mime.Mime__errinvalidword._errInvalidWord };
        };
        var __tmp__ = stdgo._internal.mime.Mime__decode._decode(_encoding[(0 : stdgo.GoInt)], _text?.__copy__()), _content:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
        };
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        {
            var _err = (@:check2r _d._convert((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), _charset?.__copy__(), _content) : stdgo.Error);
            if (_err != null) {
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
            };
        };
        return { _0 : (@:check2 _buf.string() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
    }
}
