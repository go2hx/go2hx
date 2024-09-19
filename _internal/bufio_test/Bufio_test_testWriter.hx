package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testWriter(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8192, 8192, ...[for (i in 0 ... 8192) (0 : stdgo.GoUInt8)]);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_data.length) : Bool), _i++, {
                _data[(_i : stdgo.GoInt)] = (((32 : stdgo.GoInt) + (_i % (94 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
            });
        };
        var _w = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.bufio_test.Bufio_test__bufsizes._bufsizes.length) : Bool), _i++, {
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (_internal.bufio_test.Bufio_test__bufsizes._bufsizes.length) : Bool), _j++, {
                        var _nwrite = (_internal.bufio_test.Bufio_test__bufsizes._bufsizes[(_i : stdgo.GoInt)] : stdgo.GoInt);
                        var _bs = (_internal.bufio_test.Bufio_test__bufsizes._bufsizes[(_j : stdgo.GoInt)] : stdgo.GoInt);
                        _w.reset();
                        var _buf = stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize(stdgo.Go.asInterface(_w), _bs);
                        var _context = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("nwrite=%d bufsize=%d" : stdgo.GoString), stdgo.Go.toInterface(_nwrite), stdgo.Go.toInterface(_bs))?.__copy__() : stdgo.GoString);
                        var __tmp__ = _buf.write((_data.__slice__((0 : stdgo.GoInt), _nwrite) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _e1:stdgo.Error = __tmp__._1;
                        if (((_e1 != null) || (_n != _nwrite) : Bool)) {
                            _t.errorf(("%s: buf.Write %d = %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_context), stdgo.Go.toInterface(_nwrite), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_e1));
                            continue;
                        };
                        {
                            var _e = (_buf.flush() : stdgo.Error);
                            if (_e != null) {
                                _t.errorf(("%s: buf.Flush = %v" : stdgo.GoString), stdgo.Go.toInterface(_context), stdgo.Go.toInterface(_e));
                            };
                        };
                        var _written = _w.bytes();
                        if ((_written.length) != (_nwrite)) {
                            _t.errorf(("%s: %d bytes written" : stdgo.GoString), stdgo.Go.toInterface(_context), stdgo.Go.toInterface((_written.length)));
                        };
                        {
                            var _l = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_l < (_written.length) : Bool), _l++, {
                                if (_written[(_l : stdgo.GoInt)] != (_data[(_l : stdgo.GoInt)])) {
                                    _t.errorf(("wrong bytes written" : stdgo.GoString));
                                    _t.errorf(("want=%q" : stdgo.GoString), stdgo.Go.toInterface((_data.__slice__((0 : stdgo.GoInt), (_written.length)) : stdgo.Slice<stdgo.GoUInt8>)));
                                    _t.errorf(("have=%q" : stdgo.GoString), stdgo.Go.toInterface(_written));
                                };
                            });
                        };
                    });
                };
            });
        };
    }
