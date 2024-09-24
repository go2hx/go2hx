package stdgo.mime.multipart;
var errMessageTooLarge(get, set) : stdgo.Error;
private function get_errMessageTooLarge():stdgo.Error return stdgo._internal.mime.multipart.Multipart_errMessageTooLarge.errMessageTooLarge;
private function set_errMessageTooLarge(v:stdgo.Error):stdgo.Error {
        stdgo._internal.mime.multipart.Multipart_errMessageTooLarge.errMessageTooLarge = v;
        return v;
    }
class File_static_extension {

}
typedef File = stdgo._internal.mime.multipart.Multipart_File.File;
@:structInit @:using(stdgo.mime.multipart.Multipart.Form_static_extension) abstract Form(stdgo._internal.mime.multipart.Multipart_Form.Form) from stdgo._internal.mime.multipart.Multipart_Form.Form to stdgo._internal.mime.multipart.Multipart_Form.Form {
    public var value(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>;
    function get_value():stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>> return this.value;
    function set_value(v:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>):stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>> {
        this.value = v;
        return v;
    }
    public var file(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>>;
    function get_file():stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>> return this.file;
    function set_file(v:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>>):stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>> {
        this.file = v;
        return v;
    }
    public function new(?value:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>, ?file:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>>) this = new stdgo._internal.mime.multipart.Multipart_Form.Form(value, file);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.mime.multipart.Multipart.FileHeader_static_extension) abstract FileHeader(stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader) from stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader to stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader {
    public var filename(get, set) : String;
    function get_filename():String return this.filename;
    function set_filename(v:String):String {
        this.filename = v;
        return v;
    }
    public var header(get, set) : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader;
    function get_header():stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader return this.header;
    function set_header(v:stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader):stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader {
        this.header = v;
        return v;
    }
    public var size(get, set) : haxe.Int64;
    function get_size():haxe.Int64 return this.size;
    function set_size(v:haxe.Int64):haxe.Int64 {
        this.size = v;
        return v;
    }
    public var _content(get, set) : Array<std.UInt>;
    function get__content():Array<std.UInt> return [for (i in this._content) i];
    function set__content(v:Array<std.UInt>):Array<std.UInt> {
        this._content = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _tmpfile(get, set) : String;
    function get__tmpfile():String return this._tmpfile;
    function set__tmpfile(v:String):String {
        this._tmpfile = v;
        return v;
    }
    public var _tmpoff(get, set) : haxe.Int64;
    function get__tmpoff():haxe.Int64 return this._tmpoff;
    function set__tmpoff(v:haxe.Int64):haxe.Int64 {
        this._tmpoff = v;
        return v;
    }
    public var _tmpshared(get, set) : Bool;
    function get__tmpshared():Bool return this._tmpshared;
    function set__tmpshared(v:Bool):Bool {
        this._tmpshared = v;
        return v;
    }
    public function new(?filename:String, ?header:stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader, ?size:haxe.Int64, ?_content:Array<std.UInt>, ?_tmpfile:String, ?_tmpoff:haxe.Int64, ?_tmpshared:Bool) this = new stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader(filename, header, size, ([for (i in _content) i] : stdgo.Slice<stdgo.GoUInt8>), _tmpfile, _tmpoff, _tmpshared);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.mime.multipart.Multipart.T_sectionReadCloser_static_extension) abstract T_sectionReadCloser(stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser) from stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser to stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser {
    public var sectionReader(get, set) : stdgo._internal.io.Io_SectionReader.SectionReader;
    function get_sectionReader():stdgo._internal.io.Io_SectionReader.SectionReader return this.sectionReader;
    function set_sectionReader(v:stdgo._internal.io.Io_SectionReader.SectionReader):stdgo._internal.io.Io_SectionReader.SectionReader {
        this.sectionReader = v;
        return v;
    }
    public var closer(get, set) : stdgo._internal.io.Io_Closer.Closer;
    function get_closer():stdgo._internal.io.Io_Closer.Closer return this.closer;
    function set_closer(v:stdgo._internal.io.Io_Closer.Closer):stdgo._internal.io.Io_Closer.Closer {
        this.closer = v;
        return v;
    }
    public function new(?sectionReader:stdgo._internal.io.Io_SectionReader.SectionReader, ?closer:stdgo._internal.io.Io_Closer.Closer) this = new stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser(sectionReader, closer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.mime.multipart.Multipart.Part_static_extension) abstract Part(stdgo._internal.mime.multipart.Multipart_Part.Part) from stdgo._internal.mime.multipart.Multipart_Part.Part to stdgo._internal.mime.multipart.Multipart_Part.Part {
    public var header(get, set) : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader;
    function get_header():stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader return this.header;
    function set_header(v:stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader):stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader {
        this.header = v;
        return v;
    }
    public var _mr(get, set) : Reader;
    function get__mr():Reader return this._mr;
    function set__mr(v:Reader):Reader {
        this._mr = v;
        return v;
    }
    public var _disposition(get, set) : String;
    function get__disposition():String return this._disposition;
    function set__disposition(v:String):String {
        this._disposition = v;
        return v;
    }
    public var _dispositionParams(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get__dispositionParams():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this._dispositionParams;
    function set__dispositionParams(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this._dispositionParams = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = v;
        return v;
    }
    public var _total(get, set) : haxe.Int64;
    function get__total():haxe.Int64 return this._total;
    function set__total(v:haxe.Int64):haxe.Int64 {
        this._total = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _readErr(get, set) : stdgo.Error;
    function get__readErr():stdgo.Error return this._readErr;
    function set__readErr(v:stdgo.Error):stdgo.Error {
        this._readErr = v;
        return v;
    }
    public function new(?header:stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader, ?_mr:Reader, ?_disposition:String, ?_dispositionParams:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_r:stdgo._internal.io.Io_Reader.Reader, ?_n:StdTypes.Int, ?_total:haxe.Int64, ?_err:stdgo.Error, ?_readErr:stdgo.Error) this = new stdgo._internal.mime.multipart.Multipart_Part.Part(header, _mr, _disposition, _dispositionParams, _r, _n, _total, _err, _readErr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.mime.multipart.Multipart.T_stickyErrorReader_static_extension) abstract T_stickyErrorReader(stdgo._internal.mime.multipart.Multipart_T_stickyErrorReader.T_stickyErrorReader) from stdgo._internal.mime.multipart.Multipart_T_stickyErrorReader.T_stickyErrorReader to stdgo._internal.mime.multipart.Multipart_T_stickyErrorReader.T_stickyErrorReader {
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_err:stdgo.Error) this = new stdgo._internal.mime.multipart.Multipart_T_stickyErrorReader.T_stickyErrorReader(_r, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.mime.multipart.Multipart.T_partReader_static_extension) abstract T_partReader(stdgo._internal.mime.multipart.Multipart_T_partReader.T_partReader) from stdgo._internal.mime.multipart.Multipart_T_partReader.T_partReader to stdgo._internal.mime.multipart.Multipart_T_partReader.T_partReader {
    public var _p(get, set) : Part;
    function get__p():Part return this._p;
    function set__p(v:Part):Part {
        this._p = v;
        return v;
    }
    public function new(?_p:Part) this = new stdgo._internal.mime.multipart.Multipart_T_partReader.T_partReader(_p);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.mime.multipart.Multipart.Reader_static_extension) abstract Reader(stdgo._internal.mime.multipart.Multipart_Reader.Reader) from stdgo._internal.mime.multipart.Multipart_Reader.Reader to stdgo._internal.mime.multipart.Multipart_Reader.Reader {
    public var _bufReader(get, set) : stdgo._internal.bufio.Bufio_Reader.Reader;
    function get__bufReader():stdgo._internal.bufio.Bufio_Reader.Reader return this._bufReader;
    function set__bufReader(v:stdgo._internal.bufio.Bufio_Reader.Reader):stdgo._internal.bufio.Bufio_Reader.Reader {
        this._bufReader = v;
        return v;
    }
    public var _tempDir(get, set) : String;
    function get__tempDir():String return this._tempDir;
    function set__tempDir(v:String):String {
        this._tempDir = v;
        return v;
    }
    public var _currentPart(get, set) : Part;
    function get__currentPart():Part return this._currentPart;
    function set__currentPart(v:Part):Part {
        this._currentPart = v;
        return v;
    }
    public var _partsRead(get, set) : StdTypes.Int;
    function get__partsRead():StdTypes.Int return this._partsRead;
    function set__partsRead(v:StdTypes.Int):StdTypes.Int {
        this._partsRead = v;
        return v;
    }
    public var _nl(get, set) : Array<std.UInt>;
    function get__nl():Array<std.UInt> return [for (i in this._nl) i];
    function set__nl(v:Array<std.UInt>):Array<std.UInt> {
        this._nl = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _nlDashBoundary(get, set) : Array<std.UInt>;
    function get__nlDashBoundary():Array<std.UInt> return [for (i in this._nlDashBoundary) i];
    function set__nlDashBoundary(v:Array<std.UInt>):Array<std.UInt> {
        this._nlDashBoundary = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _dashBoundaryDash(get, set) : Array<std.UInt>;
    function get__dashBoundaryDash():Array<std.UInt> return [for (i in this._dashBoundaryDash) i];
    function set__dashBoundaryDash(v:Array<std.UInt>):Array<std.UInt> {
        this._dashBoundaryDash = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _dashBoundary(get, set) : Array<std.UInt>;
    function get__dashBoundary():Array<std.UInt> return [for (i in this._dashBoundary) i];
    function set__dashBoundary(v:Array<std.UInt>):Array<std.UInt> {
        this._dashBoundary = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_bufReader:stdgo._internal.bufio.Bufio_Reader.Reader, ?_tempDir:String, ?_currentPart:Part, ?_partsRead:StdTypes.Int, ?_nl:Array<std.UInt>, ?_nlDashBoundary:Array<std.UInt>, ?_dashBoundaryDash:Array<std.UInt>, ?_dashBoundary:Array<std.UInt>) this = new stdgo._internal.mime.multipart.Multipart_Reader.Reader(_bufReader, _tempDir, _currentPart, _partsRead, ([for (i in _nl) i] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _nlDashBoundary) i] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _dashBoundaryDash) i] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _dashBoundary) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.mime.multipart.Multipart.Writer_static_extension) abstract Writer(stdgo._internal.mime.multipart.Multipart_Writer.Writer) from stdgo._internal.mime.multipart.Multipart_Writer.Writer to stdgo._internal.mime.multipart.Multipart_Writer.Writer {
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _boundary(get, set) : String;
    function get__boundary():String return this._boundary;
    function set__boundary(v:String):String {
        this._boundary = v;
        return v;
    }
    public var _lastpart(get, set) : T_part;
    function get__lastpart():T_part return this._lastpart;
    function set__lastpart(v:T_part):T_part {
        this._lastpart = v;
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer, ?_boundary:String, ?_lastpart:T_part) this = new stdgo._internal.mime.multipart.Multipart_Writer.Writer(_w, _boundary, _lastpart);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.mime.multipart.Multipart.T_part_static_extension) abstract T_part(stdgo._internal.mime.multipart.Multipart_T_part.T_part) from stdgo._internal.mime.multipart.Multipart_T_part.T_part to stdgo._internal.mime.multipart.Multipart_T_part.T_part {
    public var _mw(get, set) : Writer;
    function get__mw():Writer return this._mw;
    function set__mw(v:Writer):Writer {
        this._mw = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _we(get, set) : stdgo.Error;
    function get__we():stdgo.Error return this._we;
    function set__we(v:stdgo.Error):stdgo.Error {
        this._we = v;
        return v;
    }
    public function new(?_mw:Writer, ?_closed:Bool, ?_we:stdgo.Error) this = new stdgo._internal.mime.multipart.Multipart_T_part.T_part(_mw, _closed, _we);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Form_static_extension {
    static public function removeAll(_f:Form):stdgo.Error {
        return stdgo._internal.mime.multipart.Multipart_Form_static_extension.Form_static_extension.removeAll(_f);
    }
}
class FileHeader_static_extension {
    static public function open(_fh:FileHeader):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_FileHeader_static_extension.FileHeader_static_extension.open(_fh);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_sectionReadCloser_static_extension {
    static public function close(_rc:T_sectionReadCloser):stdgo.Error {
        return stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser_static_extension.T_sectionReadCloser_static_extension.close(_rc);
    }
    public static function size(__self__:stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser):haxe.Int64 {
        return stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser_static_extension.T_sectionReadCloser_static_extension.size(__self__);
    }
    public static function seek(__self__:stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser_static_extension.T_sectionReadCloser_static_extension.seek(__self__, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readAt(__self__:stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser_static_extension.T_sectionReadCloser_static_extension.readAt(__self__, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function read(__self__:stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser, _d:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = ([for (i in _d) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser_static_extension.T_sectionReadCloser_static_extension.read(__self__, _d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class Part_static_extension {
    static public function close(_p:Part):stdgo.Error {
        return stdgo._internal.mime.multipart.Multipart_Part_static_extension.Part_static_extension.close(_p);
    }
    static public function read(_p:Part, _d:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = ([for (i in _d) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_Part_static_extension.Part_static_extension.read(_p, _d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _populateHeaders(_p:Part, _maxMIMEHeaderSize:haxe.Int64, _maxMIMEHeaders:haxe.Int64):stdgo.Error {
        return stdgo._internal.mime.multipart.Multipart_Part_static_extension.Part_static_extension._populateHeaders(_p, _maxMIMEHeaderSize, _maxMIMEHeaders);
    }
    static public function _parseContentDisposition(_p:Part):Void {
        stdgo._internal.mime.multipart.Multipart_Part_static_extension.Part_static_extension._parseContentDisposition(_p);
    }
    static public function fileName(_p:Part):String {
        return stdgo._internal.mime.multipart.Multipart_Part_static_extension.Part_static_extension.fileName(_p);
    }
    static public function formName(_p:Part):String {
        return stdgo._internal.mime.multipart.Multipart_Part_static_extension.Part_static_extension.formName(_p);
    }
}
class T_stickyErrorReader_static_extension {
    static public function read(_r:T_stickyErrorReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_T_stickyErrorReader_static_extension.T_stickyErrorReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_partReader_static_extension {
    static public function read(_pr:T_partReader, _d:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = ([for (i in _d) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_T_partReader_static_extension.T_partReader_static_extension.read(_pr, _d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class Reader_static_extension {
    static public function _isBoundaryDelimiterLine(_r:Reader, _line:Array<std.UInt>):Bool {
        final _line = ([for (i in _line) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.mime.multipart.Multipart_Reader_static_extension.Reader_static_extension._isBoundaryDelimiterLine(_r, _line);
    }
    static public function _isFinalBoundary(_r:Reader, _line:Array<std.UInt>):Bool {
        final _line = ([for (i in _line) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.mime.multipart.Multipart_Reader_static_extension.Reader_static_extension._isFinalBoundary(_r, _line);
    }
    static public function _nextPart(_r:Reader, _rawPart:Bool, _maxMIMEHeaderSize:haxe.Int64, _maxMIMEHeaders:haxe.Int64):stdgo.Tuple<Part, stdgo.Error> {
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_Reader_static_extension.Reader_static_extension._nextPart(_r, _rawPart, _maxMIMEHeaderSize, _maxMIMEHeaders);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function nextRawPart(_r:Reader):stdgo.Tuple<Part, stdgo.Error> {
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_Reader_static_extension.Reader_static_extension.nextRawPart(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function nextPart(_r:Reader):stdgo.Tuple<Part, stdgo.Error> {
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_Reader_static_extension.Reader_static_extension.nextPart(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readForm(_r:Reader, _maxMemory:haxe.Int64):stdgo.Tuple<Form, stdgo.Error> {
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_Reader_static_extension.Reader_static_extension._readForm(_r, _maxMemory);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readForm(_r:Reader, _maxMemory:haxe.Int64):stdgo.Tuple<Form, stdgo.Error> {
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_Reader_static_extension.Reader_static_extension.readForm(_r, _maxMemory);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:structInit abstract T__readForm___localname___writerOnly_5240(stdgo._internal.mime.multipart.Multipart_T__readForm___localname___writerOnly_5240.T__readForm___localname___writerOnly_5240) from stdgo._internal.mime.multipart.Multipart_T__readForm___localname___writerOnly_5240.T__readForm___localname___writerOnly_5240 to stdgo._internal.mime.multipart.Multipart_T__readForm___localname___writerOnly_5240.T__readForm___localname___writerOnly_5240 {
    public var writer(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get_writer():stdgo._internal.io.Io_Writer.Writer return this.writer;
    function set_writer(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this.writer = v;
        return v;
    }
    public function new(?writer:stdgo._internal.io.Io_Writer.Writer) this = new stdgo._internal.mime.multipart.Multipart_T__readForm___localname___writerOnly_5240.T__readForm___localname___writerOnly_5240(writer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Writer_static_extension {
    static public function close(_w:Writer):stdgo.Error {
        return stdgo._internal.mime.multipart.Multipart_Writer_static_extension.Writer_static_extension.close(_w);
    }
    static public function writeField(_w:Writer, _fieldname:String, _value:String):stdgo.Error {
        return stdgo._internal.mime.multipart.Multipart_Writer_static_extension.Writer_static_extension.writeField(_w, _fieldname, _value);
    }
    static public function createFormField(_w:Writer, _fieldname:String):stdgo.Tuple<stdgo._internal.io.Io_Writer.Writer, stdgo.Error> {
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_Writer_static_extension.Writer_static_extension.createFormField(_w, _fieldname);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function createFormFile(_w:Writer, _fieldname:String, _filename:String):stdgo.Tuple<stdgo._internal.io.Io_Writer.Writer, stdgo.Error> {
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_Writer_static_extension.Writer_static_extension.createFormFile(_w, _fieldname, _filename);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function createPart(_w:Writer, _header:stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader):stdgo.Tuple<stdgo._internal.io.Io_Writer.Writer, stdgo.Error> {
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_Writer_static_extension.Writer_static_extension.createPart(_w, _header);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function formDataContentType(_w:Writer):String {
        return stdgo._internal.mime.multipart.Multipart_Writer_static_extension.Writer_static_extension.formDataContentType(_w);
    }
    static public function setBoundary(_w:Writer, _boundary:String):stdgo.Error {
        return stdgo._internal.mime.multipart.Multipart_Writer_static_extension.Writer_static_extension.setBoundary(_w, _boundary);
    }
    static public function boundary(_w:Writer):String {
        return stdgo._internal.mime.multipart.Multipart_Writer_static_extension.Writer_static_extension.boundary(_w);
    }
}
class T_part_static_extension {
    static public function write(_p:T_part, _d:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = ([for (i in _d) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_T_part_static_extension.T_part_static_extension.write(_p, _d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _close(_p:T_part):stdgo.Error {
        return stdgo._internal.mime.multipart.Multipart_T_part_static_extension.T_part_static_extension._close(_p);
    }
}
/**
    /|*
    Package multipart implements MIME multipart parsing, as defined in RFC
    2046.
    
    The implementation is sufficient for HTTP (RFC 2388) and the multipart
    bodies generated by popular browsers.
    
    # Limits
    
    To protect against malicious inputs, this package sets limits on the size
    of the MIME data it processes.
    
    Reader.NextPart and Reader.NextRawPart limit the number of headers in a
    part to 10000 and Reader.ReadForm limits the total number of headers in all
    FileHeaders to 10000.
    These limits may be adjusted with the GODEBUG=multipartmaxheaders=<values>
    setting.
    
    Reader.ReadForm further limits the number of parts in a form to 1000.
    This limit may be adjusted with the GODEBUG=multipartmaxparts=<value>
    setting.
    *|/
    
    Copyright 2023 The Go Authors. All rights reserved.
    Use of this source code is governed by a BSD-style
    license that can be found in the LICENSE file.
**/
class Multipart {
    /**
        NewReader creates a new multipart Reader reading from r using the
        given MIME boundary.
        
        The boundary is usually obtained from the "boundary" parameter of
        the message's "Content-Type" header. Use mime.ParseMediaType to
        parse such headers.
    **/
    static public function newReader(_r:stdgo._internal.io.Io_Reader.Reader, _boundary:String):Reader {
        return stdgo._internal.mime.multipart.Multipart_newReader.newReader(_r, _boundary);
    }
    /**
        NewWriter returns a new multipart Writer with a random boundary,
        writing to w.
    **/
    static public function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):Writer {
        return stdgo._internal.mime.multipart.Multipart_newWriter.newWriter(_w);
    }
}
