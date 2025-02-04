package stdgo._internal.regexp;
@:keep @:allow(stdgo._internal.regexp.Regexp.T_inputs_asInterface) class T_inputs_static_extension {
    @:keep
    @:tdfield
    static public function _init( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs>, _r:stdgo._internal.io.Io_runereader.RuneReader, _b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):{ var _0 : stdgo._internal.regexp.Regexp_t_input.T_input; var _1 : stdgo.GoInt; } {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs> = _i;
        if (_r != null) {
            return { _0 : @:check2r _i._newReader(_r), _1 : (0 : stdgo.GoInt) };
        };
        if (_b != null) {
            return { _0 : @:check2r _i._newBytes(_b), _1 : (_b.length) };
        };
        return { _0 : @:check2r _i._newString(_s?.__copy__()), _1 : (_s.length) };
    }
    @:keep
    @:tdfield
    static public function _clear( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs>):Void {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs> = _i;
        if ((@:checkr _i ?? throw "null pointer dereference")._bytes._str != null) {
            (@:checkr _i ?? throw "null pointer dereference")._bytes._str = (null : stdgo.Slice<stdgo.GoUInt8>);
        } else if ((@:checkr _i ?? throw "null pointer dereference")._reader._r != null) {
            (@:checkr _i ?? throw "null pointer dereference")._reader._r = (null : stdgo._internal.io.Io_runereader.RuneReader);
        } else {
            (@:checkr _i ?? throw "null pointer dereference")._string._str = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
    }
    @:keep
    @:tdfield
    static public function _newReader( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs>, _r:stdgo._internal.io.Io_runereader.RuneReader):stdgo._internal.regexp.Regexp_t_input.T_input {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs> = _i;
        (@:checkr _i ?? throw "null pointer dereference")._reader._r = _r;
        (@:checkr _i ?? throw "null pointer dereference")._reader._atEOT = false;
        (@:checkr _i ?? throw "null pointer dereference")._reader._pos = (0 : stdgo.GoInt);
        return stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _i ?? throw "null pointer dereference")._reader) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputreader.T_inputReader>));
    }
    @:keep
    @:tdfield
    static public function _newString( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs>, _s:stdgo.GoString):stdgo._internal.regexp.Regexp_t_input.T_input {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs> = _i;
        (@:checkr _i ?? throw "null pointer dereference")._string._str = _s?.__copy__();
        return stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _i ?? throw "null pointer dereference")._string) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputstring.T_inputString>));
    }
    @:keep
    @:tdfield
    static public function _newBytes( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.regexp.Regexp_t_input.T_input {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs> = _i;
        (@:checkr _i ?? throw "null pointer dereference")._bytes._str = _b;
        return stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _i ?? throw "null pointer dereference")._bytes) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes>));
    }
}
