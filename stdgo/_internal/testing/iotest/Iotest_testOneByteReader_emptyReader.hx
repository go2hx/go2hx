package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.log.Log;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
function testOneByteReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _obr = (stdgo._internal.testing.iotest.Iotest_oneByteReader.oneByteReader(stdgo.Go.asInterface(_r)) : stdgo._internal.io.Io_Reader.Reader);
        var _b:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _obr.read(_b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || (_n != (0 : stdgo.GoInt)) : Bool)) {
                @:check2r _t.errorf(("Empty buffer read returned n=%d err=%v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        _b = (new stdgo.Slice<stdgo.GoUInt8>((5 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _obr.read(_b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        {
            var __0 = (_err : stdgo.Error), __1 = (stdgo._internal.io.Io_eOF.eOF : stdgo.Error);
var _w = __1, _g = __0;
            if (stdgo.Go.toInterface(_g) != (stdgo.Go.toInterface(_w))) {
                @:check2r _t.errorf(("Error mismatch\n\tGot:  %v\n\tWant: %v" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
            };
        };
        {
            var __0 = (_n : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _w = __1, _g = __0;
            if (_g != (_w)) {
                @:check2r _t.errorf(("Unexpectedly read %d bytes, wanted %d" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
            };
        };
    }
