package stdgo._internal.os.user;
function _readColonFile(_r:stdgo._internal.io.Io_reader.Reader, _fn:stdgo._internal.os.user.User_t_linefunc.T_lineFunc, _readCols:stdgo.GoInt):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        var _v = (null : stdgo.AnyInterface), _err = (null : stdgo.Error);
        var _rd = stdgo._internal.bufio.Bufio_newreader.newReader(_r);
        while (true) {
            var _isPrefix:Bool = false;
            var _wholeLine:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            while (true) {
                var _line:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var __tmp__ = @:check2r _rd.readLine();
                    _line = @:tmpset0 __tmp__._0;
                    _isPrefix = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        _err = (null : stdgo.Error);
                    };
                    return {
                        final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : _err };
                        _v = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                if ((!_isPrefix && (_wholeLine.length == (0 : stdgo.GoInt)) : Bool)) {
                    _wholeLine = _line;
                    break;
                };
                _wholeLine = (_wholeLine.__append__(...(_line : Array<stdgo.GoUInt8>)));
                if ((!_isPrefix || (stdgo._internal.bytes.Bytes_count.count(_wholeLine, (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(58 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) >= _readCols : Bool) : Bool)) {
                    break;
                };
            };
            _wholeLine = stdgo._internal.bytes.Bytes_trimspace.trimSpace(_wholeLine);
            if (((_wholeLine.length == (0 : stdgo.GoInt)) || (_wholeLine[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) : Bool)) {
                continue;
            };
            {
                var __tmp__ = _fn(_wholeLine);
                _v = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (((_v != null) || (_err != null) : Bool)) {
                return { _0 : _v, _1 : _err };
            };
            while (_isPrefix) {
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        _err = (null : stdgo.Error);
                    };
                    return {
                        final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : _err };
                        _v = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                {
                    var __tmp__ = @:check2r _rd.readLine();
                    _isPrefix = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
            };
        };
    }
