package stdgo._internal.encoding.hex;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function testDecoderErr(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in stdgo._internal.encoding.hex.Hex__errTests._errTests) {
            var _dec = (stdgo._internal.encoding.hex.Hex_newDecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(_tt._in?.__copy__()))) : stdgo._internal.io.Io_Reader.Reader);
            var __tmp__ = stdgo._internal.io.Io_readAll.readAll(_dec), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            var _wantErr = (_tt._err : stdgo.Error);
            if (stdgo.Go.toInterface(_wantErr) == (stdgo.Go.toInterface(stdgo._internal.encoding.hex.Hex_errLength.errLength))) {
                _wantErr = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
            };
            if ((((_out : stdgo.GoString) != _tt._out) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(_wantErr)) : Bool)) {
                @:check2r _t.errorf(("NewDecoder(%q) = %q, %v, want %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._out), stdgo.Go.toInterface(_wantErr));
            };
        };
    }
