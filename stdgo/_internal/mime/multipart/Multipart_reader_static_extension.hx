package stdgo._internal.mime.multipart;
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function _isBoundaryDelimiterLine( _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>, _line:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader> = _r;
        var _ret = false;
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L463"
        if (!stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_line, (@:checkr _r ?? throw "null pointer dereference")._dashBoundary)) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L464"
            return _ret = false;
        };
        var _rest = (_line.__slice__(((@:checkr _r ?? throw "null pointer dereference")._dashBoundary.length)) : stdgo.Slice<stdgo.GoUInt8>);
        _rest = stdgo._internal.mime.multipart.Multipart__skiplwspchar._skipLWSPChar(_rest);
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L472"
        if ((((@:checkr _r ?? throw "null pointer dereference")._partsRead == ((0 : stdgo.GoInt)) && (_rest.length) == ((1 : stdgo.GoInt)) : Bool) && (_rest[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference")._nl = ((@:checkr _r ?? throw "null pointer dereference")._nl.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _r ?? throw "null pointer dereference")._nlDashBoundary = ((@:checkr _r ?? throw "null pointer dereference")._nlDashBoundary.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L476"
        return _ret = stdgo._internal.bytes.Bytes_equal.equal(_rest, (@:checkr _r ?? throw "null pointer dereference")._nl);
    }
    @:keep
    @:tdfield
    static public function _isFinalBoundary( _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>, _line:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L448"
        if (!stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_line, (@:checkr _r ?? throw "null pointer dereference")._dashBoundaryDash)) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L449"
            return false;
        };
        var _rest = (_line.__slice__(((@:checkr _r ?? throw "null pointer dereference")._dashBoundaryDash.length)) : stdgo.Slice<stdgo.GoUInt8>);
        _rest = stdgo._internal.mime.multipart.Multipart__skiplwspchar._skipLWSPChar(_rest);
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L453"
        return ((_rest.length == (0 : stdgo.GoInt)) || stdgo._internal.bytes.Bytes_equal.equal(_rest, (@:checkr _r ?? throw "null pointer dereference")._nl) : Bool);
    }
    @:keep
    @:tdfield
    static public function _nextPart( _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>, _rawPart:Bool, _maxMIMEHeaderSize:stdgo.GoInt64, _maxMIMEHeaders:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L385"
        if (({
            final value = (@:checkr _r ?? throw "null pointer dereference")._currentPart;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L386"
            (@:checkr _r ?? throw "null pointer dereference")._currentPart.close();
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L388"
        if (((@:checkr _r ?? throw "null pointer dereference")._dashBoundary : stdgo.GoString) == (("--" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L389"
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("multipart: boundary is empty" : stdgo.GoString)) };
        };
        var _expectNewPart = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L392"
        while (true) {
            var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._bufReader.readSlice((10 : stdgo.GoUInt8)), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L395"
            if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) && _r._isFinalBoundary(_line) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L401"
                return { _0 : null, _1 : stdgo._internal.io.Io_eof.eOF };
            };
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L403"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L404"
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("multipart: NextPart: %w" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
            };
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L407"
            if (_r._isBoundaryDelimiterLine(_line)) {
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L408"
                (@:checkr _r ?? throw "null pointer dereference")._partsRead++;
                var __tmp__ = stdgo._internal.mime.multipart.Multipart__newpart._newPart(_r, _rawPart, _maxMIMEHeaderSize, _maxMIMEHeaders), _bp:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L410"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L411"
                    return { _0 : null, _1 : _err };
                };
                (@:checkr _r ?? throw "null pointer dereference")._currentPart = _bp;
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L414"
                return { _0 : _bp, _1 : (null : stdgo.Error) };
            };
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L417"
            if (_r._isFinalBoundary(_line)) {
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L419"
                return { _0 : null, _1 : stdgo._internal.io.Io_eof.eOF };
            };
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L422"
            if (_expectNewPart) {
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L423"
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("multipart: expecting a new Part; got line %q" : stdgo.GoString), stdgo.Go.toInterface((_line : stdgo.GoString))) };
            };
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L426"
            if ((@:checkr _r ?? throw "null pointer dereference")._partsRead == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L428"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L435"
            if (stdgo._internal.bytes.Bytes_equal.equal(_line, (@:checkr _r ?? throw "null pointer dereference")._nl)) {
                _expectNewPart = true;
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L437"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L440"
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("multipart: unexpected line in Next(): %q" : stdgo.GoString), stdgo.Go.toInterface(_line)) };
        };
    }
    @:keep
    @:tdfield
    static public function nextRawPart( _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L381"
        return _r._nextPart(true, (10485760i64 : stdgo.GoInt64), stdgo._internal.mime.multipart.Multipart__maxmimeheaders._maxMIMEHeaders());
    }
    @:keep
    @:tdfield
    static public function nextPart( _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L372"
        return _r._nextPart(false, (10485760i64 : stdgo.GoInt64), stdgo._internal.mime.multipart.Multipart__maxmimeheaders._maxMIMEHeaders());
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
            var _file:stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>), _fileOff:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _numDiskFiles = (0 : stdgo.GoInt);
            var _combineFiles = (true : Bool);
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L49"
            if (stdgo._internal.mime.multipart.Multipart__multipartfiles._multipartFiles.value() == (("distinct" : stdgo.GoString))) {
                _combineFiles = false;
            };
            var _maxParts = (1000 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L54"
            {
                var _s = (stdgo._internal.mime.multipart.Multipart__multipartmaxparts._multipartMaxParts.value()?.__copy__() : stdgo.GoString);
                if (_s != ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L55"
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_s?.__copy__()), _v:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (((_err == null) && (_v >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                            _maxParts = _v;
                            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L57"
                            stdgo._internal.mime.multipart.Multipart__multipartmaxparts._multipartMaxParts.incNonDefault();
                        };
                    };
                };
            };
            var _maxHeaders = (stdgo._internal.mime.multipart.Multipart__maxmimeheaders._maxMIMEHeaders() : stdgo.GoInt64);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L63"
                        if (({
                            final value = _file;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        })) {
                            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L64"
                            {
                                var _cerr = (_file.close() : stdgo.Error);
                                if (_err == null) {
                                    _err = _cerr;
                                };
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L68"
                        if ((_combineFiles && (_numDiskFiles > (1 : stdgo.GoInt) : Bool) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L69"
                            for (__16 => _fhs in (@:checkr _form ?? throw "null pointer dereference").file) {
                                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L70"
                                for (__17 => _fh in _fhs) {
                                    (@:checkr _fh ?? throw "null pointer dereference")._tmpshared = true;
                                };
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L75"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L76"
                            _form.removeAll();
                            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L77"
                            if (({
                                final value = _file;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L78"
                                stdgo._internal.os.Os_remove.remove(_file.name()?.__copy__());
                            };
                        };
                    };
                    a();
                }) });
            };
            var _maxFileMemoryBytes = (_maxMemory : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L97"
            if (_maxFileMemoryBytes == ((9223372036854775807i64 : stdgo.GoInt64))) {
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L98"
                _maxFileMemoryBytes--;
            };
            var _maxMemoryBytes = (_maxMemory + (10485760i64 : stdgo.GoInt64) : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L101"
            if ((_maxMemoryBytes <= (0i64 : stdgo.GoInt64) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L102"
                if ((_maxMemory < (0i64 : stdgo.GoInt64) : Bool)) {
                    _maxMemoryBytes = (0i64 : stdgo.GoInt64);
                } else {
                    _maxMemoryBytes = (9223372036854775807i64 : stdgo.GoInt64);
                };
            };
            var _copyBuf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L109"
            while (true) {
                var __tmp__ = _r._nextPart(false, _maxMemoryBytes, _maxHeaders), _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L111"
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L112"
                    break;
                };
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L114"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L115"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            _0 = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        _0 = __ret__._0;
                        _err = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L117"
                if ((_maxParts <= (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L118"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.mime.multipart.Multipart_errmessagetoolarge.errMessageTooLarge };
                            _0 = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        _0 = __ret__._0;
                        _err = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L120"
                _maxParts--;
                var _name = (_p.formName()?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L123"
                if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L124"
                    continue;
                };
                var _filename = (_p.fileName()?.__copy__() : stdgo.GoString);
                {};
                _maxMemoryBytes = (_maxMemoryBytes - ((_name.length : stdgo.GoInt64)) : stdgo.GoInt64);
                _maxMemoryBytes = (_maxMemoryBytes - ((200i64 : stdgo.GoInt64)) : stdgo.GoInt64);
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L134"
                if ((_maxMemoryBytes < (0i64 : stdgo.GoInt64) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L137"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.mime.multipart.Multipart_errmessagetoolarge.errMessageTooLarge };
                            _0 = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        _0 = __ret__._0;
                        _err = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L142"
                if (_filename == ((stdgo.Go.str() : stdgo.GoString))) {
                    var __tmp__ = stdgo._internal.io.Io_copyn.copyN(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo.Go.asInterface(_p), (_maxMemoryBytes + (1i64 : stdgo.GoInt64) : stdgo.GoInt64)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L145"
                    if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L146"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    _maxMemoryBytes = (_maxMemoryBytes - (_n) : stdgo.GoInt64);
                    //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L149"
                    if ((_maxMemoryBytes < (0i64 : stdgo.GoInt64) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L150"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.mime.multipart.Multipart_errmessagetoolarge.errMessageTooLarge };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    (@:checkr _form ?? throw "null pointer dereference").value[_name] = (((@:checkr _form ?? throw "null pointer dereference").value[_name] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__((_b.string() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                    //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L153"
                    continue;
                };
                {};
                _maxMemoryBytes = (_maxMemoryBytes - (stdgo._internal.mime.multipart.Multipart__mimeheadersize._mimeHeaderSize((@:checkr _p ?? throw "null pointer dereference").header)) : stdgo.GoInt64);
                _maxMemoryBytes = (_maxMemoryBytes - ((200i64 : stdgo.GoInt64)) : stdgo.GoInt64);
                _maxMemoryBytes = (_maxMemoryBytes - ((100i64 : stdgo.GoInt64)) : stdgo.GoInt64);
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L161"
                if ((_maxMemoryBytes < (0i64 : stdgo.GoInt64) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L162"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.mime.multipart.Multipart_errmessagetoolarge.errMessageTooLarge };
                            _0 = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        _0 = __ret__._0;
                        _err = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L164"
                for (__16 => _v in (@:checkr _p ?? throw "null pointer dereference").header) {
                    _maxHeaders = (_maxHeaders - ((_v.length : stdgo.GoInt64)) : stdgo.GoInt64);
                };
                var _fh = (stdgo.Go.setRef(({ filename : _filename?.__copy__(), header : (@:checkr _p ?? throw "null pointer dereference").header } : stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader)) : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>);
                var __tmp__ = stdgo._internal.io.Io_copyn.copyN(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo.Go.asInterface(_p), (_maxFileMemoryBytes + (1i64 : stdgo.GoInt64) : stdgo.GoInt64)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L172"
                if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L173"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            _0 = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        _0 = __ret__._0;
                        _err = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L175"
                if ((_n > _maxFileMemoryBytes : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L176"
                    if (({
                        final value = _file;
                        (value == null || (value : Dynamic).__nil__);
                    })) {
                        {
                            var __tmp__ = stdgo._internal.os.Os_createtemp.createTemp((@:checkr _r ?? throw "null pointer dereference")._tempDir?.__copy__(), ("multipart-" : stdgo.GoString));
                            _file = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L178"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L179"
                            {
                                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                    _0 = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                                _0 = __ret__._0;
                                _err = __ret__._1;
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L182"
                    _numDiskFiles++;
                    //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L183"
                    {
                        var __tmp__ = _file.write(_b.bytes()), __17:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L184"
                            {
                                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                    _0 = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                                _0 = __ret__._0;
                                _err = __ret__._1;
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L186"
                    if (_copyBuf == null) {
                        _copyBuf = (new stdgo.Slice<stdgo.GoUInt8>((32768 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    {};
                    var __tmp__ = stdgo._internal.io.Io_copybuffer.copyBuffer(stdgo.Go.asInterface((new stdgo._internal.mime.multipart.Multipart_t__readform___localname___writeronly_5240.T__readForm___localname___writerOnly_5240(stdgo.Go.asInterface(_file)) : stdgo._internal.mime.multipart.Multipart_t__readform___localname___writeronly_5240.T__readForm___localname___writerOnly_5240)), stdgo.Go.asInterface(_p), _copyBuf), _remainingSize:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L192"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L193"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    (@:checkr _fh ?? throw "null pointer dereference")._tmpfile = _file.name()?.__copy__();
                    (@:checkr _fh ?? throw "null pointer dereference").size = ((_b.len() : stdgo.GoInt64) + _remainingSize : stdgo.GoInt64);
                    (@:checkr _fh ?? throw "null pointer dereference")._tmpoff = _fileOff;
                    _fileOff = (_fileOff + ((@:checkr _fh ?? throw "null pointer dereference").size) : stdgo.GoInt64);
                    //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L199"
                    if (!_combineFiles) {
                        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L200"
                        {
                            var _err = (_file.close() : stdgo.Error);
                            if (_err != null) {
                                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L201"
                                {
                                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = {
                                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                        _0 = __tmp__._0;
                                        _err = __tmp__._1;
                                        __tmp__;
                                    };
                                    _0 = __ret__._0;
                                    _err = __ret__._1;
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
                    (@:checkr _fh ?? throw "null pointer dereference")._content = _b.bytes();
                    (@:checkr _fh ?? throw "null pointer dereference").size = ((@:checkr _fh ?? throw "null pointer dereference")._content.length : stdgo.GoInt64);
                    _maxFileMemoryBytes = (_maxFileMemoryBytes - (_n) : stdgo.GoInt64);
                    _maxMemoryBytes = (_maxMemoryBytes - (_n) : stdgo.GoInt64);
                };
                (@:checkr _form ?? throw "null pointer dereference").file[_name] = (((@:checkr _form ?? throw "null pointer dereference").file[_name] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>>)).__append__(_fh) : stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>>);
            };
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L214"
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>; var _1 : stdgo.Error; } = { _0 : _form, _1 : (null : stdgo.Error) };
                    _0 = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                _0 = __ret__._0;
                _err = __ret__._1;
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L33"
        return _r._readForm(_maxMemory);
    }
}
