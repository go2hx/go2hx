package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testReaderZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _l = ((stdgo.Go.setRef((new stdgo._internal.strings.Strings_Reader.Reader() : stdgo._internal.strings.Strings_Reader.Reader)) : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>).len() : stdgo.GoInt);
            if (_l != ((0 : stdgo.GoInt))) {
                _t.errorf(("Len: got %d, want 0" : stdgo.GoString), stdgo.Go.toInterface(_l));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.strings.Strings_Reader.Reader() : stdgo._internal.strings.Strings_Reader.Reader)) : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>).read((null : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
                _t.errorf(("Read: got %d, %v; want 0, io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.strings.Strings_Reader.Reader() : stdgo._internal.strings.Strings_Reader.Reader)) : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>).readAt((null : stdgo.Slice<stdgo.GoUInt8>), (11i64 : stdgo.GoInt64)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
                _t.errorf(("ReadAt: got %d, %v; want 0, io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.strings.Strings_Reader.Reader() : stdgo._internal.strings.Strings_Reader.Reader)) : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>).readByte(), _b:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_b != (0 : stdgo.GoUInt8)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
                _t.errorf(("ReadByte: got %d, %v; want 0, io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.strings.Strings_Reader.Reader() : stdgo._internal.strings.Strings_Reader.Reader)) : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>).readRune(), _ch:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (((_ch != ((0 : stdgo.GoInt32)) || _size != ((0 : stdgo.GoInt)) : Bool) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
                _t.errorf(("ReadRune: got %d, %d, %v; want 0, 0, io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_ch), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.strings.Strings_Reader.Reader() : stdgo._internal.strings.Strings_Reader.Reader)) : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>).seek((11i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), _offset:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_offset != (11i64 : stdgo.GoInt64)) || (_err != null) : Bool)) {
                _t.errorf(("Seek: got %d, %v; want 11, nil" : stdgo.GoString), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(_err));
            };
        };
        {
            var _s = ((stdgo.Go.setRef((new stdgo._internal.strings.Strings_Reader.Reader() : stdgo._internal.strings.Strings_Reader.Reader)) : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>).size() : stdgo.GoInt64);
            if (_s != ((0i64 : stdgo.GoInt64))) {
                _t.errorf(("Size: got %d, want 0" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
        if ((stdgo.Go.setRef((new stdgo._internal.strings.Strings_Reader.Reader() : stdgo._internal.strings.Strings_Reader.Reader)) : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>).unreadByte() == null) {
            _t.errorf(("UnreadByte: got nil, want error" : stdgo.GoString));
        };
        if ((stdgo.Go.setRef((new stdgo._internal.strings.Strings_Reader.Reader() : stdgo._internal.strings.Strings_Reader.Reader)) : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>).unreadRune() == null) {
            _t.errorf(("UnreadRune: got nil, want error" : stdgo.GoString));
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.strings.Strings_Reader.Reader() : stdgo._internal.strings.Strings_Reader.Reader)) : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>).writeTo(stdgo._internal.io.Io_discard.discard), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0i64 : stdgo.GoInt64)) || (_err != null) : Bool)) {
                _t.errorf(("WriteTo: got %d, %v; want 0, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
    }
