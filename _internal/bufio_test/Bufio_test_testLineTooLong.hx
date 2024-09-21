package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testLineTooLong(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (40 : stdgo.GoInt) : Bool), _i++, {
                _data = (_data.__append__(((48 : stdgo.GoUInt8) + ((_i % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) : stdgo.GoUInt8)));
            });
        };
        var _buf = stdgo._internal.bytes.Bytes_newReader.newReader(_data);
        var _l = stdgo._internal.bufio.Bufio_newReaderSize.newReaderSize(stdgo.Go.asInterface(_buf), (16 : stdgo.GoInt));
        var __tmp__ = _l.readLine(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _isPrefix:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (((!_isPrefix || !stdgo._internal.bytes.Bytes_equal.equal(_line, (_data.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : Bool) || (_err != null) : Bool)) {
            _t.errorf(("bad result for first line: got %q want %q %v" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface((_data.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_err));
        };
        _data = (_data.__slice__((_line.length)) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _l.readLine();
            _line = __tmp__._0;
            _isPrefix = __tmp__._1;
            _err = __tmp__._2;
        };
        if (((!_isPrefix || !stdgo._internal.bytes.Bytes_equal.equal(_line, (_data.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : Bool) || (_err != null) : Bool)) {
            _t.errorf(("bad result for second line: got %q want %q %v" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface((_data.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_err));
        };
        _data = (_data.__slice__((_line.length)) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _l.readLine();
            _line = __tmp__._0;
            _isPrefix = __tmp__._1;
            _err = __tmp__._2;
        };
        if (((_isPrefix || !stdgo._internal.bytes.Bytes_equal.equal(_line, (_data.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : Bool) || (_err != null) : Bool)) {
            _t.errorf(("bad result for third line: got %q want %q %v" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface((_data.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _l.readLine();
            _line = __tmp__._0;
            _isPrefix = __tmp__._1;
            _err = __tmp__._2;
        };
        if ((_isPrefix || (_err == null) : Bool)) {
            _t.errorf(("expected no more lines: %x %s" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_err));
        };
    }
