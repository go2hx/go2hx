package stdgo._internal.net.textproto;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.Reader_asInterface) class Reader_static_extension {
    @:keep
    static public function _upcomingHeaderKeys( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader> = _r;
        var _n = (0 : stdgo.GoInt);
        _r.r.peek((1 : stdgo.GoInt));
        var _s = (_r.r.buffered() : stdgo.GoInt);
        if (_s == ((0 : stdgo.GoInt))) {
            return _n;
        };
        var __tmp__ = _r.r.peek(_s), _peek:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        while ((((_peek.length) > (0 : stdgo.GoInt) : Bool) && (_n < (1000 : stdgo.GoInt) : Bool) : Bool)) {
            var _line:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = stdgo._internal.bytes.Bytes_cut.cut(_peek, stdgo._internal.net.textproto.Textproto__nl._nl);
                _line = __tmp__._0;
                _peek = __tmp__._1;
            };
            if (((_line.length == (0 : stdgo.GoInt)) || (((_line.length == (1 : stdgo.GoInt)) && (_line[(0 : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                break;
            };
            if (((_line[(0 : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) || (_line[(0 : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) {
                continue;
            };
            _n++;
        };
        return _n;
    }
    @:keep
    static public function readMIMEHeader( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>):{ var _0 : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader> = _r;
        return stdgo._internal.net.textproto.Textproto__readMIMEHeader._readMIMEHeader(_r, (9223372036854775807i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
    }
    @:keep
    static public function readDotLines( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader> = _r;
        var _v:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _err:stdgo.Error = (null : stdgo.Error);
        while (true) {
            var _line:stdgo.GoString = ("" : stdgo.GoString);
            {
                var __tmp__ = _r.readLine();
                _line = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                };
                break;
            };
            if ((((_line.length) > (0 : stdgo.GoInt) : Bool) && (_line[(0 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                if ((_line.length) == ((1 : stdgo.GoInt))) {
                    break;
                };
                _line = (_line.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
            _v = (_v.__append__(_line?.__copy__()));
        };
        return { _0 : _v, _1 : _err };
    }
    @:keep
    static public function readDotBytes( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader> = _r;
        return stdgo._internal.io.Io_readAll.readAll(_r.dotReader());
    }
    @:keep
    static public function _closeDot( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader> = _r;
        if (_r._dot == null || (_r._dot : Dynamic).__nil__) {
            return;
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        while (_r._dot != null && ((_r._dot : Dynamic).__nil__ == null || !(_r._dot : Dynamic).__nil__)) {
            _r._dot.read(_buf);
        };
    }
    @:keep
    static public function dotReader( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>):stdgo._internal.io.Io_Reader.Reader {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader> = _r;
        _r._closeDot();
        _r._dot = (stdgo.Go.setRef(({ _r : _r } : stdgo._internal.net.textproto.Textproto_T_dotReader.T_dotReader)) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_dotReader.T_dotReader>);
        return stdgo.Go.asInterface(_r._dot);
    }
    @:keep
    static public function readResponse( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>, _expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader> = _r;
        var _code = (0 : stdgo.GoInt), _message = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var __tmp__ = _r._readCodeLine(_expectCode), _code:stdgo.GoInt = __tmp__._0, _continued:Bool = __tmp__._1, _message:stdgo.GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        var _multi = (_continued : Bool);
        while (_continued) {
            var __tmp__ = _r.readLine(), _line:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.str()?.__copy__(), _2 : _err };
            };
            var _code2:stdgo.GoInt = (0 : stdgo.GoInt);
            var _moreMessage:stdgo.GoString = ("" : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.net.textproto.Textproto__parseCodeLine._parseCodeLine(_line?.__copy__(), (0 : stdgo.GoInt));
                _code2 = __tmp__._0;
                _continued = __tmp__._1;
                _moreMessage = __tmp__._2?.__copy__();
                _err = __tmp__._3;
            };
            if (((_err != null) || (_code2 != _code) : Bool)) {
                _message = (_message + ((("\n" : stdgo.GoString) + stdgo._internal.strings.Strings_trimRight.trimRight(_line?.__copy__(), ("\r\n" : stdgo.GoString))?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                _continued = true;
                continue;
            };
            _message = (_message + ((("\n" : stdgo.GoString) + _moreMessage?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        if (((_err != null && _multi : Bool) && (_message != stdgo.Go.str()) : Bool)) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.textproto.Textproto_Error.Error(_code, _message?.__copy__()) : stdgo._internal.net.textproto.Textproto_Error.Error)) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Error.Error>));
        };
        return { _0 : _code, _1 : _message, _2 : _err };
    }
    @:keep
    static public function readCodeLine( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>, _expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader> = _r;
        var _code = (0 : stdgo.GoInt), _message = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var __tmp__ = _r._readCodeLine(_expectCode), _code:stdgo.GoInt = __tmp__._0, _continued:Bool = __tmp__._1, _message:stdgo.GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        if (((_err == null) && _continued : Bool)) {
            _err = stdgo.Go.asInterface(((("unexpected multi-line response: " : stdgo.GoString) + _message?.__copy__() : stdgo.GoString) : stdgo._internal.net.textproto.Textproto_ProtocolError.ProtocolError));
        };
        return { _0 : _code, _1 : _message, _2 : _err };
    }
    @:keep
    static public function _readCodeLine( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>, _expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoString; var _3 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader> = _r;
        var _code = (0 : stdgo.GoInt), _continued = false, _message = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var __tmp__ = _r.readLine(), _line:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _code, _1 : _continued, _2 : _message, _3 : _err };
        };
        return stdgo._internal.net.textproto.Textproto__parseCodeLine._parseCodeLine(_line?.__copy__(), _expectCode);
    }
    @:keep
    static public function _skipSpace( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader> = _r;
        var _n = (0 : stdgo.GoInt);
        while (true) {
            var __tmp__ = _r.r.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                break;
            };
            if (((_c != (32 : stdgo.GoUInt8)) && (_c != (9 : stdgo.GoUInt8)) : Bool)) {
                _r.r.unreadByte();
                break;
            };
            _n++;
        };
        return _n;
    }
    @:keep
    static public function _readContinuedLineSlice( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>, _validateFirstLine:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader> = _r;
        if (_validateFirstLine == null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("missing validateFirstLine func" : stdgo.GoString)) };
        };
        var __tmp__ = _r._readLineSlice(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        if ((_line.length) == ((0 : stdgo.GoInt))) {
            return { _0 : _line, _1 : (null : stdgo.Error) };
        };
        {
            var _err = (_validateFirstLine(_line) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        if ((_r.r.buffered() > (1 : stdgo.GoInt) : Bool)) {
            var __tmp__ = _r.r.peek((2 : stdgo.GoInt)), _peek:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            if (((((_peek.length) > (0 : stdgo.GoInt) : Bool) && ((stdgo._internal.net.textproto.Textproto__isASCIILetter._isASCIILetter(_peek[(0 : stdgo.GoInt)]) || (_peek[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) : Bool) || (((_peek.length) == ((2 : stdgo.GoInt)) && _peek[(0 : stdgo.GoInt)] == ((13 : stdgo.GoUInt8)) : Bool) && _peek[(1 : stdgo.GoInt)] == ((10 : stdgo.GoUInt8)) : Bool) : Bool)) {
                return { _0 : stdgo._internal.net.textproto.Textproto__trim._trim(_line), _1 : (null : stdgo.Error) };
            };
        };
        _r._buf = ((_r._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...(stdgo._internal.net.textproto.Textproto__trim._trim(_line) : Array<stdgo.GoUInt8>)));
        while ((_r._skipSpace() > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = _r._readLineSlice(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                break;
            };
            _r._buf = (_r._buf.__append__((32 : stdgo.GoUInt8)));
            _r._buf = (_r._buf.__append__(...(stdgo._internal.net.textproto.Textproto__trim._trim(_line) : Array<stdgo.GoUInt8>)));
        };
        return { _0 : _r._buf, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function readContinuedLineBytes( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader> = _r;
        var __tmp__ = _r._readContinuedLineSlice(stdgo._internal.net.textproto.Textproto__noValidation._noValidation), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_line != null) {
            _line = stdgo._internal.bytes.Bytes_clone.clone(_line);
        };
        return { _0 : _line, _1 : _err };
    }
    @:keep
    static public function readContinuedLine( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader> = _r;
        var __tmp__ = _r._readContinuedLineSlice(stdgo._internal.net.textproto.Textproto__noValidation._noValidation), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : (_line : stdgo.GoString)?.__copy__(), _1 : _err };
    }
    @:keep
    static public function _readLineSlice( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader> = _r;
        _r._closeDot();
        var _line:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        while (true) {
            var __tmp__ = _r.r.readLine(), _l:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _more:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            if (((_line == null) && !_more : Bool)) {
                return { _0 : _l, _1 : (null : stdgo.Error) };
            };
            _line = (_line.__append__(...(_l : Array<stdgo.GoUInt8>)));
            if (!_more) {
                break;
            };
        };
        return { _0 : _line, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function readLineBytes( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader> = _r;
        var __tmp__ = _r._readLineSlice(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_line != null) {
            _line = stdgo._internal.bytes.Bytes_clone.clone(_line);
        };
        return { _0 : _line, _1 : _err };
    }
    @:keep
    static public function readLine( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader> = _r;
        var __tmp__ = _r._readLineSlice(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : (_line : stdgo.GoString)?.__copy__(), _1 : _err };
    }
}
