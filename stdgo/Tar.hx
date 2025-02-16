package stdgo;
final typeReg : StdTypes.Int = stdgo._internal.archive.tar.Tar_typereg.typeReg;
final typeRegA : StdTypes.Int = stdgo._internal.archive.tar.Tar_typerega.typeRegA;
final typeLink : StdTypes.Int = stdgo._internal.archive.tar.Tar_typelink.typeLink;
final typeSymlink : StdTypes.Int = stdgo._internal.archive.tar.Tar_typesymlink.typeSymlink;
final typeChar : StdTypes.Int = stdgo._internal.archive.tar.Tar_typechar.typeChar;
final typeBlock : StdTypes.Int = stdgo._internal.archive.tar.Tar_typeblock.typeBlock;
final typeDir : StdTypes.Int = stdgo._internal.archive.tar.Tar_typedir.typeDir;
final typeFifo : StdTypes.Int = stdgo._internal.archive.tar.Tar_typefifo.typeFifo;
final typeCont : StdTypes.Int = stdgo._internal.archive.tar.Tar_typecont.typeCont;
final typeXHeader : StdTypes.Int = stdgo._internal.archive.tar.Tar_typexheader.typeXHeader;
final typeXGlobalHeader : StdTypes.Int = stdgo._internal.archive.tar.Tar_typexglobalheader.typeXGlobalHeader;
final typeGNUSparse : StdTypes.Int = stdgo._internal.archive.tar.Tar_typegnusparse.typeGNUSparse;
final typeGNULongName : StdTypes.Int = stdgo._internal.archive.tar.Tar_typegnulongname.typeGNULongName;
final typeGNULongLink : StdTypes.Int = stdgo._internal.archive.tar.Tar_typegnulonglink.typeGNULongLink;
final formatUnknown = stdgo._internal.archive.tar.Tar_formatunknown.formatUnknown;
final formatUSTAR = stdgo._internal.archive.tar.Tar_formatustar.formatUSTAR;
final formatPAX = stdgo._internal.archive.tar.Tar_formatpax.formatPAX;
final formatGNU = stdgo._internal.archive.tar.Tar_formatgnu.formatGNU;
var errHeader(get, set) : stdgo.Error;
private function get_errHeader():stdgo.Error return stdgo._internal.archive.tar.Tar_errheader.errHeader;
private function set_errHeader(v:stdgo.Error):stdgo.Error {
        stdgo._internal.archive.tar.Tar_errheader.errHeader = (v : stdgo.Error);
        return v;
    }
var errWriteTooLong(get, set) : stdgo.Error;
private function get_errWriteTooLong():stdgo.Error return stdgo._internal.archive.tar.Tar_errwritetoolong.errWriteTooLong;
private function set_errWriteTooLong(v:stdgo.Error):stdgo.Error {
        stdgo._internal.archive.tar.Tar_errwritetoolong.errWriteTooLong = (v : stdgo.Error);
        return v;
    }
var errFieldTooLong(get, set) : stdgo.Error;
private function get_errFieldTooLong():stdgo.Error return stdgo._internal.archive.tar.Tar_errfieldtoolong.errFieldTooLong;
private function set_errFieldTooLong(v:stdgo.Error):stdgo.Error {
        stdgo._internal.archive.tar.Tar_errfieldtoolong.errFieldTooLong = (v : stdgo.Error);
        return v;
    }
var errWriteAfterClose(get, set) : stdgo.Error;
private function get_errWriteAfterClose():stdgo.Error return stdgo._internal.archive.tar.Tar_errwriteafterclose.errWriteAfterClose;
private function set_errWriteAfterClose(v:stdgo.Error):stdgo.Error {
        stdgo._internal.archive.tar.Tar_errwriteafterclose.errWriteAfterClose = (v : stdgo.Error);
        return v;
    }
var errInsecurePath(get, set) : stdgo.Error;
private function get_errInsecurePath():stdgo.Error return stdgo._internal.archive.tar.Tar_errinsecurepath.errInsecurePath;
private function set_errInsecurePath(v:stdgo.Error):stdgo.Error {
        stdgo._internal.archive.tar.Tar_errinsecurepath.errInsecurePath = (v : stdgo.Error);
        return v;
    }
@:dox(hide) class T_fileState_static_extension {
    static public function _physicalRemaining(t:stdgo._internal.archive.tar.Tar_t_filestate.T_fileState):haxe.Int64 {
        return stdgo._internal.archive.tar.Tar_t_filestate_static_extension.T_fileState_static_extension._physicalRemaining(t);
    }
    static public function _logicalRemaining(t:stdgo._internal.archive.tar.Tar_t_filestate.T_fileState):haxe.Int64 {
        return stdgo._internal.archive.tar.Tar_t_filestate_static_extension.T_fileState_static_extension._logicalRemaining(t);
    }
}
@:dox(hide) @:forward abstract T_fileState(stdgo._internal.archive.tar.Tar_t_filestate.T_fileState) from stdgo._internal.archive.tar.Tar_t_filestate.T_fileState to stdgo._internal.archive.tar.Tar_t_filestate.T_fileState {
    @:from
    static function fromHaxeInterface(x:{ function _logicalRemaining():haxe.Int64; function _physicalRemaining():haxe.Int64; }):T_fileState {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_fileState = { _logicalRemaining : () -> x._logicalRemaining(), _physicalRemaining : () -> x._physicalRemaining(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_fileReader_static_extension {
    static public function writeTo(t:stdgo._internal.archive.tar.Tar_t_filereader.T_fileReader, _0:stdgo._internal.io.Io_writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.tar.Tar_t_filereader_static_extension.T_fileReader_static_extension.writeTo(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) @:forward abstract T_fileReader(stdgo._internal.archive.tar.Tar_t_filereader.T_fileReader) from stdgo._internal.archive.tar.Tar_t_filereader.T_fileReader to stdgo._internal.archive.tar.Tar_t_filereader.T_fileReader {
    @:from
    static function fromHaxeInterface(x:{ function writeTo(_0:stdgo._internal.io.Io_writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error>; }):T_fileReader {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_fileReader = { writeTo : _0 -> x.writeTo(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_fileWriter_static_extension {
    static public function readFrom(t:stdgo._internal.archive.tar.Tar_t_filewriter.T_fileWriter, _0:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.tar.Tar_t_filewriter_static_extension.T_fileWriter_static_extension.readFrom(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) @:forward abstract T_fileWriter(stdgo._internal.archive.tar.Tar_t_filewriter.T_fileWriter) from stdgo._internal.archive.tar.Tar_t_filewriter.T_fileWriter to stdgo._internal.archive.tar.Tar_t_filewriter.T_fileWriter {
    @:from
    static function fromHaxeInterface(x:{ function readFrom(_0:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error>; }):T_fileWriter {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_fileWriter = { readFrom : _0 -> x.readFrom(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.archive.tar.Tar.Header_static_extension) abstract Header(stdgo._internal.archive.tar.Tar_header.Header) from stdgo._internal.archive.tar.Tar_header.Header to stdgo._internal.archive.tar.Tar_header.Header {
    public var typeflag(get, set) : std.UInt;
    function get_typeflag():std.UInt return this.typeflag;
    function set_typeflag(v:std.UInt):std.UInt {
        this.typeflag = (v : stdgo.GoUInt8);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var linkname(get, set) : String;
    function get_linkname():String return this.linkname;
    function set_linkname(v:String):String {
        this.linkname = (v : stdgo.GoString);
        return v;
    }
    public var size(get, set) : haxe.Int64;
    function get_size():haxe.Int64 return this.size;
    function set_size(v:haxe.Int64):haxe.Int64 {
        this.size = (v : stdgo.GoInt64);
        return v;
    }
    public var mode(get, set) : haxe.Int64;
    function get_mode():haxe.Int64 return this.mode;
    function set_mode(v:haxe.Int64):haxe.Int64 {
        this.mode = (v : stdgo.GoInt64);
        return v;
    }
    public var uid(get, set) : StdTypes.Int;
    function get_uid():StdTypes.Int return this.uid;
    function set_uid(v:StdTypes.Int):StdTypes.Int {
        this.uid = (v : stdgo.GoInt);
        return v;
    }
    public var gid(get, set) : StdTypes.Int;
    function get_gid():StdTypes.Int return this.gid;
    function set_gid(v:StdTypes.Int):StdTypes.Int {
        this.gid = (v : stdgo.GoInt);
        return v;
    }
    public var uname(get, set) : String;
    function get_uname():String return this.uname;
    function set_uname(v:String):String {
        this.uname = (v : stdgo.GoString);
        return v;
    }
    public var gname(get, set) : String;
    function get_gname():String return this.gname;
    function set_gname(v:String):String {
        this.gname = (v : stdgo.GoString);
        return v;
    }
    public var modTime(get, set) : stdgo._internal.time.Time_time.Time;
    function get_modTime():stdgo._internal.time.Time_time.Time return this.modTime;
    function set_modTime(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.modTime = v;
        return v;
    }
    public var accessTime(get, set) : stdgo._internal.time.Time_time.Time;
    function get_accessTime():stdgo._internal.time.Time_time.Time return this.accessTime;
    function set_accessTime(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.accessTime = v;
        return v;
    }
    public var changeTime(get, set) : stdgo._internal.time.Time_time.Time;
    function get_changeTime():stdgo._internal.time.Time_time.Time return this.changeTime;
    function set_changeTime(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.changeTime = v;
        return v;
    }
    public var devmajor(get, set) : haxe.Int64;
    function get_devmajor():haxe.Int64 return this.devmajor;
    function set_devmajor(v:haxe.Int64):haxe.Int64 {
        this.devmajor = (v : stdgo.GoInt64);
        return v;
    }
    public var devminor(get, set) : haxe.Int64;
    function get_devminor():haxe.Int64 return this.devminor;
    function set_devminor(v:haxe.Int64):haxe.Int64 {
        this.devminor = (v : stdgo.GoInt64);
        return v;
    }
    public var xattrs(get, set) : Map<String, String>;
    function get_xattrs():Map<String, String> return {
        final __obj__:Map<String, String> = [];
        for (key => value in this.xattrs) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_xattrs(v:Map<String, String>):Map<String, String> {
        this.xattrs = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return v;
    }
    public var pAXRecords(get, set) : Map<String, String>;
    function get_pAXRecords():Map<String, String> return {
        final __obj__:Map<String, String> = [];
        for (key => value in this.pAXRecords) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_pAXRecords(v:Map<String, String>):Map<String, String> {
        this.pAXRecords = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return v;
    }
    public var format(get, set) : Format;
    function get_format():Format return this.format;
    function set_format(v:Format):Format {
        this.format = v;
        return v;
    }
    public function new(?typeflag:std.UInt, ?name:String, ?linkname:String, ?size:haxe.Int64, ?mode:haxe.Int64, ?uid:StdTypes.Int, ?gid:StdTypes.Int, ?uname:String, ?gname:String, ?modTime:stdgo._internal.time.Time_time.Time, ?accessTime:stdgo._internal.time.Time_time.Time, ?changeTime:stdgo._internal.time.Time_time.Time, ?devmajor:haxe.Int64, ?devminor:haxe.Int64, ?xattrs:Map<String, String>, ?pAXRecords:Map<String, String>, ?format:Format) this = new stdgo._internal.archive.tar.Tar_header.Header(
(typeflag : stdgo.GoUInt8),
(name : stdgo.GoString),
(linkname : stdgo.GoString),
(size : stdgo.GoInt64),
(mode : stdgo.GoInt64),
(uid : stdgo.GoInt),
(gid : stdgo.GoInt),
(uname : stdgo.GoString),
(gname : stdgo.GoString),
modTime,
accessTime,
changeTime,
(devmajor : stdgo.GoInt64),
(devminor : stdgo.GoInt64),
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
        for (key => value in xattrs) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
        for (key => value in pAXRecords) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
        };
        __obj__;
    },
format);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.tar.Tar.T_sparseEntry_static_extension) @:dox(hide) abstract T_sparseEntry(stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry) from stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry to stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry {
    public var offset(get, set) : haxe.Int64;
    function get_offset():haxe.Int64 return this.offset;
    function set_offset(v:haxe.Int64):haxe.Int64 {
        this.offset = (v : stdgo.GoInt64);
        return v;
    }
    public var length_(get, set) : haxe.Int64;
    function get_length_():haxe.Int64 return this.length_;
    function set_length_(v:haxe.Int64):haxe.Int64 {
        this.length_ = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?offset:haxe.Int64, ?length_:haxe.Int64) this = new stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry((offset : stdgo.GoInt64), (length_ : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.tar.Tar.T_headerFileInfo_static_extension) @:dox(hide) abstract T_headerFileInfo(stdgo._internal.archive.tar.Tar_t_headerfileinfo.T_headerFileInfo) from stdgo._internal.archive.tar.Tar_t_headerfileinfo.T_headerFileInfo to stdgo._internal.archive.tar.Tar_t_headerfileinfo.T_headerFileInfo {
    public var _h(get, set) : Header;
    function get__h():Header return this._h;
    function set__h(v:Header):Header {
        this._h = (v : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>);
        return v;
    }
    public function new(?_h:Header) this = new stdgo._internal.archive.tar.Tar_t_headerfileinfo.T_headerFileInfo((_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.tar.Tar.Reader_static_extension) abstract Reader(stdgo._internal.archive.tar.Tar_reader.Reader) from stdgo._internal.archive.tar.Tar_reader.Reader to stdgo._internal.archive.tar.Tar_reader.Reader {
    public var _r(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get__r():stdgo._internal.io.Io_reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this._r = v;
        return v;
    }
    public var _pad(get, set) : haxe.Int64;
    function get__pad():haxe.Int64 return this._pad;
    function set__pad(v:haxe.Int64):haxe.Int64 {
        this._pad = (v : stdgo.GoInt64);
        return v;
    }
    public var _curr(get, set) : T_fileReader;
    function get__curr():T_fileReader return this._curr;
    function set__curr(v:T_fileReader):T_fileReader {
        this._curr = v;
        return v;
    }
    public var _blk(get, set) : T_block;
    function get__blk():T_block return this._blk;
    function set__blk(v:T_block):T_block {
        this._blk = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_reader.Reader, ?_pad:haxe.Int64, ?_curr:T_fileReader, ?_blk:T_block, ?_err:stdgo.Error) this = new stdgo._internal.archive.tar.Tar_reader.Reader(_r, (_pad : stdgo.GoInt64), _curr, _blk, (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.tar.Tar.T_regFileReader_static_extension) @:dox(hide) abstract T_regFileReader(stdgo._internal.archive.tar.Tar_t_regfilereader.T_regFileReader) from stdgo._internal.archive.tar.Tar_t_regfilereader.T_regFileReader to stdgo._internal.archive.tar.Tar_t_regfilereader.T_regFileReader {
    public var _r(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get__r():stdgo._internal.io.Io_reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this._r = v;
        return v;
    }
    public var _nb(get, set) : haxe.Int64;
    function get__nb():haxe.Int64 return this._nb;
    function set__nb(v:haxe.Int64):haxe.Int64 {
        this._nb = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_reader.Reader, ?_nb:haxe.Int64) this = new stdgo._internal.archive.tar.Tar_t_regfilereader.T_regFileReader(_r, (_nb : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.tar.Tar.T_sparseFileReader_static_extension) @:dox(hide) abstract T_sparseFileReader(stdgo._internal.archive.tar.Tar_t_sparsefilereader.T_sparseFileReader) from stdgo._internal.archive.tar.Tar_t_sparsefilereader.T_sparseFileReader to stdgo._internal.archive.tar.Tar_t_sparsefilereader.T_sparseFileReader {
    public var _fr(get, set) : T_fileReader;
    function get__fr():T_fileReader return this._fr;
    function set__fr(v:T_fileReader):T_fileReader {
        this._fr = v;
        return v;
    }
    public var _sp(get, set) : T_sparseHoles;
    function get__sp():T_sparseHoles return this._sp;
    function set__sp(v:T_sparseHoles):T_sparseHoles {
        this._sp = v;
        return v;
    }
    public var _pos(get, set) : haxe.Int64;
    function get__pos():haxe.Int64 return this._pos;
    function set__pos(v:haxe.Int64):haxe.Int64 {
        this._pos = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_fr:T_fileReader, ?_sp:T_sparseHoles, ?_pos:haxe.Int64) this = new stdgo._internal.archive.tar.Tar_t_sparsefilereader.T_sparseFileReader(_fr, _sp, (_pos : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.tar.Tar.T_zeroReader_static_extension) @:dox(hide) abstract T_zeroReader(stdgo._internal.archive.tar.Tar_t_zeroreader.T_zeroReader) from stdgo._internal.archive.tar.Tar_t_zeroreader.T_zeroReader to stdgo._internal.archive.tar.Tar_t_zeroreader.T_zeroReader {
    public function new() this = new stdgo._internal.archive.tar.Tar_t_zeroreader.T_zeroReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.tar.Tar.T_parser_static_extension) @:dox(hide) abstract T_parser(stdgo._internal.archive.tar.Tar_t_parser.T_parser) from stdgo._internal.archive.tar.Tar_t_parser.T_parser to stdgo._internal.archive.tar.Tar_t_parser.T_parser {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.archive.tar.Tar_t_parser.T_parser((_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.tar.Tar.T_formatter_static_extension) @:dox(hide) abstract T_formatter(stdgo._internal.archive.tar.Tar_t_formatter.T_formatter) from stdgo._internal.archive.tar.Tar_t_formatter.T_formatter to stdgo._internal.archive.tar.Tar_t_formatter.T_formatter {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.archive.tar.Tar_t_formatter.T_formatter((_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.tar.Tar.Writer_static_extension) abstract Writer(stdgo._internal.archive.tar.Tar_writer.Writer) from stdgo._internal.archive.tar.Tar_writer.Writer to stdgo._internal.archive.tar.Tar_writer.Writer {
    public var _w(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__w():stdgo._internal.io.Io_writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._w = v;
        return v;
    }
    public var _pad(get, set) : haxe.Int64;
    function get__pad():haxe.Int64 return this._pad;
    function set__pad(v:haxe.Int64):haxe.Int64 {
        this._pad = (v : stdgo.GoInt64);
        return v;
    }
    public var _curr(get, set) : T_fileWriter;
    function get__curr():T_fileWriter return this._curr;
    function set__curr(v:T_fileWriter):T_fileWriter {
        this._curr = v;
        return v;
    }
    public var _hdr(get, set) : Header;
    function get__hdr():Header return this._hdr;
    function set__hdr(v:Header):Header {
        this._hdr = v;
        return v;
    }
    public var _blk(get, set) : T_block;
    function get__blk():T_block return this._blk;
    function set__blk(v:T_block):T_block {
        this._blk = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_writer.Writer, ?_pad:haxe.Int64, ?_curr:T_fileWriter, ?_hdr:Header, ?_blk:T_block, ?_err:stdgo.Error) this = new stdgo._internal.archive.tar.Tar_writer.Writer(_w, (_pad : stdgo.GoInt64), _curr, _hdr, _blk, (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.tar.Tar.T_regFileWriter_static_extension) @:dox(hide) abstract T_regFileWriter(stdgo._internal.archive.tar.Tar_t_regfilewriter.T_regFileWriter) from stdgo._internal.archive.tar.Tar_t_regfilewriter.T_regFileWriter to stdgo._internal.archive.tar.Tar_t_regfilewriter.T_regFileWriter {
    public var _w(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__w():stdgo._internal.io.Io_writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._w = v;
        return v;
    }
    public var _nb(get, set) : haxe.Int64;
    function get__nb():haxe.Int64 return this._nb;
    function set__nb(v:haxe.Int64):haxe.Int64 {
        this._nb = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_writer.Writer, ?_nb:haxe.Int64) this = new stdgo._internal.archive.tar.Tar_t_regfilewriter.T_regFileWriter(_w, (_nb : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.tar.Tar.T_sparseFileWriter_static_extension) @:dox(hide) abstract T_sparseFileWriter(stdgo._internal.archive.tar.Tar_t_sparsefilewriter.T_sparseFileWriter) from stdgo._internal.archive.tar.Tar_t_sparsefilewriter.T_sparseFileWriter to stdgo._internal.archive.tar.Tar_t_sparsefilewriter.T_sparseFileWriter {
    public var _fw(get, set) : T_fileWriter;
    function get__fw():T_fileWriter return this._fw;
    function set__fw(v:T_fileWriter):T_fileWriter {
        this._fw = v;
        return v;
    }
    public var _sp(get, set) : T_sparseDatas;
    function get__sp():T_sparseDatas return this._sp;
    function set__sp(v:T_sparseDatas):T_sparseDatas {
        this._sp = v;
        return v;
    }
    public var _pos(get, set) : haxe.Int64;
    function get__pos():haxe.Int64 return this._pos;
    function set__pos(v:haxe.Int64):haxe.Int64 {
        this._pos = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_fw:T_fileWriter, ?_sp:T_sparseDatas, ?_pos:haxe.Int64) this = new stdgo._internal.archive.tar.Tar_t_sparsefilewriter.T_sparseFileWriter(_fw, _sp, (_pos : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.archive.tar.Tar.T_zeroWriter_static_extension) @:dox(hide) abstract T_zeroWriter(stdgo._internal.archive.tar.Tar_t_zerowriter.T_zeroWriter) from stdgo._internal.archive.tar.Tar_t_zerowriter.T_zeroWriter to stdgo._internal.archive.tar.Tar_t_zerowriter.T_zeroWriter {
    public function new() this = new stdgo._internal.archive.tar.Tar_t_zerowriter.T_zeroWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.archive.tar.Tar_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {
    public static function read(__self__:stdgo._internal.archive.tar.Tar_t__struct_0.T__struct_0, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_t__struct_0_static_extension.T__struct_0_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T__struct_0 = stdgo._internal.archive.tar.Tar_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_1Pointer = stdgo._internal.archive.tar.Tar_t__struct_1pointer.T__struct_1Pointer;
@:dox(hide) class T__struct_1_static_extension {
    public static function write(__self__:stdgo._internal.archive.tar.Tar_t__struct_1.T__struct_1, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_t__struct_1_static_extension.T__struct_1_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T__struct_1 = stdgo._internal.archive.tar.Tar_t__struct_1.T__struct_1;
@:dox(hide) typedef T_headerError = stdgo._internal.archive.tar.Tar_t_headererror.T_headerError;
@:dox(hide) typedef T_sparseDatas = stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas;
@:dox(hide) typedef T_sparseHoles = stdgo._internal.archive.tar.Tar_t_sparseholes.T_sparseHoles;
typedef Format = stdgo._internal.archive.tar.Tar_format.Format;
@:dox(hide) typedef T_block = stdgo._internal.archive.tar.Tar_t_block.T_block;
@:dox(hide) typedef T_headerV7 = stdgo._internal.archive.tar.Tar_t_headerv7.T_headerV7;
@:dox(hide) typedef T_headerGNU = stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU;
@:dox(hide) typedef T_headerSTAR = stdgo._internal.archive.tar.Tar_t_headerstar.T_headerSTAR;
@:dox(hide) typedef T_headerUSTAR = stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR;
@:dox(hide) typedef T_sparseArray = stdgo._internal.archive.tar.Tar_t_sparsearray.T_sparseArray;
@:dox(hide) typedef T_sparseElem = stdgo._internal.archive.tar.Tar_t_sparseelem.T_sparseElem;
@:dox(hide) typedef T_stringFormatter = stdgo._internal.archive.tar.Tar_t_stringformatter.T_stringFormatter;
@:dox(hide) typedef T_numberFormatter = stdgo._internal.archive.tar.Tar_t_numberformatter.T_numberFormatter;
typedef HeaderPointer = stdgo._internal.archive.tar.Tar_headerpointer.HeaderPointer;
class Header_static_extension {
    static public function fileInfo(_h:Header):stdgo._internal.io.fs.Fs_fileinfo.FileInfo {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>);
        return stdgo._internal.archive.tar.Tar_header_static_extension.Header_static_extension.fileInfo(_h);
    }
    static public function _allowedFormats(_h:Header):stdgo.Tuple.Tuple3<Format, Map<String, String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.tar.Tar_header_static_extension.Header_static_extension._allowedFormats(_h);
            { _0 : obj._0, _1 : {
                final __obj__:Map<String, String> = [];
                for (key => value in obj._1) {
                    __obj__[key] = value;
                };
                __obj__;
            }, _2 : obj._2 };
        };
    }
}
@:dox(hide) typedef T_sparseEntryPointer = stdgo._internal.archive.tar.Tar_t_sparseentrypointer.T_sparseEntryPointer;
@:dox(hide) class T_sparseEntry_static_extension {
    static public function _endOffset(_s:T_sparseEntry):haxe.Int64 {
        return stdgo._internal.archive.tar.Tar_t_sparseentry_static_extension.T_sparseEntry_static_extension._endOffset(_s);
    }
}
@:dox(hide) typedef T_headerFileInfoPointer = stdgo._internal.archive.tar.Tar_t_headerfileinfopointer.T_headerFileInfoPointer;
@:dox(hide) class T_headerFileInfo_static_extension {
    static public function string(_fi:T_headerFileInfo):String {
        return stdgo._internal.archive.tar.Tar_t_headerfileinfo_static_extension.T_headerFileInfo_static_extension.string(_fi);
    }
    static public function mode(_fi:T_headerFileInfo):stdgo._internal.io.fs.Fs_filemode.FileMode {
        return stdgo._internal.archive.tar.Tar_t_headerfileinfo_static_extension.T_headerFileInfo_static_extension.mode(_fi);
    }
    static public function name(_fi:T_headerFileInfo):String {
        return stdgo._internal.archive.tar.Tar_t_headerfileinfo_static_extension.T_headerFileInfo_static_extension.name(_fi);
    }
    static public function sys(_fi:T_headerFileInfo):stdgo.AnyInterface {
        return stdgo._internal.archive.tar.Tar_t_headerfileinfo_static_extension.T_headerFileInfo_static_extension.sys(_fi);
    }
    static public function modTime(_fi:T_headerFileInfo):stdgo._internal.time.Time_time.Time {
        return stdgo._internal.archive.tar.Tar_t_headerfileinfo_static_extension.T_headerFileInfo_static_extension.modTime(_fi);
    }
    static public function isDir(_fi:T_headerFileInfo):Bool {
        return stdgo._internal.archive.tar.Tar_t_headerfileinfo_static_extension.T_headerFileInfo_static_extension.isDir(_fi);
    }
    static public function size(_fi:T_headerFileInfo):haxe.Int64 {
        return stdgo._internal.archive.tar.Tar_t_headerfileinfo_static_extension.T_headerFileInfo_static_extension.size(_fi);
    }
}
typedef ReaderPointer = stdgo._internal.archive.tar.Tar_readerpointer.ReaderPointer;
class Reader_static_extension {
    static public function _writeTo(_tr:Reader, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _tr = (_tr : stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_reader_static_extension.Reader_static_extension._writeTo(_tr, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_tr:Reader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _tr = (_tr : stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_reader_static_extension.Reader_static_extension.read(_tr, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readOldGNUSparseMap(_tr:Reader, _hdr:Header, _blk:T_block):stdgo.Tuple<T_sparseDatas, stdgo.Error> {
        final _tr = (_tr : stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader>);
        final _hdr = (_hdr : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>);
        final _blk = (_blk : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_reader_static_extension.Reader_static_extension._readOldGNUSparseMap(_tr, _hdr, _blk);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readHeader(_tr:Reader):stdgo.Tuple.Tuple3<Header, T_block, stdgo.Error> {
        final _tr = (_tr : stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_reader_static_extension.Reader_static_extension._readHeader(_tr);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _readGNUSparsePAXHeaders(_tr:Reader, _hdr:Header):stdgo.Tuple<T_sparseDatas, stdgo.Error> {
        final _tr = (_tr : stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader>);
        final _hdr = (_hdr : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_reader_static_extension.Reader_static_extension._readGNUSparsePAXHeaders(_tr, _hdr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _handleSparseFile(_tr:Reader, _hdr:Header, _rawHdr:T_block):stdgo.Error {
        final _tr = (_tr : stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader>);
        final _hdr = (_hdr : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>);
        final _rawHdr = (_rawHdr : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>);
        return stdgo._internal.archive.tar.Tar_reader_static_extension.Reader_static_extension._handleSparseFile(_tr, _hdr, _rawHdr);
    }
    static public function _handleRegularFile(_tr:Reader, _hdr:Header):stdgo.Error {
        final _tr = (_tr : stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader>);
        final _hdr = (_hdr : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>);
        return stdgo._internal.archive.tar.Tar_reader_static_extension.Reader_static_extension._handleRegularFile(_tr, _hdr);
    }
    static public function _next(_tr:Reader):stdgo.Tuple<Header, stdgo.Error> {
        final _tr = (_tr : stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_reader_static_extension.Reader_static_extension._next(_tr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function next(_tr:Reader):stdgo.Tuple<Header, stdgo.Error> {
        final _tr = (_tr : stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_reader_static_extension.Reader_static_extension.next(_tr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_regFileReaderPointer = stdgo._internal.archive.tar.Tar_t_regfilereaderpointer.T_regFileReaderPointer;
@:dox(hide) class T_regFileReader_static_extension {
    static public function _physicalRemaining(_fr:T_regFileReader):haxe.Int64 {
        return stdgo._internal.archive.tar.Tar_t_regfilereader_static_extension.T_regFileReader_static_extension._physicalRemaining(_fr);
    }
    static public function _logicalRemaining(_fr:T_regFileReader):haxe.Int64 {
        return stdgo._internal.archive.tar.Tar_t_regfilereader_static_extension.T_regFileReader_static_extension._logicalRemaining(_fr);
    }
    static public function writeTo(_fr:T_regFileReader, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _fr = (_fr : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_regfilereader.T_regFileReader>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_t_regfilereader_static_extension.T_regFileReader_static_extension.writeTo(_fr, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_fr:T_regFileReader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fr = (_fr : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_regfilereader.T_regFileReader>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_t_regfilereader_static_extension.T_regFileReader_static_extension.read(_fr, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_sparseFileReaderPointer = stdgo._internal.archive.tar.Tar_t_sparsefilereaderpointer.T_sparseFileReaderPointer;
@:dox(hide) class T_sparseFileReader_static_extension {
    static public function _physicalRemaining(_sr:T_sparseFileReader):haxe.Int64 {
        return stdgo._internal.archive.tar.Tar_t_sparsefilereader_static_extension.T_sparseFileReader_static_extension._physicalRemaining(_sr);
    }
    static public function _logicalRemaining(_sr:T_sparseFileReader):haxe.Int64 {
        return stdgo._internal.archive.tar.Tar_t_sparsefilereader_static_extension.T_sparseFileReader_static_extension._logicalRemaining(_sr);
    }
    static public function writeTo(_sr:T_sparseFileReader, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _sr = (_sr : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_sparsefilereader.T_sparseFileReader>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_t_sparsefilereader_static_extension.T_sparseFileReader_static_extension.writeTo(_sr, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_sr:T_sparseFileReader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _sr = (_sr : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_sparsefilereader.T_sparseFileReader>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_t_sparsefilereader_static_extension.T_sparseFileReader_static_extension.read(_sr, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_zeroReaderPointer = stdgo._internal.archive.tar.Tar_t_zeroreaderpointer.T_zeroReaderPointer;
@:dox(hide) class T_zeroReader_static_extension {
    static public function read(_:T_zeroReader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_t_zeroreader_static_extension.T_zeroReader_static_extension.read(_, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_parserPointer = stdgo._internal.archive.tar.Tar_t_parserpointer.T_parserPointer;
@:dox(hide) class T_parser_static_extension {
    static public function _parseOctal(_p:T_parser, _b:Array<std.UInt>):haxe.Int64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_parser.T_parser>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.archive.tar.Tar_t_parser_static_extension.T_parser_static_extension._parseOctal(_p, _b);
    }
    static public function _parseNumeric(_p:T_parser, _b:Array<std.UInt>):haxe.Int64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_parser.T_parser>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.archive.tar.Tar_t_parser_static_extension.T_parser_static_extension._parseNumeric(_p, _b);
    }
    static public function _parseString(_:T_parser, _b:Array<std.UInt>):String {
        final _ = (_ : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_parser.T_parser>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.archive.tar.Tar_t_parser_static_extension.T_parser_static_extension._parseString(_, _b);
    }
}
@:dox(hide) typedef T_formatterPointer = stdgo._internal.archive.tar.Tar_t_formatterpointer.T_formatterPointer;
@:dox(hide) class T_formatter_static_extension {
    static public function _formatOctal(_f:T_formatter, _b:Array<std.UInt>, _x:haxe.Int64):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_formatter.T_formatter>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _x = (_x : stdgo.GoInt64);
        stdgo._internal.archive.tar.Tar_t_formatter_static_extension.T_formatter_static_extension._formatOctal(_f, _b, _x);
    }
    static public function _formatNumeric(_f:T_formatter, _b:Array<std.UInt>, _x:haxe.Int64):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_formatter.T_formatter>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _x = (_x : stdgo.GoInt64);
        stdgo._internal.archive.tar.Tar_t_formatter_static_extension.T_formatter_static_extension._formatNumeric(_f, _b, _x);
    }
    static public function _formatString(_f:T_formatter, _b:Array<std.UInt>, _s:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_formatter.T_formatter>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.archive.tar.Tar_t_formatter_static_extension.T_formatter_static_extension._formatString(_f, _b, _s);
    }
}
typedef WriterPointer = stdgo._internal.archive.tar.Tar_writerpointer.WriterPointer;
class Writer_static_extension {
    static public function close(_tw:Writer):stdgo.Error {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>);
        return stdgo._internal.archive.tar.Tar_writer_static_extension.Writer_static_extension.close(_tw);
    }
    static public function _readFrom(_tw:Writer, _r:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_writer_static_extension.Writer_static_extension._readFrom(_tw, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_tw:Writer, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_writer_static_extension.Writer_static_extension.write(_tw, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _writeRawHeader(_tw:Writer, _blk:T_block, _size:haxe.Int64, _flag:std.UInt):stdgo.Error {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>);
        final _blk = (_blk : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>);
        final _size = (_size : stdgo.GoInt64);
        final _flag = (_flag : stdgo.GoUInt8);
        return stdgo._internal.archive.tar.Tar_writer_static_extension.Writer_static_extension._writeRawHeader(_tw, _blk, _size, _flag);
    }
    static public function _writeRawFile(_tw:Writer, _name:String, _data:String, _flag:std.UInt, _format:Format):stdgo.Error {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>);
        final _name = (_name : stdgo.GoString);
        final _data = (_data : stdgo.GoString);
        final _flag = (_flag : stdgo.GoUInt8);
        return stdgo._internal.archive.tar.Tar_writer_static_extension.Writer_static_extension._writeRawFile(_tw, _name, _data, _flag, _format);
    }
    static public function _templateV7Plus(_tw:Writer, _hdr:Header, _fmtStr:T_stringFormatter, _fmtNum:T_numberFormatter):T_block {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>);
        final _hdr = (_hdr : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>);
        return stdgo._internal.archive.tar.Tar_writer_static_extension.Writer_static_extension._templateV7Plus(_tw, _hdr, _fmtStr, _fmtNum);
    }
    static public function _writeGNUHeader(_tw:Writer, _hdr:Header):stdgo.Error {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>);
        final _hdr = (_hdr : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>);
        return stdgo._internal.archive.tar.Tar_writer_static_extension.Writer_static_extension._writeGNUHeader(_tw, _hdr);
    }
    static public function _writePAXHeader(_tw:Writer, _hdr:Header, _paxHdrs:Map<String, String>):stdgo.Error {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>);
        final _hdr = (_hdr : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>);
        final _paxHdrs = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
            for (key => value in _paxHdrs) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return stdgo._internal.archive.tar.Tar_writer_static_extension.Writer_static_extension._writePAXHeader(_tw, _hdr, _paxHdrs);
    }
    static public function _writeUSTARHeader(_tw:Writer, _hdr:Header):stdgo.Error {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>);
        final _hdr = (_hdr : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>);
        return stdgo._internal.archive.tar.Tar_writer_static_extension.Writer_static_extension._writeUSTARHeader(_tw, _hdr);
    }
    static public function writeHeader(_tw:Writer, _hdr:Header):stdgo.Error {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>);
        final _hdr = (_hdr : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>);
        return stdgo._internal.archive.tar.Tar_writer_static_extension.Writer_static_extension.writeHeader(_tw, _hdr);
    }
    static public function flush(_tw:Writer):stdgo.Error {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>);
        return stdgo._internal.archive.tar.Tar_writer_static_extension.Writer_static_extension.flush(_tw);
    }
}
@:dox(hide) typedef T_regFileWriterPointer = stdgo._internal.archive.tar.Tar_t_regfilewriterpointer.T_regFileWriterPointer;
@:dox(hide) class T_regFileWriter_static_extension {
    static public function _physicalRemaining(_fw:T_regFileWriter):haxe.Int64 {
        return stdgo._internal.archive.tar.Tar_t_regfilewriter_static_extension.T_regFileWriter_static_extension._physicalRemaining(_fw);
    }
    static public function _logicalRemaining(_fw:T_regFileWriter):haxe.Int64 {
        return stdgo._internal.archive.tar.Tar_t_regfilewriter_static_extension.T_regFileWriter_static_extension._logicalRemaining(_fw);
    }
    static public function readFrom(_fw:T_regFileWriter, _r:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _fw = (_fw : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_regfilewriter.T_regFileWriter>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_t_regfilewriter_static_extension.T_regFileWriter_static_extension.readFrom(_fw, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_fw:T_regFileWriter, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fw = (_fw : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_regfilewriter.T_regFileWriter>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_t_regfilewriter_static_extension.T_regFileWriter_static_extension.write(_fw, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_sparseFileWriterPointer = stdgo._internal.archive.tar.Tar_t_sparsefilewriterpointer.T_sparseFileWriterPointer;
@:dox(hide) class T_sparseFileWriter_static_extension {
    static public function _physicalRemaining(_sw:T_sparseFileWriter):haxe.Int64 {
        return stdgo._internal.archive.tar.Tar_t_sparsefilewriter_static_extension.T_sparseFileWriter_static_extension._physicalRemaining(_sw);
    }
    static public function _logicalRemaining(_sw:T_sparseFileWriter):haxe.Int64 {
        return stdgo._internal.archive.tar.Tar_t_sparsefilewriter_static_extension.T_sparseFileWriter_static_extension._logicalRemaining(_sw);
    }
    static public function readFrom(_sw:T_sparseFileWriter, _r:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_sparsefilewriter.T_sparseFileWriter>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_t_sparsefilewriter_static_extension.T_sparseFileWriter_static_extension.readFrom(_sw, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_sw:T_sparseFileWriter, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_sparsefilewriter.T_sparseFileWriter>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_t_sparsefilewriter_static_extension.T_sparseFileWriter_static_extension.write(_sw, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_zeroWriterPointer = stdgo._internal.archive.tar.Tar_t_zerowriterpointer.T_zeroWriterPointer;
@:dox(hide) class T_zeroWriter_static_extension {
    static public function write(_:T_zeroWriter, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_t_zerowriter_static_extension.T_zeroWriter_static_extension.write(_, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.archive.tar.Tar_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T__struct_1PointerPointer = stdgo._internal.archive.tar.Tar_t__struct_1pointerpointer.T__struct_1PointerPointer;
@:dox(hide) class T__struct_1Pointer_static_extension {

}
@:dox(hide) typedef T_headerErrorPointer = stdgo._internal.archive.tar.Tar_t_headererrorpointer.T_headerErrorPointer;
@:dox(hide) class T_headerError_static_extension {
    static public function error(_he:T_headerError):String {
        return stdgo._internal.archive.tar.Tar_t_headererror_static_extension.T_headerError_static_extension.error(_he);
    }
}
@:dox(hide) typedef T_sparseDatasPointer = stdgo._internal.archive.tar.Tar_t_sparsedataspointer.T_sparseDatasPointer;
@:dox(hide) class T_sparseDatas_static_extension {

}
@:dox(hide) typedef T_sparseHolesPointer = stdgo._internal.archive.tar.Tar_t_sparseholespointer.T_sparseHolesPointer;
@:dox(hide) class T_sparseHoles_static_extension {

}
typedef FormatPointer = stdgo._internal.archive.tar.Tar_formatpointer.FormatPointer;
class Format_static_extension {
    static public function string(_f:Format):String {
        return stdgo._internal.archive.tar.Tar_format_static_extension.Format_static_extension.string(_f);
    }
    static public function _mustNotBe(_f:stdgo.Pointer<Format>, _f2:Format):Void {
        stdgo._internal.archive.tar.Tar_format_static_extension.Format_static_extension._mustNotBe(_f, _f2);
    }
    static public function _mayOnlyBe(_f:stdgo.Pointer<Format>, _f2:Format):Void {
        stdgo._internal.archive.tar.Tar_format_static_extension.Format_static_extension._mayOnlyBe(_f, _f2);
    }
    static public function _mayBe(_f:stdgo.Pointer<Format>, _f2:Format):Void {
        stdgo._internal.archive.tar.Tar_format_static_extension.Format_static_extension._mayBe(_f, _f2);
    }
    static public function _has(_f:Format, _f2:Format):Bool {
        return stdgo._internal.archive.tar.Tar_format_static_extension.Format_static_extension._has(_f, _f2);
    }
}
@:dox(hide) typedef T_blockPointer = stdgo._internal.archive.tar.Tar_t_blockpointer.T_blockPointer;
@:dox(hide) class T_block_static_extension {
    static public function _reset(_b:T_block):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>);
        stdgo._internal.archive.tar.Tar_t_block_static_extension.T_block_static_extension._reset(_b);
    }
    static public function _computeChecksum(_b:T_block):stdgo.Tuple<haxe.Int64, haxe.Int64> {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_t_block_static_extension.T_block_static_extension._computeChecksum(_b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _setFormat(_b:T_block, _format:Format):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>);
        stdgo._internal.archive.tar.Tar_t_block_static_extension.T_block_static_extension._setFormat(_b, _format);
    }
    static public function _getFormat(_b:T_block):Format {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>);
        return stdgo._internal.archive.tar.Tar_t_block_static_extension.T_block_static_extension._getFormat(_b);
    }
    static public function _toSparse(_b:T_block):T_sparseArray {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>);
        return stdgo._internal.archive.tar.Tar_t_block_static_extension.T_block_static_extension._toSparse(_b);
    }
    static public function _toUSTAR(_b:T_block):T_headerUSTAR {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>);
        return stdgo._internal.archive.tar.Tar_t_block_static_extension.T_block_static_extension._toUSTAR(_b);
    }
    static public function _toSTAR(_b:T_block):T_headerSTAR {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>);
        return stdgo._internal.archive.tar.Tar_t_block_static_extension.T_block_static_extension._toSTAR(_b);
    }
    static public function _toGNU(_b:T_block):T_headerGNU {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>);
        return stdgo._internal.archive.tar.Tar_t_block_static_extension.T_block_static_extension._toGNU(_b);
    }
    static public function _toV7(_b:T_block):T_headerV7 {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>);
        return stdgo._internal.archive.tar.Tar_t_block_static_extension.T_block_static_extension._toV7(_b);
    }
}
@:dox(hide) typedef T_headerV7Pointer = stdgo._internal.archive.tar.Tar_t_headerv7pointer.T_headerV7Pointer;
@:dox(hide) class T_headerV7_static_extension {
    static public function _linkName(_h:T_headerV7):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerv7.T_headerV7>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerv7_static_extension.T_headerV7_static_extension._linkName(_h)) i];
    }
    static public function _typeFlag(_h:T_headerV7):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerv7.T_headerV7>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerv7_static_extension.T_headerV7_static_extension._typeFlag(_h)) i];
    }
    static public function _chksum(_h:T_headerV7):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerv7.T_headerV7>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerv7_static_extension.T_headerV7_static_extension._chksum(_h)) i];
    }
    static public function _modTime(_h:T_headerV7):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerv7.T_headerV7>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerv7_static_extension.T_headerV7_static_extension._modTime(_h)) i];
    }
    static public function _size(_h:T_headerV7):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerv7.T_headerV7>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerv7_static_extension.T_headerV7_static_extension._size(_h)) i];
    }
    static public function _gid(_h:T_headerV7):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerv7.T_headerV7>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerv7_static_extension.T_headerV7_static_extension._gid(_h)) i];
    }
    static public function _uid(_h:T_headerV7):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerv7.T_headerV7>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerv7_static_extension.T_headerV7_static_extension._uid(_h)) i];
    }
    static public function _mode(_h:T_headerV7):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerv7.T_headerV7>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerv7_static_extension.T_headerV7_static_extension._mode(_h)) i];
    }
    static public function _name(_h:T_headerV7):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerv7.T_headerV7>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerv7_static_extension.T_headerV7_static_extension._name(_h)) i];
    }
}
@:dox(hide) typedef T_headerGNUPointer = stdgo._internal.archive.tar.Tar_t_headergnupointer.T_headerGNUPointer;
@:dox(hide) class T_headerGNU_static_extension {
    static public function _realSize(_h:T_headerGNU):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headergnu_static_extension.T_headerGNU_static_extension._realSize(_h)) i];
    }
    static public function _sparse(_h:T_headerGNU):T_sparseArray {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU>);
        return stdgo._internal.archive.tar.Tar_t_headergnu_static_extension.T_headerGNU_static_extension._sparse(_h);
    }
    static public function _changeTime(_h:T_headerGNU):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headergnu_static_extension.T_headerGNU_static_extension._changeTime(_h)) i];
    }
    static public function _accessTime(_h:T_headerGNU):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headergnu_static_extension.T_headerGNU_static_extension._accessTime(_h)) i];
    }
    static public function _devMinor(_h:T_headerGNU):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headergnu_static_extension.T_headerGNU_static_extension._devMinor(_h)) i];
    }
    static public function _devMajor(_h:T_headerGNU):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headergnu_static_extension.T_headerGNU_static_extension._devMajor(_h)) i];
    }
    static public function _groupName(_h:T_headerGNU):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headergnu_static_extension.T_headerGNU_static_extension._groupName(_h)) i];
    }
    static public function _userName(_h:T_headerGNU):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headergnu_static_extension.T_headerGNU_static_extension._userName(_h)) i];
    }
    static public function _version(_h:T_headerGNU):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headergnu_static_extension.T_headerGNU_static_extension._version(_h)) i];
    }
    static public function _magic(_h:T_headerGNU):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headergnu_static_extension.T_headerGNU_static_extension._magic(_h)) i];
    }
    static public function _v7(_h:T_headerGNU):T_headerV7 {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU>);
        return stdgo._internal.archive.tar.Tar_t_headergnu_static_extension.T_headerGNU_static_extension._v7(_h);
    }
}
@:dox(hide) typedef T_headerSTARPointer = stdgo._internal.archive.tar.Tar_t_headerstarpointer.T_headerSTARPointer;
@:dox(hide) class T_headerSTAR_static_extension {
    static public function _trailer(_h:T_headerSTAR):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerstar.T_headerSTAR>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerstar_static_extension.T_headerSTAR_static_extension._trailer(_h)) i];
    }
    static public function _changeTime(_h:T_headerSTAR):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerstar.T_headerSTAR>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerstar_static_extension.T_headerSTAR_static_extension._changeTime(_h)) i];
    }
    static public function _accessTime(_h:T_headerSTAR):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerstar.T_headerSTAR>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerstar_static_extension.T_headerSTAR_static_extension._accessTime(_h)) i];
    }
    static public function _prefix(_h:T_headerSTAR):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerstar.T_headerSTAR>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerstar_static_extension.T_headerSTAR_static_extension._prefix(_h)) i];
    }
    static public function _devMinor(_h:T_headerSTAR):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerstar.T_headerSTAR>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerstar_static_extension.T_headerSTAR_static_extension._devMinor(_h)) i];
    }
    static public function _devMajor(_h:T_headerSTAR):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerstar.T_headerSTAR>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerstar_static_extension.T_headerSTAR_static_extension._devMajor(_h)) i];
    }
    static public function _groupName(_h:T_headerSTAR):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerstar.T_headerSTAR>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerstar_static_extension.T_headerSTAR_static_extension._groupName(_h)) i];
    }
    static public function _userName(_h:T_headerSTAR):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerstar.T_headerSTAR>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerstar_static_extension.T_headerSTAR_static_extension._userName(_h)) i];
    }
    static public function _version(_h:T_headerSTAR):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerstar.T_headerSTAR>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerstar_static_extension.T_headerSTAR_static_extension._version(_h)) i];
    }
    static public function _magic(_h:T_headerSTAR):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerstar.T_headerSTAR>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerstar_static_extension.T_headerSTAR_static_extension._magic(_h)) i];
    }
    static public function _v7(_h:T_headerSTAR):T_headerV7 {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerstar.T_headerSTAR>);
        return stdgo._internal.archive.tar.Tar_t_headerstar_static_extension.T_headerSTAR_static_extension._v7(_h);
    }
}
@:dox(hide) typedef T_headerUSTARPointer = stdgo._internal.archive.tar.Tar_t_headerustarpointer.T_headerUSTARPointer;
@:dox(hide) class T_headerUSTAR_static_extension {
    static public function _prefix(_h:T_headerUSTAR):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerustar_static_extension.T_headerUSTAR_static_extension._prefix(_h)) i];
    }
    static public function _devMinor(_h:T_headerUSTAR):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerustar_static_extension.T_headerUSTAR_static_extension._devMinor(_h)) i];
    }
    static public function _devMajor(_h:T_headerUSTAR):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerustar_static_extension.T_headerUSTAR_static_extension._devMajor(_h)) i];
    }
    static public function _groupName(_h:T_headerUSTAR):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerustar_static_extension.T_headerUSTAR_static_extension._groupName(_h)) i];
    }
    static public function _userName(_h:T_headerUSTAR):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerustar_static_extension.T_headerUSTAR_static_extension._userName(_h)) i];
    }
    static public function _version(_h:T_headerUSTAR):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerustar_static_extension.T_headerUSTAR_static_extension._version(_h)) i];
    }
    static public function _magic(_h:T_headerUSTAR):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR>);
        return [for (i in stdgo._internal.archive.tar.Tar_t_headerustar_static_extension.T_headerUSTAR_static_extension._magic(_h)) i];
    }
    static public function _v7(_h:T_headerUSTAR):T_headerV7 {
        final _h = (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR>);
        return stdgo._internal.archive.tar.Tar_t_headerustar_static_extension.T_headerUSTAR_static_extension._v7(_h);
    }
}
@:dox(hide) typedef T_sparseArrayPointer = stdgo._internal.archive.tar.Tar_t_sparsearraypointer.T_sparseArrayPointer;
@:dox(hide) class T_sparseArray_static_extension {
    static public function _maxEntries(_s:T_sparseArray):StdTypes.Int {
        return stdgo._internal.archive.tar.Tar_t_sparsearray_static_extension.T_sparseArray_static_extension._maxEntries(_s);
    }
    static public function _isExtended(_s:T_sparseArray):Array<std.UInt> {
        return [for (i in stdgo._internal.archive.tar.Tar_t_sparsearray_static_extension.T_sparseArray_static_extension._isExtended(_s)) i];
    }
    static public function _entry(_s:T_sparseArray, _i:StdTypes.Int):T_sparseElem {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.archive.tar.Tar_t_sparsearray_static_extension.T_sparseArray_static_extension._entry(_s, _i);
    }
}
@:dox(hide) typedef T_sparseElemPointer = stdgo._internal.archive.tar.Tar_t_sparseelempointer.T_sparseElemPointer;
@:dox(hide) class T_sparseElem_static_extension {
    static public function _length(_s:T_sparseElem):Array<std.UInt> {
        return [for (i in stdgo._internal.archive.tar.Tar_t_sparseelem_static_extension.T_sparseElem_static_extension._length(_s)) i];
    }
    static public function _offset(_s:T_sparseElem):Array<std.UInt> {
        return [for (i in stdgo._internal.archive.tar.Tar_t_sparseelem_static_extension.T_sparseElem_static_extension._offset(_s)) i];
    }
}
@:dox(hide) typedef T_stringFormatterPointer = stdgo._internal.archive.tar.Tar_t_stringformatterpointer.T_stringFormatterPointer;
@:dox(hide) class T_stringFormatter_static_extension {

}
@:dox(hide) typedef T_numberFormatterPointer = stdgo._internal.archive.tar.Tar_t_numberformatterpointer.T_numberFormatterPointer;
@:dox(hide) class T_numberFormatter_static_extension {

}
/**
    * Package tar implements access to tar archives.
    * 
    * Tape archives (tar) are a file format for storing a sequence of files that
    * can be read and written in a streaming manner.
    * This package aims to cover most variations of the format,
    * including those produced by GNU and BSD tar tools.
**/
class Tar {
    /**
        * FileInfoHeader creates a partially-populated Header from fi.
        * If fi describes a symlink, FileInfoHeader records link as the link target.
        * If fi describes a directory, a slash is appended to the name.
        * 
        * Since fs.FileInfo's Name method only returns the base name of
        * the file it describes, it may be necessary to modify Header.Name
        * to provide the full path name of the file.
    **/
    static public inline function fileInfoHeader(_fi:stdgo._internal.io.fs.Fs_fileinfo.FileInfo, _link:String):stdgo.Tuple<Header, stdgo.Error> {
        final _link = (_link : stdgo.GoString);
        return {
            final obj = stdgo._internal.archive.tar.Tar_fileinfoheader.fileInfoHeader(_fi, _link);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * NewReader creates a new Reader reading from r.
    **/
    static public inline function newReader(_r:stdgo._internal.io.Io_reader.Reader):Reader {
        return stdgo._internal.archive.tar.Tar_newreader.newReader(_r);
    }
    /**
        * NewWriter creates a new Writer writing to w.
    **/
    static public inline function newWriter(_w:stdgo._internal.io.Io_writer.Writer):Writer {
        return stdgo._internal.archive.tar.Tar_newwriter.newWriter(_w);
    }
}
