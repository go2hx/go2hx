package stdgo._internal.testing.iotest;
function testReader(_r:stdgo._internal.io.Io_reader.Reader, _content:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        if (((_content.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = _r.read((null : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0 : stdgo.GoInt)) || (_err != null) : Bool)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("Read(0) = %d, %v, want 0, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        var __tmp__ = stdgo._internal.io.Io_readall.readAll(stdgo.Go.asInterface((stdgo.Go.setRef(({ _r : _r } : stdgo._internal.testing.iotest.Iotest_t_smallbytereader.T_smallByteReader)) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_smallbytereader.T_smallByteReader>))), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if (!stdgo._internal.bytes.Bytes_equal.equal(_data, _content)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAll(small amounts) = %q\n\twant %q" : stdgo.GoString), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_content));
        };
        var __tmp__ = _r.read((new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("Read(10) at EOF = %v, %v, want 0, EOF" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.io.Io_readseeker.ReadSeeker)) : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : false };
            }, _r = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                {
                    var __tmp__ = _r.seek((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_off != (_content.length : stdgo.GoInt64)) || (_err != null) : Bool)) {
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("Seek(0, 1) from EOF = %d, %v, want %d, nil" : stdgo.GoString), stdgo.Go.toInterface(_off), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_content.length)));
                    };
                };
                var _middle = ((_content.length) - ((_content.length) / (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
                if ((_middle > (0 : stdgo.GoInt) : Bool)) {
                    {
                        var __tmp__ = _r.seek((-1i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (((_off != (((_content.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)) || (_err != null) : Bool)) {
                            return stdgo._internal.fmt.Fmt_errorf.errorf(("Seek(-1, 1) from EOF = %d, %v, want %d, nil" : stdgo.GoString), stdgo.Go.toInterface(-_off), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(((_content.length) - (1 : stdgo.GoInt) : stdgo.GoInt)));
                        };
                    };
                    {
                        var __tmp__ = _r.seek(((-(_content.length) / (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64), (1 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (((_off != ((_middle - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)) || (_err != null) : Bool)) {
                            return stdgo._internal.fmt.Fmt_errorf.errorf(("Seek(%d, 1) from %d = %d, %v, want %d, nil" : stdgo.GoString), stdgo.Go.toInterface((-(_content.length) / (3 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(((_content.length) - (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_off), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_middle - (1 : stdgo.GoInt) : stdgo.GoInt)));
                        };
                    };
                    {
                        var __tmp__ = _r.seek((1i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (((_off != (_middle : stdgo.GoInt64)) || (_err != null) : Bool)) {
                            return stdgo._internal.fmt.Fmt_errorf.errorf(("Seek(+1, 1) from %d = %d, %v, want %d, nil" : stdgo.GoString), stdgo.Go.toInterface((_middle - (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_off), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_middle));
                        };
                    };
                };
                {
                    var __tmp__ = _r.seek((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_off != (_middle : stdgo.GoInt64)) || (_err != null) : Bool)) {
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("Seek(0, 1) from %d = %d, %v, want %d, nil" : stdgo.GoString), stdgo.Go.toInterface(_middle), stdgo.Go.toInterface(_off), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_middle));
                    };
                };
                var __tmp__ = stdgo._internal.io.Io_readall.readAll(stdgo.Go.asInterface((stdgo.Go.setRef(({ _r : _r } : stdgo._internal.testing.iotest.Iotest_t_smallbytereader.T_smallByteReader)) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_smallbytereader.T_smallByteReader>))), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAll from offset %d: %v" : stdgo.GoString), stdgo.Go.toInterface(_middle), stdgo.Go.toInterface(_err));
                };
                if (!stdgo._internal.bytes.Bytes_equal.equal(_data, (_content.__slice__(_middle) : stdgo.Slice<stdgo.GoUInt8>))) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAll from offset %d = %q\n\twant %q" : stdgo.GoString), stdgo.Go.toInterface(_middle), stdgo.Go.toInterface(_data), stdgo.Go.toInterface((_content.__slice__(_middle) : stdgo.Slice<stdgo.GoUInt8>)));
                };
                {
                    var __tmp__ = _r.seek(((_middle / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64), (0 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_off != ((_middle / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)) || (_err != null) : Bool)) {
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("Seek(%d, 0) from EOF = %d, %v, want %d, nil" : stdgo.GoString), stdgo.Go.toInterface((_middle / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_off), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_middle / (2 : stdgo.GoInt) : stdgo.GoInt)));
                    };
                };
                {
                    var __tmp__ = _r.seek(((-(_content.length) / (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64), (2 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_off != (_middle : stdgo.GoInt64)) || (_err != null) : Bool)) {
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("Seek(%d, 2) from %d = %d, %v, want %d, nil" : stdgo.GoString), stdgo.Go.toInterface((-(_content.length) / (3 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface((_middle / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_off), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_middle));
                    };
                };
                {
                    var __tmp__ = stdgo._internal.io.Io_readall.readAll(stdgo.Go.asInterface((stdgo.Go.setRef(({ _r : _r } : stdgo._internal.testing.iotest.Iotest_t_smallbytereader.T_smallByteReader)) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_smallbytereader.T_smallByteReader>)));
                    _data = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAll from offset %d: %v" : stdgo.GoString), stdgo.Go.toInterface(_middle), stdgo.Go.toInterface(_err));
                };
                if (!stdgo._internal.bytes.Bytes_equal.equal(_data, (_content.__slice__(_middle) : stdgo.Slice<stdgo.GoUInt8>))) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAll from offset %d = %q\n\twant %q" : stdgo.GoString), stdgo.Go.toInterface(_middle), stdgo.Go.toInterface(_data), stdgo.Go.toInterface((_content.__slice__(_middle) : stdgo.Slice<stdgo.GoUInt8>)));
                };
                {
                    var __tmp__ = _r.seek(((_middle / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64), (0 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_off != ((_middle / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)) || (_err != null) : Bool)) {
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("Seek(%d, 0) from EOF = %d, %v, want %d, nil" : stdgo.GoString), stdgo.Go.toInterface((_middle / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_off), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_middle / (2 : stdgo.GoInt) : stdgo.GoInt)));
                    };
                };
                {
                    var __tmp__ = stdgo._internal.io.Io_readall.readAll(_r);
                    _data = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAll from offset %d: %v" : stdgo.GoString), stdgo.Go.toInterface((_middle / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_err));
                };
                if (!stdgo._internal.bytes.Bytes_equal.equal(_data, (_content.__slice__((_middle / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAll from offset %d = %q\n\twant %q" : stdgo.GoString), stdgo.Go.toInterface((_middle / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_data), stdgo.Go.toInterface((_content.__slice__((_middle / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)));
                };
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.io.Io_readerat.ReaderAt)) : stdgo._internal.io.Io_readerat.ReaderAt), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_readerat.ReaderAt), _1 : false };
            }, _r = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var _data = (new stdgo.Slice<stdgo.GoUInt8>((_content.length : stdgo.GoInt).toBasic(), ((_content.length) + (1 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                for (_i => _ in _data) {
                    _data[(_i : stdgo.GoInt)] = (254 : stdgo.GoUInt8);
                };
                var __tmp__ = _r.readAt(_data, (0i64 : stdgo.GoInt64)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_n != (_data.length)) || (_err != null && stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool) : Bool)) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAt(%d, 0) = %v, %v, want %d, nil or EOF" : stdgo.GoString), stdgo.Go.toInterface((_data.length)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_data.length)));
                };
                if (!stdgo._internal.bytes.Bytes_equal.equal(_data, _content)) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAt(%d, 0) = %q\n\twant %q" : stdgo.GoString), stdgo.Go.toInterface((_data.length)), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_content));
                };
                {
                    var __tmp__ = _r.readAt((_data.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_data.length : stdgo.GoInt64));
                    _n = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (((_n != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAt(1, %d) = %v, %v, want 0, EOF" : stdgo.GoString), stdgo.Go.toInterface((_data.length)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
                };
                for (_i => _ in _data) {
                    _data[(_i : stdgo.GoInt)] = (254 : stdgo.GoUInt8);
                };
                {
                    var __tmp__ = _r.readAt((_data.__slice__(0, _data.capacity) : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoInt64));
                    _n = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (((_n != (_data.length)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAt(%d, 0) = %v, %v, want %d, EOF" : stdgo.GoString), stdgo.Go.toInterface(_data.capacity), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_data.length)));
                };
                if (!stdgo._internal.bytes.Bytes_equal.equal(_data, _content)) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAt(%d, 0) = %q\n\twant %q" : stdgo.GoString), stdgo.Go.toInterface((_data.length)), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_content));
                };
                for (_i => _ in _data) {
                    _data[(_i : stdgo.GoInt)] = (254 : stdgo.GoUInt8);
                };
                for (_i => _ in _data) {
                    {
                        var __tmp__ = _r.readAt((_data.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoInt64));
                        _n = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (((_n != (1 : stdgo.GoInt)) || (_err != null && (((_i != ((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) : Bool) : Bool)) {
                        var _want = (("nil" : stdgo.GoString) : stdgo.GoString);
                        if (_i == (((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                            _want = ("nil or EOF" : stdgo.GoString);
                        };
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAt(1, %d) = %v, %v, want 1, %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
                    };
                    if (_data[(_i : stdgo.GoInt)] != (_content[(_i : stdgo.GoInt)])) {
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAt(1, %d) = %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_data.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface((_content.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)));
                    };
                };
            };
        };
        return (null : stdgo.Error);
    }
