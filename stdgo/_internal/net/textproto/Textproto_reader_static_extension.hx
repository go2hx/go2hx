package stdgo._internal.net.textproto;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function _upcomingHeaderKeys( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        var _n = (0 : stdgo.GoInt);
        @:check2r (@:checkr _r ?? throw "null pointer dereference").r.peek((1 : stdgo.GoInt));
        var _s = (@:check2r (@:checkr _r ?? throw "null pointer dereference").r.buffered() : stdgo.GoInt);
        if (_s == ((0 : stdgo.GoInt))) {
            return _n;
        };
        var __tmp__ = @:check2r (@:checkr _r ?? throw "null pointer dereference").r.peek(_s), _peek:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        while ((((_peek.length) > (0 : stdgo.GoInt) : Bool) && (_n < (1000 : stdgo.GoInt) : Bool) : Bool)) {
            var _line:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = stdgo._internal.bytes.Bytes_cut.cut(_peek, stdgo._internal.net.textproto.Textproto__nl._nl);
                _line = @:tmpset0 __tmp__._0;
                _peek = @:tmpset0 __tmp__._1;
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
    @:tdfield
    static public function readMIMEHeader( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>):{ var _0 : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        return stdgo._internal.net.textproto.Textproto__readmimeheader._readMIMEHeader(_r, (9223372036854775807i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
    }
    @:keep
    @:tdfield
    static public function readDotLines( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        var _v:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _err:stdgo.Error = (null : stdgo.Error);
        while (true) {
            var _line:stdgo.GoString = ("" : stdgo.GoString);
            {
                var __tmp__ = @:check2r _r.readLine();
                _line = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
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
    @:tdfield
    static public function readDotBytes( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        return stdgo._internal.io.Io_readall.readAll(@:check2r _r.dotReader());
    }
    @:keep
    @:tdfield
    static public function _closeDot( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        if (((@:checkr _r ?? throw "null pointer dereference")._dot == null || ((@:checkr _r ?? throw "null pointer dereference")._dot : Dynamic).__nil__)) {
            return;
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        while (((@:checkr _r ?? throw "null pointer dereference")._dot != null && (((@:checkr _r ?? throw "null pointer dereference")._dot : Dynamic).__nil__ == null || !((@:checkr _r ?? throw "null pointer dereference")._dot : Dynamic).__nil__))) {
            @:check2r (@:checkr _r ?? throw "null pointer dereference")._dot.read(_buf);
        };
    }
    @:keep
    @:tdfield
    static public function dotReader( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>):stdgo._internal.io.Io_reader.Reader {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        @:check2r _r._closeDot();
        (@:checkr _r ?? throw "null pointer dereference")._dot = (stdgo.Go.setRef(({ _r : _r } : stdgo._internal.net.textproto.Textproto_t_dotreader.T_dotReader)) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotreader.T_dotReader>);
        return stdgo.Go.asInterface((@:checkr _r ?? throw "null pointer dereference")._dot);
    }
    @:keep
    @:tdfield
    static public function readResponse( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>, _expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        var _code = (0 : stdgo.GoInt), _message = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var __tmp__ = @:check2r _r._readCodeLine(_expectCode), _code:stdgo.GoInt = __tmp__._0, _continued:Bool = __tmp__._1, _message:stdgo.GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        var _multi = (_continued : Bool);
        while (_continued) {
            var __tmp__ = @:check2r _r.readLine(), _line:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : _err };
                    _code = __tmp__._0;
                    _message = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            var _code2:stdgo.GoInt = (0 : stdgo.GoInt);
            var _moreMessage:stdgo.GoString = ("" : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.net.textproto.Textproto__parsecodeline._parseCodeLine(_line?.__copy__(), (0 : stdgo.GoInt));
                _code2 = @:tmpset0 __tmp__._0;
                _continued = @:tmpset0 __tmp__._1;
                _moreMessage = @:tmpset0 __tmp__._2?.__copy__();
                _err = @:tmpset0 __tmp__._3;
            };
            if (((_err != null) || (_code2 != _code) : Bool)) {
                _message = (_message + ((("\n" : stdgo.GoString) + stdgo._internal.strings.Strings_trimright.trimRight(_line?.__copy__(), ("\r\n" : stdgo.GoString))?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                _continued = true;
                continue;
            };
            _message = (_message + ((("\n" : stdgo.GoString) + _moreMessage?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        if (((_err != null && _multi : Bool) && (_message != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.textproto.Textproto_error.Error(_code, _message?.__copy__()) : stdgo._internal.net.textproto.Textproto_error.Error)) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_error.Error>));
        };
        return { _0 : _code, _1 : _message, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function readCodeLine( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>, _expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        var _code = (0 : stdgo.GoInt), _message = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var __tmp__ = @:check2r _r._readCodeLine(_expectCode), _code:stdgo.GoInt = __tmp__._0, _continued:Bool = __tmp__._1, _message:stdgo.GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        if (((_err == null) && _continued : Bool)) {
            _err = stdgo.Go.asInterface(((("unexpected multi-line response: " : stdgo.GoString) + _message?.__copy__() : stdgo.GoString) : stdgo._internal.net.textproto.Textproto_protocolerror.ProtocolError));
        };
        return { _0 : _code, _1 : _message, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function _readCodeLine( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>, _expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoString; var _3 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        var _code = (0 : stdgo.GoInt), _continued = false, _message = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var __tmp__ = @:check2r _r.readLine(), _line:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _code, _1 : _continued, _2 : _message, _3 : _err };
        };
        return {
            final __tmp__ = stdgo._internal.net.textproto.Textproto__parsecodeline._parseCodeLine(_line?.__copy__(), _expectCode);
            _code = __tmp__._0;
            _continued = __tmp__._1;
            _message = __tmp__._2?.__copy__();
            _err = __tmp__._3;
            { _0 : _code, _1 : _continued, _2 : _message, _3 : _err };
        };
    }
    @:keep
    @:tdfield
    static public function _skipSpace( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        var _n = (0 : stdgo.GoInt);
        while (true) {
            var __tmp__ = @:check2r (@:checkr _r ?? throw "null pointer dereference").r.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                break;
            };
            if (((_c != (32 : stdgo.GoUInt8)) && (_c != (9 : stdgo.GoUInt8)) : Bool)) {
                @:check2r (@:checkr _r ?? throw "null pointer dereference").r.unreadByte();
                break;
            };
            _n++;
        };
        return _n;
    }
    @:keep
    @:tdfield
    static public function _readContinuedLineSlice( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>, _validateFirstLine:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        if (_validateFirstLine == null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("missing validateFirstLine func" : stdgo.GoString)) };
        };
        var __tmp__ = @:check2r _r._readLineSlice(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
        if ((@:check2r (@:checkr _r ?? throw "null pointer dereference").r.buffered() > (1 : stdgo.GoInt) : Bool)) {
            var __tmp__ = @:check2r (@:checkr _r ?? throw "null pointer dereference").r.peek((2 : stdgo.GoInt)), _peek:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            if (((((_peek.length) > (0 : stdgo.GoInt) : Bool) && ((stdgo._internal.net.textproto.Textproto__isasciiletter._isASCIILetter(_peek[(0 : stdgo.GoInt)]) || (_peek[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) : Bool) || (((_peek.length) == ((2 : stdgo.GoInt)) && _peek[(0 : stdgo.GoInt)] == ((13 : stdgo.GoUInt8)) : Bool) && _peek[(1 : stdgo.GoInt)] == ((10 : stdgo.GoUInt8)) : Bool) : Bool)) {
                return { _0 : stdgo._internal.net.textproto.Textproto__trim._trim(_line), _1 : (null : stdgo.Error) };
            };
        };
        (@:checkr _r ?? throw "null pointer dereference")._buf = (((@:checkr _r ?? throw "null pointer dereference")._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...(stdgo._internal.net.textproto.Textproto__trim._trim(_line) : Array<stdgo.GoUInt8>)));
        while ((@:check2r _r._skipSpace() > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = @:check2r _r._readLineSlice(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                break;
            };
            (@:checkr _r ?? throw "null pointer dereference")._buf = ((@:checkr _r ?? throw "null pointer dereference")._buf.__append__((32 : stdgo.GoUInt8)));
            (@:checkr _r ?? throw "null pointer dereference")._buf = ((@:checkr _r ?? throw "null pointer dereference")._buf.__append__(...(stdgo._internal.net.textproto.Textproto__trim._trim(_line) : Array<stdgo.GoUInt8>)));
        };
        return { _0 : (@:checkr _r ?? throw "null pointer dereference")._buf, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function readContinuedLineBytes( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        var __tmp__ = @:check2r _r._readContinuedLineSlice(stdgo._internal.net.textproto.Textproto__novalidation._noValidation), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_line != null) {
            _line = stdgo._internal.bytes.Bytes_clone.clone(_line);
        };
        return { _0 : _line, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function readContinuedLine( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        var __tmp__ = @:check2r _r._readContinuedLineSlice(stdgo._internal.net.textproto.Textproto__novalidation._noValidation), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : (_line : stdgo.GoString)?.__copy__(), _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _readLineSlice( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        @:check2r _r._closeDot();
        var _line:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        while (true) {
            var __tmp__ = @:check2r (@:checkr _r ?? throw "null pointer dereference").r.readLine(), _l:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _more:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
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
    @:tdfield
    static public function readLineBytes( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        var __tmp__ = @:check2r _r._readLineSlice(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_line != null) {
            _line = stdgo._internal.bytes.Bytes_clone.clone(_line);
        };
        return { _0 : _line, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function readLine( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        var __tmp__ = @:check2r _r._readLineSlice(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : (_line : stdgo.GoString)?.__copy__(), _1 : _err };
    }
}
