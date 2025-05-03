package stdgo._internal.os.user;
function _readColonFile(_r:stdgo._internal.io.Io_reader.Reader, _fn:stdgo._internal.os.user.User_t_linefunc.T_lineFunc, _readCols:stdgo.GoInt):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        var _v = (null : stdgo.AnyInterface), _err = (null : stdgo.Error);
        var _rd = stdgo._internal.bufio.Bufio_newreader.newReader(_r);
        //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L32"
        while (true) {
            var _isPrefix:Bool = false;
            var _wholeLine:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L39"
            while (true) {
                var _line:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var __tmp__ = _rd.readLine();
                    _line = @:tmpset0 __tmp__._0;
                    _isPrefix = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
                //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L43"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L46"
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        _err = (null : stdgo.Error);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L49"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : _err };
                        _v = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L54"
                if ((!_isPrefix && (_wholeLine.length == (0 : stdgo.GoInt)) : Bool)) {
                    _wholeLine = _line;
                    //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L56"
                    break;
                };
                _wholeLine = (_wholeLine.__append__(...(_line : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L63"
                if ((!_isPrefix || (stdgo._internal.bytes.Bytes_count.count(_wholeLine, (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(58 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) >= _readCols : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L64"
                    break;
                };
            };
            _wholeLine = stdgo._internal.bytes.Bytes_trimspace.trimSpace(_wholeLine);
            //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L72"
            if (((_wholeLine.length == (0 : stdgo.GoInt)) || (_wholeLine[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L73"
                continue;
            };
            {
                var __tmp__ = _fn(_wholeLine);
                _v = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L76"
            if (((_v != null) || (_err != null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L77"
                return { _0 : _v, _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L81"
            while (_isPrefix) {
                //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L82"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L84"
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        _err = (null : stdgo.Error);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L87"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : _err };
                        _v = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                {
                    var __tmp__ = _rd.readLine();
                    _isPrefix = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
            };
        };
    }
