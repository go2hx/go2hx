package stdgo._internal.mime.multipart;
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function _isBoundaryDelimiterLine( _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>, _line:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader> = _r;
        var _ret = false;
        if (!stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_line, (@:checkr _r ?? throw "null pointer dereference")._dashBoundary)) {
            return _ret = false;
        };
        var _rest = (_line.__slice__(((@:checkr _r ?? throw "null pointer dereference")._dashBoundary.length)) : stdgo.Slice<stdgo.GoUInt8>);
        _rest = stdgo._internal.mime.multipart.Multipart__skiplwspchar._skipLWSPChar(_rest);
        if ((((@:checkr _r ?? throw "null pointer dereference")._partsRead == ((0 : stdgo.GoInt)) && (_rest.length) == ((1 : stdgo.GoInt)) : Bool) && (_rest[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference")._nl = ((@:checkr _r ?? throw "null pointer dereference")._nl.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _r ?? throw "null pointer dereference")._nlDashBoundary = ((@:checkr _r ?? throw "null pointer dereference")._nlDashBoundary.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _ret = stdgo._internal.bytes.Bytes_equal.equal(_rest, (@:checkr _r ?? throw "null pointer dereference")._nl);
    }
    @:keep
    @:tdfield
    static public function _isFinalBoundary( _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>, _line:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader> = _r;
        if (!stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_line, (@:checkr _r ?? throw "null pointer dereference")._dashBoundaryDash)) {
            return false;
        };
        var _rest = (_line.__slice__(((@:checkr _r ?? throw "null pointer dereference")._dashBoundaryDash.length)) : stdgo.Slice<stdgo.GoUInt8>);
        _rest = stdgo._internal.mime.multipart.Multipart__skiplwspchar._skipLWSPChar(_rest);
        return ((_rest.length == (0 : stdgo.GoInt)) || stdgo._internal.bytes.Bytes_equal.equal(_rest, (@:checkr _r ?? throw "null pointer dereference")._nl) : Bool);
    }
    @:keep
    @:tdfield
    static public function _nextPart( _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>, _rawPart:Bool, _maxMIMEHeaderSize:stdgo.GoInt64, _maxMIMEHeaders:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader> = _r;
        if (((@:checkr _r ?? throw "null pointer dereference")._currentPart != null && (((@:checkr _r ?? throw "null pointer dereference")._currentPart : Dynamic).__nil__ == null || !((@:checkr _r ?? throw "null pointer dereference")._currentPart : Dynamic).__nil__))) {
            @:check2r (@:checkr _r ?? throw "null pointer dereference")._currentPart.close();
        };
        if (((@:checkr _r ?? throw "null pointer dereference")._dashBoundary : stdgo.GoString) == (("--" : stdgo.GoString))) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("multipart: boundary is empty" : stdgo.GoString)) };
        };
        var _expectNewPart = (false : Bool);
        while (true) {
            var __tmp__ = @:check2r (@:checkr _r ?? throw "null pointer dereference")._bufReader.readSlice((10 : stdgo.GoUInt8)), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) && @:check2r _r._isFinalBoundary(_line) : Bool)) {
                return { _0 : null, _1 : stdgo._internal.io.Io_eof.eOF };
            };
            if (_err != null) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("multipart: NextPart: %w" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
            };
            if (@:check2r _r._isBoundaryDelimiterLine(_line)) {
                (@:checkr _r ?? throw "null pointer dereference")._partsRead++;
                var __tmp__ = stdgo._internal.mime.multipart.Multipart__newpart._newPart(_r, _rawPart, _maxMIMEHeaderSize, _maxMIMEHeaders), _bp:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                (@:checkr _r ?? throw "null pointer dereference")._currentPart = _bp;
                return { _0 : _bp, _1 : (null : stdgo.Error) };
            };
            if (@:check2r _r._isFinalBoundary(_line)) {
                return { _0 : null, _1 : stdgo._internal.io.Io_eof.eOF };
            };
            if (_expectNewPart) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("multipart: expecting a new Part; got line %q" : stdgo.GoString), stdgo.Go.toInterface((_line : stdgo.GoString))) };
            };
            if ((@:checkr _r ?? throw "null pointer dereference")._partsRead == ((0 : stdgo.GoInt))) {
                continue;
            };
            if (stdgo._internal.bytes.Bytes_equal.equal(_line, (@:checkr _r ?? throw "null pointer dereference")._nl)) {
                _expectNewPart = true;
                continue;
            };
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("multipart: unexpected line in Next(): %q" : stdgo.GoString), stdgo.Go.toInterface(_line)) };
        };
    }
    @:keep
    @:tdfield
    static public function nextRawPart( _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader> = _r;
        return @:check2r _r._nextPart(true, (10485760i64 : stdgo.GoInt64), stdgo._internal.mime.multipart.Multipart__maxmimeheaders._maxMIMEHeaders());
    }
    @:keep
    @:tdfield
    static public function nextPart( _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader> = _r;
        return @:check2r _r._nextPart(false, (10485760i64 : stdgo.GoInt64), stdgo._internal.mime.multipart.Multipart__maxmimeheaders._maxMIMEHeaders());
    }
    @:keep
    @:tdfield
    static public function _readForm( _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>, _maxMemory:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader> = _r;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>), _err = (null : stdgo.Error);
        try {
            var _form = (stdgo.Go.setRef((new stdgo._internal.mime.multipart.Multipart_form.Form((({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>), (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>>>)) : stdgo._internal.mime.multipart.Multipart_form.Form)) : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>);
            var __0:stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>), __1:stdgo.GoInt64 = (0 : stdgo.GoInt64);
var _fileOff = __1, _file = __0;
            var _numDiskFiles = (0 : stdgo.GoInt);
            var _combineFiles = (true : Bool);
            if (@:check2r stdgo._internal.mime.multipart.Multipart__multipartfiles._multipartFiles.value() == (("distinct" : stdgo.GoString))) {
                _combineFiles = false;
            };
            var _maxParts = (1000 : stdgo.GoInt);
            {
                var _s = (@:check2r stdgo._internal.mime.multipart.Multipart__multipartmaxparts._multipartMaxParts.value()?.__copy__() : stdgo.GoString);
                if (_s != ((stdgo.Go.str() : stdgo.GoString))) {
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_s?.__copy__()), _v:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (((_err == null) && (_v >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                            _maxParts = _v;
                            @:check2r stdgo._internal.mime.multipart.Multipart__multipartmaxparts._multipartMaxParts.incNonDefault();
                        };
                    };
                };
            };
            var _maxHeaders = (stdgo._internal.mime.multipart.Multipart__maxmimeheaders._maxMIMEHeaders() : stdgo.GoInt64);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        if ((_file != null && ((_file : Dynamic).__nil__ == null || !(_file : Dynamic).__nil__))) {
                            {
                                var _cerr = (@:check2r _file.close() : stdgo.Error);
                                if (_err == null) {
                                    _err = _cerr;
                                };
                            };
                        };
                        if ((_combineFiles && (_numDiskFiles > (1 : stdgo.GoInt) : Bool) : Bool)) {
                            for (__16 => _fhs in (@:checkr _form ?? throw "null pointer dereference").file) {
                                for (__17 => _fh in _fhs) {
                                    (@:checkr _fh ?? throw "null pointer dereference")._tmpshared = true;
                                };
                            };
                        };
                        if (_err != null) {
                            @:check2r _form.removeAll();
                            if ((_file != null && ((_file : Dynamic).__nil__ == null || !(_file : Dynamic).__nil__))) {
                                stdgo._internal.os.Os_remove.remove(@:check2r _file.name()?.__copy__());
                            };
                        };
                    };
                    a();
                }) });
            };
            var _maxFileMemoryBytes = (_maxMemory : stdgo.GoInt64);
            if (_maxFileMemoryBytes == ((9223372036854775807i64 : stdgo.GoInt64))) {
                _maxFileMemoryBytes--;
            };
            var _maxMemoryBytes = (_maxMemory + (10485760i64 : stdgo.GoInt64) : stdgo.GoInt64);
            if ((_maxMemoryBytes <= (0i64 : stdgo.GoInt64) : Bool)) {
                if ((_maxMemory < (0i64 : stdgo.GoInt64) : Bool)) {
                    _maxMemoryBytes = (0i64 : stdgo.GoInt64);
                } else {
                    _maxMemoryBytes = (9223372036854775807i64 : stdgo.GoInt64);
                };
            };
            var _copyBuf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            while (true) {
                var __tmp__ = @:check2r _r._nextPart(false, _maxMemoryBytes, _maxHeaders), _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    break;
                };
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            _0 = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                if ((_maxParts <= (0 : stdgo.GoInt) : Bool)) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.mime.multipart.Multipart_errmessagetoolarge.errMessageTooLarge };
                            _0 = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                _maxParts--;
                var _name = (@:check2r _p.formName()?.__copy__() : stdgo.GoString);
                if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
                    continue;
                };
                var _filename = (@:check2r _p.fileName()?.__copy__() : stdgo.GoString);
                {};
                _maxMemoryBytes = (_maxMemoryBytes - ((_name.length : stdgo.GoInt64)) : stdgo.GoInt64);
                _maxMemoryBytes = (_maxMemoryBytes - ((200i64 : stdgo.GoInt64)) : stdgo.GoInt64);
                if ((_maxMemoryBytes < (0i64 : stdgo.GoInt64) : Bool)) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.mime.multipart.Multipart_errmessagetoolarge.errMessageTooLarge };
                            _0 = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
                if (_filename == ((stdgo.Go.str() : stdgo.GoString))) {
                    var __tmp__ = stdgo._internal.io.Io_copyn.copyN(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo.Go.asInterface(_p), (_maxMemoryBytes + (1i64 : stdgo.GoInt64) : stdgo.GoInt64)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    _maxMemoryBytes = (_maxMemoryBytes - (_n) : stdgo.GoInt64);
                    if ((_maxMemoryBytes < (0i64 : stdgo.GoInt64) : Bool)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.mime.multipart.Multipart_errmessagetoolarge.errMessageTooLarge };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    (@:checkr _form ?? throw "null pointer dereference").value[_name] = (((@:checkr _form ?? throw "null pointer dereference").value[_name] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__((@:check2 _b.string() : stdgo.GoString)?.__copy__()));
                    continue;
                };
                {};
                _maxMemoryBytes = (_maxMemoryBytes - (stdgo._internal.mime.multipart.Multipart__mimeheadersize._mimeHeaderSize((@:checkr _p ?? throw "null pointer dereference").header)) : stdgo.GoInt64);
                _maxMemoryBytes = (_maxMemoryBytes - ((200i64 : stdgo.GoInt64)) : stdgo.GoInt64);
                _maxMemoryBytes = (_maxMemoryBytes - ((100i64 : stdgo.GoInt64)) : stdgo.GoInt64);
                if ((_maxMemoryBytes < (0i64 : stdgo.GoInt64) : Bool)) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.mime.multipart.Multipart_errmessagetoolarge.errMessageTooLarge };
                            _0 = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                for (__16 => _v in (@:checkr _p ?? throw "null pointer dereference").header) {
                    _maxHeaders = (_maxHeaders - ((_v.length : stdgo.GoInt64)) : stdgo.GoInt64);
                };
                var _fh = (stdgo.Go.setRef(({ filename : _filename?.__copy__(), header : (@:checkr _p ?? throw "null pointer dereference").header } : stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader)) : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>);
                var __tmp__ = stdgo._internal.io.Io_copyn.copyN(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo.Go.asInterface(_p), (_maxFileMemoryBytes + (1i64 : stdgo.GoInt64) : stdgo.GoInt64)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            _0 = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                if ((_n > _maxFileMemoryBytes : Bool)) {
                    if ((_file == null || (_file : Dynamic).__nil__)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_createtemp.createTemp((@:checkr _r ?? throw "null pointer dereference")._tempDir?.__copy__(), ("multipart-" : stdgo.GoString));
                            _file = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        if (_err != null) {
                            {
                                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = {
                                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                    _0 = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                    _numDiskFiles++;
                    {
                        var __tmp__ = @:check2r _file.write(@:check2 _b.bytes()), __17:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            {
                                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = {
                                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                    _0 = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                    if (_copyBuf == null) {
                        _copyBuf = (new stdgo.Slice<stdgo.GoUInt8>((32768 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    {};
                    var __tmp__ = stdgo._internal.io.Io_copybuffer.copyBuffer(stdgo.Go.asInterface((new stdgo._internal.mime.multipart.Multipart_t__readform___localname___writeronly_5240.T__readForm___localname___writerOnly_5240(stdgo.Go.asInterface(_file)) : stdgo._internal.mime.multipart.Multipart_t__readform___localname___writeronly_5240.T__readForm___localname___writerOnly_5240)), stdgo.Go.asInterface(_p), _copyBuf), _remainingSize:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    (@:checkr _fh ?? throw "null pointer dereference")._tmpfile = @:check2r _file.name()?.__copy__();
                    (@:checkr _fh ?? throw "null pointer dereference").size = ((@:check2 _b.len() : stdgo.GoInt64) + _remainingSize : stdgo.GoInt64);
                    (@:checkr _fh ?? throw "null pointer dereference")._tmpoff = _fileOff;
                    _fileOff = (_fileOff + ((@:checkr _fh ?? throw "null pointer dereference").size) : stdgo.GoInt64);
                    if (!_combineFiles) {
                        {
                            var _err = (@:check2r _file.close() : stdgo.Error);
                            if (_err != null) {
                                {
                                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = {
                                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                        _0 = __tmp__._0;
                                        _err = __tmp__._1;
                                        __tmp__;
                                    };
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                        _file = null;
                    };
                } else {
                    (@:checkr _fh ?? throw "null pointer dereference")._content = @:check2 _b.bytes();
                    (@:checkr _fh ?? throw "null pointer dereference").size = ((@:checkr _fh ?? throw "null pointer dereference")._content.length : stdgo.GoInt64);
                    _maxFileMemoryBytes = (_maxFileMemoryBytes - (_n) : stdgo.GoInt64);
                    _maxMemoryBytes = (_maxMemoryBytes - (_n) : stdgo.GoInt64);
                };
                (@:checkr _form ?? throw "null pointer dereference").file[_name] = (((@:checkr _form ?? throw "null pointer dereference").file[_name] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>>)).__append__(_fh));
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = { _0 : _form, _1 : (null : stdgo.Error) };
                    _0 = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _0, _1 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _0, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function readForm( _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>, _maxMemory:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader> = _r;
        return @:check2r _r._readForm(_maxMemory);
    }
}
