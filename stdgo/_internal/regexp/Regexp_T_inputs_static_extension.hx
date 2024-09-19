package stdgo._internal.regexp;
@:keep @:allow(stdgo._internal.regexp.Regexp.T_inputs_asInterface) class T_inputs_static_extension {
    @:keep
    static public function _init( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs>, _r:stdgo._internal.io.Io_RuneReader.RuneReader, _b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):{ var _0 : stdgo._internal.regexp.Regexp_T_input.T_input; var _1 : stdgo.GoInt; } {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs> = _i;
        if (_r != null) {
            return { _0 : _i._newReader(_r), _1 : (0 : stdgo.GoInt) };
        };
        if (_b != null) {
            return { _0 : _i._newBytes(_b), _1 : (_b.length) };
        };
        return { _0 : _i._newString(_s?.__copy__()), _1 : (_s.length) };
    }
    @:keep
    static public function _clear( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs>):Void {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs> = _i;
        if (_i._bytes._str != null) {
            _i._bytes._str = (null : stdgo.Slice<stdgo.GoUInt8>);
        } else if (_i._reader._r != null) {
            _i._reader._r = (null : stdgo._internal.io.Io_RuneReader.RuneReader);
        } else {
            _i._string._str = stdgo.Go.str()?.__copy__();
        };
    }
    @:keep
    static public function _newReader( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs>, _r:stdgo._internal.io.Io_RuneReader.RuneReader):stdgo._internal.regexp.Regexp_T_input.T_input {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs> = _i;
        _i._reader._r = _r;
        _i._reader._atEOT = false;
        _i._reader._pos = (0 : stdgo.GoInt);
        return stdgo.Go.asInterface((stdgo.Go.setRef(_i._reader) : stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader>));
    }
    @:keep
    static public function _newString( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs>, _s:stdgo.GoString):stdgo._internal.regexp.Regexp_T_input.T_input {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs> = _i;
        _i._string._str = _s?.__copy__();
        return stdgo.Go.asInterface((stdgo.Go.setRef(_i._string) : stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputString.T_inputString>));
    }
    @:keep
    static public function _newBytes( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.regexp.Regexp_T_input.T_input {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs> = _i;
        _i._bytes._str = _b;
        return stdgo.Go.asInterface((stdgo.Go.setRef(_i._bytes) : stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes>));
    }
}
