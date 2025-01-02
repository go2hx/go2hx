package stdgo._internal.net.http;
function _serveContent(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _name:stdgo.GoString, _modtime:stdgo._internal.time.Time_Time.Time, _sizeFunc:() -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; }, _content:stdgo._internal.io.Io_ReadSeeker.ReadSeeker):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.net.http.Http__setLastModified._setLastModified(_w, _modtime?.__copy__());
            var __tmp__ = stdgo._internal.net.http.Http__checkPreconditions._checkPreconditions(_w, _r, _modtime?.__copy__()), _done:Bool = __tmp__._0, _rangeReq:stdgo.GoString = __tmp__._1;
            if (_done) {
                return;
            };
            var _code = (200 : stdgo.GoInt);
            var __tmp__ = (_w.header() != null && _w.header().exists(("Content-Type" : stdgo.GoString)) ? { _0 : _w.header()[("Content-Type" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), _ctypes:stdgo.Slice<stdgo.GoString> = __tmp__._0, _haveType:Bool = __tmp__._1;
            var _ctype:stdgo.GoString = ("" : stdgo.GoString);
            if (!_haveType) {
                _ctype = stdgo._internal.mime.Mime_typeByExtension.typeByExtension(stdgo._internal.path.filepath.Filepath_ext.ext(_name?.__copy__())?.__copy__())?.__copy__();
                if (_ctype == (stdgo.Go.str())) {
                    var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(512, 512, ...[for (i in 0 ... 512) (0 : stdgo.GoUInt8)]);
                    var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_content, (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, __137:stdgo.Error = __tmp__._1;
                    _ctype = stdgo._internal.net.http.Http_detectContentType.detectContentType((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    var __tmp__ = _content.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), __138:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        stdgo._internal.net.http.Http_error.error(_w, ("seeker can\'t seek" : stdgo.GoString), (500 : stdgo.GoInt));
                        return;
                    };
                };
                _w.header().set(("Content-Type" : stdgo.GoString), _ctype?.__copy__());
            } else if (((_ctypes.length) > (0 : stdgo.GoInt) : Bool)) {
                _ctype = _ctypes[(0 : stdgo.GoInt)]?.__copy__();
            };
            var __tmp__ = _sizeFunc(), _size:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.net.http.Http_error.error(_w, _err.error()?.__copy__(), (500 : stdgo.GoInt));
                return;
            };
            if ((_size < (0i64 : stdgo.GoInt64) : Bool)) {
                stdgo._internal.net.http.Http_error.error(_w, ("negative content size computed" : stdgo.GoString), (500 : stdgo.GoInt));
                return;
            };
            var _sendSize = (_size : stdgo.GoInt64);
            var _sendContent:stdgo._internal.io.Io_Reader.Reader = _content;
            var __tmp__ = stdgo._internal.net.http.Http__parseRange._parseRange(_rangeReq?.__copy__(), _size), _ranges:stdgo.Slice<stdgo._internal.net.http.Http_T_httpRange.T_httpRange> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _err;
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == null))) {
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (stdgo.Go.toInterface(__value__) == stdgo.Go.toInterface(stdgo._internal.net.http.Http__errNoOverlap._errNoOverlap)))) {
                            if (_size == ((0i64 : stdgo.GoInt64))) {
                                _ranges = (null : stdgo.Slice<stdgo._internal.net.http.Http_T_httpRange.T_httpRange>);
                                break;
                            };
                            _w.header().set(("Content-Range" : stdgo.GoString), stdgo._internal.fmt.Fmt_sprintf.sprintf(("bytes */%d" : stdgo.GoString), stdgo.Go.toInterface(_size))?.__copy__());
                            @:fallthrough {
                                __switchIndex__ = 2;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else {
                            stdgo._internal.net.http.Http_error.error(_w, _err.error()?.__copy__(), (416 : stdgo.GoInt));
                            return;
                            break;
                        };
                    };
                    break;
                };
            };
            if ((stdgo._internal.net.http.Http__sumRangesSize._sumRangesSize(_ranges) > _size : Bool)) {
                _ranges = (null : stdgo.Slice<stdgo._internal.net.http.Http_T_httpRange.T_httpRange>);
            };
            if ((_ranges.length) == ((1 : stdgo.GoInt))) {
                var _ra = (_ranges[(0 : stdgo.GoInt)] : stdgo._internal.net.http.Http_T_httpRange.T_httpRange);
                {
                    var __tmp__ = _content.seek(_ra._start, (0 : stdgo.GoInt)), __137:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        stdgo._internal.net.http.Http_error.error(_w, _err.error()?.__copy__(), (416 : stdgo.GoInt));
                        return;
                    };
                };
                _sendSize = _ra._length;
                _code = (206 : stdgo.GoInt);
                _w.header().set(("Content-Range" : stdgo.GoString), _ra._contentRange(_size)?.__copy__());
            } else if (((_ranges.length) > (1 : stdgo.GoInt) : Bool)) {
                _sendSize = stdgo._internal.net.http.Http__rangesMIMESize._rangesMIMESize(_ranges, _ctype?.__copy__(), _size);
                _code = (206 : stdgo.GoInt);
                var __tmp__ = stdgo._internal.io.Io_pipe.pipe(), _pr:stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader> = __tmp__._0, _pw:stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter> = __tmp__._1;
                var _mw = stdgo._internal.mime.multipart.Multipart_newWriter.newWriter(stdgo.Go.asInterface(_pw));
                _w.header().set(("Content-Type" : stdgo.GoString), (("multipart/byteranges; boundary=" : stdgo.GoString) + @:check2r _mw.boundary()?.__copy__() : stdgo.GoString)?.__copy__());
                _sendContent = stdgo.Go.asInterface(_pr);
                {
                    final __f__ = @:check2r _pr.close;
                    __deferstack__.unshift(() -> __f__());
                };
                stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        for (__137 => _ra in _ranges) {
                            var __tmp__ = @:check2r _mw.createPart(_ra._mimeHeader(_ctype?.__copy__(), _size)), _part:stdgo._internal.io.Io_Writer.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                @:check2r _pw.closeWithError(_err);
                                return;
                            };
                            {
                                var __tmp__ = _content.seek(_ra._start, (0 : stdgo.GoInt)), __138:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    @:check2r _pw.closeWithError(_err);
                                    return;
                                };
                            };
                            {
                                var __tmp__ = stdgo._internal.io.Io_copyN.copyN(_part, _content, _ra._length), __139:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    @:check2r _pw.closeWithError(_err);
                                    return;
                                };
                            };
                        };
                        @:check2r _mw.close();
                        @:check2r _pw.close();
                    };
                    a();
                }));
            };
            _w.header().set(("Accept-Ranges" : stdgo.GoString), ("bytes" : stdgo.GoString));
            if (_w.header().get(("Content-Encoding" : stdgo.GoString)) == (stdgo.Go.str())) {
                _w.header().set(("Content-Length" : stdgo.GoString), stdgo._internal.strconv.Strconv_formatInt.formatInt(_sendSize, (10 : stdgo.GoInt))?.__copy__());
            };
            _w.writeHeader(_code);
            if ((@:checkr _r ?? throw "null pointer dereference").method != (("HEAD" : stdgo.GoString))) {
                stdgo._internal.io.Io_copyN.copyN(_w, _sendContent, _sendSize);
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
