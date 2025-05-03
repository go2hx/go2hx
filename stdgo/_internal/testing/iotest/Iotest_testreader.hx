package stdgo._internal.testing.iotest;
function testReader(_r:stdgo._internal.io.Io_reader.Reader, _content:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L137"
        if (((_content.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = _r.read((null : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L139"
            if (((_n != (0 : stdgo.GoInt)) || (_err != null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L140"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("Read(0) = %d, %v, want 0, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        var __tmp__ = stdgo._internal.io.Io_readall.readAll(stdgo.Go.asInterface((stdgo.Go.setRef(({ _r : _r } : stdgo._internal.testing.iotest.Iotest_t_smallbytereader.T_smallByteReader)) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_smallbytereader.T_smallByteReader>))), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L145"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L146"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L148"
        if (!stdgo._internal.bytes.Bytes_equal.equal(_data, _content)) {
            //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L149"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAll(small amounts) = %q\n\twant %q" : stdgo.GoString), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_content));
        };
        var __tmp__ = _r.read((new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L152"
        if (((_n != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L153"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("Read(10) at EOF = %v, %v, want 0, EOF" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L156"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.io.Io_readseeker.ReadSeeker)) : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : false };
            }, _r = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L158"
                {
                    var __tmp__ = _r.seek((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_off != (_content.length : stdgo.GoInt64)) || (_err != null) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L159"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("Seek(0, 1) from EOF = %d, %v, want %d, nil" : stdgo.GoString), stdgo.Go.toInterface(_off), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_content.length)));
                    };
                };
                var _middle = ((_content.length) - ((_content.length) / (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L165"
                if ((_middle > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L166"
                    {
                        var __tmp__ = _r.seek((-1i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (((_off != (((_content.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)) || (_err != null) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L167"
                            return stdgo._internal.fmt.Fmt_errorf.errorf(("Seek(-1, 1) from EOF = %d, %v, want %d, nil" : stdgo.GoString), stdgo.Go.toInterface(-_off), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(((_content.length) - (1 : stdgo.GoInt) : stdgo.GoInt)));
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L169"
                    {
                        var __tmp__ = _r.seek(((-(_content.length) / (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64), (1 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (((_off != ((_middle - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)) || (_err != null) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L170"
                            return stdgo._internal.fmt.Fmt_errorf.errorf(("Seek(%d, 1) from %d = %d, %v, want %d, nil" : stdgo.GoString), stdgo.Go.toInterface((-(_content.length) / (3 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(((_content.length) - (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_off), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_middle - (1 : stdgo.GoInt) : stdgo.GoInt)));
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L172"
                    {
                        var __tmp__ = _r.seek((1i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (((_off != (_middle : stdgo.GoInt64)) || (_err != null) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L173"
                            return stdgo._internal.fmt.Fmt_errorf.errorf(("Seek(+1, 1) from %d = %d, %v, want %d, nil" : stdgo.GoString), stdgo.Go.toInterface((_middle - (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_off), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_middle));
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L178"
                {
                    var __tmp__ = _r.seek((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_off != (_middle : stdgo.GoInt64)) || (_err != null) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L179"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("Seek(0, 1) from %d = %d, %v, want %d, nil" : stdgo.GoString), stdgo.Go.toInterface(_middle), stdgo.Go.toInterface(_off), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_middle));
                    };
                };
                var __tmp__ = stdgo._internal.io.Io_readall.readAll(stdgo.Go.asInterface((stdgo.Go.setRef(({ _r : _r } : stdgo._internal.testing.iotest.Iotest_t_smallbytereader.T_smallByteReader)) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_smallbytereader.T_smallByteReader>))), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L184"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L185"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAll from offset %d: %v" : stdgo.GoString), stdgo.Go.toInterface(_middle), stdgo.Go.toInterface(_err));
                };
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L187"
                if (!stdgo._internal.bytes.Bytes_equal.equal(_data, (_content.__slice__(_middle) : stdgo.Slice<stdgo.GoUInt8>))) {
                    //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L188"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAll from offset %d = %q\n\twant %q" : stdgo.GoString), stdgo.Go.toInterface(_middle), stdgo.Go.toInterface(_data), stdgo.Go.toInterface((_content.__slice__(_middle) : stdgo.Slice<stdgo.GoUInt8>)));
                };
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L192"
                {
                    var __tmp__ = _r.seek(((_middle / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64), (0 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_off != ((_middle / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)) || (_err != null) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L193"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("Seek(%d, 0) from EOF = %d, %v, want %d, nil" : stdgo.GoString), stdgo.Go.toInterface((_middle / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_off), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_middle / (2 : stdgo.GoInt) : stdgo.GoInt)));
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L195"
                {
                    var __tmp__ = _r.seek(((-(_content.length) / (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64), (2 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_off != (_middle : stdgo.GoInt64)) || (_err != null) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L196"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("Seek(%d, 2) from %d = %d, %v, want %d, nil" : stdgo.GoString), stdgo.Go.toInterface((-(_content.length) / (3 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface((_middle / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_off), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_middle));
                    };
                };
                {
                    var __tmp__ = stdgo._internal.io.Io_readall.readAll(stdgo.Go.asInterface((stdgo.Go.setRef(({ _r : _r } : stdgo._internal.testing.iotest.Iotest_t_smallbytereader.T_smallByteReader)) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_smallbytereader.T_smallByteReader>)));
                    _data = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L201"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L202"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAll from offset %d: %v" : stdgo.GoString), stdgo.Go.toInterface(_middle), stdgo.Go.toInterface(_err));
                };
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L204"
                if (!stdgo._internal.bytes.Bytes_equal.equal(_data, (_content.__slice__(_middle) : stdgo.Slice<stdgo.GoUInt8>))) {
                    //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L205"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAll from offset %d = %q\n\twant %q" : stdgo.GoString), stdgo.Go.toInterface(_middle), stdgo.Go.toInterface(_data), stdgo.Go.toInterface((_content.__slice__(_middle) : stdgo.Slice<stdgo.GoUInt8>)));
                };
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L209"
                {
                    var __tmp__ = _r.seek(((_middle / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64), (0 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_off != ((_middle / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)) || (_err != null) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L210"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("Seek(%d, 0) from EOF = %d, %v, want %d, nil" : stdgo.GoString), stdgo.Go.toInterface((_middle / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_off), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_middle / (2 : stdgo.GoInt) : stdgo.GoInt)));
                    };
                };
                {
                    var __tmp__ = stdgo._internal.io.Io_readall.readAll(_r);
                    _data = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L213"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L214"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAll from offset %d: %v" : stdgo.GoString), stdgo.Go.toInterface((_middle / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_err));
                };
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L216"
                if (!stdgo._internal.bytes.Bytes_equal.equal(_data, (_content.__slice__((_middle / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) {
                    //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L217"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAll from offset %d = %q\n\twant %q" : stdgo.GoString), stdgo.Go.toInterface((_middle / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_data), stdgo.Go.toInterface((_content.__slice__((_middle / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L221"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.io.Io_readerat.ReaderAt)) : stdgo._internal.io.Io_readerat.ReaderAt), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_readerat.ReaderAt), _1 : false };
            }, _r = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var _data = (new stdgo.Slice<stdgo.GoUInt8>((_content.length : stdgo.GoInt).toBasic(), ((_content.length) + (1 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L223"
                for (_i => _ in _data) {
                    _data[(_i : stdgo.GoInt)] = (254 : stdgo.GoUInt8);
                };
                var __tmp__ = _r.readAt(_data, (0i64 : stdgo.GoInt64)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L227"
                if (((_n != (_data.length)) || (_err != null && stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L228"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAt(%d, 0) = %v, %v, want %d, nil or EOF" : stdgo.GoString), stdgo.Go.toInterface((_data.length)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_data.length)));
                };
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L230"
                if (!stdgo._internal.bytes.Bytes_equal.equal(_data, _content)) {
                    //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L231"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAt(%d, 0) = %q\n\twant %q" : stdgo.GoString), stdgo.Go.toInterface((_data.length)), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_content));
                };
                {
                    var __tmp__ = _r.readAt((_data.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_data.length : stdgo.GoInt64));
                    _n = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L235"
                if (((_n != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L236"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAt(1, %d) = %v, %v, want 0, EOF" : stdgo.GoString), stdgo.Go.toInterface((_data.length)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
                };
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L239"
                for (_i => _ in _data) {
                    _data[(_i : stdgo.GoInt)] = (254 : stdgo.GoUInt8);
                };
                {
                    var __tmp__ = _r.readAt((_data.__slice__(0, _data.capacity) : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoInt64));
                    _n = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L243"
                if (((_n != (_data.length)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L244"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAt(%d, 0) = %v, %v, want %d, EOF" : stdgo.GoString), stdgo.Go.toInterface(_data.capacity), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_data.length)));
                };
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L246"
                if (!stdgo._internal.bytes.Bytes_equal.equal(_data, _content)) {
                    //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L247"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAt(%d, 0) = %q\n\twant %q" : stdgo.GoString), stdgo.Go.toInterface((_data.length)), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_content));
                };
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L250"
                for (_i => _ in _data) {
                    _data[(_i : stdgo.GoInt)] = (254 : stdgo.GoUInt8);
                };
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L253"
                for (_i => _ in _data) {
                    {
                        var __tmp__ = _r.readAt((_data.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoInt64));
                        _n = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L255"
                    if (((_n != (1 : stdgo.GoInt)) || (_err != null && (((_i != ((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) : Bool) : Bool)) {
                        var _want = (("nil" : stdgo.GoString) : stdgo.GoString);
                        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L257"
                        if (_i == (((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                            _want = ("nil or EOF" : stdgo.GoString);
                        };
                        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L260"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAt(1, %d) = %v, %v, want 1, %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L262"
                    if (_data[(_i : stdgo.GoInt)] != (_content[(_i : stdgo.GoInt)])) {
                        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L263"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAt(1, %d) = %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_data.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface((_content.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)));
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L267"
        return (null : stdgo.Error);
    }
