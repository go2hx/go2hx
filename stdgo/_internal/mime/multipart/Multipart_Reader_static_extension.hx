package stdgo._internal.mime.multipart;
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.Reader_asInterface) class Reader_static_extension {
    @:keep
    static public function _isBoundaryDelimiterLine( _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>, _line:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader> = _r;
        var _ret = false;
        if (!stdgo._internal.bytes.Bytes_hasPrefix.hasPrefix(_line, _r._dashBoundary)) {
            return _ret = false;
        };
        var _rest = (_line.__slice__((_r._dashBoundary.length)) : stdgo.Slice<stdgo.GoUInt8>);
        _rest = stdgo._internal.mime.multipart.Multipart__skipLWSPChar._skipLWSPChar(_rest);
        if (((_r._partsRead == ((0 : stdgo.GoInt)) && (_rest.length) == ((1 : stdgo.GoInt)) : Bool) && (_rest[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
            _r._nl = (_r._nl.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _r._nlDashBoundary = (_r._nlDashBoundary.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _ret = stdgo._internal.bytes.Bytes_equal.equal(_rest, _r._nl);
    }
    @:keep
    static public function _isFinalBoundary( _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>, _line:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader> = _r;
        if (!stdgo._internal.bytes.Bytes_hasPrefix.hasPrefix(_line, _r._dashBoundaryDash)) {
            return false;
        };
        var _rest = (_line.__slice__((_r._dashBoundaryDash.length)) : stdgo.Slice<stdgo.GoUInt8>);
        _rest = stdgo._internal.mime.multipart.Multipart__skipLWSPChar._skipLWSPChar(_rest);
        return ((_rest.length == (0 : stdgo.GoInt)) || stdgo._internal.bytes.Bytes_equal.equal(_rest, _r._nl) : Bool);
    }
    @:keep
    static public function _nextPart( _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>, _rawPart:Bool, _maxMIMEHeaderSize:stdgo.GoInt64, _maxMIMEHeaders:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader> = _r;
        if ((_r._currentPart != null && ((_r._currentPart : Dynamic).__nil__ == null || !(_r._currentPart : Dynamic).__nil__))) {
            _r._currentPart.close();
        };
        if ((_r._dashBoundary : stdgo.GoString) == (("--" : stdgo.GoString))) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("multipart: boundary is empty" : stdgo.GoString)) };
        };
        var _expectNewPart = (false : Bool);
        while (true) {
            var __tmp__ = _r._bufReader.readSlice((10 : stdgo.GoUInt8)), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) && _r._isFinalBoundary(_line) : Bool)) {
                return { _0 : null, _1 : stdgo._internal.io.Io_eof.eof };
            };
            if (_err != null) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("multipart: NextPart: %w" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
            };
            if (_r._isBoundaryDelimiterLine(_line)) {
                _r._partsRead++;
                var __tmp__ = stdgo._internal.mime.multipart.Multipart__newPart._newPart(_r, _rawPart, _maxMIMEHeaderSize, _maxMIMEHeaders), _bp:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                _r._currentPart = _bp;
                return { _0 : _bp, _1 : (null : stdgo.Error) };
            };
            if (_r._isFinalBoundary(_line)) {
                return { _0 : null, _1 : stdgo._internal.io.Io_eof.eof };
            };
            if (_expectNewPart) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("multipart: expecting a new Part; got line %q" : stdgo.GoString), stdgo.Go.toInterface((_line : stdgo.GoString))) };
            };
            if (_r._partsRead == ((0 : stdgo.GoInt))) {
                continue;
            };
            if (stdgo._internal.bytes.Bytes_equal.equal(_line, _r._nl)) {
                _expectNewPart = true;
                continue;
            };
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("multipart: unexpected line in Next(): %q" : stdgo.GoString), stdgo.Go.toInterface(_line)) };
        };
    }
    @:keep
    static public function nextRawPart( _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader> = _r;
        return _r._nextPart(true, (10485760i64 : stdgo.GoInt64), stdgo._internal.mime.multipart.Multipart__maxMIMEHeaders._maxMIMEHeaders());
    }
    @:keep
    static public function nextPart( _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader> = _r;
        return _r._nextPart(false, (10485760i64 : stdgo.GoInt64), stdgo._internal.mime.multipart.Multipart__maxMIMEHeaders._maxMIMEHeaders());
    }
    @:keep
    static public function _readForm( _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>, _maxMemory:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader> = _r;
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>), _err = (null : stdgo.Error);
        try {
            var _form = (stdgo.Go.setRef((new stdgo._internal.mime.multipart.Multipart_Form.Form(({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>), ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>>)) : stdgo._internal.mime.multipart.Multipart_Form.Form)) : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>);
            var __0:stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>), __1:stdgo.GoInt64 = (0 : stdgo.GoInt64);
var _fileOff = __1, _file = __0;
            var _numDiskFiles = (0 : stdgo.GoInt);
            var _combineFiles = (true : Bool);
            if (stdgo._internal.mime.multipart.Multipart__multipartFiles._multipartFiles.value() == (("distinct" : stdgo.GoString))) {
                _combineFiles = false;
            };
            var _maxParts = (1000 : stdgo.GoInt);
            {
                var _s = (stdgo._internal.mime.multipart.Multipart__multipartMaxParts._multipartMaxParts.value()?.__copy__() : stdgo.GoString);
                if (_s != (stdgo.Go.str())) {
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_s?.__copy__()), _v:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (((_err == null) && (_v >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                            _maxParts = _v;
                            stdgo._internal.mime.multipart.Multipart__multipartMaxParts._multipartMaxParts.incNonDefault();
                        };
                    };
                };
            };
            var _maxHeaders = (stdgo._internal.mime.multipart.Multipart__maxMIMEHeaders._maxMIMEHeaders() : stdgo.GoInt64);
            __deferstack__.unshift(() -> ({
                var a = function():Void {
                    if ((_file != null && ((_file : Dynamic).__nil__ == null || !(_file : Dynamic).__nil__))) {
                        {
                            var _cerr = (_file.close() : stdgo.Error);
                            if (_err == null) {
                                _err = _cerr;
                            };
                        };
                    };
                    if ((_combineFiles && (_numDiskFiles > (1 : stdgo.GoInt) : Bool) : Bool)) {
                        for (__16 => _fhs in _form.file) {
                            for (__17 => _fh in _fhs) {
                                _fh._tmpshared = true;
                            };
                        };
                    };
                    if (_err != null) {
                        _form.removeAll();
                        if ((_file != null && ((_file : Dynamic).__nil__ == null || !(_file : Dynamic).__nil__))) {
                            stdgo._internal.os.Os_remove.remove(_file.name()?.__copy__());
                        };
                    };
                };
                a();
            }));
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
                var __tmp__ = _r._nextPart(false, _maxMemoryBytes, _maxHeaders), _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    break;
                };
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            _0 = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                if ((_maxParts <= (0 : stdgo.GoInt) : Bool)) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.mime.multipart.Multipart_errMessageTooLarge.errMessageTooLarge };
                            _0 = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                _maxParts--;
                var _name = (_p.formName()?.__copy__() : stdgo.GoString);
                if (_name == (stdgo.Go.str())) {
                    continue;
                };
                var _filename = (_p.fileName()?.__copy__() : stdgo.GoString);
                {};
                _maxMemoryBytes = (_maxMemoryBytes - ((_name.length : stdgo.GoInt64)) : stdgo.GoInt64);
                _maxMemoryBytes = (_maxMemoryBytes - ((200i64 : stdgo.GoInt64)) : stdgo.GoInt64);
                if ((_maxMemoryBytes < (0i64 : stdgo.GoInt64) : Bool)) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.mime.multipart.Multipart_errMessageTooLarge.errMessageTooLarge };
                            _0 = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                var _b:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
                var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
                if (_filename == (stdgo.Go.str())) {
                    var __tmp__ = stdgo._internal.io.Io_copyN.copyN(stdgo.Go.asInterface(_b__pointer__), stdgo.Go.asInterface(_p), (_maxMemoryBytes + (1i64 : stdgo.GoInt64) : stdgo.GoInt64)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                    _maxMemoryBytes = (_maxMemoryBytes - (_n) : stdgo.GoInt64);
                    if ((_maxMemoryBytes < (0i64 : stdgo.GoInt64) : Bool)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.mime.multipart.Multipart_errMessageTooLarge.errMessageTooLarge };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                    _form.value[_name] = ((_form.value[_name] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__((_b.string() : stdgo.GoString)?.__copy__()));
                    continue;
                };
                {};
                _maxMemoryBytes = (_maxMemoryBytes - (stdgo._internal.mime.multipart.Multipart__mimeHeaderSize._mimeHeaderSize(_p.header)) : stdgo.GoInt64);
                _maxMemoryBytes = (_maxMemoryBytes - ((200i64 : stdgo.GoInt64)) : stdgo.GoInt64);
                _maxMemoryBytes = (_maxMemoryBytes - ((100i64 : stdgo.GoInt64)) : stdgo.GoInt64);
                if ((_maxMemoryBytes < (0i64 : stdgo.GoInt64) : Bool)) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.mime.multipart.Multipart_errMessageTooLarge.errMessageTooLarge };
                            _0 = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                for (__16 => _v in _p.header) {
                    _maxHeaders = (_maxHeaders - ((_v.length : stdgo.GoInt64)) : stdgo.GoInt64);
                };
                var _fh = (stdgo.Go.setRef(({ filename : _filename?.__copy__(), header : _p.header } : stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader)) : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>);
                var __tmp__ = stdgo._internal.io.Io_copyN.copyN(stdgo.Go.asInterface(_b__pointer__), stdgo.Go.asInterface(_p), (_maxFileMemoryBytes + (1i64 : stdgo.GoInt64) : stdgo.GoInt64)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            _0 = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                if ((_n > _maxFileMemoryBytes : Bool)) {
                    if ((_file == null || (_file : Dynamic).__nil__)) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_createTemp.createTemp(_r._tempDir?.__copy__(), ("multipart-" : stdgo.GoString));
                            _file = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            {
                                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = {
                                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                    _0 = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return __ret__;
                            };
                        };
                    };
                    _numDiskFiles++;
                    {
                        var __tmp__ = _file.write(_b.bytes()), __17:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            {
                                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = {
                                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                    _0 = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return __ret__;
                            };
                        };
                    };
                    if (_copyBuf == null) {
                        _copyBuf = (new stdgo.Slice<stdgo.GoUInt8>((32768 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    {};
                    var __tmp__ = stdgo._internal.io.Io_copyBuffer.copyBuffer(stdgo.Go.asInterface((new stdgo._internal.mime.multipart.Multipart_T__readForm___localname___writerOnly_5240.T__readForm___localname___writerOnly_5240(stdgo.Go.asInterface(_file)) : stdgo._internal.mime.multipart.Multipart_T__readForm___localname___writerOnly_5240.T__readForm___localname___writerOnly_5240)), stdgo.Go.asInterface(_p), _copyBuf), _remainingSize:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                    _fh._tmpfile = _file.name()?.__copy__();
                    _fh.size = ((_b.len() : stdgo.GoInt64) + _remainingSize : stdgo.GoInt64);
                    _fh._tmpoff = _fileOff;
                    _fileOff = (_fileOff + (_fh.size) : stdgo.GoInt64);
                    if (!_combineFiles) {
                        {
                            var _err = (_file.close() : stdgo.Error);
                            if (_err != null) {
                                {
                                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = {
                                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                        _0 = __tmp__._0;
                                        _err = __tmp__._1;
                                        __tmp__;
                                    };
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                        _file = null;
                    };
                } else {
                    _fh._content = _b.bytes();
                    _fh.size = (_fh._content.length : stdgo.GoInt64);
                    _maxFileMemoryBytes = (_maxFileMemoryBytes - (_n) : stdgo.GoInt64);
                    _maxMemoryBytes = (_maxMemoryBytes - (_n) : stdgo.GoInt64);
                };
                _form.file[_name] = ((_form.file[_name] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>)).__append__(_fh));
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = { _0 : _form, _1 : (null : stdgo.Error) };
                    _0 = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = { _0 : _0, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } = { _0 : _0, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function readForm( _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>, _maxMemory:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader> = _r;
        return _r._readForm(_maxMemory);
    }
}
