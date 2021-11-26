package stdgo.mime.multipart;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
typedef File = StructType & {
    > stdgo.io.Io.Reader,
    > stdgo.io.Io.ReaderAt,
    > stdgo.io.Io.Seeker,
    > stdgo.io.Io.Closer,
};
@:structInit class Form {
    public function removeAll():Error {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _err:Error = ((null : stdgo.Error));
        for (_ => _fhs in _f.value.file) {
            for (_ => _fh in _fhs) {
                if (_fh.value._tmpfile != (("" : GoString))) {
                    var _e:stdgo.Error = stdgo.os.Os.remove(_fh.value._tmpfile);
                    if (_e != null && _err == null) {
                        _err = _e;
                    };
                };
            };
        };
        return _err;
    }
    public var value : GoMap<GoString, Slice<GoString>> = new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))).nil();
    public var file : GoMap<GoString, Slice<Pointer<FileHeader>>> = new GoMap<GoString, Slice<Pointer<FileHeader>>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("FileHeader", [], stdgo.reflect.Reflect.GoType.structType([{ name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "header", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("stdgo.net.textproto.Textproto.MIMEHeader", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))) }, { name : "size", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_content", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_tmpfile", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))))))).nil();
    public function new(?value:GoMap<GoString, Slice<GoString>>, ?file:GoMap<GoString, Slice<Pointer<FileHeader>>>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(value) + " " + Go.string(file) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Form(value, file);
    }
    public function __set__(__tmp__) {
        this.value = __tmp__.value;
        this.file = __tmp__.file;
        return this;
    }
}
@:structInit class FileHeader {
    public function open():{ var _0 : File; var _1 : Error; } {
        var _fh = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _b:Slice<GoUInt8> = _fh.value._content;
            if ((_b != null && !_b.isNil())) {
                var _r:Pointer<stdgo.io.Io.SectionReader> = stdgo.io.Io.newSectionReader(stdgo.bytes.Bytes.newReader(_b).value, ((0 : GoInt64)), ((_b.length : GoInt64)));
                return { _0 : new T_sectionReadCloser(_r).__copy__(), _1 : ((null : stdgo.Error)) };
            };
        };
        return stdgo.os.Os.open(_fh.value._tmpfile);
    }
    public var filename : GoString = (("" : GoString));
    public var header : stdgo.net.textproto.Textproto.MIMEHeader = ((null : stdgo.net.textproto.Textproto.MIMEHeader));
    public var size : GoInt64 = ((0 : GoInt64));
    public var _content : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _tmpfile : GoString = (("" : GoString));
    public function new(?filename:GoString, ?header:stdgo.net.textproto.Textproto.MIMEHeader, ?size:GoInt64, ?_content:Slice<GoUInt8>, ?_tmpfile:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(filename) + " " + Go.string(header) + " " + Go.string(size) + " " + Go.string(_content) + " " + Go.string(_tmpfile) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new FileHeader(filename, header, size, _content, _tmpfile);
    }
    public function __set__(__tmp__) {
        this.filename = __tmp__.filename;
        this.header = __tmp__.header;
        this.size = __tmp__.size;
        this._content = __tmp__._content;
        this._tmpfile = __tmp__._tmpfile;
        return this;
    }
}
@:structInit class T_sectionReadCloser {
    public function close():Error {
        var _rc = this.__copy__();
        return ((null : stdgo.Error));
    }
    @:embedded
    public var sectionReader : Pointer<stdgo.io.Io.SectionReader> = new Pointer<stdgo.io.Io.SectionReader>().nil();
    public function new(?sectionReader:Pointer<stdgo.io.Io.SectionReader>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(sectionReader) + "}";
    }
    public function read(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return sectionReader.read(_0);
    public function readAt(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return sectionReader.readAt(_0, _1);
    public function seek(_offset:GoInt64, _whence:GoInt):{ var _0 : (GoInt64, GoInt) -> { var _0 : GoInt64; var _1 : stdgo.Error; }; var _1 : (GoInt64, GoInt) -> { var _0 : GoInt64; var _1 : stdgo.Error; }; } return sectionReader.seek(_0, _1);
    public function size():GoInt64 return sectionReader.size();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_sectionReadCloser(sectionReader);
    }
    public function __set__(__tmp__) {
        this.sectionReader = __tmp__.sectionReader;
        return this;
    }
}
@:structInit class Part {
    public function close():Error {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        stdgo.io.Io.copy(stdgo.io.Io.discard, _p.value);
        return ((null : stdgo.Error));
    }
    public function read(_d:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return _p.value._r.read(_d);
    }
    public function _populateHeaders():Error {
        var _bp = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _r:Pointer<stdgo.net.textproto.Textproto.Reader> = stdgo.net.textproto.Textproto.newReader(_bp.value._mr.value._bufReader);
        var __tmp__ = _r.value.readMIMEHeader(), _header:stdgo.net.textproto.Textproto.MIMEHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _bp.value.header = _header.__copy__();
        };
        return _err;
    }
    public function _parseContentDisposition():Void {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _v:GoString = _p.value.header.get("Content-Disposition");
        var _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = stdgo.mime.Mime.parseMediaType(_v);
            _p.value._disposition = __tmp__._0;
            _p.value._dispositionParams = __tmp__._1;
            _err = __tmp__._2;
        };
        if (_err != null) {
            _p.value._dispositionParams = _emptyParams;
        };
    }
    public function fileName():GoString {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if ((_p.value._dispositionParams == null || _p.value._dispositionParams.isNil())) {
            _p.value._parseContentDisposition();
        };
        var _filename:GoString = _p.value._dispositionParams["filename"];
        if (_filename == (("" : GoString))) {
            return "";
        };
        return stdgo.path.filepath.Filepath.base(_filename);
    }
    public function formName():GoString {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if ((_p.value._dispositionParams == null || _p.value._dispositionParams.isNil())) {
            _p.value._parseContentDisposition();
        };
        if (_p.value._disposition != (("form-data" : GoString))) {
            return "";
        };
        return _p.value._dispositionParams["name"];
    }
    public var header : stdgo.net.textproto.Textproto.MIMEHeader = ((null : stdgo.net.textproto.Textproto.MIMEHeader));
    public var _mr : Pointer<Reader> = new Pointer<Reader>().nil();
    public var _disposition : GoString = (("" : GoString));
    public var _dispositionParams : GoMap<GoString, GoString> = new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil();
    public var _r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var _n : GoInt = ((0 : GoInt));
    public var _total : GoInt64 = ((0 : GoInt64));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _readErr : stdgo.Error = ((null : stdgo.Error));
    public function new(?header:stdgo.net.textproto.Textproto.MIMEHeader, ?_mr:Pointer<Reader>, ?_disposition:GoString, ?_dispositionParams:GoMap<GoString, GoString>, ?_r:stdgo.io.Io.Reader, ?_n:GoInt, ?_total:GoInt64, ?_err:stdgo.Error, ?_readErr:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(header) + " " + Go.string(_mr) + " " + Go.string(_disposition) + " " + Go.string(_dispositionParams) + " " + Go.string(_r) + " " + Go.string(_n) + " " + Go.string(_total) + " " + Go.string(_err) + " " + Go.string(_readErr) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Part(header, _mr, _disposition, _dispositionParams, _r, _n, _total, _err, _readErr);
    }
    public function __set__(__tmp__) {
        this.header = __tmp__.header;
        this._mr = __tmp__._mr;
        this._disposition = __tmp__._disposition;
        this._dispositionParams = __tmp__._dispositionParams;
        this._r = __tmp__._r;
        this._n = __tmp__._n;
        this._total = __tmp__._total;
        this._err = __tmp__._err;
        this._readErr = __tmp__._readErr;
        return this;
    }
}
@:structInit class T_stickyErrorReader {
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _1:Error = ((null : stdgo.Error));
        if (_r.value._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _r.value._err };
        };
        {
            var __tmp__ = _r.value._r.read(_p);
            _n = __tmp__._0;
            _r.value._err = __tmp__._1;
        };
        return { _0 : _n, _1 : _r.value._err };
    }
    public var _r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_r:stdgo.io.Io.Reader, ?_err:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_r) + " " + Go.string(_err) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_stickyErrorReader(_r, _err);
    }
    public function __set__(__tmp__) {
        this._r = __tmp__._r;
        this._err = __tmp__._err;
        return this;
    }
}
@:structInit class T_partReader {
    public function read(_d:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _pr = this.__copy__();
        var _p:Pointer<Part> = _pr._p;
        var _br:Pointer<bufio.Bufio.Reader> = _p.value._mr.value._bufReader;
        while (_p.value._n == ((0 : GoInt)) && _p.value._err == null) {
            var __tmp__ = _br.value.peek(_br.value.buffered()), _peek:Slice<GoUInt8> = __tmp__._0, _:stdgo.Error = __tmp__._1;
            {
                var __tmp__ = _scanUntilBoundary(_peek, _p.value._mr.value._dashBoundary, _p.value._mr.value._nlDashBoundary, _p.value._total, _p.value._readErr);
                _p.value._n = __tmp__._0;
                _p.value._err = __tmp__._1;
            };
            if (_p.value._n == ((0 : GoInt)) && _p.value._err == null) {
                {
                    var __tmp__ = _br.value.peek(_peek.length + ((1 : GoInt)));
                    _p.value._readErr = __tmp__._1;
                };
                if (Go.toInterface(_p.value._readErr) == Go.toInterface(stdgo.io.Io.eof)) {
                    _p.value._readErr = stdgo.io.Io.errUnexpectedEOF;
                };
            };
        };
        if (_p.value._n == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : _p.value._err };
        };
        var _n:GoInt = _d.length;
        if (_n > _p.value._n) {
            _n = _p.value._n;
        };
        {
            var __tmp__ = _br.value.read(_d.__slice__(0, _n));
            _n = __tmp__._0;
        };
        _p.value._total = _p.value._total + (((_n : GoInt64)));
        _p.value._n = _p.value._n - (_n);
        if (_p.value._n == ((0 : GoInt))) {
            return { _0 : _n, _1 : _p.value._err };
        };
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    public var _p : Pointer<Part> = new Pointer<Part>().nil();
    public function new(?_p:Pointer<Part>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_p) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_partReader(_p);
    }
    public function __set__(__tmp__) {
        this._p = __tmp__._p;
        return this;
    }
}
@:structInit class Reader {
    public function _isBoundaryDelimiterLine(_line:Slice<GoByte>):Bool {
        var _mr = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _ret:Bool = false;
        if (!stdgo.bytes.Bytes.hasPrefix(_line, _mr.value._dashBoundary)) {
            return false;
        };
        var _rest:Slice<GoUInt8> = _line.__slice__(_mr.value._dashBoundary.length);
        _rest = _skipLWSPChar(_rest);
        if (_mr.value._partsRead == ((0 : GoInt)) && _rest.length == ((1 : GoInt)) && _rest[((0 : GoInt))] == (("\n".code : GoRune))) {
            _mr.value._nl = _mr.value._nl.__slice__(((1 : GoInt)));
            _mr.value._nlDashBoundary = _mr.value._nlDashBoundary.__slice__(((1 : GoInt)));
        };
        return stdgo.bytes.Bytes.equal(_rest, _mr.value._nl);
    }
    public function _isFinalBoundary(_line:Slice<GoByte>):Bool {
        var _mr = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!stdgo.bytes.Bytes.hasPrefix(_line, _mr.value._dashBoundaryDash)) {
            return false;
        };
        var _rest:Slice<GoUInt8> = _line.__slice__(_mr.value._dashBoundaryDash.length);
        _rest = _skipLWSPChar(_rest);
        return _rest.length == ((0 : GoInt)) || stdgo.bytes.Bytes.equal(_rest, _mr.value._nl);
    }
    public function _nextPart(_rawPart:Bool):{ var _0 : Pointer<Part>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if ((_r.value._currentPart != null && !_r.value._currentPart.isNil())) {
            _r.value._currentPart.value.close();
        };
        if (((_r.value._dashBoundary : GoString)) == (("--" : GoString))) {
            return { _0 : new Pointer<Part>().nil(), _1 : stdgo.fmt.Fmt.errorf("multipart: boundary is empty") };
        };
        var _expectNewPart:Bool = false;
        while (true) {
            var __tmp__ = _r.value._bufReader.value.readSlice((("\n".code : GoRune))), _line:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof) && _r.value._isFinalBoundary(_line)) {
                return { _0 : new Pointer<Part>().nil(), _1 : stdgo.io.Io.eof };
            };
            if (_err != null) {
                return { _0 : new Pointer<Part>().nil(), _1 : stdgo.fmt.Fmt.errorf("multipart: NextPart: %v", Go.toInterface(_err)) };
            };
            if (_r.value._isBoundaryDelimiterLine(_line)) {
                _r.value._partsRead++;
                var __tmp__ = _newPart(_r, _rawPart), _bp:Pointer<Part> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : new Pointer<Part>().nil(), _1 : _err };
                };
                _r.value._currentPart = _bp;
                return { _0 : _bp, _1 : ((null : stdgo.Error)) };
            };
            if (_r.value._isFinalBoundary(_line)) {
                return { _0 : new Pointer<Part>().nil(), _1 : stdgo.io.Io.eof };
            };
            if (_expectNewPart) {
                return { _0 : new Pointer<Part>().nil(), _1 : stdgo.fmt.Fmt.errorf("multipart: expecting a new Part; got line %q", Go.toInterface(((_line : GoString)))) };
            };
            if (_r.value._partsRead == ((0 : GoInt))) {
                continue;
            };
            if (stdgo.bytes.Bytes.equal(_line, _r.value._nl)) {
                _expectNewPart = true;
                continue;
            };
            return { _0 : new Pointer<Part>().nil(), _1 : stdgo.fmt.Fmt.errorf("multipart: unexpected line in Next(): %q", Go.toInterface(_line)) };
        };
    }
    public function nextRawPart():{ var _0 : Pointer<Part>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _r.value._nextPart(true);
    }
    public function nextPart():{ var _0 : Pointer<Part>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _r.value._nextPart(false);
    }
    public function _readForm(_maxMemory:GoInt64):{ var _0 : Pointer<Form>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var _0:Pointer<Form> = new Pointer<Form>().nil(), _err:Error = ((null : stdgo.Error));
        var _form:Pointer<Form> = Go.pointer(new Form(new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))), new GoMap<GoString, Slice<Pointer<FileHeader>>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("FileHeader", [], stdgo.reflect.Reflect.GoType.named("FileHeader", [], stdgo.reflect.Reflect.GoType.structType([{ name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "header", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("stdgo.net.textproto.Textproto.MIMEHeader", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))) }, { name : "size", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_content", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_tmpfile", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))))))))));
        try {
            {
                deferstack.unshift(() -> {
                    var a = function():Void {
                        if (_err != null) {
                            _form.value.removeAll();
                        };
                    };
                    a();
                });
            };
            var _maxValueBytes:GoInt64 = _maxMemory + (((((10 : GoUnTypedInt)) << ((20 : GoUnTypedInt))) : GoInt64));
            if (_maxValueBytes <= ((0 : GoInt64))) {
                if (_maxMemory < ((0 : GoInt64))) {
                    _maxValueBytes = ((0 : GoInt64));
                } else {
                    _maxValueBytes = stdgo.math.Math.maxInt64;
                };
            };
            while (true) {
                var __tmp__ = _r.value.nextPart(), _p:Pointer<Part> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
                    break;
                };
                if (_err != null) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : new Pointer<Form>().nil(), _1 : _err };
                    };
                };
                var _name:GoString = _p.value.formName();
                if (_name == (("" : GoString))) {
                    continue;
                };
                var _filename:GoString = _p.value.fileName();
                var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
                if (_filename == (("" : GoString))) {
                    var __tmp__ = stdgo.io.Io.copyN(Go.pointer(_b).value, _p.value, _maxValueBytes + ((1 : GoInt64))), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null && Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof)) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return { _0 : new Pointer<Form>().nil(), _1 : _err };
                        };
                    };
                    _maxValueBytes = _maxValueBytes - (_n);
                    if (_maxValueBytes < ((0 : GoInt64))) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return { _0 : new Pointer<Form>().nil(), _1 : errMessageTooLarge };
                        };
                    };
                    _form.value.value[_name] = _form.value.value[_name].__append__(_b.toString());
                    continue;
                };
                var _fh:Pointer<FileHeader> = Go.pointer((({ filename : _filename, header : _p.value.header.__copy__(), size : 0, _content : new Slice<GoUInt8>().nil(), _tmpfile : "" } : FileHeader)));
                var __tmp__ = stdgo.io.Io.copyN(Go.pointer(_b).value, _p.value, _maxMemory + ((1 : GoInt64))), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null && Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof)) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : new Pointer<Form>().nil(), _1 : _err };
                    };
                };
                if (_n > _maxMemory) {
                    var __tmp__ = stdgo.os.Os.createTemp("", "multipart-"), _file:Pointer<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return { _0 : new Pointer<Form>().nil(), _1 : _err };
                        };
                    };
                    var __tmp__ = stdgo.io.Io.copy(_file.value, stdgo.io.Io.multiReader(Go.pointer(_b).value, _p.value)), _size:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    {
                        var _cerr:stdgo.Error = _file.value.close();
                        if (_err == null) {
                            _err = _cerr;
                        };
                    };
                    if (_err != null) {
                        stdgo.os.Os.remove(_file.value.name());
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return { _0 : new Pointer<Form>().nil(), _1 : _err };
                        };
                    };
                    _fh.value._tmpfile = _file.value.name();
                    _fh.value.size = _size;
                } else {
                    _fh.value._content = _b.bytes();
                    _fh.value.size = ((_fh.value._content.length : GoInt64));
                    _maxMemory = _maxMemory - (_n);
                    _maxValueBytes = _maxValueBytes - (_n);
                };
                _form.value.file[_name] = _form.value.file[_name].__append__(_fh);
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : _form, _1 : ((null : stdgo.Error)) };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : _0, _1 : _err };
            };
        };
    }
    public function readForm(_maxMemory:GoInt64):{ var _0 : Pointer<Form>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _r.value._readForm(_maxMemory);
    }
    public var _bufReader : Pointer<bufio.Bufio.Reader> = new Pointer<bufio.Bufio.Reader>().nil();
    public var _currentPart : Pointer<Part> = new Pointer<Part>().nil();
    public var _partsRead : GoInt = ((0 : GoInt));
    public var _nl : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _nlDashBoundary : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _dashBoundaryDash : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _dashBoundary : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public function new(?_bufReader:Pointer<bufio.Bufio.Reader>, ?_currentPart:Pointer<Part>, ?_partsRead:GoInt, ?_nl:Slice<GoUInt8>, ?_nlDashBoundary:Slice<GoUInt8>, ?_dashBoundaryDash:Slice<GoUInt8>, ?_dashBoundary:Slice<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_bufReader) + " " + Go.string(_currentPart) + " " + Go.string(_partsRead) + " " + Go.string(_nl) + " " + Go.string(_nlDashBoundary) + " " + Go.string(_dashBoundaryDash) + " " + Go.string(_dashBoundary) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Reader(_bufReader, _currentPart, _partsRead, _nl, _nlDashBoundary, _dashBoundaryDash, _dashBoundary);
    }
    public function __set__(__tmp__) {
        this._bufReader = __tmp__._bufReader;
        this._currentPart = __tmp__._currentPart;
        this._partsRead = __tmp__._partsRead;
        this._nl = __tmp__._nl;
        this._nlDashBoundary = __tmp__._nlDashBoundary;
        this._dashBoundaryDash = __tmp__._dashBoundaryDash;
        this._dashBoundary = __tmp__._dashBoundary;
        return this;
    }
}
@:structInit class Writer {
    public function close():Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if ((_w.value._lastpart != null && !_w.value._lastpart.isNil())) {
            {
                var _err:stdgo.Error = _w.value._lastpart.value._close();
                if (_err != null) {
                    return _err;
                };
            };
            _w.value._lastpart = new Pointer<T_part>().nil();
        };
        var __tmp__ = stdgo.fmt.Fmt.fprintf(_w.value._w, "\r\n--%s--\r\n", Go.toInterface(_w.value._boundary)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    public function writeField(_fieldname:GoString, _value:GoString):Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _w.value.createFormField(_fieldname), _p:stdgo.io.Io.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = _p.write(((_value : Slice<GoByte>)));
            _err = __tmp__._1;
        };
        return _err;
    }
    public function createFormField(_fieldname:GoString):{ var _0 : stdgo.io.Io.Writer; var _1 : Error; } {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _h:stdgo.net.textproto.Textproto.MIMEHeader = new stdgo.net.textproto.Textproto.MIMEHeader(new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))))).__copy__();
        _h.set("Content-Disposition", stdgo.fmt.Fmt.sprintf("form-data; name=\"%s\"", Go.toInterface(_escapeQuotes(_fieldname))));
        return _w.value.createPart(_h.__copy__());
    }
    public function createFormFile(_fieldname:GoString, _filename:GoString):{ var _0 : stdgo.io.Io.Writer; var _1 : Error; } {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _h:stdgo.net.textproto.Textproto.MIMEHeader = new stdgo.net.textproto.Textproto.MIMEHeader(new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))))).__copy__();
        _h.set("Content-Disposition", stdgo.fmt.Fmt.sprintf("form-data; name=\"%s\"; filename=\"%s\"", Go.toInterface(_escapeQuotes(_fieldname)), Go.toInterface(_escapeQuotes(_filename))));
        _h.set("Content-Type", "application/octet-stream");
        return _w.value.createPart(_h.__copy__());
    }
    public function createPart(_header:stdgo.net.textproto.Textproto.MIMEHeader):{ var _0 : stdgo.io.Io.Writer; var _1 : Error; } {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if ((_w.value._lastpart != null && !_w.value._lastpart.isNil())) {
            {
                var _err:stdgo.Error = _w.value._lastpart.value._close();
                if (_err != null) {
                    return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
                };
            };
        };
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        if ((_w.value._lastpart != null && !_w.value._lastpart.isNil())) {
            stdgo.fmt.Fmt.fprintf(Go.pointer(_b).value, "\r\n--%s\r\n", Go.toInterface(_w.value._boundary));
        } else {
            stdgo.fmt.Fmt.fprintf(Go.pointer(_b).value, "--%s\r\n", Go.toInterface(_w.value._boundary));
        };
        var _keys:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]).setCap((((_header.__t__ == null ? 0 : _header.__t__.length) : GoInt)).toBasic());
        for (_k => _ in _header.__t__) {
            _keys = _keys.__append__(_k);
        };
        stdgo.sort.Sort.strings(_keys);
        for (_ => _k in _keys) {
            for (_ => _v in _header.__t__[_k]) {
                stdgo.fmt.Fmt.fprintf(Go.pointer(_b).value, "%s: %s\r\n", Go.toInterface(_k), Go.toInterface(_v));
            };
        };
        stdgo.fmt.Fmt.fprintf(Go.pointer(_b).value, "\r\n");
        var __tmp__ = stdgo.io.Io.copy(_w.value._w, Go.pointer(_b).value), _:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : stdgo.io.Io.Writer)), _1 : _err };
        };
        var _p:Pointer<T_part> = Go.pointer((({ _mw : _w, _closed : false, _we : ((null : stdgo.Error)) } : T_part)));
        _w.value._lastpart = _p;
        return { _0 : _p.value, _1 : ((null : stdgo.Error)) };
    }
    public function formDataContentType():GoString {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _b:GoString = _w.value._boundary;
        if (stdgo.strings.Strings.containsAny(_b, "()<>@,;:\"/[]?= ")) {
            _b = (("\"" : GoString)) + _b + (("\"" : GoString));
        };
        return (("multipart/form-data; boundary=" : GoString)) + _b;
    }
    public function setBoundary(_boundary:GoString):Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if ((_w.value._lastpart != null && !_w.value._lastpart.isNil())) {
            return stdgo.errors.Errors.new_("mime: SetBoundary called after write");
        };
        if (_boundary.length < ((1 : GoInt)) || _boundary.length > ((70 : GoInt))) {
            return stdgo.errors.Errors.new_("mime: invalid boundary length");
        };
        var _end:GoInt = _boundary.length - ((1 : GoInt));
        for (_i => _b in _boundary) {
            if ((("A".code : GoRune)) <= _b && _b <= (("Z".code : GoRune)) || (("a".code : GoRune)) <= _b && _b <= (("z".code : GoRune)) || (("0".code : GoRune)) <= _b && _b <= (("9".code : GoRune))) {
                continue;
            };
            if (_b == (("\'".code : GoRune)) || _b == (("(".code : GoRune)) || _b == ((")".code : GoRune)) || _b == (("+".code : GoRune)) || _b == (("_".code : GoRune)) || _b == ((",".code : GoRune)) || _b == (("-".code : GoRune)) || _b == ((".".code : GoRune)) || _b == (("/".code : GoRune)) || _b == ((":".code : GoRune)) || _b == (("=".code : GoRune)) || _b == (("?".code : GoRune))) {
                continue;
            } else if (_b == ((" ".code : GoRune))) {
                if (_i != _end) {
                    continue;
                };
            };
            return stdgo.errors.Errors.new_("mime: invalid boundary character");
        };
        _w.value._boundary = _boundary;
        return ((null : stdgo.Error));
    }
    public function boundary():GoString {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _w.value._boundary;
    }
    public var _w : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var _boundary : GoString = (("" : GoString));
    public var _lastpart : Pointer<T_part> = new Pointer<T_part>().nil();
    public function new(?_w:stdgo.io.Io.Writer, ?_boundary:GoString, ?_lastpart:Pointer<T_part>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_w) + " " + Go.string(_boundary) + " " + Go.string(_lastpart) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Writer(_w, _boundary, _lastpart);
    }
    public function __set__(__tmp__) {
        this._w = __tmp__._w;
        this._boundary = __tmp__._boundary;
        this._lastpart = __tmp__._lastpart;
        return this;
    }
}
@:structInit class T_part {
    public function write(_d:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_p.value._closed) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_("multipart: can\'t write to finished part") };
        };
        {
            var __tmp__ = _p.value._mw.value._w.write(_d);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _p.value._we = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    public function _close():Error {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _p.value._closed = true;
        return _p.value._we;
    }
    public var _mw : Pointer<Writer> = new Pointer<Writer>().nil();
    public var _closed : Bool = false;
    public var _we : stdgo.Error = ((null : stdgo.Error));
    public function new(?_mw:Pointer<Writer>, ?_closed:Bool, ?_we:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_mw) + " " + Go.string(_closed) + " " + Go.string(_we) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_part(_mw, _closed, _we);
    }
    public function __set__(__tmp__) {
        this._mw = __tmp__._mw;
        this._closed = __tmp__._closed;
        this._we = __tmp__._we;
        return this;
    }
}
var _emptyParams : GoMap<GoString, GoString> = new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))));
final _peekBufferSize : GoInt64 = ((4096 : GoUnTypedInt));
var errMessageTooLarge : stdgo.Error = stdgo.errors.Errors.new_("multipart: message too large");
var _quoteEscaper : Pointer<stdgo.strings.Strings.Replacer> = stdgo.strings.Strings.newReplacer("\\", "\\\\", "\"", "\\\"");
/**
    // NewReader creates a new multipart Reader reading from r using the
    // given MIME boundary.
    //
    // The boundary is usually obtained from the "boundary" parameter of
    // the message's "Content-Type" header. Use mime.ParseMediaType to
    // parse such headers.
**/
function newReader(_r:stdgo.io.Io.Reader, _boundary:GoString):Pointer<Reader> {
        var _b:Slice<GoUInt8> = ((((("\r\n--" : GoString)) + _boundary + (("--" : GoString))) : Slice<GoByte>));
        return Go.pointer((({ _bufReader : bufio.Bufio.newReaderSize(Go.pointer((({ _r : _r, _err : ((null : stdgo.Error)) } : T_stickyErrorReader))).value, _peekBufferSize), _nl : _b.__slice__(0, ((2 : GoInt))), _nlDashBoundary : _b.__slice__(0, _b.length - ((2 : GoInt))), _dashBoundaryDash : _b.__slice__(((2 : GoInt))), _dashBoundary : _b.__slice__(((2 : GoInt)), _b.length - ((2 : GoInt))), _currentPart : new Pointer<Part>().nil(), _partsRead : 0 } : Reader)));
    }
function _newPart(_mr:Pointer<Reader>, _rawPart:Bool):{ var _0 : Pointer<Part>; var _1 : Error; } {
        var _bp:Pointer<Part> = Go.pointer((({ header : new stdgo.net.textproto.Textproto.MIMEHeader(new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))))), _mr : _mr, _disposition : "", _dispositionParams : new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil(), _r : ((null : stdgo.io.Io.Reader)), _n : 0, _total : 0, _err : ((null : stdgo.Error)), _readErr : ((null : stdgo.Error)) } : Part)));
        {
            var _err:stdgo.Error = _bp.value._populateHeaders();
            if (_err != null) {
                return { _0 : new Pointer<Part>().nil(), _1 : _err };
            };
        };
        _bp.value._r = new T_partReader(_bp).__copy__();
        if (!_rawPart) {
            final _cte:GoString = "Content-Transfer-Encoding";
            if (stdgo.strings.Strings.equalFold(_bp.value.header.get(_cte), "quoted-printable")) {
                _bp.value.header.del(_cte);
                _bp.value._r = stdgo.mime.quotedprintable.Quotedprintable.newReader(_bp.value._r).value;
            };
        };
        return { _0 : _bp, _1 : ((null : stdgo.Error)) };
    }
/**
    // scanUntilBoundary scans buf to identify how much of it can be safely
    // returned as part of the Part body.
    // dashBoundary is "--boundary".
    // nlDashBoundary is "\r\n--boundary" or "\n--boundary", depending on what mode we are in.
    // The comments below (and the name) assume "\n--boundary", but either is accepted.
    // total is the number of bytes read out so far. If total == 0, then a leading "--boundary" is recognized.
    // readErr is the read error, if any, that followed reading the bytes in buf.
    // scanUntilBoundary returns the number of data bytes from buf that can be
    // returned as part of the Part body and also the error to return (if any)
    // once those data bytes are done.
**/
function _scanUntilBoundary(_buf:Slice<GoByte>, _dashBoundary:Slice<GoByte>, _nlDashBoundary:Slice<GoByte>, _total:GoInt64, _readErr:Error):{ var _0 : GoInt; var _1 : Error; } {
        if (_total == ((0 : GoInt64))) {
            if (stdgo.bytes.Bytes.hasPrefix(_buf, _dashBoundary)) {
                if (_matchAfterPrefix(_buf, _dashBoundary, _readErr) == -((1 : GoUnTypedInt))) {
                    return { _0 : _dashBoundary.length, _1 : ((null : stdgo.Error)) };
                } else if (_matchAfterPrefix(_buf, _dashBoundary, _readErr) == ((0 : GoInt))) {
                    return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
                } else if (_matchAfterPrefix(_buf, _dashBoundary, _readErr) == ((1 : GoUnTypedInt))) {
                    return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
                };
            };
            if (stdgo.bytes.Bytes.hasPrefix(_dashBoundary, _buf)) {
                return { _0 : ((0 : GoInt)), _1 : _readErr };
            };
        };
        {
            var _i:GoInt = stdgo.bytes.Bytes.index(_buf, _nlDashBoundary);
            if (_i >= ((0 : GoInt))) {
                if (_matchAfterPrefix(_buf.__slice__(_i), _nlDashBoundary, _readErr) == -((1 : GoUnTypedInt))) {
                    return { _0 : _i + _nlDashBoundary.length, _1 : ((null : stdgo.Error)) };
                } else if (_matchAfterPrefix(_buf.__slice__(_i), _nlDashBoundary, _readErr) == ((0 : GoInt))) {
                    return { _0 : _i, _1 : ((null : stdgo.Error)) };
                } else if (_matchAfterPrefix(_buf.__slice__(_i), _nlDashBoundary, _readErr) == ((1 : GoUnTypedInt))) {
                    return { _0 : _i, _1 : stdgo.io.Io.eof };
                };
            };
        };
        if (stdgo.bytes.Bytes.hasPrefix(_nlDashBoundary, _buf)) {
            return { _0 : ((0 : GoInt)), _1 : _readErr };
        };
        var _i:GoInt = stdgo.bytes.Bytes.lastIndexByte(_buf, _nlDashBoundary[((0 : GoInt))]);
        if (_i >= ((0 : GoInt)) && stdgo.bytes.Bytes.hasPrefix(_nlDashBoundary, _buf.__slice__(_i))) {
            return { _0 : _i, _1 : ((null : stdgo.Error)) };
        };
        return { _0 : _buf.length, _1 : _readErr };
    }
/**
    // matchAfterPrefix checks whether buf should be considered to match the boundary.
    // The prefix is "--boundary" or "\r\n--boundary" or "\n--boundary",
    // and the caller has verified already that bytes.HasPrefix(buf, prefix) is true.
    //
    // matchAfterPrefix returns +1 if the buffer does match the boundary,
    // meaning the prefix is followed by a dash, space, tab, cr, nl, or end of input.
    // It returns -1 if the buffer definitely does NOT match the boundary,
    // meaning the prefix is followed by some other character.
    // For example, "--foobar" does not match "--foo".
    // It returns 0 more input needs to be read to make the decision,
    // meaning that len(buf) == len(prefix) and readErr == nil.
**/
function _matchAfterPrefix(_buf:Slice<GoByte>, _prefix:Slice<GoByte>, _readErr:Error):GoInt {
        if (_buf.length == _prefix.length) {
            if (_readErr != null) {
                return ((1 : GoUnTypedInt));
            };
            return ((0 : GoInt));
        };
        var _c:GoUInt8 = _buf[_prefix.length];
        if (_c == ((" ".code : GoRune)) || _c == (("\t".code : GoRune)) || _c == (("\r".code : GoRune)) || _c == (("\n".code : GoRune)) || _c == (("-".code : GoRune))) {
            return ((1 : GoUnTypedInt));
        };
        return -((1 : GoUnTypedInt));
    }
/**
    // skipLWSPChar returns b with leading spaces and tabs removed.
    // RFC 822 defines:
    //    LWSP-char = SPACE / HTAB
**/
function _skipLWSPChar(_b:Slice<GoByte>):Slice<GoByte> {
        while (_b.length > ((0 : GoInt)) && (_b[((0 : GoInt))] == ((" ".code : GoRune)) || _b[((0 : GoInt))] == (("\t".code : GoRune)))) {
            _b = _b.__slice__(((1 : GoInt)));
        };
        return _b;
    }
/**
    // NewWriter returns a new multipart Writer with a random boundary,
    // writing to w.
**/
function newWriter(_w:stdgo.io.Io.Writer):Pointer<Writer> {
        return Go.pointer((({ _w : _w, _boundary : _randomBoundary(), _lastpart : new Pointer<T_part>().nil() } : Writer)));
    }
function _randomBoundary():GoString {
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 30) ((0 : GoUInt8))]);
        var __tmp__ = stdgo.io.Io.readFull(stdgo.crypto.rand.Rand.reader, _buf.__slice__(0)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw _err;
        };
        return stdgo.fmt.Fmt.sprintf("%x", Go.toInterface(_buf.__slice__(0)));
    }
function _escapeQuotes(_s:GoString):GoString {
        return _quoteEscaper.value.replace(_s);
    }
class Form_extension_fields {
    public function removeAll(__tmp__):Error return __tmp__.removeAll();
}
class FileHeader_extension_fields {
    public function open(__tmp__):{ var _0 : File; var _1 : Error; } return __tmp__.open();
}
class T_sectionReadCloser_extension_fields {
    public function close(__tmp__):Error return __tmp__.close();
}
class Part_extension_fields {
    public function formName(__tmp__):GoString return __tmp__.formName();
    public function fileName(__tmp__):GoString return __tmp__.fileName();
    public function _parseContentDisposition(__tmp__):Void __tmp__._parseContentDisposition();
    public function _populateHeaders(__tmp__):Error return __tmp__._populateHeaders();
    public function read(__tmp__, _d:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_d);
    public function close(__tmp__):Error return __tmp__.close();
}
class T_stickyErrorReader_extension_fields {
    public function read(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_p);
}
class T_partReader_extension_fields {
    public function read(__tmp__, _d:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_d);
}
class Reader_extension_fields {
    public function readForm(__tmp__, _maxMemory:GoInt64):{ var _0 : Pointer<Form>; var _1 : Error; } return __tmp__.readForm(_maxMemory);
    public function _readForm(__tmp__, _maxMemory:GoInt64):{ var _0 : Pointer<Form>; var _1 : Error; } return __tmp__._readForm(_maxMemory);
    public function nextPart(__tmp__):{ var _0 : Pointer<Part>; var _1 : Error; } return __tmp__.nextPart();
    public function nextRawPart(__tmp__):{ var _0 : Pointer<Part>; var _1 : Error; } return __tmp__.nextRawPart();
    public function _nextPart(__tmp__, _rawPart:Bool):{ var _0 : Pointer<Part>; var _1 : Error; } return __tmp__._nextPart(_rawPart);
    public function _isFinalBoundary(__tmp__, _line:Slice<GoByte>):Bool return __tmp__._isFinalBoundary(_line);
    public function _isBoundaryDelimiterLine(__tmp__, _line:Slice<GoByte>):Bool return __tmp__._isBoundaryDelimiterLine(_line);
}
class Writer_extension_fields {
    public function boundary(__tmp__):GoString return __tmp__.boundary();
    public function setBoundary(__tmp__, _boundary:GoString):Error return __tmp__.setBoundary(_boundary);
    public function formDataContentType(__tmp__):GoString return __tmp__.formDataContentType();
    public function createPart(__tmp__, _header:stdgo.net.textproto.Textproto.MIMEHeader):{ var _0 : stdgo.io.Io.Writer; var _1 : Error; } return __tmp__.createPart(_header);
    public function createFormFile(__tmp__, _fieldname:GoString, _filename:GoString):{ var _0 : stdgo.io.Io.Writer; var _1 : Error; } return __tmp__.createFormFile(_fieldname, _filename);
    public function createFormField(__tmp__, _fieldname:GoString):{ var _0 : stdgo.io.Io.Writer; var _1 : Error; } return __tmp__.createFormField(_fieldname);
    public function writeField(__tmp__, _fieldname:GoString, _value:GoString):Error return __tmp__.writeField(_fieldname, _value);
    public function close(__tmp__):Error return __tmp__.close();
}
class T_part_extension_fields {
    public function _close(__tmp__):Error return __tmp__._close();
    public function write(__tmp__, _d:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_d);
}
