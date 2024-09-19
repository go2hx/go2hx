package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testReadAfterLines(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _line1 = ("this is line1" : stdgo.GoString);
        var _restData = ("this is line2\nthis is line 3\n" : stdgo.GoString);
        var _inbuf = stdgo._internal.bytes.Bytes_newReader.newReader((((_line1 + ("\n" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _restData?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        var _outbuf = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_Builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        var _maxLineLength = ((_line1.length) + ((_restData.length) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        var _l = stdgo._internal.bufio.Bufio_newReaderSize.newReaderSize(stdgo.Go.asInterface(_inbuf), _maxLineLength);
        var __tmp__ = _l.readLine(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _isPrefix:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (((_isPrefix || _err != null : Bool) || ((_line : stdgo.GoString) != _line1) : Bool)) {
            _t.errorf(("bad result for first line: isPrefix=%v err=%v line=%q" : stdgo.GoString), stdgo.Go.toInterface(_isPrefix), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_line : stdgo.GoString)));
        };
        var __tmp__ = stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(_outbuf), stdgo.Go.asInterface(_l)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((((_n : stdgo.GoInt) != (_restData.length)) || (_err != null) : Bool)) {
            _t.errorf(("bad result for Read: n=%d err=%v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        if ((_outbuf.string() : stdgo.GoString) != (_restData)) {
            _t.errorf(("bad result for Read: got %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface((_outbuf.string() : stdgo.GoString)), stdgo.Go.toInterface(_restData));
        };
    }
