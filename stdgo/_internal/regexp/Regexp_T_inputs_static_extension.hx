package stdgo._internal.regexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.testing.Testing;
import stdgo._internal.os.Os;
import stdgo._internal.compress.bzip2.Bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.Io;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
@:keep @:allow(stdgo._internal.regexp.Regexp.T_inputs_asInterface) class T_inputs_static_extension {
    @:keep
    @:tdfield
    static public function _init( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs>, _r:stdgo._internal.io.Io_RuneReader.RuneReader, _b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):{ var _0 : stdgo._internal.regexp.Regexp_T_input.T_input; var _1 : stdgo.GoInt; } {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs> = _i;
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
    static public function _clear( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs>):Void {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs> = _i;
        if ((@:checkr _i ?? throw "null pointer dereference")._bytes._str != null) {
            (@:checkr _i ?? throw "null pointer dereference")._bytes._str = (null : stdgo.Slice<stdgo.GoUInt8>);
        } else if ((@:checkr _i ?? throw "null pointer dereference")._reader._r != null) {
            (@:checkr _i ?? throw "null pointer dereference")._reader._r = (null : stdgo._internal.io.Io_RuneReader.RuneReader);
        } else {
            (@:checkr _i ?? throw "null pointer dereference")._string._str = stdgo.Go.str()?.__copy__();
        };
    }
    @:keep
    @:tdfield
    static public function _newReader( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs>, _r:stdgo._internal.io.Io_RuneReader.RuneReader):stdgo._internal.regexp.Regexp_T_input.T_input {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs> = _i;
        (@:checkr _i ?? throw "null pointer dereference")._reader._r = _r;
        (@:checkr _i ?? throw "null pointer dereference")._reader._atEOT = false;
        (@:checkr _i ?? throw "null pointer dereference")._reader._pos = (0 : stdgo.GoInt);
        return stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _i ?? throw "null pointer dereference")._reader) : stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader>));
    }
    @:keep
    @:tdfield
    static public function _newString( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs>, _s:stdgo.GoString):stdgo._internal.regexp.Regexp_T_input.T_input {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs> = _i;
        (@:checkr _i ?? throw "null pointer dereference")._string._str = _s?.__copy__();
        return stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _i ?? throw "null pointer dereference")._string) : stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputString.T_inputString>));
    }
    @:keep
    @:tdfield
    static public function _newBytes( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.regexp.Regexp_T_input.T_input {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs> = _i;
        (@:checkr _i ?? throw "null pointer dereference")._bytes._str = _b;
        return stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _i ?? throw "null pointer dereference")._bytes) : stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes>));
    }
}
