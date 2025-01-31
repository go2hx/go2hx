package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
function testStructNonStruct(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {};
        var _s = (new stdgo._internal.encoding.gob.Gob_T_testStructNonStruct___localname___Struct_10305.T_testStructNonStruct___localname___Struct_10305(("hello" : stdgo.GoString)) : stdgo._internal.encoding.gob.Gob_T_testStructNonStruct___localname___Struct_10305.T_testStructNonStruct___localname___Struct_10305);
        var _sp:stdgo._internal.encoding.gob.Gob_T_testStructNonStruct___localname___Struct_10305.T_testStructNonStruct___localname___Struct_10305 = ({} : stdgo._internal.encoding.gob.Gob_T_testStructNonStruct___localname___Struct_10305.T_testStructNonStruct___localname___Struct_10305);
        {
            var _err = (stdgo._internal.encoding.gob.Gob__encAndDec._encAndDec(stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_sp) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testStructNonStruct___localname___Struct_10305.T_testStructNonStruct___localname___Struct_10305>)))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.error(stdgo.Go.toInterface(_err));
            };
        };
        var _ns:stdgo._internal.encoding.gob.Gob_T_testStructNonStruct___localname___NonStruct_10341.T_testStructNonStruct___localname___NonStruct_10341 = (("" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_T_testStructNonStruct___localname___NonStruct_10341.T_testStructNonStruct___localname___NonStruct_10341);
        var _ns__pointer__ = stdgo.Go.pointer(_ns);
        var _ns__pointer__ = stdgo.Go.pointer(_ns);
        var _ns__pointer__ = stdgo.Go.pointer(_ns);
        var _ns__pointer__ = stdgo.Go.pointer(_ns);
        {
            var _err = (stdgo._internal.encoding.gob.Gob__encAndDec._encAndDec(stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(_ns__pointer__)) : stdgo.Error);
            if (_err == null) {
                @:check2r _t.error(stdgo.Go.toInterface(("should get error for struct/non-struct" : stdgo.GoString)));
            } else if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("type" : stdgo.GoString))) {
                @:check2r _t.error(stdgo.Go.toInterface(("for struct/non-struct expected type error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        var _nsp:stdgo._internal.encoding.gob.Gob_T_testStructNonStruct___localname___NonStruct_10341.T_testStructNonStruct___localname___NonStruct_10341 = (("" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_T_testStructNonStruct___localname___NonStruct_10341.T_testStructNonStruct___localname___NonStruct_10341);
        var _nsp__pointer__ = stdgo.Go.pointer(_nsp);
        var _nsp__pointer__ = stdgo.Go.pointer(_nsp);
        var _nsp__pointer__ = stdgo.Go.pointer(_nsp);
        var _nsp__pointer__ = stdgo.Go.pointer(_nsp);
        {
            var _err = (stdgo._internal.encoding.gob.Gob__encAndDec._encAndDec(stdgo.Go.toInterface(_ns), stdgo.Go.toInterface(_nsp__pointer__)) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.error(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (stdgo._internal.encoding.gob.Gob__encAndDec._encAndDec(stdgo.Go.toInterface(_ns), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testStructNonStruct___localname___Struct_10305.T_testStructNonStruct___localname___Struct_10305>)))) : stdgo.Error);
            if (_err == null) {
                @:check2r _t.error(stdgo.Go.toInterface(("should get error for non-struct/struct" : stdgo.GoString)));
            } else if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("type" : stdgo.GoString))) {
                @:check2r _t.error(stdgo.Go.toInterface(("for non-struct/struct expected type error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
    }
