package stdgo.archive.tar;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var errHeader : stdgo.Error = stdgo.errors.Errors.new_(((("archive/tar: invalid tar header" : GoString))));
var errWriteTooLong : stdgo.Error = stdgo.errors.Errors.new_(((("archive/tar: write too long" : GoString))));
var errFieldTooLong : stdgo.Error = stdgo.errors.Errors.new_(((("archive/tar: header field too long" : GoString))));
var errWriteAfterClose : stdgo.Error = stdgo.errors.Errors.new_(((("archive/tar: write after close" : GoString))));
var _errMissData : stdgo.Error = stdgo.errors.Errors.new_(((("archive/tar: sparse file references non-existent data" : GoString))));
var _errUnrefData : stdgo.Error = stdgo.errors.Errors.new_(((("archive/tar: sparse file contains unreferenced data" : GoString))));
var _errWriteHole : stdgo.Error = stdgo.errors.Errors.new_(((("archive/tar: write non-NUL byte in sparse hole" : GoString))));
var _basicKeys : GoMap<GoString, Bool> = Go.map(((("path" : GoString))) => true, ((("linkpath" : GoString))) => true, ((("size" : GoString))) => true, ((("uid" : GoString))) => true, ((("gid" : GoString))) => true, ((("uname" : GoString))) => true, ((("gname" : GoString))) => true, ((("mtime" : GoString))) => true, ((("atime" : GoString))) => true, ((("ctime" : GoString))) => true);
var _formatNames : GoMap<Format, GoString> = Go.map(((1 : GoInt)) => ((("V7" : GoString))), ((2 : GoInt)) => ((("USTAR" : GoString))), ((4 : GoInt)) => ((("PAX" : GoString))), ((8 : GoInt)) => ((("GNU" : GoString))), ((16 : GoInt)) => ((("STAR" : GoString))));
var _sysStat : (_fi:stdgo.io.fs.Fs.FileInfo, _h:Header) -> Error = null;
var _zeroBlock : T_block = new T_block();
typedef T_fileState = StructType & {
    public function _logicalRemaining():GoInt64;
    public function _physicalRemaining():GoInt64;
};
typedef T_fileReader = StructType & {
    > stdgo.io.Io.Reader,
    > T_fileState,
    public function writeTo(_0:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; };
};
typedef T_fileWriter = StructType & {
    > stdgo.io.Io.Writer,
    > T_fileState,
    public function readFrom(_0:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; };
};
@:structInit @:using(stdgo.archive.tar.Tar.Header_static_extension) class Header {
    public var typeflag : GoUInt8 = ((0 : GoUInt8));
    public var name : GoString = (("" : GoString));
    public var linkname : GoString = (("" : GoString));
    public var size : GoInt64 = ((0 : GoInt64));
    public var mode : GoInt64 = ((0 : GoInt64));
    public var uid : GoInt = ((0 : GoInt));
    public var gid : GoInt = ((0 : GoInt));
    public var uname : GoString = (("" : GoString));
    public var gname : GoString = (("" : GoString));
    public var modTime : stdgo.time.Time.Time = new stdgo.time.Time.Time();
    public var accessTime : stdgo.time.Time.Time = new stdgo.time.Time.Time();
    public var changeTime : stdgo.time.Time.Time = new stdgo.time.Time.Time();
    public var devmajor : GoInt64 = ((0 : GoInt64));
    public var devminor : GoInt64 = ((0 : GoInt64));
    public var xattrs : GoMap<GoString, GoString> = ((null : GoMap<GoString, GoString>));
    public var paxrecords : GoMap<GoString, GoString> = ((null : GoMap<GoString, GoString>));
    public var format : Format = new Format();
    public function new(?typeflag:GoUInt8, ?name:GoString, ?linkname:GoString, ?size:GoInt64, ?mode:GoInt64, ?uid:GoInt, ?gid:GoInt, ?uname:GoString, ?gname:GoString, ?modTime:stdgo.time.Time.Time, ?accessTime:stdgo.time.Time.Time, ?changeTime:stdgo.time.Time.Time, ?devmajor:GoInt64, ?devminor:GoInt64, ?xattrs:GoMap<GoString, GoString>, ?paxrecords:GoMap<GoString, GoString>, ?format:Format) {
        if (typeflag != null) this.typeflag = typeflag;
        if (name != null) this.name = name;
        if (linkname != null) this.linkname = linkname;
        if (size != null) this.size = size;
        if (mode != null) this.mode = mode;
        if (uid != null) this.uid = uid;
        if (gid != null) this.gid = gid;
        if (uname != null) this.uname = uname;
        if (gname != null) this.gname = gname;
        if (modTime != null) this.modTime = modTime;
        if (accessTime != null) this.accessTime = accessTime;
        if (changeTime != null) this.changeTime = changeTime;
        if (devmajor != null) this.devmajor = devmajor;
        if (devminor != null) this.devminor = devminor;
        if (xattrs != null) this.xattrs = xattrs;
        if (paxrecords != null) this.paxrecords = paxrecords;
        if (format != null) this.format = format;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Header(
typeflag,
name,
linkname,
size,
mode,
uid,
gid,
uname,
gname,
modTime,
accessTime,
changeTime,
devmajor,
devminor,
xattrs,
paxrecords,
format);
    }
}
@:structInit @:using(stdgo.archive.tar.Tar.T_sparseEntry_static_extension) class T_sparseEntry {
    public var offset : GoInt64 = ((0 : GoInt64));
    public var length : GoInt64 = ((0 : GoInt64));
    public function new(?offset:GoInt64, ?length:GoInt64) {
        if (offset != null) this.offset = offset;
        if (length != null) this.length = length;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_sparseEntry(offset, length);
    }
}
@:structInit @:using(stdgo.archive.tar.Tar.T_headerFileInfo_static_extension) class T_headerFileInfo {
    public var _h : Ref<Header> = null;
    public function new(?_h:Ref<Header>) {
        if (_h != null) this._h = _h;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_headerFileInfo(_h);
    }
}
@:structInit @:using(stdgo.archive.tar.Tar.Reader_static_extension) class Reader {
    public var _r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var _pad : GoInt64 = ((0 : GoInt64));
    public var _curr : T_fileReader = ((null : T_fileReader));
    public var _blk : T_block = new T_block();
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_r:stdgo.io.Io.Reader, ?_pad:GoInt64, ?_curr:T_fileReader, ?_blk:T_block, ?_err:stdgo.Error) {
        if (_r != null) this._r = _r;
        if (_pad != null) this._pad = _pad;
        if (_curr != null) this._curr = _curr;
        if (_blk != null) this._blk = _blk;
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Reader(_r, _pad, _curr, _blk, _err);
    }
}
@:structInit @:using(stdgo.archive.tar.Tar.T_regFileReader_static_extension) class T_regFileReader {
    public var _r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var _nb : GoInt64 = ((0 : GoInt64));
    public function new(?_r:stdgo.io.Io.Reader, ?_nb:GoInt64) {
        if (_r != null) this._r = _r;
        if (_nb != null) this._nb = _nb;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_regFileReader(_r, _nb);
    }
}
@:structInit @:using(stdgo.archive.tar.Tar.T_sparseFileReader_static_extension) class T_sparseFileReader {
    public var _fr : T_fileReader = ((null : T_fileReader));
    public var _sp : T_sparseHoles = new T_sparseHoles();
    public var _pos : GoInt64 = ((0 : GoInt64));
    public function new(?_fr:T_fileReader, ?_sp:T_sparseHoles, ?_pos:GoInt64) {
        if (_fr != null) this._fr = _fr;
        if (_sp != null) this._sp = _sp;
        if (_pos != null) this._pos = _pos;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_sparseFileReader(_fr, _sp, _pos);
    }
}
@:structInit @:using(stdgo.archive.tar.Tar.T_zeroReader_static_extension) class T_zeroReader {
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_zeroReader();
    }
}
@:structInit @:using(stdgo.archive.tar.Tar.T_parser_static_extension) class T_parser {
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_parser(_err);
    }
}
@:structInit @:using(stdgo.archive.tar.Tar.T_formatter_static_extension) class T_formatter {
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_formatter(_err);
    }
}
@:structInit @:using(stdgo.archive.tar.Tar.Writer_static_extension) class Writer {
    public var _w : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var _pad : GoInt64 = ((0 : GoInt64));
    public var _curr : T_fileWriter = ((null : T_fileWriter));
    public var _hdr : Header = new Header();
    public var _blk : T_block = new T_block();
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_w:stdgo.io.Io.Writer, ?_pad:GoInt64, ?_curr:T_fileWriter, ?_hdr:Header, ?_blk:T_block, ?_err:stdgo.Error) {
        if (_w != null) this._w = _w;
        if (_pad != null) this._pad = _pad;
        if (_curr != null) this._curr = _curr;
        if (_hdr != null) this._hdr = _hdr;
        if (_blk != null) this._blk = _blk;
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Writer(_w, _pad, _curr, _hdr, _blk, _err);
    }
}
@:structInit @:using(stdgo.archive.tar.Tar.T_regFileWriter_static_extension) class T_regFileWriter {
    public var _w : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var _nb : GoInt64 = ((0 : GoInt64));
    public function new(?_w:stdgo.io.Io.Writer, ?_nb:GoInt64) {
        if (_w != null) this._w = _w;
        if (_nb != null) this._nb = _nb;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_regFileWriter(_w, _nb);
    }
}
@:structInit @:using(stdgo.archive.tar.Tar.T_sparseFileWriter_static_extension) class T_sparseFileWriter {
    public var _fw : T_fileWriter = ((null : T_fileWriter));
    public var _sp : T_sparseDatas = new T_sparseDatas();
    public var _pos : GoInt64 = ((0 : GoInt64));
    public function new(?_fw:T_fileWriter, ?_sp:T_sparseDatas, ?_pos:GoInt64) {
        if (_fw != null) this._fw = _fw;
        if (_sp != null) this._sp = _sp;
        if (_pos != null) this._pos = _pos;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_sparseFileWriter(_fw, _sp, _pos);
    }
}
@:structInit @:using(stdgo.archive.tar.Tar.T_zeroWriter_static_extension) class T_zeroWriter {
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_zeroWriter();
    }
}
@:structInit @:local class T__struct_0 {
    @:embedded
    public var reader : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public function toString():String return "{" + Go.string(reader) + "}";
    public function new(?reader:stdgo.io.Io.Reader, ?toString) {
        if (reader != null) this.reader = reader;
    }
    public function read(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return reader.read(_p);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0(reader);
    }
}
@:structInit @:local class T__struct_1 {
    @:embedded
    public var writer : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public function toString():String return "{" + Go.string(writer) + "}";
    public function new(?writer:stdgo.io.Io.Writer, ?toString) {
        if (writer != null) this.writer = writer;
    }
    public function write(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return writer.write(_p);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_1(writer);
    }
}
@:named @:using(stdgo.archive.tar.Tar.T_headerError_static_extension) typedef T_headerError = Slice<GoString>;
@:named typedef T_sparseDatas = Slice<T_sparseEntry>;
@:named typedef T_sparseHoles = Slice<T_sparseEntry>;
@:named @:using(stdgo.archive.tar.Tar.Format_static_extension) typedef Format = GoInt;
@:named @:using(stdgo.archive.tar.Tar.T_block_static_extension) typedef T_block = GoArray<GoUInt8>;
@:named @:using(stdgo.archive.tar.Tar.T_headerV7_static_extension) typedef T_headerV7 = GoArray<GoUInt8>;
@:named @:using(stdgo.archive.tar.Tar.T_headerGNU_static_extension) typedef T_headerGNU = GoArray<GoUInt8>;
@:named @:using(stdgo.archive.tar.Tar.T_headerSTAR_static_extension) typedef T_headerSTAR = GoArray<GoUInt8>;
@:named @:using(stdgo.archive.tar.Tar.T_headerUSTAR_static_extension) typedef T_headerUSTAR = GoArray<GoUInt8>;
@:named @:using(stdgo.archive.tar.Tar.T_sparseArray_static_extension) typedef T_sparseArray = Slice<GoUInt8>;
@:named @:using(stdgo.archive.tar.Tar.T_sparseElem_static_extension) typedef T_sparseElem = Slice<GoUInt8>;
@:named typedef T_stringFormatter = (Slice<GoUInt8>, GoString) -> Void;
@:named typedef T_numberFormatter = (Slice<GoUInt8>, GoInt64) -> Void;
/**
    // validateSparseEntries reports whether sp is a valid sparse map.
    // It does not matter whether sp represents data fragments or hole fragments.
**/
function _validateSparseEntries(_sp:Slice<T_sparseEntry>, _size:GoInt64):Bool {
        if (_size < ((0 : GoInt64))) {
            return false;
        };
        var _pre:T_sparseEntry = new T_sparseEntry();
        for (_0 => _cur in _sp) {
            if ((_cur.offset < ((0 : GoInt64))) || (_cur.length < ((0 : GoInt64)))) {
                return false;
            } else if (_cur.offset > ((("9223372036854775807" : GoInt64)) - _cur.length)) {
                return false;
            } else if (_cur._endOffset() > _size) {
                return false;
            } else if (_pre._endOffset() > _cur.offset) {
                return false;
            };
            _pre = (_cur == null ? null : _cur.__copy__());
        };
        return true;
    }
/**
    // alignSparseEntries mutates src and returns dst where each fragment's
    // starting offset is aligned up to the nearest block edge, and each
    // ending offset is aligned down to the nearest block edge.
    //
    // Even though the Go tar Reader and the BSD tar utility can handle entries
    // with arbitrary offsets and lengths, the GNU tar utility can only handle
    // offsets and lengths that are multiples of blockSize.
**/
function _alignSparseEntries(_src:Slice<T_sparseEntry>, _size:GoInt64):Slice<T_sparseEntry> {
        var _dst = ((_src.__slice__(0, ((0 : GoInt))) : Slice<T_sparseEntry>));
        for (_0 => _s in _src) {
            var _pos:GoInt64 = _s.offset, _end:GoInt64 = _s._endOffset();
            _pos = _pos + (_blockPadding(_pos));
            if (_end != _size) {
                _end = _end - (_blockPadding(-_end));
            };
            if (_pos < _end) {
                _dst = (_dst != null ? _dst.__append__((({ offset : _pos, length : _end - _pos } : T_sparseEntry))) : new Slice<T_sparseEntry>((({ offset : _pos, length : _end - _pos } : T_sparseEntry))));
            };
        };
        return _dst;
    }
/**
    // invertSparseEntries converts a sparse map from one form to the other.
    // If the input is sparseHoles, then it will output sparseDatas and vice-versa.
    // The input must have been already validated.
    //
    // This function mutates src and returns a normalized map where:
    //	* adjacent fragments are coalesced together
    //	* only the last fragment may be empty
    //	* the endOffset of the last fragment is the total size
**/
function _invertSparseEntries(_src:Slice<T_sparseEntry>, _size:GoInt64):Slice<T_sparseEntry> {
        var _dst = ((_src.__slice__(0, ((0 : GoInt))) : Slice<T_sparseEntry>));
        var _pre:T_sparseEntry = new T_sparseEntry();
        for (_0 => _cur in _src) {
            if (_cur.length == ((0 : GoInt64))) {
                continue;
            };
            _pre.length = _cur.offset - _pre.offset;
            if (_pre.length > ((0 : GoInt64))) {
                _dst = (_dst != null ? _dst.__append__((_pre == null ? null : _pre.__copy__())) : new Slice<T_sparseEntry>((_pre == null ? null : _pre.__copy__())));
            };
            _pre.offset = _cur._endOffset();
        };
        _pre.length = _size - _pre.offset;
        return (_dst != null ? _dst.__append__((_pre == null ? null : _pre.__copy__())) : new Slice<T_sparseEntry>((_pre == null ? null : _pre.__copy__())));
    }
/**
    // FileInfoHeader creates a partially-populated Header from fi.
    // If fi describes a symlink, FileInfoHeader records link as the link target.
    // If fi describes a directory, a slash is appended to the name.
    //
    // Since fs.FileInfo's Name method only returns the base name of
    // the file it describes, it may be necessary to modify Header.Name
    // to provide the full path name of the file.
**/
function fileInfoHeader(_fi:stdgo.io.fs.Fs.FileInfo, _link:GoString):{ var _0 : Header; var _1 : Error; } {
        if (_fi == null) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(((("archive/tar: FileInfo is nil" : GoString)))) };
        };
        var _fm:stdgo.io.fs.Fs.FileMode = _fi.mode();
        var _h = (({ name : _fi.name(), modTime : (_fi.modTime() == null ? null : _fi.modTime().__copy__()), mode : ((_fm.perm() : GoInt64)), typeflag : 0, linkname : "", size : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header));
        if (_fm.isRegular()) {
            _h.typeflag = ((48 : GoUInt8));
            _h.size = _fi.size();
        } else if (_fi.isDir()) {
            _h.typeflag = ((53 : GoUInt8));
            _h.name = _h.name + (((("/" : GoString))));
        } else if ((_fm & ((134217728 : GoUInt32))) != ((0 : GoUInt32))) {
            _h.typeflag = ((50 : GoUInt8));
            _h.linkname = _link;
        } else if ((_fm & ((67108864 : GoUInt32))) != ((0 : GoUInt32))) {
            if ((_fm & ((2097152 : GoUInt32))) != ((0 : GoUInt32))) {
                _h.typeflag = ((51 : GoUInt8));
            } else {
                _h.typeflag = ((52 : GoUInt8));
            };
        } else if ((_fm & ((33554432 : GoUInt32))) != ((0 : GoUInt32))) {
            _h.typeflag = ((54 : GoUInt8));
        } else if ((_fm & ((16777216 : GoUInt32))) != ((0 : GoUInt32))) {
            return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(((("archive/tar: sockets not supported" : GoString)))) };
        } else {
            return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(((("archive/tar: unknown file mode %v" : GoString))), Go.toInterface(_fm)) };
        };
        if ((_fm & ((8388608 : GoUInt32))) != ((0 : GoUInt32))) {
            _h.mode = _h.mode | (((2048 : GoInt64)));
        };
        if ((_fm & ((4194304 : GoUInt32))) != ((0 : GoUInt32))) {
            _h.mode = _h.mode | (((1024 : GoInt64)));
        };
        if ((_fm & ((1048576 : GoUInt32))) != ((0 : GoUInt32))) {
            _h.mode = _h.mode | (((512 : GoInt64)));
        };
        {
            var __tmp__ = try {
                { value : ((_fi.sys().value : Header)), ok : true };
            } catch(_) {
                { value : null, ok : false };
            }, _sys = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _h.uid = _sys.uid;
                _h.gid = _sys.gid;
                _h.uname = _sys.uname;
                _h.gname = _sys.gname;
                _h.accessTime = (_sys.accessTime == null ? null : _sys.accessTime.__copy__());
                _h.changeTime = (_sys.changeTime == null ? null : _sys.changeTime.__copy__());
                if (_sys.xattrs != null) {
                    _h.xattrs = ((new GoObjectMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))) : GoMap<GoString, GoString>));
                    for (_k => _v in _sys.xattrs) {
                        if (_h.xattrs != null) _h.xattrs[_k] = _v;
                    };
                };
                if (_sys.typeflag == ((49 : GoUInt8))) {
                    _h.typeflag = ((49 : GoUInt8));
                    _h.size = ((0 : GoInt64));
                    _h.linkname = _sys.linkname;
                };
                if (_sys.paxrecords != null) {
                    _h.paxrecords = ((new GoObjectMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))) : GoMap<GoString, GoString>));
                    for (_k => _v in _sys.paxrecords) {
                        if (_h.paxrecords != null) _h.paxrecords[_k] = _v;
                    };
                };
            };
        };
        if (_sysStat != null) {
            return { _0 : _h, _1 : _sysStat(_fi, _h) };
        };
        return { _0 : _h, _1 : ((null : stdgo.Error)) };
    }
/**
    // isHeaderOnlyType checks if the given type flag is of the type that has no
    // data section even if a size is specified.
**/
function _isHeaderOnlyType(_flag:GoByte):Bool {
        if (_flag == ((49 : GoUInt8)) || _flag == ((50 : GoUInt8)) || _flag == ((51 : GoUInt8)) || _flag == ((52 : GoUInt8)) || _flag == ((53 : GoUInt8)) || _flag == ((54 : GoUInt8))) {
            return true;
        } else {
            return false;
        };
    }
function _min(_a:GoInt64, _b:GoInt64):GoInt64 {
        if (_a < _b) {
            return _a;
        };
        return _b;
    }
/**
    // blockPadding computes the number of bytes needed to pad offset up to the
    // nearest block edge where 0 <= n < blockSize.
**/
function _blockPadding(_offset:GoInt64):GoInt64 {
        var _n:GoInt64 = ((0 : GoInt64));
        return -_offset & ((511 : GoInt64));
    }
/**
    // NewReader creates a new Reader reading from r.
**/
function newReader(_r:stdgo.io.Io.Reader):Reader {
        return (({ _r : _r, _curr : ((new T_regFileReader(_r, ((0 : GoInt64))) : T_regFileReader)), _pad : 0, _blk : new T_block(), _err : new stdgo.Error() } : Reader));
    }
/**
    // mergePAX merges paxHdrs into hdr for all relevant fields of Header.
**/
function _mergePAX(_hdr:Header, _paxHdrs:GoMap<GoString, GoString>):Error {
        var _err:Error = ((null : stdgo.Error));
        for (_k => _v in _paxHdrs) {
            if (_v == ((("" : GoString)))) {
                continue;
            };
            var _id64:GoInt64 = ((0 : GoInt64));
            if (_k == ((("path" : GoString)))) {
                _hdr.name = _v;
            } else if (_k == ((("linkpath" : GoString)))) {
                _hdr.linkname = _v;
            } else if (_k == ((("uname" : GoString)))) {
                _hdr.uname = _v;
            } else if (_k == ((("gname" : GoString)))) {
                _hdr.gname = _v;
            } else if (_k == ((("uid" : GoString)))) {
                {
                    var __tmp__ = stdgo.strconv.Strconv.parseInt(_v, ((10 : GoInt)), ((64 : GoInt)));
                    _id64 = __tmp__._0;
                    _err = __tmp__._1;
                };
                _hdr.uid = ((_id64 : GoInt));
            } else if (_k == ((("gid" : GoString)))) {
                {
                    var __tmp__ = stdgo.strconv.Strconv.parseInt(_v, ((10 : GoInt)), ((64 : GoInt)));
                    _id64 = __tmp__._0;
                    _err = __tmp__._1;
                };
                _hdr.gid = ((_id64 : GoInt));
            } else if (_k == ((("atime" : GoString)))) {
                {
                    var __tmp__ = _parsePAXTime(_v);
                    _hdr.accessTime = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                    _err = {
                        final __self__ = new stdgo.Error_wrapper(__tmp__._1);
                        __self__;
                    };
                };
            } else if (_k == ((("mtime" : GoString)))) {
                {
                    var __tmp__ = _parsePAXTime(_v);
                    _hdr.modTime = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                    _err = {
                        final __self__ = new stdgo.Error_wrapper(__tmp__._1);
                        __self__;
                    };
                };
            } else if (_k == ((("ctime" : GoString)))) {
                {
                    var __tmp__ = _parsePAXTime(_v);
                    _hdr.changeTime = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                    _err = {
                        final __self__ = new stdgo.Error_wrapper(__tmp__._1);
                        __self__;
                    };
                };
            } else if (_k == ((("size" : GoString)))) {
                {
                    var __tmp__ = stdgo.strconv.Strconv.parseInt(_v, ((10 : GoInt)), ((64 : GoInt)));
                    _hdr.size = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else {
                if (stdgo.strings.Strings.hasPrefix(_k, ((("SCHILY.xattr." : GoString))))) {
                    if (_hdr.xattrs == null) {
                        _hdr.xattrs = ((new GoObjectMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))) : GoMap<GoString, GoString>));
                    };
                    if (_hdr.xattrs != null) _hdr.xattrs[((_k.__slice__((((("SCHILY.xattr." : GoString))) != null ? ((("SCHILY.xattr." : GoString))).length : ((0 : GoInt)))) : GoString))] = _v;
                };
            };
            if (_err != null) {
                return errHeader;
            };
        };
        _hdr.paxrecords = _paxHdrs;
        return ((null : stdgo.Error));
    }
/**
    // parsePAX parses PAX headers.
    // If an extended header (type 'x') is invalid, ErrHeader is returned
**/
function _parsePAX(_r:stdgo.io.Io.Reader):{ var _0 : GoMap<GoString, GoString>; var _1 : Error; } {
        var __tmp__ = stdgo.io.Io.readAll(_r), _buf:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : GoMap<GoString, GoString>)), _1 : _err };
        };
        var _sbuf:GoString = ((_buf : GoString));
        var _sparseMap:Slice<GoString> = ((null : Slice<GoString>));
        var _paxHdrs = ((new GoObjectMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))) : GoMap<GoString, GoString>));
        while ((_sbuf != null ? _sbuf.length : ((0 : GoInt))) > ((0 : GoInt))) {
            var __tmp__ = _parsePAXRecord(_sbuf), _key:GoString = __tmp__._0, _value:GoString = __tmp__._1, _residual:GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
            if (_err != null) {
                return { _0 : ((null : GoMap<GoString, GoString>)), _1 : errHeader };
            };
            _sbuf = _residual;
            if (_key == ((("GNU.sparse.offset" : GoString))) || _key == ((("GNU.sparse.numbytes" : GoString)))) {
                if ((((((_sparseMap != null ? _sparseMap.length : ((0 : GoInt))) % ((2 : GoInt))) == ((0 : GoInt))) && (_key != ((("GNU.sparse.offset" : GoString))))) || ((((_sparseMap != null ? _sparseMap.length : ((0 : GoInt))) % ((2 : GoInt))) == ((1 : GoInt))) && (_key != ((("GNU.sparse.numbytes" : GoString)))))) || stdgo.strings.Strings.contains(_value, ((("," : GoString))))) {
                    return { _0 : ((null : GoMap<GoString, GoString>)), _1 : errHeader };
                };
                _sparseMap = (_sparseMap != null ? _sparseMap.__append__(_value) : new Slice<GoString>(_value));
            } else {
                if (_paxHdrs != null) _paxHdrs[_key] = _value;
            };
        };
        if ((_sparseMap != null ? _sparseMap.length : ((0 : GoInt))) > ((0 : GoInt))) {
            if (_paxHdrs != null) _paxHdrs[((("GNU.sparse.map" : GoString)))] = stdgo.strings.Strings.join(_sparseMap, ((("," : GoString))));
        };
        return { _0 : _paxHdrs, _1 : ((null : stdgo.Error)) };
    }
/**
    // readGNUSparseMap1x0 reads the sparse map as stored in GNU's PAX sparse format
    // version 1.0. The format of the sparse map consists of a series of
    // newline-terminated numeric fields. The first field is the number of entries
    // and is always present. Following this are the entries, consisting of two
    // fields (offset, length). This function must stop reading at the end
    // boundary of the block containing the last newline.
    //
    // Note that the GNU manual says that numeric values should be encoded in octal
    // format. However, the GNU tar utility itself outputs these values in decimal.
    // As such, this library treats values as being encoded in decimal.
**/
function _readGNUSparseMap1x0(_r:stdgo.io.Io.Reader):{ var _0 : T_sparseDatas; var _1 : Error; } {
        var _cntNewline:GoInt64 = ((0 : GoInt64)), _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer(), _blk:T_block = new T_block();
        var _feedTokens:GoInt64 -> stdgo.Error = function(_n:GoInt64):Error {
            while (_cntNewline < _n) {
                {
                    var __tmp__ = _mustReadFull(_r, ((_blk.__slice__(0) : Slice<GoUInt8>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
                _buf.write(((_blk.__slice__(0) : Slice<GoUInt8>)));
                for (_1 => _c in _blk) {
                    if (_c == ((((("\n" : GoString))).code : GoRune))) {
                        _cntNewline++;
                    };
                };
            };
            return ((null : stdgo.Error));
        };
        var _nextToken:() -> GoString = function():GoString {
            _cntNewline--;
            var __tmp__ = _buf.readString(((((("\n" : GoString))).code : GoRune))), _tok:GoString = __tmp__._0, _0:stdgo.Error = __tmp__._1;
            return stdgo.strings.Strings.trimRight(_tok, ((("\n" : GoString))));
        };
        {
            var _err:stdgo.Error = _feedTokens(((1 : GoInt64)));
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_nextToken(), ((10 : GoInt)), ((0 : GoInt))), _numEntries:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || (_numEntries < ((0 : GoInt64)))) || ((((((2 : GoInt64)) * _numEntries) : GoInt)) < ((_numEntries : GoInt)))) {
            return { _0 : null, _1 : errHeader };
        };
        {
            var _err:stdgo.Error = _feedTokens(((2 : GoInt64)) * _numEntries);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var _spd:T_sparseDatas = new Slice<T_sparseEntry>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_sparseEntry()]).__setCap__(((_numEntries : GoInt)).toBasic());
        {
            var _i:GoInt64 = ((((0 : GoInt64)) : GoInt64));
            Go.cfor(_i < _numEntries, _i++, {
                var __tmp__ = stdgo.strconv.Strconv.parseInt(_nextToken(), ((10 : GoInt)), ((64 : GoInt))), _offset:GoInt64 = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                var __tmp__ = stdgo.strconv.Strconv.parseInt(_nextToken(), ((10 : GoInt)), ((64 : GoInt))), _length:GoInt64 = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
                if ((_err1 != null) || (_err2 != null)) {
                    return { _0 : null, _1 : errHeader };
                };
                _spd = (_spd != null ? _spd.__append__((({ offset : _offset, length : _length } : T_sparseEntry))) : new Slice<Slice<T_sparseEntry>>((({ offset : _offset, length : _length } : T_sparseEntry))));
            });
        };
        return { _0 : _spd, _1 : ((null : stdgo.Error)) };
    }
/**
    // readGNUSparseMap0x1 reads the sparse map as stored in GNU's PAX sparse format
    // version 0.1. The sparse map is stored in the PAX headers.
**/
function _readGNUSparseMap0x1(_paxHdrs:GoMap<GoString, GoString>):{ var _0 : T_sparseDatas; var _1 : Error; } {
        var _numEntriesStr:GoString = (_paxHdrs != null ? _paxHdrs[((("GNU.sparse.numblocks" : GoString)))] : (("" : GoString)));
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_numEntriesStr, ((10 : GoInt)), ((0 : GoInt))), _numEntries:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || (_numEntries < ((0 : GoInt64)))) || ((((((2 : GoInt64)) * _numEntries) : GoInt)) < ((_numEntries : GoInt)))) {
            return { _0 : null, _1 : errHeader };
        };
        var _sparseMap = stdgo.strings.Strings.split((_paxHdrs != null ? _paxHdrs[((("GNU.sparse.map" : GoString)))] : (("" : GoString))), ((("," : GoString))));
        if (((_sparseMap != null ? _sparseMap.length : ((0 : GoInt))) == ((1 : GoInt))) && ((_sparseMap != null ? _sparseMap[((0 : GoInt))] : (("" : GoString))) == ((("" : GoString))))) {
            _sparseMap = ((_sparseMap.__slice__(0, ((0 : GoInt))) : Slice<GoString>));
        };
        if ((((_sparseMap != null ? _sparseMap.length : ((0 : GoInt))) : GoInt64)) != (((2 : GoInt64)) * _numEntries)) {
            return { _0 : null, _1 : errHeader };
        };
        var _spd:T_sparseDatas = new Slice<T_sparseEntry>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_sparseEntry()]).__setCap__(((_numEntries : GoInt)).toBasic());
        while ((_sparseMap != null ? _sparseMap.length : ((0 : GoInt))) >= ((2 : GoInt))) {
            var __tmp__ = stdgo.strconv.Strconv.parseInt((_sparseMap != null ? _sparseMap[((0 : GoInt))] : (("" : GoString))), ((10 : GoInt)), ((64 : GoInt))), _offset:GoInt64 = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
            var __tmp__ = stdgo.strconv.Strconv.parseInt((_sparseMap != null ? _sparseMap[((1 : GoInt))] : (("" : GoString))), ((10 : GoInt)), ((64 : GoInt))), _length:GoInt64 = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
            if ((_err1 != null) || (_err2 != null)) {
                return { _0 : null, _1 : errHeader };
            };
            _spd = (_spd != null ? _spd.__append__((({ offset : _offset, length : _length } : T_sparseEntry))) : new Slice<Slice<T_sparseEntry>>((({ offset : _offset, length : _length } : T_sparseEntry))));
            _sparseMap = ((_sparseMap.__slice__(((2 : GoInt))) : Slice<GoString>));
        };
        return { _0 : _spd, _1 : ((null : stdgo.Error)) };
    }
/**
    // mustReadFull is like io.ReadFull except it returns
    // io.ErrUnexpectedEOF when io.EOF is hit before len(b) bytes are read.
**/
function _mustReadFull(_r:stdgo.io.Io.Reader, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var __tmp__ = _tryReadFull(_r, _b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == stdgo.io.Io.eof) {
            _err = stdgo.io.Io.errUnexpectedEOF;
        };
        return { _0 : _n, _1 : _err };
    }
/**
    // tryReadFull is like io.ReadFull except it returns
    // io.EOF when it is hit before len(b) bytes are read.
**/
function _tryReadFull(_r:stdgo.io.Io.Reader, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        while (((_b != null ? _b.length : ((0 : GoInt))) > _n) && (_err == null)) {
            var _nn:GoInt = ((0 : GoInt));
            {
                var __tmp__ = _r.read(((_b.__slice__(_n) : Slice<GoUInt8>)));
                _nn = __tmp__._0;
                _err = __tmp__._1;
            };
            _n = _n + (_nn);
        };
        if (((_b != null ? _b.length : ((0 : GoInt))) == _n) && (_err == stdgo.io.Io.eof)) {
            _err = ((null : stdgo.Error));
        };
        return { _0 : _n, _1 : _err };
    }
/**
    // discard skips n bytes in r, reporting an error if unable to do so.
**/
function _discard(_r:stdgo.io.Io.Reader, _n:GoInt64):Error {
        var _seekSkipped:GoInt64 = ((0 : GoInt64));
        {
            var __tmp__ = try {
                { value : ((((_r.__underlying__().value : Dynamic)) : stdgo.io.Io.Seeker)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.io.Io.Seeker)), ok : false };
            }, _sr = __tmp__.value, _ok = __tmp__.ok;
            if (_ok && (_n > ((1 : GoInt64)))) {
                var __tmp__ = _sr.seek(((0 : GoInt64)), ((1 : GoInt))), _pos1:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if ((_pos1 >= ((0 : GoInt64))) && (_err == null)) {
                    var __tmp__ = _sr.seek(_n - ((1 : GoInt64)), ((1 : GoInt))), _pos2:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if ((_pos2 < ((0 : GoInt64))) || (_err != null)) {
                        return _err;
                    };
                    _seekSkipped = _pos2 - _pos1;
                };
            };
        };
        var __tmp__ = stdgo.io.Io.copyN(stdgo.io.Io.discard, _r, _n - _seekSkipped), _copySkipped:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err == stdgo.io.Io.eof) && ((_seekSkipped + _copySkipped) < _n)) {
            _err = stdgo.io.Io.errUnexpectedEOF;
        };
        return _err;
    }
/**
    // hasNUL reports whether the NUL character exists within s.
**/
function _hasNUL(_s:GoString):Bool {
        return stdgo.strings.Strings.contains(_s, (((haxe.io.Bytes.ofHex("00") : GoString))));
    }
/**
    // isASCII reports whether the input is an ASCII C-style string.
**/
function _isASCII(_s:GoString):Bool {
        for (_0 => _c in _s) {
            if ((_c >= ((128 : GoInt32))) || (_c == ((0 : GoInt32)))) {
                return false;
            };
        };
        return true;
    }
/**
    // toASCII converts the input to an ASCII C-style string.
    // This is a best effort conversion, so invalid characters are dropped.
**/
function _toASCII(_s:GoString):GoString {
        if (_isASCII(_s)) {
            return _s;
        };
        var _b = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__((((_s != null ? _s.length : ((0 : GoInt))) : GoInt)).toBasic());
        for (_0 => _c in _s) {
            if ((_c < ((128 : GoInt32))) && (_c != ((0 : GoInt32)))) {
                _b = (_b != null ? _b.__append__(((_c : GoByte))) : new Slice<GoUInt8>(((_c : GoByte))));
            };
        };
        return ((_b : GoString));
    }
/**
    // fitsInBase256 reports whether x can be encoded into n bytes using base-256
    // encoding. Unlike octal encoding, base-256 encoding does not require that the
    // string ends with a NUL character. Thus, all n bytes are available for output.
    //
    // If operating in binary mode, this assumes strict GNU binary mode; which means
    // that the first byte can only be either 0x80 or 0xff. Thus, the first byte is
    // equivalent to the sign bit in two's complement form.
**/
function _fitsInBase256(_n:GoInt, _x:GoInt64):Bool {
        var _binBits:GoUInt = (((_n - ((1 : GoInt))) : GoUInt)) * ((8 : GoUInt));
        return (_n >= ((9 : GoInt))) || ((_x >= (((-1 : GoInt64)) << _binBits)) && (_x < (((1 : GoInt64)) << _binBits)));
    }
/**
    // fitsInOctal reports whether the integer x fits in a field n-bytes long
    // using octal encoding with the appropriate NUL terminator.
**/
function _fitsInOctal(_n:GoInt, _x:GoInt64):Bool {
        var _octBits:GoUInt = (((_n - ((1 : GoInt))) : GoUInt)) * ((3 : GoUInt));
        return (_x >= ((0 : GoInt64))) && ((_n >= ((22 : GoInt))) || (_x < (((1 : GoInt64)) << _octBits)));
    }
/**
    // parsePAXTime takes a string of the form %d.%d as described in the PAX
    // specification. Note that this implementation allows for negative timestamps,
    // which is allowed for by the PAX specification, but not always portable.
**/
function _parsePAXTime(_s:GoString):{ var _0 : stdgo.time.Time.Time; var _1 : Error; } {
        {};
        var __tmp__ = stdgo.strings.Strings.cut(_s, ((("." : GoString)))), _ss:GoString = __tmp__._0, _sn:GoString = __tmp__._1, _0:Bool = __tmp__._2;
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_ss, ((10 : GoInt)), ((64 : GoInt))), _secs:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((new stdgo.time.Time.Time() : stdgo.time.Time.Time)), _1 : errHeader };
        };
        if ((_sn != null ? _sn.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : (stdgo.time.Time.unix(_secs, ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(_secs, ((0 : GoInt64))).__copy__()), _1 : ((null : stdgo.Error)) };
        };
        if (stdgo.strings.Strings.trim(_sn, ((("0123456789" : GoString)))) != ((("" : GoString)))) {
            return { _0 : ((new stdgo.time.Time.Time() : stdgo.time.Time.Time)), _1 : errHeader };
        };
        if ((_sn != null ? _sn.length : ((0 : GoInt))) < ((9 : GoInt))) {
            _sn = _sn + (stdgo.strings.Strings.repeat(((("0" : GoString))), ((9 : GoInt)) - (_sn != null ? _sn.length : ((0 : GoInt)))));
        } else {
            _sn = ((_sn.__slice__(0, ((9 : GoInt))) : GoString));
        };
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_sn, ((10 : GoInt)), ((64 : GoInt))), _nsecs:GoInt64 = __tmp__._0, _1:stdgo.Error = __tmp__._1;
        if (((_ss != null ? _ss.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_ss != null ? _ss[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("-" : GoString))).code : GoRune)))) {
            return { _0 : (stdgo.time.Time.unix(_secs, ((-1 : GoInt64)) * _nsecs) == null ? null : stdgo.time.Time.unix(_secs, ((-1 : GoInt64)) * _nsecs).__copy__()), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : (stdgo.time.Time.unix(_secs, _nsecs) == null ? null : stdgo.time.Time.unix(_secs, _nsecs).__copy__()), _1 : ((null : stdgo.Error)) };
    }
/**
    // formatPAXTime converts ts into a time of the form %d.%d as described in the
    // PAX specification. This function is capable of negative timestamps.
**/
function _formatPAXTime(_ts:stdgo.time.Time.Time):GoString {
        var _s:GoString = (("" : GoString));
        var _secs:GoInt64 = _ts.unix(), _nsecs:GoInt = _ts.nanosecond();
        if (_nsecs == ((0 : GoInt))) {
            return stdgo.strconv.Strconv.formatInt(_secs, ((10 : GoInt)));
        };
        var _sign:GoString = ((("" : GoString)));
        if (_secs < ((0 : GoInt64))) {
            _sign = ((("-" : GoString)));
            _secs = -(_secs + ((1 : GoInt64)));
            _nsecs = -(_nsecs - ((1e+09 : GoInt)));
        };
        return stdgo.strings.Strings.trimRight(stdgo.fmt.Fmt.sprintf(((("%s%d.%09d" : GoString))), Go.toInterface(_sign), Go.toInterface(_secs), Go.toInterface(_nsecs)), ((("0" : GoString))));
    }
/**
    // parsePAXRecord parses the input PAX record string into a key-value pair.
    // If parsing is successful, it will slice off the currently read record and
    // return the remainder as r.
**/
function _parsePAXRecord(_s:GoString):{ var _0 : GoString; var _1 : GoString; var _2 : GoString; var _3 : Error; } {
        var _k:GoString = (("" : GoString)), _v:GoString = (("" : GoString)), _r:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        var __tmp__ = stdgo.strings.Strings.cut(_s, (((" " : GoString)))), _nStr:GoString = __tmp__._0, _rest:GoString = __tmp__._1, _ok:Bool = __tmp__._2;
        if (!_ok) {
            return { _0 : ((("" : GoString))), _1 : ((("" : GoString))), _2 : _s, _3 : errHeader };
        };
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_nStr, ((10 : GoInt)), ((0 : GoInt))), _n:GoInt64 = __tmp__._0, _perr:stdgo.Error = __tmp__._1;
        if (((_perr != null) || (_n < ((5 : GoInt64)))) || (_n > (((_s != null ? _s.length : ((0 : GoInt))) : GoInt64)))) {
            return { _0 : ((("" : GoString))), _1 : ((("" : GoString))), _2 : _s, _3 : errHeader };
        };
        _n = _n - (((((_nStr != null ? _nStr.length : ((0 : GoInt))) + ((1 : GoInt))) : GoInt64)));
        if (_n <= ((0 : GoInt64))) {
            return { _0 : ((("" : GoString))), _1 : ((("" : GoString))), _2 : _s, _3 : errHeader };
        };
        var _rec:GoString = ((_rest.__slice__(0, _n - ((1 : GoInt64))) : GoString)), _nl:GoString = ((_rest.__slice__(_n - ((1 : GoInt64)), _n) : GoString)), _rem:GoString = ((_rest.__slice__(_n) : GoString));
        if (_nl != ((("\n" : GoString)))) {
            return { _0 : ((("" : GoString))), _1 : ((("" : GoString))), _2 : _s, _3 : errHeader };
        };
        {
            var __tmp__ = stdgo.strings.Strings.cut(_rec, ((("=" : GoString))));
            _k = __tmp__._0;
            _v = __tmp__._1;
            _ok = __tmp__._2;
        };
        if (!_ok) {
            return { _0 : ((("" : GoString))), _1 : ((("" : GoString))), _2 : _s, _3 : errHeader };
        };
        if (!_validPAXRecord(_k, _v)) {
            return { _0 : ((("" : GoString))), _1 : ((("" : GoString))), _2 : _s, _3 : errHeader };
        };
        return { _0 : _k, _1 : _v, _2 : _rem, _3 : ((null : stdgo.Error)) };
    }
/**
    // formatPAXRecord formats a single PAX record, prefixing it with the
    // appropriate length.
**/
function _formatPAXRecord(_k:GoString, _v:GoString):{ var _0 : GoString; var _1 : Error; } {
        if (!_validPAXRecord(_k, _v)) {
            return { _0 : ((("" : GoString))), _1 : errHeader };
        };
        {};
        var _size:GoInt = ((_k != null ? _k.length : ((0 : GoInt))) + (_v != null ? _v.length : ((0 : GoInt)))) + ((3 : GoInt));
        _size = _size + ((stdgo.strconv.Strconv.itoa(_size) != null ? stdgo.strconv.Strconv.itoa(_size).length : ((0 : GoInt))));
        var _record:GoString = ((((stdgo.strconv.Strconv.itoa(_size) + (((" " : GoString)))) + _k) + ((("=" : GoString)))) + _v) + ((("\n" : GoString)));
        if ((_record != null ? _record.length : ((0 : GoInt))) != _size) {
            _size = (_record != null ? _record.length : ((0 : GoInt)));
            _record = ((((stdgo.strconv.Strconv.itoa(_size) + (((" " : GoString)))) + _k) + ((("=" : GoString)))) + _v) + ((("\n" : GoString)));
        };
        return { _0 : _record, _1 : ((null : stdgo.Error)) };
    }
/**
    // validPAXRecord reports whether the key-value pair is valid where each
    // record is formatted as:
    //	"%d %s=%s\n" % (size, key, value)
    //
    // Keys and values should be UTF-8, but the number of bad writers out there
    // forces us to be a more liberal.
    // Thus, we only reject all keys with NUL, and only reject NULs in values
    // for the PAX version of the USTAR string fields.
    // The key must not contain an '=' character.
**/
function _validPAXRecord(_k:GoString, _v:GoString):Bool {
        if ((_k == ((("" : GoString)))) || stdgo.strings.Strings.contains(_k, ((("=" : GoString))))) {
            return false;
        };
        if (_k == ((("path" : GoString))) || _k == ((("linkpath" : GoString))) || _k == ((("uname" : GoString))) || _k == ((("gname" : GoString)))) {
            return !_hasNUL(_v);
        } else {
            return !_hasNUL(_k);
        };
    }
/**
    // NewWriter creates a new Writer writing to w.
**/
function newWriter(_w:stdgo.io.Io.Writer):Writer {
        return (({ _w : _w, _curr : ((new T_regFileWriter(_w, ((0 : GoInt64))) : T_regFileWriter)), _pad : 0, _hdr : new Header(), _blk : new T_block(), _err : new stdgo.Error() } : Writer));
    }
/**
    // splitUSTARPath splits a path according to USTAR prefix and suffix rules.
    // If the path is not splittable, then it will return ("", "", false).
**/
function _splitUSTARPath(_name:GoString):{ var _0 : GoString; var _1 : GoString; var _2 : Bool; } {
        var _prefix:GoString = (("" : GoString)), _suffix:GoString = (("" : GoString)), _ok:Bool = false;
        var _length:GoInt = (_name != null ? _name.length : ((0 : GoInt)));
        if ((_length <= ((100 : GoInt))) || !_isASCII(_name)) {
            return { _0 : ((("" : GoString))), _1 : ((("" : GoString))), _2 : false };
        } else if (_length > ((156 : GoInt))) {
            _length = ((156 : GoInt));
        } else if ((_name != null ? _name[_length - ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune))) {
            _length--;
        };
        var _i:GoInt = stdgo.strings.Strings.lastIndex(((_name.__slice__(0, _length) : GoString)), ((("/" : GoString))));
        var _nlen:GoInt = ((_name != null ? _name.length : ((0 : GoInt))) - _i) - ((1 : GoInt));
        var _plen:GoInt = _i;
        if ((((_i <= ((0 : GoInt))) || (_nlen > ((100 : GoInt)))) || (_nlen == ((0 : GoInt)))) || (_plen > ((155 : GoInt)))) {
            return { _0 : ((("" : GoString))), _1 : ((("" : GoString))), _2 : false };
        };
        return { _0 : ((_name.__slice__(0, _i) : GoString)), _1 : ((_name.__slice__(_i + ((1 : GoInt))) : GoString)), _2 : true };
    }
/**
    // ensureEOF checks whether r is at EOF, reporting ErrWriteTooLong if not so.
**/
function _ensureEOF(_r:stdgo.io.Io.Reader):Error {
        var __tmp__ = _tryReadFull(_r, ((new Slice<GoByte>(((0 : GoUInt8))) : Slice<GoByte>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n > ((0 : GoInt))) {
            return errWriteTooLong;
        } else if (_err == stdgo.io.Io.eof) {
            return ((null : stdgo.Error));
        } else {
            return _err;
        };
    }
@:keep class Header_static_extension {
    /**
        // FileInfo returns an fs.FileInfo for the Header.
    **/
    @:keep
    public static function fileInfo( _h:Header):stdgo.io.fs.Fs.FileInfo {
        return ((new T_headerFileInfo(_h) : T_headerFileInfo));
    }
    /**
        // allowedFormats determines which formats can be used.
        // The value returned is the logical OR of multiple possible formats.
        // If the value is FormatUnknown, then the input Header cannot be encoded
        // and an error is returned explaining why.
        //
        // As a by-product of checking the fields, this function returns paxHdrs, which
        // contain all fields that could not be directly encoded.
        // A value receiver ensures that this method does not mutate the source Header.
    **/
    @:keep
    public static function _allowedFormats( _h:Header):{ var _0 : Format; var _1 : GoMap<GoString, GoString>; var _2 : Error; } {
        var _format:Format = new Format(), _paxHdrs:GoMap<GoString, GoString> = ((null : GoMap<GoString, GoString>)), _err:Error = ((null : stdgo.Error));
        _format = ((14 : GoInt));
        _paxHdrs = ((new GoObjectMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))) : GoMap<GoString, GoString>));
        var _whyNoUSTAR:GoString = (("" : GoString)), _whyNoPAX:GoString = (("" : GoString)), _whyNoGNU:GoString = (("" : GoString));
        var _preferPAX:Bool = false;
        var _verifyString:(GoString, GoInt, GoString, GoString) -> Void = function(_s:GoString, _size:GoInt, _name:GoString, _paxKey:GoString):Void {
            var _tooLong:Bool = (_s != null ? _s.length : ((0 : GoInt))) > _size;
            var _allowLongGNU:Bool = (_paxKey == ((("path" : GoString)))) || (_paxKey == ((("linkpath" : GoString))));
            if (_hasNUL(_s) || (_tooLong && !_allowLongGNU)) {
                _whyNoGNU = stdgo.fmt.Fmt.sprintf(((("GNU cannot encode %s=%q" : GoString))), Go.toInterface(_name), Go.toInterface(_s));
                _format._mustNotBe(((8 : GoInt)));
            };
            if (!_isASCII(_s) || _tooLong) {
                var _canSplitUSTAR:Bool = _paxKey == ((("path" : GoString)));
                {
                    var __tmp__ = _splitUSTARPath(_s), _0:GoString = __tmp__._0, _1:GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                    if (!_canSplitUSTAR || !_ok) {
                        _whyNoUSTAR = stdgo.fmt.Fmt.sprintf(((("USTAR cannot encode %s=%q" : GoString))), Go.toInterface(_name), Go.toInterface(_s));
                        _format._mustNotBe(((2 : GoInt)));
                    };
                };
                if (_paxKey == ((("" : GoString)))) {
                    _whyNoPAX = stdgo.fmt.Fmt.sprintf(((("PAX cannot encode %s=%q" : GoString))), Go.toInterface(_name), Go.toInterface(_s));
                    _format._mustNotBe(((4 : GoInt)));
                } else {
                    if (_paxHdrs != null) _paxHdrs[_paxKey] = _s;
                };
            };
            {
                var __tmp__ = (_h.paxrecords != null && _h.paxrecords.__exists__(_paxKey) ? { value : _h.paxrecords[_paxKey], ok : true } : { value : (("" : GoString)), ok : false }), _v:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (_ok && (_v == _s)) {
                    if (_paxHdrs != null) _paxHdrs[_paxKey] = _v;
                };
            };
        };
        var _verifyNumeric:(GoInt64, GoInt, GoString, GoString) -> Void = function(_n:GoInt64, _size:GoInt, _name:GoString, _paxKey:GoString):Void {
            if (!_fitsInBase256(_size, _n)) {
                _whyNoGNU = stdgo.fmt.Fmt.sprintf(((("GNU cannot encode %s=%d" : GoString))), Go.toInterface(_name), Go.toInterface(_n));
                _format._mustNotBe(((8 : GoInt)));
            };
            if (!_fitsInOctal(_size, _n)) {
                _whyNoUSTAR = stdgo.fmt.Fmt.sprintf(((("USTAR cannot encode %s=%d" : GoString))), Go.toInterface(_name), Go.toInterface(_n));
                _format._mustNotBe(((2 : GoInt)));
                if (_paxKey == ((("" : GoString)))) {
                    _whyNoPAX = stdgo.fmt.Fmt.sprintf(((("PAX cannot encode %s=%d" : GoString))), Go.toInterface(_name), Go.toInterface(_n));
                    _format._mustNotBe(((4 : GoInt)));
                } else {
                    if (_paxHdrs != null) _paxHdrs[_paxKey] = stdgo.strconv.Strconv.formatInt(_n, ((10 : GoInt)));
                };
            };
            {
                var __tmp__ = (_h.paxrecords != null && _h.paxrecords.__exists__(_paxKey) ? { value : _h.paxrecords[_paxKey], ok : true } : { value : (("" : GoString)), ok : false }), _v:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (_ok && (_v == stdgo.strconv.Strconv.formatInt(_n, ((10 : GoInt))))) {
                    if (_paxHdrs != null) _paxHdrs[_paxKey] = _v;
                };
            };
        };
        var _verifyTime:(stdgo.time.Time.Time, GoInt, GoString, GoString) -> Void = function(_ts:stdgo.time.Time.Time, _size:GoInt, _name:GoString, _paxKey:GoString):Void {
            if (_ts.isZero()) {
                return;
            };
            if (!_fitsInBase256(_size, _ts.unix())) {
                _whyNoGNU = stdgo.fmt.Fmt.sprintf(((("GNU cannot encode %s=%v" : GoString))), Go.toInterface(_name), Go.toInterface(_ts));
                _format._mustNotBe(((8 : GoInt)));
            };
            var _isMtime:Bool = _paxKey == ((("mtime" : GoString)));
            var _fitsOctal:Bool = _fitsInOctal(_size, _ts.unix());
            if ((_isMtime && !_fitsOctal) || !_isMtime) {
                _whyNoUSTAR = stdgo.fmt.Fmt.sprintf(((("USTAR cannot encode %s=%v" : GoString))), Go.toInterface(_name), Go.toInterface(_ts));
                _format._mustNotBe(((2 : GoInt)));
            };
            var _needsNano:Bool = _ts.nanosecond() != ((0 : GoInt));
            if ((!_isMtime || !_fitsOctal) || _needsNano) {
                _preferPAX = true;
                if (_paxKey == ((("" : GoString)))) {
                    _whyNoPAX = stdgo.fmt.Fmt.sprintf(((("PAX cannot encode %s=%v" : GoString))), Go.toInterface(_name), Go.toInterface(_ts));
                    _format._mustNotBe(((4 : GoInt)));
                } else {
                    if (_paxHdrs != null) _paxHdrs[_paxKey] = _formatPAXTime((_ts == null ? null : _ts.__copy__()));
                };
            };
            {
                var __tmp__ = (_h.paxrecords != null && _h.paxrecords.__exists__(_paxKey) ? { value : _h.paxrecords[_paxKey], ok : true } : { value : (("" : GoString)), ok : false }), _v:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (_ok && (_v == _formatPAXTime((_ts == null ? null : _ts.__copy__())))) {
                    if (_paxHdrs != null) _paxHdrs[_paxKey] = _v;
                };
            };
        };
        var _blk:T_block = new T_block();
        var _v7 = _blk._toV7();
        var _ustar = _blk._toUSTAR();
        var _gnu = _blk._toGNU();
        _verifyString(_h.name, (_v7._name() != null ? _v7._name().length : ((0 : GoInt))), ((("Name" : GoString))), ((("path" : GoString))));
        _verifyString(_h.linkname, (_v7._linkName() != null ? _v7._linkName().length : ((0 : GoInt))), ((("Linkname" : GoString))), ((("linkpath" : GoString))));
        _verifyString(_h.uname, (_ustar._userName() != null ? _ustar._userName().length : ((0 : GoInt))), ((("Uname" : GoString))), ((("uname" : GoString))));
        _verifyString(_h.gname, (_ustar._groupName() != null ? _ustar._groupName().length : ((0 : GoInt))), ((("Gname" : GoString))), ((("gname" : GoString))));
        _verifyNumeric(_h.mode, (_v7._mode() != null ? _v7._mode().length : ((0 : GoInt))), ((("Mode" : GoString))), ((("" : GoString))));
        _verifyNumeric(((_h.uid : GoInt64)), (_v7._uid() != null ? _v7._uid().length : ((0 : GoInt))), ((("Uid" : GoString))), ((("uid" : GoString))));
        _verifyNumeric(((_h.gid : GoInt64)), (_v7._gid() != null ? _v7._gid().length : ((0 : GoInt))), ((("Gid" : GoString))), ((("gid" : GoString))));
        _verifyNumeric(_h.size, (_v7._size() != null ? _v7._size().length : ((0 : GoInt))), ((("Size" : GoString))), ((("size" : GoString))));
        _verifyNumeric(_h.devmajor, (_ustar._devMajor() != null ? _ustar._devMajor().length : ((0 : GoInt))), ((("Devmajor" : GoString))), ((("" : GoString))));
        _verifyNumeric(_h.devminor, (_ustar._devMinor() != null ? _ustar._devMinor().length : ((0 : GoInt))), ((("Devminor" : GoString))), ((("" : GoString))));
        _verifyTime((_h.modTime == null ? null : _h.modTime.__copy__()), (_v7._modTime() != null ? _v7._modTime().length : ((0 : GoInt))), ((("ModTime" : GoString))), ((("mtime" : GoString))));
        _verifyTime((_h.accessTime == null ? null : _h.accessTime.__copy__()), (_gnu._accessTime() != null ? _gnu._accessTime().length : ((0 : GoInt))), ((("AccessTime" : GoString))), ((("atime" : GoString))));
        _verifyTime((_h.changeTime == null ? null : _h.changeTime.__copy__()), (_gnu._changeTime() != null ? _gnu._changeTime().length : ((0 : GoInt))), ((("ChangeTime" : GoString))), ((("ctime" : GoString))));
        var _whyOnlyPAX:GoString = (("" : GoString)), _whyOnlyGNU:GoString = (("" : GoString));
        if (_h.typeflag == ((48 : GoUInt8)) || _h.typeflag == ((51 : GoUInt8)) || _h.typeflag == ((52 : GoUInt8)) || _h.typeflag == ((54 : GoUInt8)) || _h.typeflag == ((83 : GoUInt8))) {
            if (stdgo.strings.Strings.hasSuffix(_h.name, ((("/" : GoString))))) {
                return { _0 : ((0 : GoInt)), _1 : ((null : GoMap<GoString, GoString>)), _2 : {
                    final __self__ = new T_headerError_wrapper(((new T_headerError(((("filename may not have trailing slash" : GoString)))) : T_headerError)));
                    __self__.error = #if !macro function():GoString return ((new T_headerError(((("filename may not have trailing slash" : GoString)))) : T_headerError)).error() #else null #end;
                    __self__;
                } };
            };
        } else if (_h.typeflag == ((120 : GoUInt8)) || _h.typeflag == ((76 : GoUInt8)) || _h.typeflag == ((75 : GoUInt8))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : GoMap<GoString, GoString>)), _2 : {
                final __self__ = new T_headerError_wrapper(((new T_headerError(((("cannot manually encode TypeXHeader, TypeGNULongName, or TypeGNULongLink headers" : GoString)))) : T_headerError)));
                __self__.error = #if !macro function():GoString return ((new T_headerError(((("cannot manually encode TypeXHeader, TypeGNULongName, or TypeGNULongLink headers" : GoString)))) : T_headerError)).error() #else null #end;
                __self__;
            } };
        } else if (_h.typeflag == ((103 : GoUInt8))) {
            var _h2:Header = (({ name : _h.name, typeflag : _h.typeflag, xattrs : _h.xattrs, paxrecords : _h.paxrecords, format : _h.format, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0 } : Header));
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_h), Go.toInterface(_h2))) {
                return { _0 : ((0 : GoInt)), _1 : ((null : GoMap<GoString, GoString>)), _2 : {
                    final __self__ = new T_headerError_wrapper(((new T_headerError(((("only PAXRecords should be set for TypeXGlobalHeader" : GoString)))) : T_headerError)));
                    __self__.error = #if !macro function():GoString return ((new T_headerError(((("only PAXRecords should be set for TypeXGlobalHeader" : GoString)))) : T_headerError)).error() #else null #end;
                    __self__;
                } };
            };
            _whyOnlyPAX = ((("only PAX supports TypeXGlobalHeader" : GoString)));
            _format._mayOnlyBe(Go.pointer(_format), ((4 : GoInt)));
        };
        if (!_isHeaderOnlyType(_h.typeflag) && (_h.size < ((0 : GoInt64)))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : GoMap<GoString, GoString>)), _2 : {
                final __self__ = new T_headerError_wrapper(((new T_headerError(((("negative size on header-only type" : GoString)))) : T_headerError)));
                __self__.error = #if !macro function():GoString return ((new T_headerError(((("negative size on header-only type" : GoString)))) : T_headerError)).error() #else null #end;
                __self__;
            } };
        };
        if ((_h.xattrs != null ? _h.xattrs.length : ((0 : GoInt))) > ((0 : GoInt))) {
            for (_k => _v in _h.xattrs) {
                if (_paxHdrs != null) _paxHdrs[((("SCHILY.xattr." : GoString))) + _k] = _v;
            };
            _whyOnlyPAX = ((("only PAX supports Xattrs" : GoString)));
            _format._mayOnlyBe(Go.pointer(_format), ((4 : GoInt)));
        };
        if ((_h.paxrecords != null ? _h.paxrecords.length : ((0 : GoInt))) > ((0 : GoInt))) {
            for (_k => _v in _h.paxrecords) {
                {
                    var __tmp__ = (_paxHdrs != null && _paxHdrs.__exists__(_k) ? { value : _paxHdrs[_k], ok : true } : { value : (("" : GoString)), ok : false }), _0:GoString = __tmp__.value, _exists:Bool = __tmp__.ok;
                    if (_exists) {
                        continue;
                    } else if (_h.typeflag == ((103 : GoUInt8))) {
                        if (_paxHdrs != null) _paxHdrs[_k] = _v;
                    } else if (!(_basicKeys != null ? _basicKeys[_k] : false) && !stdgo.strings.Strings.hasPrefix(_k, ((("GNU.sparse." : GoString))))) {
                        if (_paxHdrs != null) _paxHdrs[_k] = _v;
                    };
                };
            };
            _whyOnlyPAX = ((("only PAX supports PAXRecords" : GoString)));
            _format._mayOnlyBe(Go.pointer(_format), ((4 : GoInt)));
        };
        for (_k => _v in _paxHdrs) {
            if (!_validPAXRecord(_k, _v)) {
                return { _0 : ((0 : GoInt)), _1 : ((null : GoMap<GoString, GoString>)), _2 : {
                    final __self__ = new T_headerError_wrapper(((new T_headerError(stdgo.fmt.Fmt.sprintf(((("invalid PAX record: %q" : GoString))), Go.toInterface((_k + (((" = " : GoString)))) + _v))) : T_headerError)));
                    __self__.error = #if !macro function():GoString return ((new T_headerError(stdgo.fmt.Fmt.sprintf(((("invalid PAX record: %q" : GoString))), Go.toInterface((_k + (((" = " : GoString)))) + _v))) : T_headerError)).error() #else null #end;
                    __self__;
                } };
            };
        };
        {
            var _wantFormat:Format = _h.format;
            if (_wantFormat != ((0 : GoInt))) {
                if (_wantFormat._has(((4 : GoInt))) && !_preferPAX) {
                    _wantFormat._mayBe(Go.pointer(_wantFormat), ((2 : GoInt)));
                };
                _format._mayOnlyBe(Go.pointer(_format), _wantFormat);
            };
        };
        if (_format == ((0 : GoInt))) {
            if (_h.format == ((2 : GoInt))) {
                _err = {
                    final __self__ = new T_headerError_wrapper(((new T_headerError(((("Format specifies USTAR" : GoString))), _whyNoUSTAR, _whyOnlyPAX, _whyOnlyGNU) : T_headerError)));
                    __self__.error = #if !macro function():GoString return ((new T_headerError(((("Format specifies USTAR" : GoString))), _whyNoUSTAR, _whyOnlyPAX, _whyOnlyGNU) : T_headerError)).error() #else null #end;
                    __self__;
                };
            } else if (_h.format == ((4 : GoInt))) {
                _err = {
                    final __self__ = new T_headerError_wrapper(((new T_headerError(((("Format specifies PAX" : GoString))), _whyNoPAX, _whyOnlyGNU) : T_headerError)));
                    __self__.error = #if !macro function():GoString return ((new T_headerError(((("Format specifies PAX" : GoString))), _whyNoPAX, _whyOnlyGNU) : T_headerError)).error() #else null #end;
                    __self__;
                };
            } else if (_h.format == ((8 : GoInt))) {
                _err = {
                    final __self__ = new T_headerError_wrapper(((new T_headerError(((("Format specifies GNU" : GoString))), _whyNoGNU, _whyOnlyPAX) : T_headerError)));
                    __self__.error = #if !macro function():GoString return ((new T_headerError(((("Format specifies GNU" : GoString))), _whyNoGNU, _whyOnlyPAX) : T_headerError)).error() #else null #end;
                    __self__;
                };
            } else {
                _err = {
                    final __self__ = new T_headerError_wrapper(((new T_headerError(_whyNoUSTAR, _whyNoPAX, _whyNoGNU, _whyOnlyPAX, _whyOnlyGNU) : T_headerError)));
                    __self__.error = #if !macro function():GoString return ((new T_headerError(_whyNoUSTAR, _whyNoPAX, _whyNoGNU, _whyOnlyPAX, _whyOnlyGNU) : T_headerError)).error() #else null #end;
                    __self__;
                };
            };
        };
        return { _0 : _format, _1 : _paxHdrs, _2 : _err };
    }
}
class Header_wrapper {
    /**
        // FileInfo returns an fs.FileInfo for the Header.
    **/
    @:keep
    public var fileInfo : () -> stdgo.io.fs.Fs.FileInfo = null;
    /**
        // allowedFormats determines which formats can be used.
        // The value returned is the logical OR of multiple possible formats.
        // If the value is FormatUnknown, then the input Header cannot be encoded
        // and an error is returned explaining why.
        //
        // As a by-product of checking the fields, this function returns paxHdrs, which
        // contain all fields that could not be directly encoded.
        // A value receiver ensures that this method does not mutate the source Header.
    **/
    @:keep
    public var _allowedFormats : () -> { var _0 : Format; var _1 : GoMap<GoString, GoString>; var _2 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Header;
}
@:keep class T_sparseEntry_static_extension {
    @:keep
    public static function _endOffset( _s:T_sparseEntry):GoInt64 {
        return _s.offset + _s.length;
    }
}
class T_sparseEntry_wrapper {
    @:keep
    public var _endOffset : () -> GoInt64 = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_sparseEntry;
}
@:keep class T_headerFileInfo_static_extension {
    /**
        // Mode returns the permission and mode bits for the headerFileInfo.
    **/
    @:keep
    public static function mode( _fi:T_headerFileInfo):stdgo.io.fs.Fs.FileMode {
        var _mode:stdgo.io.fs.Fs.FileMode = new stdgo.io.fs.Fs.FileMode();
        _mode = ((_fi._h.mode : stdgo.io.fs.Fs.FileMode)).perm();
        if ((_fi._h.mode & ((2048 : GoInt64))) != ((0 : GoInt64))) {
            _mode = _mode | (((8388608 : GoUInt32)));
        };
        if ((_fi._h.mode & ((1024 : GoInt64))) != ((0 : GoInt64))) {
            _mode = _mode | (((4194304 : GoUInt32)));
        };
        if ((_fi._h.mode & ((512 : GoInt64))) != ((0 : GoInt64))) {
            _mode = _mode | (((1048576 : GoUInt32)));
        };
        {
            var _m:stdgo.io.fs.Fs.FileMode = ((_fi._h.mode : stdgo.io.fs.Fs.FileMode)) & (((4095 : GoUInt32)) ^ ((-1 : GoUnTypedInt)));
            if (_m == ((16384 : GoUInt32))) {
                _mode = _mode | ((("2147483648" : GoUInt32)));
            } else if (_m == ((4096 : GoUInt32))) {
                _mode = _mode | (((33554432 : GoUInt32)));
            } else if (_m == ((40960 : GoUInt32))) {
                _mode = _mode | (((134217728 : GoUInt32)));
            } else if (_m == ((24576 : GoUInt32))) {
                _mode = _mode | (((67108864 : GoUInt32)));
            } else if (_m == ((8192 : GoUInt32))) {
                _mode = _mode | (((67108864 : GoUInt32)));
                _mode = _mode | (((2097152 : GoUInt32)));
            } else if (_m == ((49152 : GoUInt32))) {
                _mode = _mode | (((16777216 : GoUInt32)));
            };
        };
        if (_fi._h.typeflag == ((50 : GoUInt8))) {
            _mode = _mode | (((134217728 : GoUInt32)));
        } else if (_fi._h.typeflag == ((51 : GoUInt8))) {
            _mode = _mode | (((67108864 : GoUInt32)));
            _mode = _mode | (((2097152 : GoUInt32)));
        } else if (_fi._h.typeflag == ((52 : GoUInt8))) {
            _mode = _mode | (((67108864 : GoUInt32)));
        } else if (_fi._h.typeflag == ((53 : GoUInt8))) {
            _mode = _mode | ((("2147483648" : GoUInt32)));
        } else if (_fi._h.typeflag == ((54 : GoUInt8))) {
            _mode = _mode | (((33554432 : GoUInt32)));
        };
        return _mode;
    }
    /**
        // Name returns the base name of the file.
    **/
    @:keep
    public static function name( _fi:T_headerFileInfo):GoString {
        if (_fi.isDir()) {
            return stdgo.path.Path.base(stdgo.path.Path.clean(_fi._h.name));
        };
        return stdgo.path.Path.base(_fi._h.name);
    }
    @:keep
    public static function sys( _fi:T_headerFileInfo):AnyInterface {
        return Go.toInterface(_fi._h);
    }
    @:keep
    public static function modTime( _fi:T_headerFileInfo):stdgo.time.Time.Time {
        return (_fi._h.modTime == null ? null : _fi._h.modTime.__copy__());
    }
    @:keep
    public static function isDir( _fi:T_headerFileInfo):Bool {
        return _fi.mode().isDir();
    }
    @:keep
    public static function size( _fi:T_headerFileInfo):GoInt64 {
        return _fi._h.size;
    }
}
class T_headerFileInfo_wrapper {
    /**
        // Mode returns the permission and mode bits for the headerFileInfo.
    **/
    @:keep
    public var mode : () -> stdgo.io.fs.Fs.FileMode = null;
    /**
        // Name returns the base name of the file.
    **/
    @:keep
    public var name : () -> GoString = null;
    @:keep
    public var sys : () -> AnyInterface = null;
    @:keep
    public var modTime : () -> stdgo.time.Time.Time = null;
    @:keep
    public var isDir : () -> Bool = null;
    @:keep
    public var size : () -> GoInt64 = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_headerFileInfo;
}
@:keep class Reader_static_extension {
    /**
        // writeTo writes the content of the current file to w.
        // The bytes written matches the number of remaining bytes in the current file.
        //
        // If the current file is sparse and w is an io.WriteSeeker,
        // then writeTo uses Seek to skip past holes defined in Header.SparseHoles,
        // assuming that skipped regions are filled with NULs.
        // This always writes the last byte to ensure w is the right size.
        //
        // TODO(dsnet): Re-export this when adding sparse file support.
        // See https://golang.org/issue/22735
    **/
    @:keep
    public static function _writeTo( _tr:Reader, _w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        if (_tr._err != null) {
            return { _0 : ((0 : GoInt64)), _1 : _tr._err };
        };
        var __tmp__ = _tr._curr.writeTo(_w), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _tr._err = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    /**
        // Read reads from the current file in the tar archive.
        // It returns (0, io.EOF) when it reaches the end of that file,
        // until Next is called to advance to the next file.
        //
        // If the current file is sparse, then the regions marked as a hole
        // are read back as NUL-bytes.
        //
        // Calling Read on special types like TypeLink, TypeSymlink, TypeChar,
        // TypeBlock, TypeDir, and TypeFifo returns (0, io.EOF) regardless of what
        // the Header.Size claims.
    **/
    @:keep
    public static function read( _tr:Reader, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        if (_tr._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _tr._err };
        };
        var __tmp__ = _tr._curr.read(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) && (_err != stdgo.io.Io.eof)) {
            _tr._err = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    /**
        // readOldGNUSparseMap reads the sparse map from the old GNU sparse format.
        // The sparse map is stored in the tar header if it's small enough.
        // If it's larger than four entries, then one or more extension headers are used
        // to store the rest of the sparse map.
        //
        // The Header.Size does not reflect the size of any extended headers used.
        // Thus, this function will read from the raw io.Reader to fetch extra headers.
        // This method mutates blk in the process.
    **/
    @:keep
    public static function _readOldGNUSparseMap( _tr:Reader, _hdr:Header, _blk:T_block):{ var _0 : T_sparseDatas; var _1 : Error; } {
        if (_blk._getFormat() != ((8 : GoInt))) {
            return { _0 : null, _1 : errHeader };
        };
        _hdr.format._mayOnlyBe(Go.pointer(_hdr.format), ((8 : GoInt)));
        var _p:T_parser = new T_parser();
        _hdr.size = _p._parseNumeric(_blk._toGNU()._realSize());
        if (_p._err != null) {
            return { _0 : null, _1 : _p._err };
        };
        var _s:T_sparseArray = _blk._toGNU()._sparse();
        var _spd:T_sparseDatas = new Slice<T_sparseEntry>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_sparseEntry()]).__setCap__(((_s._maxEntries() : GoInt)).toBasic());
        while (true) {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _s._maxEntries(), _i++, {
                    if ((_s._entry(_i)._offset() != null ? _s._entry(_i)._offset()[((0 : GoInt))] : ((0 : GoUInt8))) == ((0 : GoUInt8))) {
                        break;
                    };
                    var _offset:GoInt64 = _p._parseNumeric(_s._entry(_i)._offset());
                    var _length:GoInt64 = _p._parseNumeric(_s._entry(_i)._length());
                    if (_p._err != null) {
                        return { _0 : null, _1 : _p._err };
                    };
                    _spd = (_spd != null ? _spd.__append__((({ offset : _offset, length : _length } : T_sparseEntry))) : new Slice<Slice<T_sparseEntry>>((({ offset : _offset, length : _length } : T_sparseEntry))));
                });
            };
            if ((_s._isExtended() != null ? _s._isExtended()[((0 : GoInt))] : ((0 : GoUInt8))) > ((0 : GoUInt8))) {
                {
                    var __tmp__ = _mustReadFull(_tr._r, ((_blk.__slice__(0) : Slice<GoUInt8>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
                _s = _blk._toSparse();
                continue;
            };
            return { _0 : _spd, _1 : ((null : stdgo.Error)) };
        };
    }
    /**
        // readHeader reads the next block header and assumes that the underlying reader
        // is already aligned to a block boundary. It returns the raw block of the
        // header in case further processing is required.
        //
        // The err will be set to io.EOF only when one of the following occurs:
        //	* Exactly 0 bytes are read and EOF is hit.
        //	* Exactly 1 block of zeros is read and EOF is hit.
        //	* At least 2 blocks of zeros are read.
    **/
    @:keep
    public static function _readHeader( _tr:Reader):{ var _0 : Header; var _1 : T_block; var _2 : Error; } {
        {
            var __tmp__ = stdgo.io.Io.readFull(_tr._r, ((_tr._blk.__slice__(0) : Slice<GoUInt8>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : null, _2 : _err };
            };
        };
        if (stdgo.bytes.Bytes.equal(((_tr._blk.__slice__(0) : Slice<GoUInt8>)), ((_zeroBlock.__slice__(0) : Slice<GoUInt8>)))) {
            {
                var __tmp__ = stdgo.io.Io.readFull(_tr._r, ((_tr._blk.__slice__(0) : Slice<GoUInt8>))), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : null, _2 : _err };
                };
            };
            if (stdgo.bytes.Bytes.equal(((_tr._blk.__slice__(0) : Slice<GoUInt8>)), ((_zeroBlock.__slice__(0) : Slice<GoUInt8>)))) {
                return { _0 : null, _1 : null, _2 : stdgo.io.Io.eof };
            };
            return { _0 : null, _1 : null, _2 : errHeader };
        };
        var _format:Format = _tr._blk._getFormat();
        if (_format == ((0 : GoInt))) {
            return { _0 : null, _1 : null, _2 : errHeader };
        };
        var _p:T_parser = new T_parser();
        var _hdr = new Header();
        var _v7 = _tr._blk._toV7();
        _hdr.typeflag = (_v7._typeFlag() != null ? _v7._typeFlag()[((0 : GoInt))] : ((0 : GoUInt8)));
        _hdr.name = _p._parseString(_v7._name());
        _hdr.linkname = _p._parseString(_v7._linkName());
        _hdr.size = _p._parseNumeric(_v7._size());
        _hdr.mode = _p._parseNumeric(_v7._mode());
        _hdr.uid = ((_p._parseNumeric(_v7._uid()) : GoInt));
        _hdr.gid = ((_p._parseNumeric(_v7._gid()) : GoInt));
        _hdr.modTime = (stdgo.time.Time.unix(_p._parseNumeric(_v7._modTime()), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(_p._parseNumeric(_v7._modTime()), ((0 : GoInt64))).__copy__());
        if (_format > ((1 : GoInt))) {
            var _ustar = _tr._blk._toUSTAR();
            _hdr.uname = _p._parseString(_ustar._userName());
            _hdr.gname = _p._parseString(_ustar._groupName());
            _hdr.devmajor = _p._parseNumeric(_ustar._devMajor());
            _hdr.devminor = _p._parseNumeric(_ustar._devMinor());
            var _prefix:GoString = (("" : GoString));
            if (_format._has(((6 : GoInt)))) {
                _hdr.format = _format;
                var _ustar = _tr._blk._toUSTAR();
                _prefix = _p._parseString(_ustar._prefix());
                var _notASCII:GoInt32 -> Bool = function(_r:GoRune):Bool {
                    return _r >= ((128 : GoInt32));
                };
                if (stdgo.bytes.Bytes.indexFunc(((_tr._blk.__slice__(0) : Slice<GoUInt8>)), _notASCII) >= ((0 : GoInt))) {
                    _hdr.format = ((0 : GoInt));
                };
                var _nul = function(_b:Slice<GoByte>):Bool {
                    return (((_b != null ? _b[(_b != null ? _b.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) : GoInt)) == ((0 : GoInt));
                };
                if (!((((((_nul(_v7._size()) && _nul(_v7._mode())) && _nul(_v7._uid())) && _nul(_v7._gid())) && _nul(_v7._modTime())) && _nul(_ustar._devMajor())) && _nul(_ustar._devMinor()))) {
                    _hdr.format = ((0 : GoInt));
                };
            } else if (_format._has(((16 : GoInt)))) {
                var _star = _tr._blk._toSTAR();
                _prefix = _p._parseString(_star._prefix());
                _hdr.accessTime = (stdgo.time.Time.unix(_p._parseNumeric(_star._accessTime()), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(_p._parseNumeric(_star._accessTime()), ((0 : GoInt64))).__copy__());
                _hdr.changeTime = (stdgo.time.Time.unix(_p._parseNumeric(_star._changeTime()), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(_p._parseNumeric(_star._changeTime()), ((0 : GoInt64))).__copy__());
            } else if (_format._has(((8 : GoInt)))) {
                _hdr.format = _format;
                var _p2:T_parser = new T_parser();
                var _gnu = _tr._blk._toGNU();
                {
                    var _b = _gnu._accessTime();
                    if ((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) != ((0 : GoUInt8))) {
                        _hdr.accessTime = (stdgo.time.Time.unix(_p2._parseNumeric(_b), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(_p2._parseNumeric(_b), ((0 : GoInt64))).__copy__());
                    };
                };
                {
                    var _b = _gnu._changeTime();
                    if ((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) != ((0 : GoUInt8))) {
                        _hdr.changeTime = (stdgo.time.Time.unix(_p2._parseNumeric(_b), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(_p2._parseNumeric(_b), ((0 : GoInt64))).__copy__());
                    };
                };
                if (_p2._err != null) {
                    {
                        final __tmp__0 = ((new stdgo.time.Time.Time() : stdgo.time.Time.Time));
                        final __tmp__1 = ((new stdgo.time.Time.Time() : stdgo.time.Time.Time));
                        _hdr.accessTime = __tmp__0;
                        _hdr.changeTime = __tmp__1;
                    };
                    var _ustar = _tr._blk._toUSTAR();
                    {
                        var _s:GoString = _p._parseString(_ustar._prefix());
                        if (_isASCII(_s)) {
                            _prefix = _s;
                        };
                    };
                    _hdr.format = ((0 : GoInt));
                };
            };
            if ((_prefix != null ? _prefix.length : ((0 : GoInt))) > ((0 : GoInt))) {
                _hdr.name = (_prefix + ((("/" : GoString)))) + _hdr.name;
            };
        };
        return { _0 : _hdr, _1 : _tr._blk, _2 : _p._err };
    }
    /**
        // readGNUSparsePAXHeaders checks the PAX headers for GNU sparse headers.
        // If they are found, then this function reads the sparse map and returns it.
        // This assumes that 0.0 headers have already been converted to 0.1 headers
        // by the PAX header parsing logic.
    **/
    @:keep
    public static function _readGNUSparsePAXHeaders( _tr:Reader, _hdr:Header):{ var _0 : T_sparseDatas; var _1 : Error; } {
        var _is1x0:Bool = false;
        var _major:GoString = (_hdr.paxrecords != null ? _hdr.paxrecords[((("GNU.sparse.major" : GoString)))] : (("" : GoString))), _minor:GoString = (_hdr.paxrecords != null ? _hdr.paxrecords[((("GNU.sparse.minor" : GoString)))] : (("" : GoString)));
        if ((_major == ((("0" : GoString)))) && ((_minor == ((("0" : GoString)))) || (_minor == ((("1" : GoString)))))) {
            _is1x0 = false;
        } else if ((_major == ((("1" : GoString)))) && (_minor == ((("0" : GoString))))) {
            _is1x0 = true;
        } else if ((_major != ((("" : GoString)))) || (_minor != ((("" : GoString))))) {
            return { _0 : null, _1 : ((null : stdgo.Error)) };
        } else if ((_hdr.paxrecords != null ? _hdr.paxrecords[((("GNU.sparse.map" : GoString)))] : (("" : GoString))) != ((("" : GoString)))) {
            _is1x0 = false;
        } else {
            return { _0 : null, _1 : ((null : stdgo.Error)) };
        };
        _hdr.format._mayOnlyBe(Go.pointer(_hdr.format), ((4 : GoInt)));
        {
            var _name:GoString = (_hdr.paxrecords != null ? _hdr.paxrecords[((("GNU.sparse.name" : GoString)))] : (("" : GoString)));
            if (_name != ((("" : GoString)))) {
                _hdr.name = _name;
            };
        };
        var _size:GoString = (_hdr.paxrecords != null ? _hdr.paxrecords[((("GNU.sparse.size" : GoString)))] : (("" : GoString)));
        if (_size == ((("" : GoString)))) {
            _size = (_hdr.paxrecords != null ? _hdr.paxrecords[((("GNU.sparse.realsize" : GoString)))] : (("" : GoString)));
        };
        if (_size != ((("" : GoString)))) {
            var __tmp__ = stdgo.strconv.Strconv.parseInt(_size, ((10 : GoInt)), ((64 : GoInt))), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : errHeader };
            };
            _hdr.size = _n;
        };
        if (_is1x0) {
            return _readGNUSparseMap1x0(_tr._curr);
        };
        return _readGNUSparseMap0x1(_hdr.paxrecords);
    }
    /**
        // handleSparseFile checks if the current file is a sparse format of any type
        // and sets the curr reader appropriately.
    **/
    @:keep
    public static function _handleSparseFile( _tr:Reader, _hdr:Header, _rawHdr:T_block):Error {
        var _spd:T_sparseDatas = new T_sparseDatas();
        var _err:Error = ((null : stdgo.Error));
        if (_hdr.typeflag == ((83 : GoUInt8))) {
            {
                var __tmp__ = _tr._readOldGNUSparseMap(_hdr, _rawHdr);
                _spd = __tmp__._0;
                _err = __tmp__._1;
            };
        } else {
            {
                var __tmp__ = _tr._readGNUSparsePAXHeaders(_hdr);
                _spd = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        if ((_err == null) && (_spd != null)) {
            if (_isHeaderOnlyType(_hdr.typeflag) || !_validateSparseEntries(_spd, _hdr.size)) {
                return errHeader;
            };
            var _sph = _invertSparseEntries(_spd, _hdr.size);
            _tr._curr = ((new T_sparseFileReader(_tr._curr, _sph, ((0 : GoInt64))) : T_sparseFileReader));
        };
        return _err;
    }
    /**
        // handleRegularFile sets up the current file reader and padding such that it
        // can only read the following logical data section. It will properly handle
        // special headers that contain no data section.
    **/
    @:keep
    public static function _handleRegularFile( _tr:Reader, _hdr:Header):Error {
        var _nb:GoInt64 = _hdr.size;
        if (_isHeaderOnlyType(_hdr.typeflag)) {
            _nb = ((0 : GoInt64));
        };
        if (_nb < ((0 : GoInt64))) {
            return errHeader;
        };
        _tr._pad = _blockPadding(_nb);
        _tr._curr = (({ _r : _tr._r, _nb : _nb } : T_regFileReader));
        return ((null : stdgo.Error));
    }
    @:keep
    public static function _next( _tr:Reader):{ var _0 : Header; var _1 : Error; } {
        var _paxHdrs:GoMap<GoString, GoString> = ((null : GoMap<GoString, GoString>));
        var _gnuLongName:GoString = (("" : GoString)), _gnuLongLink:GoString = (("" : GoString));
        var _format:Format = ((14 : GoInt));
        while (true) {
            {
                var _err:stdgo.Error = _discard(_tr._r, _tr._curr._physicalRemaining());
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            {
                var __tmp__ = _tryReadFull(_tr._r, ((_tr._blk.__slice__(0, _tr._pad) : Slice<GoUInt8>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            _tr._pad = ((0 : GoInt64));
            var __tmp__ = _tr._readHeader(), _hdr:Ref<Header> = __tmp__._0, _rawHdr:Ref<T_block> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            {
                var _err:stdgo.Error = _tr._handleRegularFile(_hdr);
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            _format._mayOnlyBe(Go.pointer(_format), _hdr.format);
            if (_hdr.typeflag == ((120 : GoUInt8)) || _hdr.typeflag == ((103 : GoUInt8))) {
                _format._mayOnlyBe(Go.pointer(_format), ((4 : GoInt)));
                {
                    var __tmp__ = _parsePAX(_tr);
                    _paxHdrs = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                if (_hdr.typeflag == ((103 : GoUInt8))) {
                    _mergePAX(_hdr, _paxHdrs);
                    return { _0 : (({ name : _hdr.name, typeflag : _hdr.typeflag, xattrs : _hdr.xattrs, paxrecords : _hdr.paxrecords, format : _format, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0 } : Header)), _1 : ((null : stdgo.Error)) };
                };
                continue;
            } else if (_hdr.typeflag == ((76 : GoUInt8)) || _hdr.typeflag == ((75 : GoUInt8))) {
                _format._mayOnlyBe(Go.pointer(_format), ((8 : GoInt)));
                var __tmp__ = stdgo.io.Io.readAll(_tr), _realname:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                var _p:T_parser = new T_parser();
                if (_hdr.typeflag == ((76 : GoUInt8))) {
                    _gnuLongName = _p._parseString(_realname);
                } else if (_hdr.typeflag == ((75 : GoUInt8))) {
                    _gnuLongLink = _p._parseString(_realname);
                };
                continue;
            } else {
                {
                    var _err:stdgo.Error = _mergePAX(_hdr, _paxHdrs);
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
                if (_gnuLongName != ((("" : GoString)))) {
                    _hdr.name = _gnuLongName;
                };
                if (_gnuLongLink != ((("" : GoString)))) {
                    _hdr.linkname = _gnuLongLink;
                };
                if (_hdr.typeflag == ((0 : GoUInt8))) {
                    if (stdgo.strings.Strings.hasSuffix(_hdr.name, ((("/" : GoString))))) {
                        _hdr.typeflag = ((53 : GoUInt8));
                    } else {
                        _hdr.typeflag = ((48 : GoUInt8));
                    };
                };
                {
                    var _err:stdgo.Error = _tr._handleRegularFile(_hdr);
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
                {
                    var _err:stdgo.Error = _tr._handleSparseFile(_hdr, _rawHdr);
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
                if (_format._has(((2 : GoInt))) && _format._has(((4 : GoInt)))) {
                    _format._mayOnlyBe(Go.pointer(_format), ((2 : GoInt)));
                };
                _hdr.format = _format;
                return { _0 : _hdr, _1 : ((null : stdgo.Error)) };
            };
        };
    }
    /**
        // Next advances to the next entry in the tar archive.
        // The Header.Size determines how many bytes can be read for the next file.
        // Any remaining data in the current file is automatically discarded.
        //
        // io.EOF is returned at the end of the input.
    **/
    @:keep
    public static function next( _tr:Reader):{ var _0 : Header; var _1 : Error; } {
        if (_tr._err != null) {
            return { _0 : null, _1 : _tr._err };
        };
        var __tmp__ = _tr._next(), _hdr:Ref<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _tr._err = _err;
        return { _0 : _hdr, _1 : _err };
    }
}
class Reader_wrapper {
    /**
        // writeTo writes the content of the current file to w.
        // The bytes written matches the number of remaining bytes in the current file.
        //
        // If the current file is sparse and w is an io.WriteSeeker,
        // then writeTo uses Seek to skip past holes defined in Header.SparseHoles,
        // assuming that skipped regions are filled with NULs.
        // This always writes the last byte to ensure w is the right size.
        //
        // TODO(dsnet): Re-export this when adding sparse file support.
        // See https://golang.org/issue/22735
    **/
    @:keep
    public var _writeTo : stdgo.io.Io.Writer -> { var _0 : GoInt64; var _1 : Error; } = null;
    /**
        // Read reads from the current file in the tar archive.
        // It returns (0, io.EOF) when it reaches the end of that file,
        // until Next is called to advance to the next file.
        //
        // If the current file is sparse, then the regions marked as a hole
        // are read back as NUL-bytes.
        //
        // Calling Read on special types like TypeLink, TypeSymlink, TypeChar,
        // TypeBlock, TypeDir, and TypeFifo returns (0, io.EOF) regardless of what
        // the Header.Size claims.
    **/
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    /**
        // readOldGNUSparseMap reads the sparse map from the old GNU sparse format.
        // The sparse map is stored in the tar header if it's small enough.
        // If it's larger than four entries, then one or more extension headers are used
        // to store the rest of the sparse map.
        //
        // The Header.Size does not reflect the size of any extended headers used.
        // Thus, this function will read from the raw io.Reader to fetch extra headers.
        // This method mutates blk in the process.
    **/
    @:keep
    public var _readOldGNUSparseMap : (Header, T_block) -> { var _0 : T_sparseDatas; var _1 : Error; } = null;
    /**
        // readHeader reads the next block header and assumes that the underlying reader
        // is already aligned to a block boundary. It returns the raw block of the
        // header in case further processing is required.
        //
        // The err will be set to io.EOF only when one of the following occurs:
        //	* Exactly 0 bytes are read and EOF is hit.
        //	* Exactly 1 block of zeros is read and EOF is hit.
        //	* At least 2 blocks of zeros are read.
    **/
    @:keep
    public var _readHeader : () -> { var _0 : Header; var _1 : T_block; var _2 : Error; } = null;
    /**
        // readGNUSparsePAXHeaders checks the PAX headers for GNU sparse headers.
        // If they are found, then this function reads the sparse map and returns it.
        // This assumes that 0.0 headers have already been converted to 0.1 headers
        // by the PAX header parsing logic.
    **/
    @:keep
    public var _readGNUSparsePAXHeaders : Header -> { var _0 : T_sparseDatas; var _1 : Error; } = null;
    /**
        // handleSparseFile checks if the current file is a sparse format of any type
        // and sets the curr reader appropriately.
    **/
    @:keep
    public var _handleSparseFile : (Header, T_block) -> Error = null;
    /**
        // handleRegularFile sets up the current file reader and padding such that it
        // can only read the following logical data section. It will properly handle
        // special headers that contain no data section.
    **/
    @:keep
    public var _handleRegularFile : Header -> Error = null;
    @:keep
    public var _next : () -> { var _0 : Header; var _1 : Error; } = null;
    /**
        // Next advances to the next entry in the tar archive.
        // The Header.Size determines how many bytes can be read for the next file.
        // Any remaining data in the current file is automatically discarded.
        //
        // io.EOF is returned at the end of the input.
    **/
    @:keep
    public var next : () -> { var _0 : Header; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Reader;
}
@:keep class T_regFileReader_static_extension {
    /**
        // logicalRemaining implements fileState.physicalRemaining.
    **/
    @:keep
    public static function _physicalRemaining( _fr:T_regFileReader):GoInt64 {
        return _fr._nb;
    }
    /**
        // logicalRemaining implements fileState.logicalRemaining.
    **/
    @:keep
    public static function _logicalRemaining( _fr:T_regFileReader):GoInt64 {
        return _fr._nb;
    }
    @:keep
    public static function writeTo( _fr:T_regFileReader, _w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        return stdgo.io.Io.copy(_w, ((new T__struct_0(_fr) : T__struct_0)));
    }
    @:keep
    public static function read( _fr:T_regFileReader, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if ((((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)) > _fr._nb) {
            _b = ((_b.__slice__(0, _fr._nb) : Slice<GoUInt8>));
        };
        if ((_b != null ? _b.length : ((0 : GoInt))) > ((0 : GoInt))) {
            {
                var __tmp__ = _fr._r.read(_b);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            _fr._nb = _fr._nb - (((_n : GoInt64)));
        };
        if ((_err == stdgo.io.Io.eof) && (_fr._nb > ((0 : GoInt64)))) {
            return { _0 : _n, _1 : stdgo.io.Io.errUnexpectedEOF };
        } else if ((_err == null) && (_fr._nb == ((0 : GoInt64)))) {
            return { _0 : _n, _1 : stdgo.io.Io.eof };
        } else {
            return { _0 : _n, _1 : _err };
        };
    }
}
class T_regFileReader_wrapper {
    /**
        // logicalRemaining implements fileState.physicalRemaining.
    **/
    @:keep
    public var _physicalRemaining : () -> GoInt64 = null;
    /**
        // logicalRemaining implements fileState.logicalRemaining.
    **/
    @:keep
    public var _logicalRemaining : () -> GoInt64 = null;
    @:keep
    public var writeTo : stdgo.io.Io.Writer -> { var _0 : GoInt64; var _1 : Error; } = null;
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_regFileReader;
}
@:keep class T_sparseFileReader_static_extension {
    @:keep
    public static function _physicalRemaining( _sr:T_sparseFileReader):GoInt64 {
        return _sr._fr._physicalRemaining();
    }
    @:keep
    public static function _logicalRemaining( _sr:T_sparseFileReader):GoInt64 {
        return (_sr._sp != null ? _sr._sp[(_sr._sp != null ? _sr._sp.length : ((0 : GoInt))) - ((1 : GoInt))] : new T_sparseEntry())._endOffset() - _sr._pos;
    }
    @:keep
    public static function writeTo( _sr:T_sparseFileReader, _w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        var __tmp__ = try {
            { value : ((((_w.__underlying__().value : Dynamic)) : stdgo.io.Io.WriteSeeker)), ok : true };
        } catch(_) {
            { value : ((null : stdgo.io.Io.WriteSeeker)), ok : false };
        }, _ws = __tmp__.value, _ok = __tmp__.ok;
        if (_ok) {
            {
                var __tmp__ = _ws.seek(((0 : GoInt64)), ((1 : GoInt))), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _ok = false;
                };
            };
        };
        if (!_ok) {
            return stdgo.io.Io.copy(_w, ((new T__struct_0(_sr) : T__struct_0)));
        };
        var _writeLastByte:Bool = false;
        var _pos0:GoInt64 = _sr._pos;
        while (((_sr._logicalRemaining() > ((0 : GoInt64))) && !_writeLastByte) && (_err == null)) {
            var _nf:GoInt64 = ((0 : GoInt64));
            var _holeStart:GoInt64 = (_sr._sp != null ? _sr._sp[((0 : GoInt))] : new T_sparseEntry()).offset, _holeEnd:GoInt64 = (_sr._sp != null ? _sr._sp[((0 : GoInt))] : new T_sparseEntry())._endOffset();
            if (_sr._pos < _holeStart) {
                _nf = _holeStart - _sr._pos;
                {
                    var __tmp__ = stdgo.io.Io.copyN(_ws, _sr._fr, _nf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else {
                _nf = _holeEnd - _sr._pos;
                if (_sr._physicalRemaining() == ((0 : GoInt64))) {
                    _writeLastByte = true;
                    _nf--;
                };
                {
                    var __tmp__ = _ws.seek(_nf, ((1 : GoInt)));
                    _err = __tmp__._1;
                };
            };
            _sr._pos = _sr._pos + (_nf);
            if ((_sr._pos >= _holeEnd) && ((_sr._sp != null ? _sr._sp.length : ((0 : GoInt))) > ((1 : GoInt)))) {
                _sr._sp = ((_sr._sp.__slice__(((1 : GoInt))) : T_sparseHoles));
            };
        };
        if (_writeLastByte && (_err == null)) {
            {
                var __tmp__ = _ws.write(((new Slice<GoByte>(((0 : GoUInt8))) : Slice<GoByte>)));
                _err = __tmp__._1;
            };
            _sr._pos++;
        };
        _n = _sr._pos - _pos0;
        if (_err == stdgo.io.Io.eof) {
            return { _0 : _n, _1 : _errMissData };
        } else if (_err != null) {
            return { _0 : _n, _1 : _err };
        } else if ((_sr._logicalRemaining() == ((0 : GoInt64))) && (_sr._physicalRemaining() > ((0 : GoInt64)))) {
            return { _0 : _n, _1 : _errUnrefData };
        } else {
            return { _0 : _n, _1 : ((null : stdgo.Error)) };
        };
    }
    @:keep
    public static function read( _sr:T_sparseFileReader, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _finished:Bool = (((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)) >= _sr._logicalRemaining();
        if (_finished) {
            _b = ((_b.__slice__(0, _sr._logicalRemaining()) : Slice<GoUInt8>));
        };
        var _b0 = _b;
        var _endPos:GoInt64 = _sr._pos + (((_b != null ? _b.length : ((0 : GoInt))) : GoInt64));
        while ((_endPos > _sr._pos) && (_err == null)) {
            var _nf:GoInt = ((0 : GoInt));
            var _holeStart:GoInt64 = (_sr._sp != null ? _sr._sp[((0 : GoInt))] : new T_sparseEntry()).offset, _holeEnd:GoInt64 = (_sr._sp != null ? _sr._sp[((0 : GoInt))] : new T_sparseEntry())._endOffset();
            if (_sr._pos < _holeStart) {
                var _bf = ((_b.__slice__(0, _min((((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)), _holeStart - _sr._pos)) : Slice<GoUInt8>));
                {
                    var __tmp__ = _tryReadFull(_sr._fr, _bf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else {
                var _bf = ((_b.__slice__(0, _min((((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)), _holeEnd - _sr._pos)) : Slice<GoUInt8>));
                {
                    var __tmp__ = _tryReadFull(((new T_zeroReader() : T_zeroReader)), _bf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
            _b = ((_b.__slice__(_nf) : Slice<GoUInt8>));
            _sr._pos = _sr._pos + (((_nf : GoInt64)));
            if ((_sr._pos >= _holeEnd) && ((_sr._sp != null ? _sr._sp.length : ((0 : GoInt))) > ((1 : GoInt)))) {
                _sr._sp = ((_sr._sp.__slice__(((1 : GoInt))) : T_sparseHoles));
            };
        };
        _n = (_b0 != null ? _b0.length : ((0 : GoInt))) - (_b != null ? _b.length : ((0 : GoInt)));
        if (_err == stdgo.io.Io.eof) {
            return { _0 : _n, _1 : _errMissData };
        } else if (_err != null) {
            return { _0 : _n, _1 : _err };
        } else if ((_sr._logicalRemaining() == ((0 : GoInt64))) && (_sr._physicalRemaining() > ((0 : GoInt64)))) {
            return { _0 : _n, _1 : _errUnrefData };
        } else if (_finished) {
            return { _0 : _n, _1 : stdgo.io.Io.eof };
        } else {
            return { _0 : _n, _1 : ((null : stdgo.Error)) };
        };
    }
}
class T_sparseFileReader_wrapper {
    @:keep
    public var _physicalRemaining : () -> GoInt64 = null;
    @:keep
    public var _logicalRemaining : () -> GoInt64 = null;
    @:keep
    public var writeTo : stdgo.io.Io.Writer -> { var _0 : GoInt64; var _1 : Error; } = null;
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_sparseFileReader;
}
@:keep class T_zeroReader_static_extension {
    @:keep
    public static function read( _:T_zeroReader, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        for (_i => _ in _b) {
            if (_b != null) _b[_i] = ((0 : GoUInt8));
        };
        return { _0 : (_b != null ? _b.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
}
class T_zeroReader_wrapper {
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_zeroReader;
}
@:keep class T_parser_static_extension {
    @:keep
    public static function _parseOctal( _p:T_parser, _b:Slice<GoByte>):GoInt64 {
        _b = stdgo.bytes.Bytes.trim(_b, (((" " : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))));
        if ((_b != null ? _b.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return ((0 : GoInt64));
        };
        var __tmp__ = stdgo.strconv.Strconv.parseUint(_p._parseString(_b), ((8 : GoInt)), ((64 : GoInt))), _x:GoUInt64 = __tmp__._0, _perr:stdgo.Error = __tmp__._1;
        if (_perr != null) {
            _p._err = errHeader;
        };
        return ((_x : GoInt64));
    }
    /**
        // parseNumeric parses the input as being encoded in either base-256 or octal.
        // This function may return negative numbers.
        // If parsing fails or an integer overflow occurs, err will be set.
    **/
    @:keep
    public static function _parseNumeric( _p:T_parser, _b:Slice<GoByte>):GoInt64 {
        if (((_b != null ? _b.length : ((0 : GoInt))) > ((0 : GoInt))) && (((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) & ((128 : GoUInt8))) != ((0 : GoUInt8)))) {
            var _inv:GoByte = ((0 : GoUInt8));
            if (((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) & ((64 : GoUInt8))) != ((0 : GoUInt8))) {
                _inv = ((255 : GoUInt8));
            };
            var _x:GoUInt64 = ((0 : GoUInt64));
            for (_i => _c in _b) {
                _c = _c ^ (_inv);
                if (_i == ((0 : GoInt))) {
                    _c = _c & (((127 : GoUInt8)));
                };
                if ((_x >> ((56 : GoUnTypedInt))) > ((0 : GoUInt64))) {
                    _p._err = errHeader;
                    return ((0 : GoInt64));
                };
                _x = (_x << ((8 : GoUnTypedInt))) | ((_c : GoUInt64));
            };
            if ((_x >> ((63 : GoUnTypedInt))) > ((0 : GoUInt64))) {
                _p._err = errHeader;
                return ((0 : GoInt64));
            };
            if (_inv == ((255 : GoUInt8))) {
                return (-1 ^ ((_x : GoInt64)));
            };
            return ((_x : GoInt64));
        };
        return _p._parseOctal(_b);
    }
    /**
        // parseString parses bytes as a NUL-terminated C-style string.
        // If a NUL byte is not found then the whole slice is returned as a string.
    **/
    @:keep
    public static function _parseString( _:T_parser, _b:Slice<GoByte>):GoString {
        {
            var _i:GoInt = stdgo.bytes.Bytes.indexByte(_b, ((0 : GoUInt8)));
            if (_i >= ((0 : GoInt))) {
                return ((((_b.__slice__(0, _i) : Slice<GoUInt8>)) : GoString));
            };
        };
        return ((_b : GoString));
    }
}
class T_parser_wrapper {
    @:keep
    public var _parseOctal : Slice<GoByte> -> GoInt64 = null;
    /**
        // parseNumeric parses the input as being encoded in either base-256 or octal.
        // This function may return negative numbers.
        // If parsing fails or an integer overflow occurs, err will be set.
    **/
    @:keep
    public var _parseNumeric : Slice<GoByte> -> GoInt64 = null;
    /**
        // parseString parses bytes as a NUL-terminated C-style string.
        // If a NUL byte is not found then the whole slice is returned as a string.
    **/
    @:keep
    public var _parseString : Slice<GoByte> -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_parser;
}
@:keep class T_formatter_static_extension {
    @:keep
    public static function _formatOctal( _f:T_formatter, _b:Slice<GoByte>, _x:GoInt64):Void {
        if (!_fitsInOctal((_b != null ? _b.length : ((0 : GoInt))), _x)) {
            _x = ((0 : GoInt64));
            _f._err = errFieldTooLong;
        };
        var _s:GoString = stdgo.strconv.Strconv.formatInt(_x, ((8 : GoInt)));
        {
            var _n:GoInt = ((_b != null ? _b.length : ((0 : GoInt))) - (_s != null ? _s.length : ((0 : GoInt)))) - ((1 : GoInt));
            if (_n > ((0 : GoInt))) {
                _s = stdgo.strings.Strings.repeat(((("0" : GoString))), _n) + _s;
            };
        };
        _f._formatString(_b, _s);
    }
    /**
        // formatNumeric encodes x into b using base-8 (octal) encoding if possible.
        // Otherwise it will attempt to use base-256 (binary) encoding.
    **/
    @:keep
    public static function _formatNumeric( _f:T_formatter, _b:Slice<GoByte>, _x:GoInt64):Void {
        if (_fitsInOctal((_b != null ? _b.length : ((0 : GoInt))), _x)) {
            _f._formatOctal(_b, _x);
            return;
        };
        if (_fitsInBase256((_b != null ? _b.length : ((0 : GoInt))), _x)) {
            {
                var _i:GoInt = (_b != null ? _b.length : ((0 : GoInt))) - ((1 : GoInt));
                Go.cfor(_i >= ((0 : GoInt)), _i--, {
                    if (_b != null) _b[_i] = ((_x : GoByte));
                    _x = _x >> (((8 : GoUnTypedInt)));
                });
            };
            if (_b != null) (_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) | (((128 : GoUInt8)));
            return;
        };
        _f._formatOctal(_b, ((0 : GoInt64)));
        _f._err = errFieldTooLong;
    }
    /**
        // formatString copies s into b, NUL-terminating if possible.
    **/
    @:keep
    public static function _formatString( _f:T_formatter, _b:Slice<GoByte>, _s:GoString):Void {
        if ((_s != null ? _s.length : ((0 : GoInt))) > (_b != null ? _b.length : ((0 : GoInt)))) {
            _f._err = errFieldTooLong;
        };
        Go.copySlice(_b, _s);
        if ((_s != null ? _s.length : ((0 : GoInt))) < (_b != null ? _b.length : ((0 : GoInt)))) {
            if (_b != null) _b[(_s != null ? _s.length : ((0 : GoInt)))] = ((0 : GoUInt8));
        };
        if (((_s != null ? _s.length : ((0 : GoInt))) > (_b != null ? _b.length : ((0 : GoInt)))) && ((_b != null ? _b[(_b != null ? _b.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune)))) {
            var _n:GoInt = (stdgo.strings.Strings.trimRight(((_s.__slice__(0, (_b != null ? _b.length : ((0 : GoInt)))) : GoString)), ((("/" : GoString)))) != null ? stdgo.strings.Strings.trimRight(((_s.__slice__(0, (_b != null ? _b.length : ((0 : GoInt)))) : GoString)), ((("/" : GoString)))).length : ((0 : GoInt)));
            if (_b != null) _b[_n] = ((0 : GoUInt8));
        };
    }
}
class T_formatter_wrapper {
    @:keep
    public var _formatOctal : (Slice<GoByte>, GoInt64) -> Void = null;
    /**
        // formatNumeric encodes x into b using base-8 (octal) encoding if possible.
        // Otherwise it will attempt to use base-256 (binary) encoding.
    **/
    @:keep
    public var _formatNumeric : (Slice<GoByte>, GoInt64) -> Void = null;
    /**
        // formatString copies s into b, NUL-terminating if possible.
    **/
    @:keep
    public var _formatString : (Slice<GoByte>, GoString) -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_formatter;
}
@:keep class Writer_static_extension {
    /**
        // Close closes the tar archive by flushing the padding, and writing the footer.
        // If the current file (from a prior call to WriteHeader) is not fully written,
        // then this returns an error.
    **/
    @:keep
    public static function close( _tw:Writer):Error {
        if (_tw._err == errWriteAfterClose) {
            return ((null : stdgo.Error));
        };
        if (_tw._err != null) {
            return _tw._err;
        };
        var _err:stdgo.Error = _tw.flush();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor((_i < ((2 : GoInt))) && (_err == null), _i++, {
                {
                    var __tmp__ = _tw._w.write(((_zeroBlock.__slice__(0) : Slice<GoUInt8>)));
                    _err = __tmp__._1;
                };
            });
        };
        _tw._err = errWriteAfterClose;
        return _err;
    }
    /**
        // readFrom populates the content of the current file by reading from r.
        // The bytes read must match the number of remaining bytes in the current file.
        //
        // If the current file is sparse and r is an io.ReadSeeker,
        // then readFrom uses Seek to skip past holes defined in Header.SparseHoles,
        // assuming that skipped regions are all NULs.
        // This always reads the last byte to ensure r is the right size.
        //
        // TODO(dsnet): Re-export this when adding sparse file support.
        // See https://golang.org/issue/22735
    **/
    @:keep
    public static function _readFrom( _tw:Writer, _r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } {
        if (_tw._err != null) {
            return { _0 : ((0 : GoInt64)), _1 : _tw._err };
        };
        var __tmp__ = _tw._curr.readFrom(_r), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) && (_err != errWriteTooLong)) {
            _tw._err = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    /**
        // Write writes to the current file in the tar archive.
        // Write returns the error ErrWriteTooLong if more than
        // Header.Size bytes are written after WriteHeader.
        //
        // Calling Write on special types like TypeLink, TypeSymlink, TypeChar,
        // TypeBlock, TypeDir, and TypeFifo returns (0, ErrWriteTooLong) regardless
        // of what the Header.Size claims.
    **/
    @:keep
    public static function write( _tw:Writer, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        if (_tw._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _tw._err };
        };
        var __tmp__ = _tw._curr.write(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) && (_err != errWriteTooLong)) {
            _tw._err = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    /**
        // writeRawHeader writes the value of blk, regardless of its value.
        // It sets up the Writer such that it can accept a file of the given size.
        // If the flag is a special header-only flag, then the size is treated as zero.
    **/
    @:keep
    public static function _writeRawHeader( _tw:Writer, _blk:T_block, _size:GoInt64, _flag:GoByte):Error {
        {
            var _err:stdgo.Error = _tw.flush();
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = _tw._w.write(((_blk.__slice__(0) : Slice<GoUInt8>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        if (_isHeaderOnlyType(_flag)) {
            _size = ((0 : GoInt64));
        };
        _tw._curr = ((new T_regFileWriter(_tw._w, _size) : T_regFileWriter));
        _tw._pad = _blockPadding(_size);
        return ((null : stdgo.Error));
    }
    /**
        // writeRawFile writes a minimal file with the given name and flag type.
        // It uses format to encode the header format and will write data as the body.
        // It uses default values for all of the other fields (as BSD and GNU tar does).
    **/
    @:keep
    public static function _writeRawFile( _tw:Writer, _name:GoString, _data:GoString, _flag:GoByte, _format:Format):Error {
        _tw._blk._reset();
        _name = _toASCII(_name);
        if ((_name != null ? _name.length : ((0 : GoInt))) > ((100 : GoInt))) {
            _name = ((_name.__slice__(0, ((100 : GoInt))) : GoString));
        };
        _name = stdgo.strings.Strings.trimRight(_name, ((("/" : GoString))));
        var _f:T_formatter = new T_formatter();
        var _v7 = _tw._blk._toV7();
        if (_v7._typeFlag() != null) _v7._typeFlag()[((0 : GoInt))] = _flag;
        _f._formatString(_v7._name(), _name);
        _f._formatOctal(_v7._mode(), ((0 : GoInt64)));
        _f._formatOctal(_v7._uid(), ((0 : GoInt64)));
        _f._formatOctal(_v7._gid(), ((0 : GoInt64)));
        _f._formatOctal(_v7._size(), (((_data != null ? _data.length : ((0 : GoInt))) : GoInt64)));
        _f._formatOctal(_v7._modTime(), ((0 : GoInt64)));
        _tw._blk._setFormat(_format);
        if (_f._err != null) {
            return _f._err;
        };
        {
            var _err:stdgo.Error = _tw._writeRawHeader(_tw._blk, (((_data != null ? _data.length : ((0 : GoInt))) : GoInt64)), _flag);
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = stdgo.io.Io.writeString(_tw, _data), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    /**
        // templateV7Plus fills out the V7 fields of a block using values from hdr.
        // It also fills out fields (uname, gname, devmajor, devminor) that are
        // shared in the USTAR, PAX, and GNU formats using the provided formatters.
        //
        // The block returned is only valid until the next call to
        // templateV7Plus or writeRawFile.
    **/
    @:keep
    public static function _templateV7Plus( _tw:Writer, _hdr:Header, _fmtStr:T_stringFormatter, _fmtNum:T_numberFormatter):T_block {
        _tw._blk._reset();
        var _modTime:stdgo.time.Time.Time = (_hdr.modTime == null ? null : _hdr.modTime.__copy__());
        if (_modTime.isZero()) {
            _modTime = (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__());
        };
        var _v7 = _tw._blk._toV7();
        if (_v7._typeFlag() != null) _v7._typeFlag()[((0 : GoInt))] = _hdr.typeflag;
        _fmtStr(_v7._name(), _hdr.name);
        _fmtStr(_v7._linkName(), _hdr.linkname);
        _fmtNum(_v7._mode(), _hdr.mode);
        _fmtNum(_v7._uid(), ((_hdr.uid : GoInt64)));
        _fmtNum(_v7._gid(), ((_hdr.gid : GoInt64)));
        _fmtNum(_v7._size(), _hdr.size);
        _fmtNum(_v7._modTime(), _modTime.unix());
        var _ustar = _tw._blk._toUSTAR();
        _fmtStr(_ustar._userName(), _hdr.uname);
        _fmtStr(_ustar._groupName(), _hdr.gname);
        _fmtNum(_ustar._devMajor(), _hdr.devmajor);
        _fmtNum(_ustar._devMinor(), _hdr.devminor);
        return _tw._blk;
    }
    @:keep
    public static function _writeGNUHeader( _tw:Writer, _hdr:Header):Error {
        {};
        if ((_hdr.name != null ? _hdr.name.length : ((0 : GoInt))) > ((100 : GoInt))) {
            var _data:GoString = _hdr.name + (((haxe.io.Bytes.ofHex("00") : GoString)));
            {
                var _err:stdgo.Error = _tw._writeRawFile(((("././@LongLink" : GoString))), _data, ((76 : GoUInt8)), ((8 : GoInt)));
                if (_err != null) {
                    return _err;
                };
            };
        };
        if ((_hdr.linkname != null ? _hdr.linkname.length : ((0 : GoInt))) > ((100 : GoInt))) {
            var _data:GoString = _hdr.linkname + (((haxe.io.Bytes.ofHex("00") : GoString)));
            {
                var _err:stdgo.Error = _tw._writeRawFile(((("././@LongLink" : GoString))), _data, ((75 : GoUInt8)), ((8 : GoInt)));
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _f:T_formatter = new T_formatter();
        var _spd:T_sparseDatas = new T_sparseDatas();
        var _spb:Slice<GoByte> = ((null : Slice<GoUInt8>));
        var _blk = _tw._templateV7Plus(_hdr, _f._formatString, _f._formatNumeric);
        if (!_hdr.accessTime.isZero()) {
            _f._formatNumeric(_blk._toGNU()._accessTime(), _hdr.accessTime.unix());
        };
        if (!_hdr.changeTime.isZero()) {
            _f._formatNumeric(_blk._toGNU()._changeTime(), _hdr.changeTime.unix());
        };
        _blk._setFormat(((8 : GoInt)));
        {
            var _err:stdgo.Error = _tw._writeRawHeader(_blk, _hdr.size, _hdr.typeflag);
            if (_err != null) {
                return _err;
            };
        };
        if ((_spd != null ? _spd.length : ((0 : GoInt))) > ((0 : GoInt))) {
            {
                var __tmp__ = _tw._w.write(_spb), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            _tw._curr = ((new T_sparseFileWriter(_tw._curr, _spd, ((0 : GoInt64))) : T_sparseFileWriter));
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public static function _writePAXHeader( _tw:Writer, _hdr:Header, _paxHdrs:GoMap<GoString, GoString>):Error {
        var _realName:GoString = _hdr.name, _realSize:GoInt64 = _hdr.size;
        _realSize;
        var _isGlobal:Bool = _hdr.typeflag == ((103 : GoUInt8));
        if (((_paxHdrs != null ? _paxHdrs.length : ((0 : GoInt))) > ((0 : GoInt))) || _isGlobal) {
            var _keys:Slice<GoString> = ((null : Slice<GoString>));
            for (_k => _ in _paxHdrs) {
                _keys = (_keys != null ? _keys.__append__(_k) : new Slice<GoString>(_k));
            };
            stdgo.sort.Sort.strings(_keys);
            var _buf:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
            for (_0 => _k in _keys) {
                var __tmp__ = _formatPAXRecord(_k, (_paxHdrs != null ? _paxHdrs[_k] : (("" : GoString)))), _rec:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                _buf.writeString(_rec);
            };
            var _name:GoString = (("" : GoString));
            var _flag:GoByte = ((0 : GoUInt8));
            if (_isGlobal) {
                _name = _realName;
                if (_name == ((("" : GoString)))) {
                    _name = ((("GlobalHead.0.0" : GoString)));
                };
                _flag = ((103 : GoUInt8));
            } else {
                var __tmp__ = stdgo.path.Path.split(_realName), _dir:GoString = __tmp__._0, _file:GoString = __tmp__._1;
                _name = stdgo.path.Path.join(_dir, ((("PaxHeaders.0" : GoString))), _file);
                _flag = ((120 : GoUInt8));
            };
            var _data:GoString = ((_buf.toString() : GoString));
            {
                var _err:stdgo.Error = _tw._writeRawFile(_name, _data, _flag, ((4 : GoInt)));
                if ((_err != null) || _isGlobal) {
                    return _err;
                };
            };
        };
        var _f:T_formatter = new T_formatter();
        var _fmtStr = function(_b:Slice<GoByte>, _s:GoString):Void {
            _f._formatString(_b, _toASCII(_s));
        };
        var _blk = _tw._templateV7Plus(_hdr, _fmtStr, _f._formatOctal);
        _blk._setFormat(((4 : GoInt)));
        {
            var _err:stdgo.Error = _tw._writeRawHeader(_blk, _hdr.size, _hdr.typeflag);
            if (_err != null) {
                return _err;
            };
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public static function _writeUSTARHeader( _tw:Writer, _hdr:Header):Error {
        var _namePrefix:GoString = (("" : GoString));
        {
            var __tmp__ = _splitUSTARPath(_hdr.name), _prefix:GoString = __tmp__._0, _suffix:GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                {
                    final __tmp__0 = _prefix;
                    final __tmp__1 = _suffix;
                    _namePrefix = __tmp__0;
                    _hdr.name = __tmp__1;
                };
            };
        };
        var _f:T_formatter = new T_formatter();
        var _blk = _tw._templateV7Plus(_hdr, _f._formatString, _f._formatOctal);
        _f._formatString(_blk._toUSTAR()._prefix(), _namePrefix);
        _blk._setFormat(((2 : GoInt)));
        if (_f._err != null) {
            return _f._err;
        };
        return _tw._writeRawHeader(_blk, _hdr.size, _hdr.typeflag);
    }
    /**
        // WriteHeader writes hdr and prepares to accept the file's contents.
        // The Header.Size determines how many bytes can be written for the next file.
        // If the current file is not fully written, then this returns an error.
        // This implicitly flushes any padding necessary before writing the header.
    **/
    @:keep
    public static function writeHeader( _tw:Writer, _hdr:Header):Error {
        {
            var _err:stdgo.Error = _tw.flush();
            if (_err != null) {
                return _err;
            };
        };
        _tw._hdr = (_hdr == null ? null : _hdr.__copy__());
        if (_tw._hdr.typeflag == ((0 : GoUInt8))) {
            if (stdgo.strings.Strings.hasSuffix(_tw._hdr.name, ((("/" : GoString))))) {
                _tw._hdr.typeflag = ((53 : GoUInt8));
            } else {
                _tw._hdr.typeflag = ((48 : GoUInt8));
            };
        };
        if (_tw._hdr.format == ((0 : GoInt))) {
            _tw._hdr.modTime = (_tw._hdr.modTime.round(((1000000000 : GoInt64))) == null ? null : _tw._hdr.modTime.round(((1000000000 : GoInt64))).__copy__());
            _tw._hdr.accessTime = ((new stdgo.time.Time.Time() : stdgo.time.Time.Time));
            _tw._hdr.changeTime = ((new stdgo.time.Time.Time() : stdgo.time.Time.Time));
        };
        var __tmp__ = _tw._hdr._allowedFormats(), _allowedFormats:Format = __tmp__._0, _paxHdrs:GoMap<GoString, GoString> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_allowedFormats._has(((2 : GoInt)))) {
            _tw._err = _tw._writeUSTARHeader(_tw._hdr);
            return _tw._err;
        } else if (_allowedFormats._has(((4 : GoInt)))) {
            _tw._err = _tw._writePAXHeader(_tw._hdr, _paxHdrs);
            return _tw._err;
        } else if (_allowedFormats._has(((8 : GoInt)))) {
            _tw._err = _tw._writeGNUHeader(_tw._hdr);
            return _tw._err;
        } else {
            return _err;
        };
    }
    /**
        // Flush finishes writing the current file's block padding.
        // The current file must be fully written before Flush can be called.
        //
        // This is unnecessary as the next call to WriteHeader or Close
        // will implicitly flush out the file's padding.
    **/
    @:keep
    public static function flush( _tw:Writer):Error {
        if (_tw._err != null) {
            return _tw._err;
        };
        {
            var _nb:GoInt64 = _tw._curr._logicalRemaining();
            if (_nb > ((0 : GoInt64))) {
                return stdgo.fmt.Fmt.errorf(((("archive/tar: missed writing %d bytes" : GoString))), Go.toInterface(_nb));
            };
        };
        {
            {
                var __tmp__ = _tw._w.write(((_zeroBlock.__slice__(0, _tw._pad) : Slice<GoUInt8>)));
                _tw._err = __tmp__._1;
            };
            if (_tw._err != null) {
                return _tw._err;
            };
        };
        _tw._pad = ((0 : GoInt64));
        return ((null : stdgo.Error));
    }
}
class Writer_wrapper {
    /**
        // Close closes the tar archive by flushing the padding, and writing the footer.
        // If the current file (from a prior call to WriteHeader) is not fully written,
        // then this returns an error.
    **/
    @:keep
    public var close : () -> Error = null;
    /**
        // readFrom populates the content of the current file by reading from r.
        // The bytes read must match the number of remaining bytes in the current file.
        //
        // If the current file is sparse and r is an io.ReadSeeker,
        // then readFrom uses Seek to skip past holes defined in Header.SparseHoles,
        // assuming that skipped regions are all NULs.
        // This always reads the last byte to ensure r is the right size.
        //
        // TODO(dsnet): Re-export this when adding sparse file support.
        // See https://golang.org/issue/22735
    **/
    @:keep
    public var _readFrom : stdgo.io.Io.Reader -> { var _0 : GoInt64; var _1 : Error; } = null;
    /**
        // Write writes to the current file in the tar archive.
        // Write returns the error ErrWriteTooLong if more than
        // Header.Size bytes are written after WriteHeader.
        //
        // Calling Write on special types like TypeLink, TypeSymlink, TypeChar,
        // TypeBlock, TypeDir, and TypeFifo returns (0, ErrWriteTooLong) regardless
        // of what the Header.Size claims.
    **/
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    /**
        // writeRawHeader writes the value of blk, regardless of its value.
        // It sets up the Writer such that it can accept a file of the given size.
        // If the flag is a special header-only flag, then the size is treated as zero.
    **/
    @:keep
    public var _writeRawHeader : (T_block, GoInt64, GoByte) -> Error = null;
    /**
        // writeRawFile writes a minimal file with the given name and flag type.
        // It uses format to encode the header format and will write data as the body.
        // It uses default values for all of the other fields (as BSD and GNU tar does).
    **/
    @:keep
    public var _writeRawFile : (GoString, GoString, GoByte, Format) -> Error = null;
    /**
        // templateV7Plus fills out the V7 fields of a block using values from hdr.
        // It also fills out fields (uname, gname, devmajor, devminor) that are
        // shared in the USTAR, PAX, and GNU formats using the provided formatters.
        //
        // The block returned is only valid until the next call to
        // templateV7Plus or writeRawFile.
    **/
    @:keep
    public var _templateV7Plus : (Header, T_stringFormatter, T_numberFormatter) -> T_block = null;
    @:keep
    public var _writeGNUHeader : Header -> Error = null;
    @:keep
    public var _writePAXHeader : (Header, GoMap<GoString, GoString>) -> Error = null;
    @:keep
    public var _writeUSTARHeader : Header -> Error = null;
    /**
        // WriteHeader writes hdr and prepares to accept the file's contents.
        // The Header.Size determines how many bytes can be written for the next file.
        // If the current file is not fully written, then this returns an error.
        // This implicitly flushes any padding necessary before writing the header.
    **/
    @:keep
    public var writeHeader : Header -> Error = null;
    /**
        // Flush finishes writing the current file's block padding.
        // The current file must be fully written before Flush can be called.
        //
        // This is unnecessary as the next call to WriteHeader or Close
        // will implicitly flush out the file's padding.
    **/
    @:keep
    public var flush : () -> Error = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Writer;
}
@:keep class T_regFileWriter_static_extension {
    /**
        // logicalRemaining implements fileState.physicalRemaining.
    **/
    @:keep
    public static function _physicalRemaining( _fw:T_regFileWriter):GoInt64 {
        return _fw._nb;
    }
    /**
        // logicalRemaining implements fileState.logicalRemaining.
    **/
    @:keep
    public static function _logicalRemaining( _fw:T_regFileWriter):GoInt64 {
        return _fw._nb;
    }
    @:keep
    public static function readFrom( _fw:T_regFileWriter, _r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } {
        return stdgo.io.Io.copy(((new T__struct_1(_fw) : T__struct_1)), _r);
    }
    @:keep
    public static function write( _fw:T_regFileWriter, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _overwrite:Bool = (((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)) > _fw._nb;
        if (_overwrite) {
            _b = ((_b.__slice__(0, _fw._nb) : Slice<GoUInt8>));
        };
        if ((_b != null ? _b.length : ((0 : GoInt))) > ((0 : GoInt))) {
            {
                var __tmp__ = _fw._w.write(_b);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            _fw._nb = _fw._nb - (((_n : GoInt64)));
        };
        if (_err != null) {
            return { _0 : _n, _1 : _err };
        } else if (_overwrite) {
            return { _0 : _n, _1 : errWriteTooLong };
        } else {
            return { _0 : _n, _1 : ((null : stdgo.Error)) };
        };
    }
}
class T_regFileWriter_wrapper {
    /**
        // logicalRemaining implements fileState.physicalRemaining.
    **/
    @:keep
    public var _physicalRemaining : () -> GoInt64 = null;
    /**
        // logicalRemaining implements fileState.logicalRemaining.
    **/
    @:keep
    public var _logicalRemaining : () -> GoInt64 = null;
    @:keep
    public var readFrom : stdgo.io.Io.Reader -> { var _0 : GoInt64; var _1 : Error; } = null;
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_regFileWriter;
}
@:keep class T_sparseFileWriter_static_extension {
    @:keep
    public static function _physicalRemaining( _sw:T_sparseFileWriter):GoInt64 {
        return _sw._fw._physicalRemaining();
    }
    @:keep
    public static function _logicalRemaining( _sw:T_sparseFileWriter):GoInt64 {
        return (_sw._sp != null ? _sw._sp[(_sw._sp != null ? _sw._sp.length : ((0 : GoInt))) - ((1 : GoInt))] : new T_sparseEntry())._endOffset() - _sw._pos;
    }
    @:keep
    public static function readFrom( _sw:T_sparseFileWriter, _r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } {
        var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        var __tmp__ = try {
            { value : ((((_r.__underlying__().value : Dynamic)) : stdgo.io.Io.ReadSeeker)), ok : true };
        } catch(_) {
            { value : ((null : stdgo.io.Io.ReadSeeker)), ok : false };
        }, _rs = __tmp__.value, _ok = __tmp__.ok;
        if (_ok) {
            {
                var __tmp__ = _rs.seek(((0 : GoInt64)), ((1 : GoInt))), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _ok = false;
                };
            };
        };
        if (!_ok) {
            return stdgo.io.Io.copy(((new T__struct_1(_sw) : T__struct_1)), _r);
        };
        var _readLastByte:Bool = false;
        var _pos0:GoInt64 = _sw._pos;
        while (((_sw._logicalRemaining() > ((0 : GoInt64))) && !_readLastByte) && (_err == null)) {
            var _nf:GoInt64 = ((0 : GoInt64));
            var _dataStart:GoInt64 = (_sw._sp != null ? _sw._sp[((0 : GoInt))] : new T_sparseEntry()).offset, _dataEnd:GoInt64 = (_sw._sp != null ? _sw._sp[((0 : GoInt))] : new T_sparseEntry())._endOffset();
            if (_sw._pos < _dataStart) {
                _nf = _dataStart - _sw._pos;
                if (_sw._physicalRemaining() == ((0 : GoInt64))) {
                    _readLastByte = true;
                    _nf--;
                };
                {
                    var __tmp__ = _rs.seek(_nf, ((1 : GoInt)));
                    _err = __tmp__._1;
                };
            } else {
                _nf = _dataEnd - _sw._pos;
                {
                    var __tmp__ = stdgo.io.Io.copyN(_sw._fw, _rs, _nf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
            _sw._pos = _sw._pos + (_nf);
            if ((_sw._pos >= _dataEnd) && ((_sw._sp != null ? _sw._sp.length : ((0 : GoInt))) > ((1 : GoInt)))) {
                _sw._sp = ((_sw._sp.__slice__(((1 : GoInt))) : T_sparseDatas));
            };
        };
        if (_readLastByte && (_err == null)) {
            {
                var __tmp__ = _mustReadFull(_rs, ((new Slice<GoByte>(((0 : GoUInt8))) : Slice<GoByte>)));
                _err = __tmp__._1;
            };
            _sw._pos++;
        };
        _n = _sw._pos - _pos0;
        if (_err == stdgo.io.Io.eof) {
            return { _0 : _n, _1 : stdgo.io.Io.errUnexpectedEOF };
        } else if (_err == errWriteTooLong) {
            return { _0 : _n, _1 : _errMissData };
        } else if (_err != null) {
            return { _0 : _n, _1 : _err };
        } else if ((_sw._logicalRemaining() == ((0 : GoInt64))) && (_sw._physicalRemaining() > ((0 : GoInt64)))) {
            return { _0 : _n, _1 : _errUnrefData };
        } else {
            return { _0 : _n, _1 : _ensureEOF(_rs) };
        };
    }
    @:keep
    public static function write( _sw:T_sparseFileWriter, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _overwrite:Bool = (((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)) > _sw._logicalRemaining();
        if (_overwrite) {
            _b = ((_b.__slice__(0, _sw._logicalRemaining()) : Slice<GoUInt8>));
        };
        var _b0 = _b;
        var _endPos:GoInt64 = _sw._pos + (((_b != null ? _b.length : ((0 : GoInt))) : GoInt64));
        while ((_endPos > _sw._pos) && (_err == null)) {
            var _nf:GoInt = ((0 : GoInt));
            var _dataStart:GoInt64 = (_sw._sp != null ? _sw._sp[((0 : GoInt))] : new T_sparseEntry()).offset, _dataEnd:GoInt64 = (_sw._sp != null ? _sw._sp[((0 : GoInt))] : new T_sparseEntry())._endOffset();
            if (_sw._pos < _dataStart) {
                var _bf = ((_b.__slice__(0, _min((((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)), _dataStart - _sw._pos)) : Slice<GoUInt8>));
                {
                    var __tmp__ = ((new T_zeroWriter() : T_zeroWriter)).write(_bf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else {
                var _bf = ((_b.__slice__(0, _min((((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)), _dataEnd - _sw._pos)) : Slice<GoUInt8>));
                {
                    var __tmp__ = _sw._fw.write(_bf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
            _b = ((_b.__slice__(_nf) : Slice<GoUInt8>));
            _sw._pos = _sw._pos + (((_nf : GoInt64)));
            if ((_sw._pos >= _dataEnd) && ((_sw._sp != null ? _sw._sp.length : ((0 : GoInt))) > ((1 : GoInt)))) {
                _sw._sp = ((_sw._sp.__slice__(((1 : GoInt))) : T_sparseDatas));
            };
        };
        _n = (_b0 != null ? _b0.length : ((0 : GoInt))) - (_b != null ? _b.length : ((0 : GoInt)));
        if (_err == errWriteTooLong) {
            return { _0 : _n, _1 : _errMissData };
        } else if (_err != null) {
            return { _0 : _n, _1 : _err };
        } else if ((_sw._logicalRemaining() == ((0 : GoInt64))) && (_sw._physicalRemaining() > ((0 : GoInt64)))) {
            return { _0 : _n, _1 : _errUnrefData };
        } else if (_overwrite) {
            return { _0 : _n, _1 : errWriteTooLong };
        } else {
            return { _0 : _n, _1 : ((null : stdgo.Error)) };
        };
    }
}
class T_sparseFileWriter_wrapper {
    @:keep
    public var _physicalRemaining : () -> GoInt64 = null;
    @:keep
    public var _logicalRemaining : () -> GoInt64 = null;
    @:keep
    public var readFrom : stdgo.io.Io.Reader -> { var _0 : GoInt64; var _1 : Error; } = null;
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_sparseFileWriter;
}
@:keep class T_zeroWriter_static_extension {
    @:keep
    public static function write( _:T_zeroWriter, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        for (_i => _c in _b) {
            if (_c != ((0 : GoUInt8))) {
                return { _0 : _i, _1 : _errWriteHole };
            };
        };
        return { _0 : (_b != null ? _b.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
}
class T_zeroWriter_wrapper {
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_zeroWriter;
}
@:keep class T_headerError_static_extension {
    @:keep
    public static function error( _he:T_headerError):GoString {
        {};
        var _ss:Slice<GoString> = ((null : Slice<GoString>));
        for (_0 => _s in _he) {
            if (_s != ((("" : GoString)))) {
                _ss = (_ss != null ? _ss.__append__(_s) : new Slice<GoString>(_s));
            };
        };
        if ((_ss != null ? _ss.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return ((("archive/tar: cannot encode header" : GoString)));
        };
        return stdgo.fmt.Fmt.sprintf(((("%s: %v" : GoString))), Go.toInterface(((("archive/tar: cannot encode header" : GoString)))), Go.toInterface(stdgo.strings.Strings.join(_ss, ((("; and " : GoString))))));
    }
}
class T_headerError_wrapper {
    @:keep
    public var error : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_headerError;
}
@:keep class Format_static_extension {
    @:keep
    public static function toString( _f:Format):GoString {
        var _ss:Slice<GoString> = ((null : Slice<GoString>));
        {
            var _f2:Format = ((((1 : GoInt)) : Format));
            Go.cfor(_f2 < ((32 : GoInt)), _f2 = _f2 << (((1 : GoUnTypedInt))), {
                if (_f._has(_f2)) {
                    _ss = (_ss != null ? _ss.__append__((_formatNames != null ? _formatNames[_f2] : (("" : GoString)))) : new Slice<GoString>((_formatNames != null ? _formatNames[_f2] : (("" : GoString)))));
                };
            });
        };
        if ((_ss != null ? _ss.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return ((("<unknown>" : GoString)));
        } else if ((_ss != null ? _ss.length : ((0 : GoInt))) == ((1 : GoInt))) {
            return (_ss != null ? _ss[((0 : GoInt))] : (("" : GoString)));
        } else {
            return (((("(" : GoString))) + stdgo.strings.Strings.join(_ss, (((" | " : GoString))))) + (((")" : GoString)));
        };
    }
    @:keep
    @:pointer
    public static function _mustNotBe(____:Format,  _f:Pointer<Format>, _f2:Format):Void {
        _f.value = _f.value & ((_f2) ^ ((-1 : GoUnTypedInt)));
    }
    @:keep
    @:pointer
    public static function _mayOnlyBe(____:Format,  _f:Pointer<Format>, _f2:Format):Void {
        _f.value = _f.value & (_f2);
    }
    @:keep
    @:pointer
    public static function _mayBe(____:Format,  _f:Pointer<Format>, _f2:Format):Void {
        _f.value = _f.value | (_f2);
    }
    @:keep
    public static function _has( _f:Format, _f2:Format):Bool {
        return (_f & _f2) != ((0 : GoInt));
    }
}
class Format_wrapper {
    @:keep
    public var toString : () -> GoString = null;
    @:keep
    @:pointer
    public var _mustNotBe : Format -> Void = null;
    @:keep
    @:pointer
    public var _mayOnlyBe : Format -> Void = null;
    @:keep
    @:pointer
    public var _mayBe : Format -> Void = null;
    @:keep
    public var _has : Format -> Bool = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Pointer<Format>;
}
@:keep class T_block_static_extension {
    /**
        // Reset clears the block with all zeros.
    **/
    @:keep
    public static function _reset( _b:T_block):Void {
        _b = ((new GoArray<GoUInt8>(...([].concat([for (i in 0 ... 512) ((0 : GoUInt8))]))) : T_block));
    }
    /**
        // computeChecksum computes the checksum for the header block.
        // POSIX specifies a sum of the unsigned byte values, but the Sun tar used
        // signed byte values.
        // We compute and return both.
    **/
    @:keep
    public static function _computeChecksum( _b:T_block):{ var _0 : GoInt64; var _1 : GoInt64; } {
        var _unsigned:GoInt64 = ((0 : GoInt64)), _signed:GoInt64 = ((0 : GoInt64));
        for (_i => _c in _b) {
            if ((((148 : GoInt)) <= _i) && (_i < ((156 : GoInt)))) {
                _c = (((((" " : GoString))).code : GoRune));
            };
            _unsigned = _unsigned + (((_c : GoInt64)));
            _signed = _signed + (((((_c : GoInt8)) : GoInt64)));
        };
        return { _0 : _unsigned, _1 : _signed };
    }
    /**
        // setFormat writes the magic values necessary for specified format
        // and then updates the checksum accordingly.
    **/
    @:keep
    public static function _setFormat( _b:T_block, _format:Format):Void {
        if (_format._has(((1 : GoInt)))) {} else if (_format._has(((8 : GoInt)))) {
            Go.copySlice(_b._toGNU()._magic(), ((("ustar " : GoString))));
            Go.copySlice(_b._toGNU()._version(), (((" " : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))));
        } else if (_format._has(((16 : GoInt)))) {
            Go.copySlice(_b._toSTAR()._magic(), ((("ustar" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))));
            Go.copySlice(_b._toSTAR()._version(), ((("00" : GoString))));
            Go.copySlice(_b._toSTAR()._trailer(), ((("tar" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))));
        } else if (_format._has(((6 : GoInt)))) {
            Go.copySlice(_b._toUSTAR()._magic(), ((("ustar" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))));
            Go.copySlice(_b._toUSTAR()._version(), ((("00" : GoString))));
        } else {
            throw Go.toInterface(((("invalid format" : GoString))));
        };
        var _f:T_formatter = new T_formatter();
        var _field = _b._toV7()._chksum();
        var __tmp__ = _b._computeChecksum(), _chksum:GoInt64 = __tmp__._0, _0:GoInt64 = __tmp__._1;
        _f._formatOctal(((_field.__slice__(0, ((7 : GoInt))) : Slice<GoUInt8>)), _chksum);
        if (_field != null) _field[((7 : GoInt))] = (((((" " : GoString))).code : GoRune));
    }
    /**
        // GetFormat checks that the block is a valid tar header based on the checksum.
        // It then attempts to guess the specific format based on magic values.
        // If the checksum fails, then FormatUnknown is returned.
    **/
    @:keep
    public static function _getFormat( _b:T_block):Format {
        var _p:T_parser = new T_parser();
        var _value:GoInt64 = _p._parseOctal(_b._toV7()._chksum());
        var __tmp__ = _b._computeChecksum(), _chksum1:GoInt64 = __tmp__._0, _chksum2:GoInt64 = __tmp__._1;
        if ((_p._err != null) || ((_value != _chksum1) && (_value != _chksum2))) {
            return ((0 : GoInt));
        };
        var _magic:GoString = ((_b._toUSTAR()._magic() : GoString));
        var _version:GoString = ((_b._toUSTAR()._version() : GoString));
        var _trailer:GoString = ((_b._toSTAR()._trailer() : GoString));
        if ((_magic == ((("ustar" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)))) && (_trailer == ((("tar" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))))) {
            return ((16 : GoInt));
        } else if (_magic == ((("ustar" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)))) {
            return ((6 : GoInt));
        } else if ((_magic == ((("ustar " : GoString)))) && (_version == (((" " : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))))) {
            return ((8 : GoInt));
        } else {
            return ((1 : GoInt));
        };
    }
    @:keep
    public static function _toSparse( _b:T_block):T_sparseArray {
        return ((((_b.__slice__(0) : Slice<GoUInt8>)) : T_sparseArray));
    }
    @:keep
    public static function _toUSTAR( _b:T_block):T_headerUSTAR {
        return ((_b : T_headerUSTAR));
    }
    @:keep
    public static function _toSTAR( _b:T_block):T_headerSTAR {
        return ((_b : T_headerSTAR));
    }
    @:keep
    public static function _toGNU( _b:T_block):T_headerGNU {
        return ((_b : T_headerGNU));
    }
    /**
        // Convert block to any number of formats.
    **/
    @:keep
    public static function _toV7( _b:T_block):T_headerV7 {
        return ((_b : T_headerV7));
    }
}
class T_block_wrapper {
    /**
        // Reset clears the block with all zeros.
    **/
    @:keep
    public var _reset : () -> Void = null;
    /**
        // computeChecksum computes the checksum for the header block.
        // POSIX specifies a sum of the unsigned byte values, but the Sun tar used
        // signed byte values.
        // We compute and return both.
    **/
    @:keep
    public var _computeChecksum : () -> { var _0 : GoInt64; var _1 : GoInt64; } = null;
    /**
        // setFormat writes the magic values necessary for specified format
        // and then updates the checksum accordingly.
    **/
    @:keep
    public var _setFormat : Format -> Void = null;
    /**
        // GetFormat checks that the block is a valid tar header based on the checksum.
        // It then attempts to guess the specific format based on magic values.
        // If the checksum fails, then FormatUnknown is returned.
    **/
    @:keep
    public var _getFormat : () -> Format = null;
    @:keep
    public var _toSparse : () -> T_sparseArray = null;
    @:keep
    public var _toUSTAR : () -> T_headerUSTAR = null;
    @:keep
    public var _toSTAR : () -> T_headerSTAR = null;
    @:keep
    public var _toGNU : () -> T_headerGNU = null;
    /**
        // Convert block to any number of formats.
    **/
    @:keep
    public var _toV7 : () -> T_headerV7 = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_block;
}
@:keep class T_headerV7_static_extension {
    @:keep
    public static function _linkName( _h:T_headerV7):Slice<GoByte> {
        return ((((_h.__slice__(((157 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((100 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _typeFlag( _h:T_headerV7):Slice<GoByte> {
        return ((((_h.__slice__(((156 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _chksum( _h:T_headerV7):Slice<GoByte> {
        return ((((_h.__slice__(((148 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _modTime( _h:T_headerV7):Slice<GoByte> {
        return ((((_h.__slice__(((136 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _size( _h:T_headerV7):Slice<GoByte> {
        return ((((_h.__slice__(((124 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _gid( _h:T_headerV7):Slice<GoByte> {
        return ((((_h.__slice__(((116 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _uid( _h:T_headerV7):Slice<GoByte> {
        return ((((_h.__slice__(((108 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _mode( _h:T_headerV7):Slice<GoByte> {
        return ((((_h.__slice__(((100 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _name( _h:T_headerV7):Slice<GoByte> {
        return ((((_h.__slice__(((0 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((100 : GoInt))) : Slice<GoUInt8>));
    }
}
class T_headerV7_wrapper {
    @:keep
    public var _linkName : () -> Slice<GoByte> = null;
    @:keep
    public var _typeFlag : () -> Slice<GoByte> = null;
    @:keep
    public var _chksum : () -> Slice<GoByte> = null;
    @:keep
    public var _modTime : () -> Slice<GoByte> = null;
    @:keep
    public var _size : () -> Slice<GoByte> = null;
    @:keep
    public var _gid : () -> Slice<GoByte> = null;
    @:keep
    public var _uid : () -> Slice<GoByte> = null;
    @:keep
    public var _mode : () -> Slice<GoByte> = null;
    @:keep
    public var _name : () -> Slice<GoByte> = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_headerV7;
}
@:keep class T_headerGNU_static_extension {
    @:keep
    public static function _realSize( _h:T_headerGNU):Slice<GoByte> {
        return ((((_h.__slice__(((483 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _sparse( _h:T_headerGNU):T_sparseArray {
        return ((((((_h.__slice__(((386 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((97 : GoInt))) : Slice<GoUInt8>)) : T_sparseArray));
    }
    @:keep
    public static function _changeTime( _h:T_headerGNU):Slice<GoByte> {
        return ((((_h.__slice__(((357 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _accessTime( _h:T_headerGNU):Slice<GoByte> {
        return ((((_h.__slice__(((345 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _devMinor( _h:T_headerGNU):Slice<GoByte> {
        return ((((_h.__slice__(((337 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _devMajor( _h:T_headerGNU):Slice<GoByte> {
        return ((((_h.__slice__(((329 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _groupName( _h:T_headerGNU):Slice<GoByte> {
        return ((((_h.__slice__(((297 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _userName( _h:T_headerGNU):Slice<GoByte> {
        return ((((_h.__slice__(((265 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _version( _h:T_headerGNU):Slice<GoByte> {
        return ((((_h.__slice__(((263 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((2 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _magic( _h:T_headerGNU):Slice<GoByte> {
        return ((((_h.__slice__(((257 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((6 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _v7( _h:T_headerGNU):T_headerV7 {
        return ((_h : T_headerV7));
    }
}
class T_headerGNU_wrapper {
    @:keep
    public var _realSize : () -> Slice<GoByte> = null;
    @:keep
    public var _sparse : () -> T_sparseArray = null;
    @:keep
    public var _changeTime : () -> Slice<GoByte> = null;
    @:keep
    public var _accessTime : () -> Slice<GoByte> = null;
    @:keep
    public var _devMinor : () -> Slice<GoByte> = null;
    @:keep
    public var _devMajor : () -> Slice<GoByte> = null;
    @:keep
    public var _groupName : () -> Slice<GoByte> = null;
    @:keep
    public var _userName : () -> Slice<GoByte> = null;
    @:keep
    public var _version : () -> Slice<GoByte> = null;
    @:keep
    public var _magic : () -> Slice<GoByte> = null;
    @:keep
    public var _v7 : () -> T_headerV7 = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_headerGNU;
}
@:keep class T_headerSTAR_static_extension {
    @:keep
    public static function _trailer( _h:T_headerSTAR):Slice<GoByte> {
        return ((((_h.__slice__(((508 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((4 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _changeTime( _h:T_headerSTAR):Slice<GoByte> {
        return ((((_h.__slice__(((488 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _accessTime( _h:T_headerSTAR):Slice<GoByte> {
        return ((((_h.__slice__(((476 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _prefix( _h:T_headerSTAR):Slice<GoByte> {
        return ((((_h.__slice__(((345 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((131 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _devMinor( _h:T_headerSTAR):Slice<GoByte> {
        return ((((_h.__slice__(((337 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _devMajor( _h:T_headerSTAR):Slice<GoByte> {
        return ((((_h.__slice__(((329 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _groupName( _h:T_headerSTAR):Slice<GoByte> {
        return ((((_h.__slice__(((297 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _userName( _h:T_headerSTAR):Slice<GoByte> {
        return ((((_h.__slice__(((265 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _version( _h:T_headerSTAR):Slice<GoByte> {
        return ((((_h.__slice__(((263 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((2 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _magic( _h:T_headerSTAR):Slice<GoByte> {
        return ((((_h.__slice__(((257 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((6 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _v7( _h:T_headerSTAR):T_headerV7 {
        return ((_h : T_headerV7));
    }
}
class T_headerSTAR_wrapper {
    @:keep
    public var _trailer : () -> Slice<GoByte> = null;
    @:keep
    public var _changeTime : () -> Slice<GoByte> = null;
    @:keep
    public var _accessTime : () -> Slice<GoByte> = null;
    @:keep
    public var _prefix : () -> Slice<GoByte> = null;
    @:keep
    public var _devMinor : () -> Slice<GoByte> = null;
    @:keep
    public var _devMajor : () -> Slice<GoByte> = null;
    @:keep
    public var _groupName : () -> Slice<GoByte> = null;
    @:keep
    public var _userName : () -> Slice<GoByte> = null;
    @:keep
    public var _version : () -> Slice<GoByte> = null;
    @:keep
    public var _magic : () -> Slice<GoByte> = null;
    @:keep
    public var _v7 : () -> T_headerV7 = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_headerSTAR;
}
@:keep class T_headerUSTAR_static_extension {
    @:keep
    public static function _prefix( _h:T_headerUSTAR):Slice<GoByte> {
        return ((((_h.__slice__(((345 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((155 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _devMinor( _h:T_headerUSTAR):Slice<GoByte> {
        return ((((_h.__slice__(((337 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _devMajor( _h:T_headerUSTAR):Slice<GoByte> {
        return ((((_h.__slice__(((329 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _groupName( _h:T_headerUSTAR):Slice<GoByte> {
        return ((((_h.__slice__(((297 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _userName( _h:T_headerUSTAR):Slice<GoByte> {
        return ((((_h.__slice__(((265 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _version( _h:T_headerUSTAR):Slice<GoByte> {
        return ((((_h.__slice__(((263 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((2 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _magic( _h:T_headerUSTAR):Slice<GoByte> {
        return ((((_h.__slice__(((257 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((6 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _v7( _h:T_headerUSTAR):T_headerV7 {
        return ((_h : T_headerV7));
    }
}
class T_headerUSTAR_wrapper {
    @:keep
    public var _prefix : () -> Slice<GoByte> = null;
    @:keep
    public var _devMinor : () -> Slice<GoByte> = null;
    @:keep
    public var _devMajor : () -> Slice<GoByte> = null;
    @:keep
    public var _groupName : () -> Slice<GoByte> = null;
    @:keep
    public var _userName : () -> Slice<GoByte> = null;
    @:keep
    public var _version : () -> Slice<GoByte> = null;
    @:keep
    public var _magic : () -> Slice<GoByte> = null;
    @:keep
    public var _v7 : () -> T_headerV7 = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_headerUSTAR;
}
@:keep class T_sparseArray_static_extension {
    @:keep
    public static function _maxEntries( _s:T_sparseArray):GoInt {
        return (_s != null ? _s.length : ((0 : GoInt))) / ((24 : GoInt));
    }
    @:keep
    public static function _isExtended( _s:T_sparseArray):Slice<GoByte> {
        return ((((_s.__slice__(((24 : GoInt)) * _s._maxEntries()) : T_sparseArray)).__slice__(0, ((1 : GoInt))) : T_sparseArray));
    }
    @:keep
    public static function _entry( _s:T_sparseArray, _i:GoInt):T_sparseElem {
        return ((((_s.__slice__(_i * ((24 : GoInt))) : T_sparseArray)) : T_sparseElem));
    }
}
class T_sparseArray_wrapper {
    @:keep
    public var _maxEntries : () -> GoInt = null;
    @:keep
    public var _isExtended : () -> Slice<GoByte> = null;
    @:keep
    public var _entry : GoInt -> T_sparseElem = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_sparseArray;
}
@:keep class T_sparseElem_static_extension {
    @:keep
    public static function _length( _s:T_sparseElem):Slice<GoByte> {
        return ((((_s.__slice__(((12 : GoInt))) : T_sparseElem)).__slice__(0, ((12 : GoInt))) : T_sparseElem));
    }
    @:keep
    public static function _offset( _s:T_sparseElem):Slice<GoByte> {
        return ((((_s.__slice__(((0 : GoInt))) : T_sparseElem)).__slice__(0, ((12 : GoInt))) : T_sparseElem));
    }
}
class T_sparseElem_wrapper {
    @:keep
    public var _length : () -> Slice<GoByte> = null;
    @:keep
    public var _offset : () -> Slice<GoByte> = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_sparseElem;
}
