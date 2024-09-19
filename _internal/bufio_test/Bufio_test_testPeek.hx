package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testPeek(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _p = (new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _buf = stdgo._internal.bufio.Bufio_newReaderSize.newReaderSize(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("abcdefghijklmnop" : stdgo.GoString))), (16 : stdgo.GoInt));
        {
            var __tmp__ = _buf.peek((1 : stdgo.GoInt)), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_s : stdgo.GoString) != ("a" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.fatalf(("want %q got %q, err=%v" : stdgo.GoString), stdgo.Go.toInterface(("a" : stdgo.GoString)), stdgo.Go.toInterface((_s : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.peek((4 : stdgo.GoInt)), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_s : stdgo.GoString) != ("abcd" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.fatalf(("want %q got %q, err=%v" : stdgo.GoString), stdgo.Go.toInterface(("abcd" : stdgo.GoString)), stdgo.Go.toInterface((_s : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.peek((-1 : stdgo.GoInt)), __0:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.bufio.Bufio_errNegativeCount.errNegativeCount))) {
                _t.fatalf(("want ErrNegativeCount got %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.peek((32 : stdgo.GoInt)), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_s : stdgo.GoString) != ("abcdefghijklmnop" : stdgo.GoString)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.bufio.Bufio_errBufferFull.errBufferFull)) : Bool)) {
                _t.fatalf(("want %q, ErrBufFull got %q, err=%v" : stdgo.GoString), stdgo.Go.toInterface(("abcdefghijklmnop" : stdgo.GoString)), stdgo.Go.toInterface((_s : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.read((_p.__slice__((0 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((((_p.__slice__((0 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != ("abc" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.fatalf(("want %q got %q, err=%v" : stdgo.GoString), stdgo.Go.toInterface(("abc" : stdgo.GoString)), stdgo.Go.toInterface(((_p.__slice__((0 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.peek((1 : stdgo.GoInt)), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_s : stdgo.GoString) != ("d" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.fatalf(("want %q got %q, err=%v" : stdgo.GoString), stdgo.Go.toInterface(("d" : stdgo.GoString)), stdgo.Go.toInterface((_s : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.peek((2 : stdgo.GoInt)), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_s : stdgo.GoString) != ("de" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.fatalf(("want %q got %q, err=%v" : stdgo.GoString), stdgo.Go.toInterface(("de" : stdgo.GoString)), stdgo.Go.toInterface((_s : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.read((_p.__slice__((0 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((((_p.__slice__((0 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != ("def" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.fatalf(("want %q got %q, err=%v" : stdgo.GoString), stdgo.Go.toInterface(("def" : stdgo.GoString)), stdgo.Go.toInterface(((_p.__slice__((0 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.peek((4 : stdgo.GoInt)), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_s : stdgo.GoString) != ("ghij" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.fatalf(("want %q got %q, err=%v" : stdgo.GoString), stdgo.Go.toInterface(("ghij" : stdgo.GoString)), stdgo.Go.toInterface((_s : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.read((_p.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((((_p.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != ("ghijklmnop" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.fatalf(("want %q got %q, err=%v" : stdgo.GoString), stdgo.Go.toInterface(("ghijklmnop" : stdgo.GoString)), stdgo.Go.toInterface(((_p.__slice__((0 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.peek((0 : stdgo.GoInt)), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_s : stdgo.GoString) != stdgo.Go.str()) || (_err != null) : Bool)) {
                _t.fatalf(("want %q got %q, err=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.str()), stdgo.Go.toInterface((_s : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.peek((1 : stdgo.GoInt)), __4:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                _t.fatalf(("want EOF got %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        _buf = stdgo._internal.bufio.Bufio_newReaderSize.newReaderSize(stdgo.Go.asInterface((("abcd" : stdgo.GoString) : _internal.bufio_test.Bufio_test_T_dataAndEOFReader.T_dataAndEOFReader)), (32 : stdgo.GoInt));
        {
            var __tmp__ = _buf.peek((2 : stdgo.GoInt)), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_s : stdgo.GoString) != ("ab" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.errorf(("Peek(2) on \"abcd\", EOF = %q, %v; want \"ab\", nil" : stdgo.GoString), stdgo.Go.toInterface((_s : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.peek((4 : stdgo.GoInt)), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_s : stdgo.GoString) != ("abcd" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.errorf(("Peek(4) on \"abcd\", EOF = %q, %v; want \"abcd\", nil" : stdgo.GoString), stdgo.Go.toInterface((_s : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.read((_p.__slice__((0 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((((_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != ("abcd" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.fatalf(("Read after peek = %q, %v; want abcd, EOF" : stdgo.GoString), stdgo.Go.toInterface((_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.read((_p.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((((_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != stdgo.Go.str()) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
                _t.fatalf(("second Read after peek = %q, %v; want \"\", EOF" : stdgo.GoString), stdgo.Go.toInterface((_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_err));
            };
        };
    }
