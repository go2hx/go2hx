package stdgo._internal.strings;
@:keep @:allow(stdgo._internal.strings.Strings.T_singleStringReplacer_asInterface) class T_singleStringReplacer_static_extension {
    @:keep
    @:tdfield
    static public function writeString( _r:stdgo.Ref<stdgo._internal.strings.Strings_t_singlestringreplacer.T_singleStringReplacer>, _w:stdgo._internal.io.Io_writer.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_t_singlestringreplacer.T_singleStringReplacer> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _sw = (stdgo._internal.strings.Strings__getstringwriter._getStringWriter(_w) : stdgo._internal.io.Io_stringwriter.StringWriter);
        var _i:stdgo.GoInt = (0 : stdgo.GoInt), _wn:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L413"
        while (true) {
            var _match = ((@:checkr _r ?? throw "null pointer dereference")._finder._next((_s.__slice__(_i) : stdgo.GoString)?.__copy__()) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L415"
            if (_match == ((-1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L416"
                break;
            };
            {
                var __tmp__ = _sw.writeString((_s.__slice__(_i, (_i + _match : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                _wn = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            _n = (_n + (_wn) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L420"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L421"
                return { _0 : _n, _1 : _err };
            };
            {
                var __tmp__ = _sw.writeString((@:checkr _r ?? throw "null pointer dereference")._value?.__copy__());
                _wn = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            _n = (_n + (_wn) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L425"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L426"
                return { _0 : _n, _1 : _err };
            };
            _i = (_i + ((_match + ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._finder ?? throw "null pointer dereference")._pattern.length) : stdgo.GoInt)) : stdgo.GoInt);
        };
        {
            var __tmp__ = _sw.writeString((_s.__slice__(_i) : stdgo.GoString)?.__copy__());
            _wn = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        _n = (_n + (_wn) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L432"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function replace( _r:stdgo.Ref<stdgo._internal.strings.Strings_t_singlestringreplacer.T_singleStringReplacer>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_t_singlestringreplacer.T_singleStringReplacer> = _r;
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var __0 = (0 : stdgo.GoInt), __1 = (false : Bool);
var _matched = __1, _i = __0;
        //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L392"
        while (true) {
            var _match = ((@:checkr _r ?? throw "null pointer dereference")._finder._next((_s.__slice__(_i) : stdgo.GoString)?.__copy__()) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L394"
            if (_match == ((-1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L395"
                break;
            };
            _matched = true;
            //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L398"
            _buf.grow((_match + ((@:checkr _r ?? throw "null pointer dereference")._value.length) : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L399"
            _buf.writeString((_s.__slice__(_i, (_i + _match : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L400"
            _buf.writeString((@:checkr _r ?? throw "null pointer dereference")._value?.__copy__());
            _i = (_i + ((_match + ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._finder ?? throw "null pointer dereference")._pattern.length) : stdgo.GoInt)) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L403"
        if (!_matched) {
            //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L404"
            return _s?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L406"
        _buf.writeString((_s.__slice__(_i) : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L407"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
}
