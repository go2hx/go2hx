package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_tagOptions_asInterface) class T_tagOptions_static_extension {
    @:keep
    @:tdfield
    static public function contains( _o:stdgo._internal.encoding.json.Json_t_tagoptions.T_tagOptions, _optionName:stdgo.GoString):Bool {
        @:recv var _o:stdgo._internal.encoding.json.Json_t_tagoptions.T_tagOptions = _o;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/tags.go#L26"
        if ((_o.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/tags.go#L27"
            return false;
        };
        var _s = ((_o : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/tags.go#L30"
        while (_s != ((stdgo.Go.str() : stdgo.GoString))) {
            var _name:stdgo.GoString = ("" : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_s?.__copy__(), ("," : stdgo.GoString));
                _name = @:tmpset0 __tmp__._0?.__copy__();
                _s = @:tmpset0 __tmp__._1?.__copy__();
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/tags.go#L33"
            if (_name == (_optionName)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/tags.go#L34"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/tags.go#L37"
        return false;
    }
}
