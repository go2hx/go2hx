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
    @:keep
    public function fileInfo():stdgo.io.fs.Fs.FileInfo {
        var _h = this;
        _h;
        return ((new T_headerFileInfo(_h) : T_headerFileInfo));
    }
    @:keep
    public function _allowedFormats():{ var _0 : Format; var _1 : GoMap<GoString, GoString>; var _2 : Error; } {
        var _h = this;
        (_h == null ? null : _h.__copy__());
        var _format:Format = new Format(), _paxHdrs:GoMap<GoString, GoString> = ((null : GoMap<GoString, GoString>)), _err:Error = ((null : stdgo.Error));
        _format = ((14 : GoInt));
        _paxHdrs = new GoObjectMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))));
        var _whyNoUSTAR:GoString = (("" : GoString)), _whyNoPAX:GoString = (("" : GoString)), _whyNoGNU:GoString = (("" : GoString));
        var _preferPAX:Bool = false;
        var _verifyString:(GoString, GoInt, GoString, GoString) -> Void = function(_s:GoString, _size:GoInt, _name:GoString, _paxKey:GoString):Void {
            var _tooLong:Bool = (_s != null ? _s.length : ((0 : GoInt))) > _size;
            var _allowLongGNU:Bool = (_paxKey == ((("path" : GoString)))) || (_paxKey == ((("linkpath" : GoString))));
            if (_hasNUL(_s) || (_tooLong && !_allowLongGNU)) {
                _whyNoGNU = stdgo.fmt.Fmt.sprintf(((("GNU cannot encode %s=%q" : GoString))), Go.toInterface(_name), Go.toInterface(_s));
                Go.pointer(_format)._mustNotBe(((8 : GoInt)));
            };
            if (!_isASCII(_s) || _tooLong) {
                var _canSplitUSTAR:Bool = _paxKey == ((("path" : GoString)));
                {
                    var __tmp__ = _splitUSTARPath(_s), _0:GoString = __tmp__._0, _1:GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                    if (!_canSplitUSTAR || !_ok) {
                        _whyNoUSTAR = stdgo.fmt.Fmt.sprintf(((("USTAR cannot encode %s=%q" : GoString))), Go.toInterface(_name), Go.toInterface(_s));
                        Go.pointer(_format)._mustNotBe(((2 : GoInt)));
                    };
                };
                if (_paxKey == ((("" : GoString)))) {
                    _whyNoPAX = stdgo.fmt.Fmt.sprintf(((("PAX cannot encode %s=%q" : GoString))), Go.toInterface(_name), Go.toInterface(_s));
                    Go.pointer(_format)._mustNotBe(((4 : GoInt)));
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
                Go.pointer(_format)._mustNotBe(((8 : GoInt)));
            };
            if (!_fitsInOctal(_size, _n)) {
                _whyNoUSTAR = stdgo.fmt.Fmt.sprintf(((("USTAR cannot encode %s=%d" : GoString))), Go.toInterface(_name), Go.toInterface(_n));
                Go.pointer(_format)._mustNotBe(((2 : GoInt)));
                if (_paxKey == ((("" : GoString)))) {
                    _whyNoPAX = stdgo.fmt.Fmt.sprintf(((("PAX cannot encode %s=%d" : GoString))), Go.toInterface(_name), Go.toInterface(_n));
                    Go.pointer(_format)._mustNotBe(((4 : GoInt)));
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
                Go.pointer(_format)._mustNotBe(((8 : GoInt)));
            };
            var _isMtime:Bool = _paxKey == ((("mtime" : GoString)));
            var _fitsOctal:Bool = _fitsInOctal(_size, _ts.unix());
            if ((_isMtime && !_fitsOctal) || !_isMtime) {
                _whyNoUSTAR = stdgo.fmt.Fmt.sprintf(((("USTAR cannot encode %s=%v" : GoString))), Go.toInterface(_name), Go.toInterface(_ts));
                Go.pointer(_format)._mustNotBe(((2 : GoInt)));
            };
            var _needsNano:Bool = _ts.nanosecond() != ((0 : GoInt));
            if ((!_isMtime || !_fitsOctal) || _needsNano) {
                _preferPAX = true;
                if (_paxKey == ((("" : GoString)))) {
                    _whyNoPAX = stdgo.fmt.Fmt.sprintf(((("PAX cannot encode %s=%v" : GoString))), Go.toInterface(_name), Go.toInterface(_ts));
                    Go.pointer(_format)._mustNotBe(((4 : GoInt)));
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
        var _v7:Ref<T_headerV7> = _blk._toV7();
        var _ustar:Ref<T_headerUSTAR> = _blk._toUSTAR();
        var _gnu:Ref<T_headerGNU> = _blk._toGNU();
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
                return { _0 : ((0 : GoInt)), _1 : ((null : GoMap<GoString, GoString>)), _2 : new T_headerError_wrapper(((new Slice<GoString>(((("filename may not have trailing slash" : GoString)))) : T_headerError))) };
            };
        } else if (_h.typeflag == ((120 : GoUInt8)) || _h.typeflag == ((76 : GoUInt8)) || _h.typeflag == ((75 : GoUInt8))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : GoMap<GoString, GoString>)), _2 : new T_headerError_wrapper(((new Slice<GoString>(((("cannot manually encode TypeXHeader, TypeGNULongName, or TypeGNULongLink headers" : GoString)))) : T_headerError))) };
        } else if (_h.typeflag == ((103 : GoUInt8))) {
            var _h2:Header = ((({ name : _h.name, typeflag : _h.typeflag, xattrs : _h.xattrs, paxrecords : _h.paxrecords, format : _h.format, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0 } : Header)) == null ? null : (({ name : _h.name, typeflag : _h.typeflag, xattrs : _h.xattrs, paxrecords : _h.paxrecords, format : _h.format, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0 } : Header)).__copy__());
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_h), Go.toInterface(_h2))) {
                return { _0 : ((0 : GoInt)), _1 : ((null : GoMap<GoString, GoString>)), _2 : new T_headerError_wrapper(((new Slice<GoString>(((("only PAXRecords should be set for TypeXGlobalHeader" : GoString)))) : T_headerError))) };
            };
            _whyOnlyPAX = ((("only PAX supports TypeXGlobalHeader" : GoString)));
            Go.pointer(_format)._mayOnlyBe(((4 : GoInt)));
        };
        if (!_isHeaderOnlyType(_h.typeflag) && (_h.size < ((0 : GoInt64)))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : GoMap<GoString, GoString>)), _2 : new T_headerError_wrapper(((new Slice<GoString>(((("negative size on header-only type" : GoString)))) : T_headerError))) };
        };
        if ((_h.xattrs != null ? _h.xattrs.length : ((0 : GoInt))) > ((0 : GoInt))) {
            for (_k => _v in _h.xattrs) {
                if (_paxHdrs != null) _paxHdrs[((("SCHILY.xattr." : GoString))) + _k] = _v;
            };
            _whyOnlyPAX = ((("only PAX supports Xattrs" : GoString)));
            Go.pointer(_format)._mayOnlyBe(((4 : GoInt)));
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
            Go.pointer(_format)._mayOnlyBe(((4 : GoInt)));
        };
        for (_k => _v in _paxHdrs) {
            if (!_validPAXRecord(_k, _v)) {
                return { _0 : ((0 : GoInt)), _1 : ((null : GoMap<GoString, GoString>)), _2 : new T_headerError_wrapper(((new Slice<GoString>(stdgo.fmt.Fmt.sprintf(((("invalid PAX record: %q" : GoString))), Go.toInterface((_k + (((" = " : GoString)))) + _v))) : T_headerError))) };
            };
        };
        {
            var _wantFormat:Format = _h.format;
            if (_wantFormat != ((0 : GoInt))) {
                if (_wantFormat._has(((4 : GoInt))) && !_preferPAX) {
                    Go.pointer(_wantFormat)._mayBe(((2 : GoInt)));
                };
                Go.pointer(_format)._mayOnlyBe(_wantFormat);
            };
        };
        if (_format == ((0 : GoInt))) {
            if (_h.format == ((2 : GoInt))) {
                _err = new T_headerError_wrapper(((new Slice<GoString>(((("Format specifies USTAR" : GoString))), _whyNoUSTAR, _whyOnlyPAX, _whyOnlyGNU) : T_headerError)));
            } else if (_h.format == ((4 : GoInt))) {
                _err = new T_headerError_wrapper(((new Slice<GoString>(((("Format specifies PAX" : GoString))), _whyNoPAX, _whyOnlyGNU) : T_headerError)));
            } else if (_h.format == ((8 : GoInt))) {
                _err = new T_headerError_wrapper(((new Slice<GoString>(((("Format specifies GNU" : GoString))), _whyNoGNU, _whyOnlyPAX) : T_headerError)));
            } else {
                _err = new T_headerError_wrapper(((new Slice<GoString>(_whyNoUSTAR, _whyNoPAX, _whyNoGNU, _whyOnlyPAX, _whyOnlyGNU) : T_headerError)));
            };
        };
        return { _0 : _format, _1 : _paxHdrs, _2 : _err };
    }
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
    @:keep
    public function _endOffset():GoInt64 {
        var _s = this;
        (_s == null ? null : _s.__copy__());
        return _s.offset + _s.length;
    }
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
    @:keep
    public function mode():stdgo.io.fs.Fs.FileMode {
        var _fi = this;
        (_fi == null ? null : _fi.__copy__());
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
    @:keep
    public function name():GoString {
        var _fi = this;
        (_fi == null ? null : _fi.__copy__());
        if (_fi.isDir()) {
            return stdgo.path.Path.base(stdgo.path.Path.clean(_fi._h.name));
        };
        return stdgo.path.Path.base(_fi._h.name);
    }
    @:keep
    public function sys():AnyInterface {
        var _fi = this;
        (_fi == null ? null : _fi.__copy__());
        return Go.toInterface(_fi._h);
    }
    @:keep
    public function modTime():stdgo.time.Time.Time {
        var _fi = this;
        (_fi == null ? null : _fi.__copy__());
        return (_fi._h.modTime == null ? null : _fi._h.modTime.__copy__());
    }
    @:keep
    public function isDir():Bool {
        var _fi = this;
        (_fi == null ? null : _fi.__copy__());
        return _fi.mode().isDir();
    }
    @:keep
    public function size():GoInt64 {
        var _fi = this;
        (_fi == null ? null : _fi.__copy__());
        return _fi._h.size;
    }
    public var _h : Ref<Header> = ((null : Ref<Header>));
    public function new(?_h:Ref<Header>) {
        if (_h != null) this._h = _h;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_headerFileInfo(_h);
    }
}
@:structInit @:using(stdgo.archive.tar.Tar.Reader_static_extension) class Reader {
    @:keep
    public function _writeTo(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        var _tr = this;
        _tr;
        if (_tr._err != null) {
            return { _0 : ((0 : GoInt64)), _1 : _tr._err };
        };
        var __tmp__ = _tr._curr.writeTo(_w), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _tr._err = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _tr = this;
        _tr;
        if (_tr._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _tr._err };
        };
        var __tmp__ = _tr._curr.read(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) && (_err != stdgo.io.Io.eof)) {
            _tr._err = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function _readOldGNUSparseMap(_hdr:Header, _blk:T_block):{ var _0 : T_sparseDatas; var _1 : Error; } {
        var _tr = this;
        _tr;
        if (_blk._getFormat() != ((8 : GoInt))) {
            return { _0 : null, _1 : errHeader };
        };
        Go.pointer(_hdr.format)._mayOnlyBe(((8 : GoInt)));
        var _p:T_parser = new T_parser();
        _hdr.size = _p._parseNumeric(_blk._toGNU()._realSize());
        if (_p._err != null) {
            return { _0 : null, _1 : _p._err };
        };
        var _s:T_sparseArray = (_blk._toGNU()._sparse() == null ? null : _blk._toGNU()._sparse().__copy__());
        var _spd:T_sparseDatas = (new Slice<T_sparseEntry>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_sparseEntry()]).__setCap__(((_s._maxEntries() : GoInt)).toBasic()) == null ? null : new Slice<T_sparseEntry>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_sparseEntry()]).__setCap__(((_s._maxEntries() : GoInt)).toBasic()).__copy__());
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
                    _spd = ((_spd != null ? _spd.__append__((({ offset : _offset, length : _length } : T_sparseEntry))) : new Slice<Slice<T_sparseEntry>>((({ offset : _offset, length : _length } : T_sparseEntry)))) == null ? null : (_spd != null ? _spd.__append__((({ offset : _offset, length : _length } : T_sparseEntry))) : new Slice<Slice<T_sparseEntry>>((({ offset : _offset, length : _length } : T_sparseEntry)))).__copy__());
                });
            };
            if ((_s._isExtended() != null ? _s._isExtended()[((0 : GoInt))] : ((0 : GoUInt8))) > ((0 : GoUInt8))) {
                {
                    var __tmp__ = _mustReadFull(_tr._r, ((_blk.__slice__(0) : Slice<GoUInt8>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
                _s = (_blk._toSparse() == null ? null : _blk._toSparse().__copy__());
                continue;
            };
            return { _0 : (_spd == null ? null : _spd.__copy__()), _1 : ((null : stdgo.Error)) };
        };
    }
    @:keep
    public function _readHeader():{ var _0 : Header; var _1 : T_block; var _2 : Error; } {
        var _tr = this;
        _tr;
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
        var _hdr:Ref<Header> = new Header();
        var _v7:Ref<T_headerV7> = _tr._blk._toV7();
        _hdr.typeflag = (_v7._typeFlag() != null ? _v7._typeFlag()[((0 : GoInt))] : ((0 : GoUInt8)));
        _hdr.name = _p._parseString(_v7._name());
        _hdr.linkname = _p._parseString(_v7._linkName());
        _hdr.size = _p._parseNumeric(_v7._size());
        _hdr.mode = _p._parseNumeric(_v7._mode());
        _hdr.uid = ((_p._parseNumeric(_v7._uid()) : GoInt));
        _hdr.gid = ((_p._parseNumeric(_v7._gid()) : GoInt));
        _hdr.modTime = (stdgo.time.Time.unix(_p._parseNumeric(_v7._modTime()), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(_p._parseNumeric(_v7._modTime()), ((0 : GoInt64))).__copy__());
        if (_format > ((1 : GoInt))) {
            var _ustar:Ref<T_headerUSTAR> = _tr._blk._toUSTAR();
            _hdr.uname = _p._parseString(_ustar._userName());
            _hdr.gname = _p._parseString(_ustar._groupName());
            _hdr.devmajor = _p._parseNumeric(_ustar._devMajor());
            _hdr.devminor = _p._parseNumeric(_ustar._devMinor());
            var _prefix:GoString = (("" : GoString));
            if (_format._has(((6 : GoInt)))) {
                _hdr.format = _format;
                var _ustar:Ref<T_headerUSTAR> = _tr._blk._toUSTAR();
                _prefix = _p._parseString(_ustar._prefix());
                var _notASCII:GoInt32 -> Bool = function(_r:GoRune):Bool {
                    return _r >= ((128 : GoInt32));
                };
                if (stdgo.bytes.Bytes.indexFunc(((_tr._blk.__slice__(0) : Slice<GoUInt8>)), _notASCII) >= ((0 : GoInt))) {
                    _hdr.format = ((0 : GoInt));
                };
                var _nul:Slice<GoUInt8> -> Bool = function(_b:Slice<GoByte>):Bool {
                    return (((_b != null ? _b[(_b != null ? _b.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) : GoInt)) == ((0 : GoInt));
                };
                if (!((((((_nul(_v7._size()) && _nul(_v7._mode())) && _nul(_v7._uid())) && _nul(_v7._gid())) && _nul(_v7._modTime())) && _nul(_ustar._devMajor())) && _nul(_ustar._devMinor()))) {
                    _hdr.format = ((0 : GoInt));
                };
            } else if (_format._has(((16 : GoInt)))) {
                var _star:Ref<T_headerSTAR> = _tr._blk._toSTAR();
                _prefix = _p._parseString(_star._prefix());
                _hdr.accessTime = (stdgo.time.Time.unix(_p._parseNumeric(_star._accessTime()), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(_p._parseNumeric(_star._accessTime()), ((0 : GoInt64))).__copy__());
                _hdr.changeTime = (stdgo.time.Time.unix(_p._parseNumeric(_star._changeTime()), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(_p._parseNumeric(_star._changeTime()), ((0 : GoInt64))).__copy__());
            } else if (_format._has(((8 : GoInt)))) {
                _hdr.format = _format;
                var _p2:T_parser = new T_parser();
                var _gnu:Ref<T_headerGNU> = _tr._blk._toGNU();
                {
                    var _b:Slice<GoUInt8> = _gnu._accessTime();
                    if ((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) != ((0 : GoUInt8))) {
                        _hdr.accessTime = (stdgo.time.Time.unix(_p2._parseNumeric(_b), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(_p2._parseNumeric(_b), ((0 : GoInt64))).__copy__());
                    };
                };
                {
                    var _b:Slice<GoUInt8> = _gnu._changeTime();
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
                    var _ustar:Ref<T_headerUSTAR> = _tr._blk._toUSTAR();
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
    @:keep
    public function _readGNUSparsePAXHeaders(_hdr:Header):{ var _0 : T_sparseDatas; var _1 : Error; } {
        var _tr = this;
        _tr;
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
        Go.pointer(_hdr.format)._mayOnlyBe(((4 : GoInt)));
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
    @:keep
    public function _handleSparseFile(_hdr:Header, _rawHdr:T_block):Error {
        var _tr = this;
        _tr;
        var _spd:T_sparseDatas = new T_sparseDatas();
        var _err:Error = ((null : stdgo.Error));
        if (_hdr.typeflag == ((83 : GoUInt8))) {
            {
                var __tmp__ = _tr._readOldGNUSparseMap(_hdr, _rawHdr);
                _spd = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                _err = __tmp__._1;
            };
        } else {
            {
                var __tmp__ = _tr._readGNUSparsePAXHeaders(_hdr);
                _spd = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                _err = __tmp__._1;
            };
        };
        if ((_err == null) && (_spd != null)) {
            if (_isHeaderOnlyType(_hdr.typeflag) || !_validateSparseEntries(_spd, _hdr.size)) {
                return errHeader;
            };
            var _sph:Slice<T_sparseEntry> = _invertSparseEntries(_spd, _hdr.size);
            _tr._curr = ((new T_sparseFileReader(_tr._curr, (_sph == null ? null : _sph.__copy__()), ((0 : GoInt64))) : T_sparseFileReader));
        };
        return _err;
    }
    @:keep
    public function _handleRegularFile(_hdr:Header):Error {
        var _tr = this;
        _tr;
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
    public function _next():{ var _0 : Header; var _1 : Error; } {
        var _tr = this;
        _tr;
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
            Go.pointer(_format)._mayOnlyBe(_hdr.format);
            if (_hdr.typeflag == ((120 : GoUInt8)) || _hdr.typeflag == ((103 : GoUInt8))) {
                Go.pointer(_format)._mayOnlyBe(((4 : GoInt)));
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
                Go.pointer(_format)._mayOnlyBe(((8 : GoInt)));
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
                    Go.pointer(_format)._mayOnlyBe(((2 : GoInt)));
                };
                _hdr.format = _format;
                return { _0 : _hdr, _1 : ((null : stdgo.Error)) };
            };
        };
    }
    @:keep
    public function next():{ var _0 : Header; var _1 : Error; } {
        var _tr = this;
        _tr;
        if (_tr._err != null) {
            return { _0 : null, _1 : _tr._err };
        };
        var __tmp__ = _tr._next(), _hdr:Ref<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _tr._err = _err;
        return { _0 : _hdr, _1 : _err };
    }
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
    @:keep
    public function _physicalRemaining():GoInt64 {
        var _fr = this;
        (_fr == null ? null : _fr.__copy__());
        return _fr._nb;
    }
    @:keep
    public function _logicalRemaining():GoInt64 {
        var _fr = this;
        (_fr == null ? null : _fr.__copy__());
        return _fr._nb;
    }
    @:keep
    public function writeTo(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        var _fr = this;
        _fr;
        return stdgo.io.Io.copy(_w, ((new T_reader(_fr) : T_reader)));
    }
    @:keep
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _fr = this;
        _fr;
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
    @:keep
    public function _physicalRemaining():GoInt64 {
        var _sr = this;
        (_sr == null ? null : _sr.__copy__());
        return _sr._fr._physicalRemaining();
    }
    @:keep
    public function _logicalRemaining():GoInt64 {
        var _sr = this;
        (_sr == null ? null : _sr.__copy__());
        return (_sr._sp != null ? _sr._sp[(_sr._sp != null ? _sr._sp.length : ((0 : GoInt))) - ((1 : GoInt))] : new T_sparseEntry())._endOffset() - _sr._pos;
    }
    @:keep
    public function writeTo(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        var _sr = this;
        _sr;
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
            return stdgo.io.Io.copy(_w, ((new T_reader(_sr) : T_reader)));
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
                _sr._sp = (((_sr._sp.__slice__(((1 : GoInt))) : T_sparseHoles)) == null ? null : ((_sr._sp.__slice__(((1 : GoInt))) : T_sparseHoles)).__copy__());
            };
        };
        if (_writeLastByte && (_err == null)) {
            {
                var __tmp__ = _ws.write(((new Slice<GoUInt8>(((0 : GoUInt8))) : Slice<GoUInt8>)));
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
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _sr = this;
        _sr;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _finished:Bool = (((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)) >= _sr._logicalRemaining();
        if (_finished) {
            _b = ((_b.__slice__(0, _sr._logicalRemaining()) : Slice<GoUInt8>));
        };
        var _b0:Slice<GoUInt8> = _b;
        var _endPos:GoInt64 = _sr._pos + (((_b != null ? _b.length : ((0 : GoInt))) : GoInt64));
        while ((_endPos > _sr._pos) && (_err == null)) {
            var _nf:GoInt = ((0 : GoInt));
            var _holeStart:GoInt64 = (_sr._sp != null ? _sr._sp[((0 : GoInt))] : new T_sparseEntry()).offset, _holeEnd:GoInt64 = (_sr._sp != null ? _sr._sp[((0 : GoInt))] : new T_sparseEntry())._endOffset();
            if (_sr._pos < _holeStart) {
                var _bf:Slice<GoUInt8> = ((_b.__slice__(0, _min((((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)), _holeStart - _sr._pos)) : Slice<GoUInt8>));
                {
                    var __tmp__ = _tryReadFull(_sr._fr, _bf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else {
                var _bf:Slice<GoUInt8> = ((_b.__slice__(0, _min((((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)), _holeEnd - _sr._pos)) : Slice<GoUInt8>));
                {
                    var __tmp__ = _tryReadFull(((new T_zeroReader() : T_zeroReader)), _bf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
            _b = ((_b.__slice__(_nf) : Slice<GoUInt8>));
            _sr._pos = _sr._pos + (((_nf : GoInt64)));
            if ((_sr._pos >= _holeEnd) && ((_sr._sp != null ? _sr._sp.length : ((0 : GoInt))) > ((1 : GoInt)))) {
                _sr._sp = (((_sr._sp.__slice__(((1 : GoInt))) : T_sparseHoles)) == null ? null : ((_sr._sp.__slice__(((1 : GoInt))) : T_sparseHoles)).__copy__());
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
    @:keep
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _ = this;
        for (_i => _ in _b) {
            if (_b != null) _b[_i] = ((0 : GoUInt8));
        };
        return { _0 : (_b != null ? _b.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_zeroReader();
    }
}
@:structInit class T_reader {
    @:embedded
    public var reader : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public function new(?reader:stdgo.io.Io.Reader) {
        if (reader != null) this.reader = reader;
    }
    public function read(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return reader.read(_p);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_reader(reader);
    }
}
@:structInit class T_readSeeker {
    @:embedded
    public var readSeeker : stdgo.io.Io.ReadSeeker = ((null : stdgo.io.Io.ReadSeeker));
    public function new(?readSeeker:stdgo.io.Io.ReadSeeker) {
        if (readSeeker != null) this.readSeeker = readSeeker;
    }
    public function read(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return readSeeker.read(_p);
    public function seek(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return readSeeker.seek(_offset, _whence);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_readSeeker(readSeeker);
    }
}
@:structInit @:using(stdgo.archive.tar.Tar.T_readBadSeeker_static_extension) class T_readBadSeeker {
    @:keep
    public function seek(_0:GoInt64, _1:GoInt):{ var _0 : GoInt64; var _1 : Error; } {
        var _rbs = this;
        _rbs;
        return { _0 : ((0 : GoInt64)), _1 : stdgo.fmt.Fmt.errorf(((("illegal seek" : GoString)))) };
    }
    @:embedded
    public var readSeeker : stdgo.io.Io.ReadSeeker = ((null : stdgo.io.Io.ReadSeeker));
    public function new(?readSeeker:stdgo.io.Io.ReadSeeker) {
        if (readSeeker != null) this.readSeeker = readSeeker;
    }
    public function read(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return readSeeker.read(_p);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_readBadSeeker(readSeeker);
    }
}
@:structInit @:using(stdgo.archive.tar.Tar.T_testNonEmptyReader_static_extension) class T_testNonEmptyReader {
    @:keep
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = this;
        (_r == null ? null : _r.__copy__());
        if ((_b != null ? _b.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("unexpected empty Read call" : GoString)))) };
        };
        return _r.reader.read(_b);
    }
    @:embedded
    public var reader : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public function new(?reader:stdgo.io.Io.Reader) {
        if (reader != null) this.reader = reader;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_testNonEmptyReader(reader);
    }
}
@:structInit @:using(stdgo.archive.tar.Tar.T_parser_static_extension) class T_parser {
    @:keep
    public function _parseOctal(_b:Slice<GoByte>):GoInt64 {
        var _p = this;
        _p;
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
    @:keep
    public function _parseNumeric(_b:Slice<GoByte>):GoInt64 {
        var _p = this;
        _p;
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
    @:keep
    public function _parseString(_b:Slice<GoByte>):GoString {
        var _ = this;
        {
            var _i:GoInt = stdgo.bytes.Bytes.indexByte(_b, ((0 : GoUInt8)));
            if (_i >= ((0 : GoInt))) {
                return ((((_b.__slice__(0, _i) : Slice<GoUInt8>)) : GoString));
            };
        };
        return ((_b : GoString));
    }
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
    @:keep
    public function _formatOctal(_b:Slice<GoByte>, _x:GoInt64):Void {
        var _f = this;
        _f;
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
    @:keep
    public function _formatNumeric(_b:Slice<GoByte>, _x:GoInt64):Void {
        var _f = this;
        _f;
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
    @:keep
    public function _formatString(_b:Slice<GoByte>, _s:GoString):Void {
        var _f = this;
        _f;
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
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_formatter(_err);
    }
}
@:structInit class T_testError {
    @:embedded
    public var _error : stdgo.Error = ((null : stdgo.Error));
    public function new(?_error:stdgo.Error) {
        if (_error != null) this._error = _error;
    }
    public function error():GoString return _error.error();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_testError(_error);
    }
}
@:structInit @:using(stdgo.archive.tar.Tar.T_testFile_static_extension) class T_testFile {
    @:keep
    public function seek(_pos:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : Error; } {
        var _f = this;
        _f;
        if ((_pos == ((0 : GoInt64))) && (_whence == ((1 : GoInt)))) {
            return { _0 : _f._pos, _1 : ((null : stdgo.Error)) };
        };
        if ((_f._ops != null ? _f._ops.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt64)), _1 : stdgo.errors.Errors.new_(((("unexpected Seek operation" : GoString)))) };
        };
        var __tmp__ = try {
            { value : (((_f._ops != null ? _f._ops[((0 : GoInt))] : ((null : AnyInterface))).value : GoInt64)), ok : true };
        } catch(_) {
            { value : ((0 : GoInt64)), ok : false };
        }, _s = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return { _0 : ((0 : GoInt64)), _1 : stdgo.errors.Errors.new_(((("unexpected Seek operation" : GoString)))) };
        };
        if ((_s != _pos) || (_whence != ((1 : GoInt)))) {
            return { _0 : ((0 : GoInt64)), _1 : ((new T_testError(stdgo.fmt.Fmt.errorf(((("got Seek(%d, %d), want Seek(%d, %d)" : GoString))), Go.toInterface(_pos), Go.toInterface(_whence), Go.toInterface(_s), Go.toInterface(((1 : GoInt))))) : T_testError)) };
        };
        _f._pos = _f._pos + (_s);
        _f._ops = (((_f._ops.__slice__(((1 : GoInt))) : T_fileOps)) == null ? null : ((_f._ops.__slice__(((1 : GoInt))) : T_fileOps)).__copy__());
        return { _0 : _f._pos, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _f = this;
        _f;
        if ((_b != null ? _b.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        if ((_f._ops != null ? _f._ops.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("unexpected Write operation" : GoString)))) };
        };
        var __tmp__ = try {
            { value : (((_f._ops != null ? _f._ops[((0 : GoInt))] : ((null : AnyInterface))).value : GoString)), ok : true };
        } catch(_) {
            { value : (("" : GoString)), ok : false };
        }, _s = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("unexpected Write operation" : GoString)))) };
        };
        if (!stdgo.strings.Strings.hasPrefix(_s, ((_b : GoString)))) {
            return { _0 : ((0 : GoInt)), _1 : ((new T_testError(stdgo.fmt.Fmt.errorf(((("got Write(%q), want Write(%q)" : GoString))), Go.toInterface(_b), Go.toInterface(_s))) : T_testError)) };
        };
        if ((_s != null ? _s.length : ((0 : GoInt))) > (_b != null ? _b.length : ((0 : GoInt)))) {
            if (_f._ops != null) _f._ops[((0 : GoInt))] = Go.toInterface(((_s.__slice__((_b != null ? _b.length : ((0 : GoInt)))) : GoString)));
        } else {
            _f._ops = (((_f._ops.__slice__(((1 : GoInt))) : T_fileOps)) == null ? null : ((_f._ops.__slice__(((1 : GoInt))) : T_fileOps)).__copy__());
        };
        _f._pos = _f._pos + ((((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)));
        return { _0 : (_b != null ? _b.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _f = this;
        _f;
        if ((_b != null ? _b.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        if ((_f._ops != null ? _f._ops.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        var __tmp__ = try {
            { value : (((_f._ops != null ? _f._ops[((0 : GoInt))] : ((null : AnyInterface))).value : GoString)), ok : true };
        } catch(_) {
            { value : (("" : GoString)), ok : false };
        }, _s = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("unexpected Read operation" : GoString)))) };
        };
        var _n:GoInt = Go.copySlice(_b, _s);
        if ((_s != null ? _s.length : ((0 : GoInt))) > _n) {
            if (_f._ops != null) _f._ops[((0 : GoInt))] = Go.toInterface(((_s.__slice__(_n) : GoString)));
        } else {
            _f._ops = (((_f._ops.__slice__(((1 : GoInt))) : T_fileOps)) == null ? null : ((_f._ops.__slice__(((1 : GoInt))) : T_fileOps)).__copy__());
        };
        _f._pos = _f._pos + ((((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)));
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    public var _ops : T_fileOps = new T_fileOps();
    public var _pos : GoInt64 = ((0 : GoInt64));
    public function new(?_ops:T_fileOps, ?_pos:GoInt64) {
        if (_ops != null) this._ops = _ops;
        if (_pos != null) this._pos = _pos;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_testFile(_ops, _pos);
    }
}
@:structInit class T_headerRoundTripTest {
    public var _h : Ref<Header> = ((null : Ref<Header>));
    public var _fm : stdgo.io.fs.Fs.FileMode = new stdgo.io.fs.Fs.FileMode();
    public function new(?_h:Ref<Header>, ?_fm:stdgo.io.fs.Fs.FileMode) {
        if (_h != null) this._h = _h;
        if (_fm != null) this._fm = _fm;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_headerRoundTripTest(_h, _fm);
    }
}
@:structInit @:using(stdgo.archive.tar.Tar.Writer_static_extension) class Writer {
    @:keep
    public function close():Error {
        var _tw = this;
        _tw;
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
    @:keep
    public function _readFrom(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } {
        var _tw = this;
        _tw;
        if (_tw._err != null) {
            return { _0 : ((0 : GoInt64)), _1 : _tw._err };
        };
        var __tmp__ = _tw._curr.readFrom(_r), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) && (_err != errWriteTooLong)) {
            _tw._err = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _tw = this;
        _tw;
        if (_tw._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _tw._err };
        };
        var __tmp__ = _tw._curr.write(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) && (_err != errWriteTooLong)) {
            _tw._err = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function _writeRawHeader(_blk:T_block, _size:GoInt64, _flag:GoByte):Error {
        var _tw = this;
        _tw;
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
    @:keep
    public function _writeRawFile(_name:GoString, _data:GoString, _flag:GoByte, _format:Format):Error {
        var _tw = this;
        _tw;
        _tw._blk._reset();
        _name = _toASCII(_name);
        if ((_name != null ? _name.length : ((0 : GoInt))) > ((100 : GoInt))) {
            _name = ((_name.__slice__(0, ((100 : GoInt))) : GoString));
        };
        _name = stdgo.strings.Strings.trimRight(_name, ((("/" : GoString))));
        var _f:T_formatter = new T_formatter();
        var _v7:Ref<T_headerV7> = _tw._blk._toV7();
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
    @:keep
    public function _templateV7Plus(_hdr:Header, _fmtStr:T_stringFormatter, _fmtNum:T_numberFormatter):T_block {
        var _tw = this;
        _tw;
        _tw._blk._reset();
        var _modTime:stdgo.time.Time.Time = (_hdr.modTime == null ? null : _hdr.modTime.__copy__());
        if (_modTime.isZero()) {
            _modTime = (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__());
        };
        var _v7:Ref<T_headerV7> = _tw._blk._toV7();
        if (_v7._typeFlag() != null) _v7._typeFlag()[((0 : GoInt))] = _hdr.typeflag;
        _fmtStr(_v7._name(), _hdr.name);
        _fmtStr(_v7._linkName(), _hdr.linkname);
        _fmtNum(_v7._mode(), _hdr.mode);
        _fmtNum(_v7._uid(), ((_hdr.uid : GoInt64)));
        _fmtNum(_v7._gid(), ((_hdr.gid : GoInt64)));
        _fmtNum(_v7._size(), _hdr.size);
        _fmtNum(_v7._modTime(), _modTime.unix());
        var _ustar:Ref<T_headerUSTAR> = _tw._blk._toUSTAR();
        _fmtStr(_ustar._userName(), _hdr.uname);
        _fmtStr(_ustar._groupName(), _hdr.gname);
        _fmtNum(_ustar._devMajor(), _hdr.devmajor);
        _fmtNum(_ustar._devMinor(), _hdr.devminor);
        return _tw._blk;
    }
    @:keep
    public function _writeGNUHeader(_hdr:Header):Error {
        var _tw = this;
        _tw;
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
        var _blk:Ref<T_block> = _tw._templateV7Plus(_hdr, _f._formatString, _f._formatNumeric);
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
            _tw._curr = ((new T_sparseFileWriter(_tw._curr, (_spd == null ? null : _spd.__copy__()), ((0 : GoInt64))) : T_sparseFileWriter));
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public function _writePAXHeader(_hdr:Header, _paxHdrs:GoMap<GoString, GoString>):Error {
        var _tw = this;
        _tw;
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
        var _fmtStr:(Slice<GoUInt8>, GoString) -> Void = function(_b:Slice<GoByte>, _s:GoString):Void {
            _f._formatString(_b, _toASCII(_s));
        };
        var _blk:Ref<T_block> = _tw._templateV7Plus(_hdr, _fmtStr, _f._formatOctal);
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
    public function _writeUSTARHeader(_hdr:Header):Error {
        var _tw = this;
        _tw;
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
        var _blk:Ref<T_block> = _tw._templateV7Plus(_hdr, _f._formatString, _f._formatOctal);
        _f._formatString(_blk._toUSTAR()._prefix(), _namePrefix);
        _blk._setFormat(((2 : GoInt)));
        if (_f._err != null) {
            return _f._err;
        };
        return _tw._writeRawHeader(_blk, _hdr.size, _hdr.typeflag);
    }
    @:keep
    public function writeHeader(_hdr:Header):Error {
        var _tw = this;
        _tw;
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
    @:keep
    public function flush():Error {
        var _tw = this;
        _tw;
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
    @:keep
    public function _physicalRemaining():GoInt64 {
        var _fw = this;
        (_fw == null ? null : _fw.__copy__());
        return _fw._nb;
    }
    @:keep
    public function _logicalRemaining():GoInt64 {
        var _fw = this;
        (_fw == null ? null : _fw.__copy__());
        return _fw._nb;
    }
    @:keep
    public function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } {
        var _fw = this;
        _fw;
        return stdgo.io.Io.copy(((new T_testNonEmptyWriter(_fw) : T_testNonEmptyWriter)), _r);
    }
    @:keep
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _fw = this;
        _fw;
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
    @:keep
    public function _physicalRemaining():GoInt64 {
        var _sw = this;
        (_sw == null ? null : _sw.__copy__());
        return _sw._fw._physicalRemaining();
    }
    @:keep
    public function _logicalRemaining():GoInt64 {
        var _sw = this;
        (_sw == null ? null : _sw.__copy__());
        return (_sw._sp != null ? _sw._sp[(_sw._sp != null ? _sw._sp.length : ((0 : GoInt))) - ((1 : GoInt))] : new T_sparseEntry())._endOffset() - _sw._pos;
    }
    @:keep
    public function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } {
        var _sw = this;
        _sw;
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
            return stdgo.io.Io.copy(((new T_testNonEmptyWriter(_sw) : T_testNonEmptyWriter)), _r);
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
                _sw._sp = (((_sw._sp.__slice__(((1 : GoInt))) : T_sparseDatas)) == null ? null : ((_sw._sp.__slice__(((1 : GoInt))) : T_sparseDatas)).__copy__());
            };
        };
        if (_readLastByte && (_err == null)) {
            {
                var __tmp__ = _mustReadFull(_rs, ((new Slice<GoUInt8>(((0 : GoUInt8))) : Slice<GoUInt8>)));
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
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _sw = this;
        _sw;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _overwrite:Bool = (((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)) > _sw._logicalRemaining();
        if (_overwrite) {
            _b = ((_b.__slice__(0, _sw._logicalRemaining()) : Slice<GoUInt8>));
        };
        var _b0:Slice<GoUInt8> = _b;
        var _endPos:GoInt64 = _sw._pos + (((_b != null ? _b.length : ((0 : GoInt))) : GoInt64));
        while ((_endPos > _sw._pos) && (_err == null)) {
            var _nf:GoInt = ((0 : GoInt));
            var _dataStart:GoInt64 = (_sw._sp != null ? _sw._sp[((0 : GoInt))] : new T_sparseEntry()).offset, _dataEnd:GoInt64 = (_sw._sp != null ? _sw._sp[((0 : GoInt))] : new T_sparseEntry())._endOffset();
            if (_sw._pos < _dataStart) {
                var _bf:Slice<GoUInt8> = ((_b.__slice__(0, _min((((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)), _dataStart - _sw._pos)) : Slice<GoUInt8>));
                {
                    var __tmp__ = ((new T_zeroWriter() : T_zeroWriter)).write(_bf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else {
                var _bf:Slice<GoUInt8> = ((_b.__slice__(0, _min((((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)), _dataEnd - _sw._pos)) : Slice<GoUInt8>));
                {
                    var __tmp__ = _sw._fw.write(_bf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
            _b = ((_b.__slice__(_nf) : Slice<GoUInt8>));
            _sw._pos = _sw._pos + (((_nf : GoInt64)));
            if ((_sw._pos >= _dataEnd) && ((_sw._sp != null ? _sw._sp.length : ((0 : GoInt))) > ((1 : GoInt)))) {
                _sw._sp = (((_sw._sp.__slice__(((1 : GoInt))) : T_sparseDatas)) == null ? null : ((_sw._sp.__slice__(((1 : GoInt))) : T_sparseDatas)).__copy__());
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
    @:keep
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _ = this;
        for (_i => _c in _b) {
            if (_c != ((0 : GoUInt8))) {
                return { _0 : _i, _1 : _errWriteHole };
            };
        };
        return { _0 : (_b != null ? _b.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_zeroWriter();
    }
}
@:structInit @:using(stdgo.archive.tar.Tar.T_testNonEmptyWriter_static_extension) class T_testNonEmptyWriter {
    @:keep
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = this;
        (_w == null ? null : _w.__copy__());
        if ((_b != null ? _b.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("unexpected empty Write call" : GoString)))) };
        };
        return _w.writer.write(_b);
    }
    @:embedded
    public var writer : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public function new(?writer:stdgo.io.Io.Writer) {
        if (writer != null) this.writer = writer;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_testNonEmptyWriter(writer);
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
    public var _file : GoString = (("" : GoString));
    public var _headers : Slice<Ref<Header>> = ((null : Slice<Ref<Header>>));
    public var _chksums : Slice<GoString> = ((null : Slice<GoString>));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function toString():String return "{" + Go.string(_file) + " " + Go.string(_headers) + " " + Go.string(_chksums) + " " + Go.string(_err) + "}";
    public function new(?_file:GoString, ?_headers:Slice<Ref<Header>>, ?_chksums:Slice<GoString>, ?_err:stdgo.Error, ?toString) {
        if (_file != null) this._file = _file;
        if (_headers != null) this._headers = _headers;
        if (_chksums != null) this._chksums = _chksums;
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_1(_file, _headers, _chksums, _err);
    }
}
@:structInit @:local class T__struct_2 {
    public var _file : GoString = (("" : GoString));
    public var _cases : Slice<T_testCase> = ((null : Slice<T_testCase>));
    public function toString():String return "{" + Go.string(_file) + " " + Go.string(_cases) + "}";
    public function new(?_file:GoString, ?_cases:Slice<T_testCase>, ?toString) {
        if (_file != null) this._file = _file;
        if (_cases != null) this._cases = _cases;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_2(_file, _cases);
    }
}
@:structInit @:local class T__struct_3 {
    public var _input : GoString = (("" : GoString));
    public var _cnt : GoInt = ((0 : GoInt));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function toString():String return "{" + Go.string(_input) + " " + Go.string(_cnt) + " " + Go.string(_err) + "}";
    public function new(?_input:GoString, ?_cnt:GoInt, ?_err:stdgo.Error, ?toString) {
        if (_input != null) this._input = _input;
        if (_cnt != null) this._cnt = _cnt;
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_3(_input, _cnt, _err);
    }
}
@:structInit @:local class T__struct_4 {
    public var _in : GoMap<GoString, GoString> = ((null : GoMap<GoString, GoString>));
    public var _want : Ref<Header> = ((null : Ref<Header>));
    public var _ok : Bool = false;
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_want) + " " + Go.string(_ok) + "}";
    public function new(?_in:GoMap<GoString, GoString>, ?_want:Ref<Header>, ?_ok:Bool, ?toString) {
        if (_in != null) this._in = _in;
        if (_want != null) this._want = _want;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_4(_in, _want, _ok);
    }
}
@:structInit @:local class T__struct_5 {
    public var _in : GoString = (("" : GoString));
    public var _want : GoMap<GoString, GoString> = ((null : GoMap<GoString, GoString>));
    public var _ok : Bool = false;
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_want) + " " + Go.string(_ok) + "}";
    public function new(?_in:GoString, ?_want:GoMap<GoString, GoString>, ?_ok:Bool, ?toString) {
        if (_in != null) this._in = _in;
        if (_want != null) this._want = _want;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_5(_in, _want, _ok);
    }
}
@:structInit @:local class T__struct_6 {
    public var _input : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _wantMap : T_sparseDatas = new T_sparseDatas();
    public var _wantSize : GoInt64 = ((0 : GoInt64));
    public var _wantErr : stdgo.Error = ((null : stdgo.Error));
    public function toString():String return "{" + Go.string(_input) + " " + Go.string(_wantMap) + " " + Go.string(_wantSize) + " " + Go.string(_wantErr) + "}";
    public function new(?_input:Slice<GoUInt8>, ?_wantMap:T_sparseDatas, ?_wantSize:GoInt64, ?_wantErr:stdgo.Error, ?toString) {
        if (_input != null) this._input = _input;
        if (_wantMap != null) this._wantMap = _wantMap;
        if (_wantSize != null) this._wantSize = _wantSize;
        if (_wantErr != null) this._wantErr = _wantErr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_6(_input, _wantMap, _wantSize, _wantErr);
    }
}
@:structInit @:local class T__struct_7 {
    public var _inputData : GoString = (("" : GoString));
    public var _inputHdrs : GoMap<GoString, GoString> = ((null : GoMap<GoString, GoString>));
    public var _wantMap : T_sparseDatas = new T_sparseDatas();
    public var _wantSize : GoInt64 = ((0 : GoInt64));
    public var _wantName : GoString = (("" : GoString));
    public var _wantErr : stdgo.Error = ((null : stdgo.Error));
    public function toString():String return "{" + Go.string(_inputData) + " " + Go.string(_inputHdrs) + " " + Go.string(_wantMap) + " " + Go.string(_wantSize) + " " + Go.string(_wantName) + " " + Go.string(_wantErr) + "}";
    public function new(?_inputData:GoString, ?_inputHdrs:GoMap<GoString, GoString>, ?_wantMap:T_sparseDatas, ?_wantSize:GoInt64, ?_wantName:GoString, ?_wantErr:stdgo.Error, ?toString) {
        if (_inputData != null) this._inputData = _inputData;
        if (_inputHdrs != null) this._inputHdrs = _inputHdrs;
        if (_wantMap != null) this._wantMap = _wantMap;
        if (_wantSize != null) this._wantSize = _wantSize;
        if (_wantName != null) this._wantName = _wantName;
        if (_wantErr != null) this._wantErr = _wantErr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_7(_inputData, _inputHdrs, _wantMap, _wantSize, _wantName, _wantErr);
    }
}
@:structInit @:local class T__struct_8 {
    public var _maker : T_fileMaker = ((null : T_fileMaker));
    public var _tests : Slice<T_testFnc> = ((null : Slice<T_testFnc>));
    public function toString():String return "{" + Go.string(_maker) + " " + Go.string(_tests) + "}";
    public function new(?_maker:T_fileMaker, ?_tests:Slice<T_testFnc>, ?toString) {
        if (_maker != null) this._maker = _maker;
        if (_tests != null) this._tests = _tests;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_8(_maker, _tests);
    }
}
@:structInit @:local class T__struct_9 {
    public var _in : GoInt64 = ((0 : GoInt64));
    public var _width : GoInt = ((0 : GoInt));
    public var _ok : Bool = false;
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_width) + " " + Go.string(_ok) + "}";
    public function new(?_in:GoInt64, ?_width:GoInt, ?_ok:Bool, ?toString) {
        if (_in != null) this._in = _in;
        if (_width != null) this._width = _width;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_9(_in, _width, _ok);
    }
}
@:structInit @:local class T__struct_10 {
    public var _in : GoString = (("" : GoString));
    public var _want : GoInt64 = ((0 : GoInt64));
    public var _ok : Bool = false;
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_want) + " " + Go.string(_ok) + "}";
    public function new(?_in:GoString, ?_want:GoInt64, ?_ok:Bool, ?toString) {
        if (_in != null) this._in = _in;
        if (_want != null) this._want = _want;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_10(_in, _want, _ok);
    }
}
@:structInit @:local class T__struct_11 {
    public var _input : GoInt64 = ((0 : GoInt64));
    public var _width : GoInt = ((0 : GoInt));
    public var _ok : Bool = false;
    public function toString():String return "{" + Go.string(_input) + " " + Go.string(_width) + " " + Go.string(_ok) + "}";
    public function new(?_input:GoInt64, ?_width:GoInt, ?_ok:Bool, ?toString) {
        if (_input != null) this._input = _input;
        if (_width != null) this._width = _width;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_11(_input, _width, _ok);
    }
}
@:structInit @:local class T__struct_12 {
    public var _in : GoString = (("" : GoString));
    public var _want : stdgo.time.Time.Time = new stdgo.time.Time.Time();
    public var _ok : Bool = false;
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_want) + " " + Go.string(_ok) + "}";
    public function new(?_in:GoString, ?_want:stdgo.time.Time.Time, ?_ok:Bool, ?toString) {
        if (_in != null) this._in = _in;
        if (_want != null) this._want = _want;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_12(_in, _want, _ok);
    }
}
@:structInit @:local class T__struct_13 {
    public var _sec : GoInt64 = ((0 : GoInt64));
    public var _nsec : GoInt64 = ((0 : GoInt64));
    public var _want : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_sec) + " " + Go.string(_nsec) + " " + Go.string(_want) + "}";
    public function new(?_sec:GoInt64, ?_nsec:GoInt64, ?_want:GoString, ?toString) {
        if (_sec != null) this._sec = _sec;
        if (_nsec != null) this._nsec = _nsec;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_13(_sec, _nsec, _want);
    }
}
@:structInit @:local class T__struct_14 {
    public var _in : GoString = (("" : GoString));
    public var _wantRes : GoString = (("" : GoString));
    public var _wantKey : GoString = (("" : GoString));
    public var _wantVal : GoString = (("" : GoString));
    public var _ok : Bool = false;
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_wantRes) + " " + Go.string(_wantKey) + " " + Go.string(_wantVal) + " " + Go.string(_ok) + "}";
    public function new(?_in:GoString, ?_wantRes:GoString, ?_wantKey:GoString, ?_wantVal:GoString, ?_ok:Bool, ?toString) {
        if (_in != null) this._in = _in;
        if (_wantRes != null) this._wantRes = _wantRes;
        if (_wantKey != null) this._wantKey = _wantKey;
        if (_wantVal != null) this._wantVal = _wantVal;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_14(_in, _wantRes, _wantKey, _wantVal, _ok);
    }
}
@:structInit @:local class T__struct_15 {
    public var _inKey : GoString = (("" : GoString));
    public var _inVal : GoString = (("" : GoString));
    public var _want : GoString = (("" : GoString));
    public var _ok : Bool = false;
    public function toString():String return "{" + Go.string(_inKey) + " " + Go.string(_inVal) + " " + Go.string(_want) + " " + Go.string(_ok) + "}";
    public function new(?_inKey:GoString, ?_inVal:GoString, ?_want:GoString, ?_ok:Bool, ?toString) {
        if (_inKey != null) this._inKey = _inKey;
        if (_inVal != null) this._inVal = _inVal;
        if (_want != null) this._want = _want;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_15(_inKey, _inVal, _want, _ok);
    }
}
@:structInit @:local class T__struct_16 {
    public var _in : Slice<T_sparseEntry> = ((null : Slice<T_sparseEntry>));
    public var _size : GoInt64 = ((0 : GoInt64));
    public var _wantValid : Bool = false;
    public var _wantAligned : Slice<T_sparseEntry> = ((null : Slice<T_sparseEntry>));
    public var _wantInverted : Slice<T_sparseEntry> = ((null : Slice<T_sparseEntry>));
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_size) + " " + Go.string(_wantValid) + " " + Go.string(_wantAligned) + " " + Go.string(_wantInverted) + "}";
    public function new(?_in:Slice<T_sparseEntry>, ?_size:GoInt64, ?_wantValid:Bool, ?_wantAligned:Slice<T_sparseEntry>, ?_wantInverted:Slice<T_sparseEntry>, ?toString) {
        if (_in != null) this._in = _in;
        if (_size != null) this._size = _size;
        if (_wantValid != null) this._wantValid = _wantValid;
        if (_wantAligned != null) this._wantAligned = _wantAligned;
        if (_wantInverted != null) this._wantInverted = _wantInverted;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_16(_in, _size, _wantValid, _wantAligned, _wantInverted);
    }
}
@:structInit @:local class T__struct_17 {
    public var _header : Ref<Header> = ((null : Ref<Header>));
    public var _paxHdrs : GoMap<GoString, GoString> = ((null : GoMap<GoString, GoString>));
    public var _formats : Format = new Format();
    public function toString():String return "{" + Go.string(_header) + " " + Go.string(_paxHdrs) + " " + Go.string(_formats) + "}";
    public function new(?_header:Ref<Header>, ?_paxHdrs:GoMap<GoString, GoString>, ?_formats:Format, ?toString) {
        if (_header != null) this._header = _header;
        if (_paxHdrs != null) this._paxHdrs = _paxHdrs;
        if (_formats != null) this._formats = _formats;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_17(_header, _paxHdrs, _formats);
    }
}
@:structInit @:local class T__struct_18 {
    public var _label : GoString = (("" : GoString));
    public var _files : Slice<T_file> = ((null : Slice<T_file>));
    public function toString():String return "{" + Go.string(_label) + " " + Go.string(_files) + "}";
    public function new(?_label:GoString, ?_files:Slice<T_file>, ?toString) {
        if (_label != null) this._label = _label;
        if (_files != null) this._files = _files;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_18(_label, _files);
    }
}
@:structInit @:local class T__struct_19 {
    @:embedded
    public var writer : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public function toString():String return "{" + Go.string(writer) + "}";
    public function new(?writer:stdgo.io.Io.Writer, ?toString) {
        if (writer != null) this.writer = writer;
    }
    public function write(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return writer.write(_p);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_19(writer);
    }
}
@:structInit @:local class T__struct_20 {
    public var _file : GoString = (("" : GoString));
    public var _tests : Slice<T_testFnc> = ((null : Slice<T_testFnc>));
    public function toString():String return "{" + Go.string(_file) + " " + Go.string(_tests) + "}";
    public function new(?_file:GoString, ?_tests:Slice<T_testFnc>, ?toString) {
        if (_file != null) this._file = _file;
        if (_tests != null) this._tests = _tests;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_20(_file, _tests);
    }
}
@:structInit @:local class T__struct_21 {
    public var _input : GoString = (("" : GoString));
    public var _prefix : GoString = (("" : GoString));
    public var _suffix : GoString = (("" : GoString));
    public var _ok : Bool = false;
    public function toString():String return "{" + Go.string(_input) + " " + Go.string(_prefix) + " " + Go.string(_suffix) + " " + Go.string(_ok) + "}";
    public function new(?_input:GoString, ?_prefix:GoString, ?_suffix:GoString, ?_ok:Bool, ?toString) {
        if (_input != null) this._input = _input;
        if (_prefix != null) this._prefix = _prefix;
        if (_suffix != null) this._suffix = _suffix;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_21(_input, _prefix, _suffix, _ok);
    }
}
@:structInit @:local class T__struct_22 {
    public var _maker : T_fileMaker = ((null : T_fileMaker));
    public var _tests : Slice<T_testFnc> = ((null : Slice<T_testFnc>));
    public function toString():String return "{" + Go.string(_maker) + " " + Go.string(_tests) + "}";
    public function new(?_maker:T_fileMaker, ?_tests:Slice<T_testFnc>, ?toString) {
        if (_maker != null) this._maker = _maker;
        if (_tests != null) this._tests = _tests;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_22(_maker, _tests);
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
@:named typedef T_fileOps = Slice<AnyInterface>;
@:named typedef T_stringFormatter = (Slice<GoUInt8>, GoString) -> Void;
@:named typedef T_numberFormatter = (Slice<GoUInt8>, GoInt64) -> Void;
@:named @:using(stdgo.archive.tar.Tar.T_failOnceWriter_static_extension) typedef T_failOnceWriter = Bool;
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
function _alignSparseEntries(_src:Slice<T_sparseEntry>, _size:GoInt64):Slice<T_sparseEntry> {
        var _dst:Slice<T_sparseEntry> = ((_src.__slice__(0, ((0 : GoInt))) : Slice<T_sparseEntry>));
        for (_0 => _s in _src) {
            var _pos:GoInt64 = _s.offset, _end:GoInt64 = _s._endOffset();
            _pos = _pos + (_blockPadding(_pos));
            if (_end != _size) {
                _end = _end - (_blockPadding(-_end));
            };
            if (_pos < _end) {
                _dst = (_dst != null ? _dst.__append__(((({ offset : _pos, length : _end - _pos } : T_sparseEntry)) == null ? null : (({ offset : _pos, length : _end - _pos } : T_sparseEntry)).__copy__())) : new Slice<T_sparseEntry>(((({ offset : _pos, length : _end - _pos } : T_sparseEntry)) == null ? null : (({ offset : _pos, length : _end - _pos } : T_sparseEntry)).__copy__())));
            };
        };
        return _dst;
    }
function _invertSparseEntries(_src:Slice<T_sparseEntry>, _size:GoInt64):Slice<T_sparseEntry> {
        var _dst:Slice<T_sparseEntry> = ((_src.__slice__(0, ((0 : GoInt))) : Slice<T_sparseEntry>));
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
function fileInfoHeader(_fi:stdgo.io.fs.Fs.FileInfo, _link:GoString):{ var _0 : Header; var _1 : Error; } {
        if (_fi == null) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(((("archive/tar: FileInfo is nil" : GoString)))) };
        };
        var _fm:stdgo.io.fs.Fs.FileMode = _fi.mode();
        var _h:Ref<Header> = (({ name : _fi.name(), modTime : (_fi.modTime() == null ? null : _fi.modTime().__copy__()), mode : ((_fm.perm() : GoInt64)), typeflag : 0, linkname : "", size : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header));
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
                { value : ((null : Ref<Header>)), ok : false };
            }, _sys = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _h.uid = _sys.uid;
                _h.gid = _sys.gid;
                _h.uname = _sys.uname;
                _h.gname = _sys.gname;
                _h.accessTime = (_sys.accessTime == null ? null : _sys.accessTime.__copy__());
                _h.changeTime = (_sys.changeTime == null ? null : _sys.changeTime.__copy__());
                if (_sys.xattrs != null) {
                    _h.xattrs = new GoObjectMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))));
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
                    _h.paxrecords = new GoObjectMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))));
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
function _blockPadding(_offset:GoInt64):GoInt64 {
        var _n:GoInt64 = ((0 : GoInt64));
        return -_offset & ((511 : GoInt64));
    }
@:structInit class T_file_fuzzReader_0 {
    public var _header : Ref<Header> = ((null : Ref<Header>));
    public var _content : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public function new(?_header:Ref<Header>, ?_content:Slice<GoUInt8>) {
        if (_header != null) this._header = _header;
        if (_content != null) this._content = _content;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_file_fuzzReader_0(_header, _content);
    }
}
function fuzzReader(_f:stdgo.testing.Testing.F):Void {
        var _b:Ref<stdgo.bytes.Bytes.Buffer> = stdgo.bytes.Bytes.newBuffer(((null : Slice<GoUInt8>)));
        var _w:Ref<Writer> = newWriter(_b);
        var _inp:Slice<GoUInt8> = ((((("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." : GoString))) : Slice<GoByte>));
        var _err:stdgo.Error = _w.writeHeader((({ name : ((("lorem.txt" : GoString))), mode : ((384 : GoInt64)), size : (((_inp != null ? _inp.length : ((0 : GoInt))) : GoInt64)), typeflag : 0, linkname : "", uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)));
        if (_err != null) {
            _f.fatalf(((("failed to create writer: %s" : GoString))), Go.toInterface(_err));
        };
        {
            var __tmp__ = _w.write(_inp);
            _err = __tmp__._1;
        };
        if (_err != null) {
            _f.fatalf(((("failed to write file to archive: %s" : GoString))), Go.toInterface(_err));
        };
        {
            var _err:stdgo.Error = _w.close();
            if (_err != null) {
                _f.fatalf(((("failed to write archive: %s" : GoString))), Go.toInterface(_err));
            };
        };
        _f.add(Go.toInterface(_b.bytes()));
        _f.fuzz(Go.toInterface(function(_t:stdgo.testing.Testing.T_, _b:Slice<GoByte>):Void {
            var _r:Ref<Reader> = newReader(stdgo.bytes.Bytes.newReader(_b));
            {};
            var _files:Slice<T_file_fuzzReader_0> = ((new Slice<T_file_fuzzReader_0>() : Slice<T_file_fuzzReader_0>));
            while (true) {
                var __tmp__ = _r.next(), _hdr:Ref<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == stdgo.io.Io.eof) {
                    break;
                };
                if (_err != null) {
                    return;
                };
                var _buf:Ref<stdgo.bytes.Bytes.Buffer> = stdgo.bytes.Bytes.newBuffer(((null : Slice<GoUInt8>)));
                {
                    var __tmp__ = stdgo.io.Io.copy(_buf, _r), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        continue;
                    };
                };
                _files = (_files != null ? _files.__append__(((({ _header : _hdr, _content : _buf.bytes() } : T_file_fuzzReader_0)) == null ? null : (({ _header : _hdr, _content : _buf.bytes() } : T_file_fuzzReader_0)).__copy__())) : new Slice<T_file_fuzzReader_0>(((({ _header : _hdr, _content : _buf.bytes() } : T_file_fuzzReader_0)) == null ? null : (({ _header : _hdr, _content : _buf.bytes() } : T_file_fuzzReader_0)).__copy__())));
            };
            if ((_files != null ? _files.length : ((0 : GoInt))) == ((0 : GoInt))) {
                return;
            };
            var _out:Ref<stdgo.bytes.Bytes.Buffer> = stdgo.bytes.Bytes.newBuffer(((null : Slice<GoUInt8>)));
            var _w:Ref<Writer> = newWriter(_out);
            for (_1 => _f in _files) {
                {
                    var _err:stdgo.Error = _w.writeHeader(_f._header);
                    if (_err != null) {
                        _t.fatalf(((("unable to write previously parsed header: %s" : GoString))), Go.toInterface(_err));
                    };
                };
                {
                    var __tmp__ = _w.write(_f._content), _2:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(((("unable to write previously parsed content: %s" : GoString))), Go.toInterface(_err));
                    };
                };
            };
            {
                var _err:stdgo.Error = _w.close();
                if (_err != null) {
                    _t.fatalf(((("Unable to write archive: %s" : GoString))), Go.toInterface(_err));
                };
            };
        }));
    }
function newReader(_r:stdgo.io.Io.Reader):Reader {
        return (({ _r : _r, _curr : ((new T_regFileReader(_r, ((0 : GoInt64))) : T_regFileReader)), _pad : 0, _blk : new T_block(), _err : ((null : stdgo.Error)) } : Reader));
    }
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
                    _err = __tmp__._1;
                };
            } else if (_k == ((("mtime" : GoString)))) {
                {
                    var __tmp__ = _parsePAXTime(_v);
                    _hdr.modTime = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                    _err = __tmp__._1;
                };
            } else if (_k == ((("ctime" : GoString)))) {
                {
                    var __tmp__ = _parsePAXTime(_v);
                    _hdr.changeTime = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                    _err = __tmp__._1;
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
                        _hdr.xattrs = new GoObjectMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))));
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
function _parsePAX(_r:stdgo.io.Io.Reader):{ var _0 : GoMap<GoString, GoString>; var _1 : Error; } {
        var __tmp__ = stdgo.io.Io.readAll(_r), _buf:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : GoMap<GoString, GoString>)), _1 : _err };
        };
        var _sbuf:GoString = ((_buf : GoString));
        var _sparseMap:Slice<GoString> = ((null : Slice<GoString>));
        var _paxHdrs:GoMap<GoString, GoString> = new GoObjectMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))));
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
        var _spd:T_sparseDatas = (new Slice<T_sparseEntry>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_sparseEntry()]).__setCap__(((_numEntries : GoInt)).toBasic()) == null ? null : new Slice<T_sparseEntry>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_sparseEntry()]).__setCap__(((_numEntries : GoInt)).toBasic()).__copy__());
        {
            var _i:GoInt64 = ((((0 : GoInt64)) : GoInt64));
            Go.cfor(_i < _numEntries, _i++, {
                var __tmp__ = stdgo.strconv.Strconv.parseInt(_nextToken(), ((10 : GoInt)), ((64 : GoInt))), _offset:GoInt64 = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                var __tmp__ = stdgo.strconv.Strconv.parseInt(_nextToken(), ((10 : GoInt)), ((64 : GoInt))), _length:GoInt64 = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
                if ((_err1 != null) || (_err2 != null)) {
                    return { _0 : null, _1 : errHeader };
                };
                _spd = ((_spd != null ? _spd.__append__((({ offset : _offset, length : _length } : T_sparseEntry))) : new Slice<Slice<T_sparseEntry>>((({ offset : _offset, length : _length } : T_sparseEntry)))) == null ? null : (_spd != null ? _spd.__append__((({ offset : _offset, length : _length } : T_sparseEntry))) : new Slice<Slice<T_sparseEntry>>((({ offset : _offset, length : _length } : T_sparseEntry)))).__copy__());
            });
        };
        return { _0 : (_spd == null ? null : _spd.__copy__()), _1 : ((null : stdgo.Error)) };
    }
function _readGNUSparseMap0x1(_paxHdrs:GoMap<GoString, GoString>):{ var _0 : T_sparseDatas; var _1 : Error; } {
        var _numEntriesStr:GoString = (_paxHdrs != null ? _paxHdrs[((("GNU.sparse.numblocks" : GoString)))] : (("" : GoString)));
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_numEntriesStr, ((10 : GoInt)), ((0 : GoInt))), _numEntries:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || (_numEntries < ((0 : GoInt64)))) || ((((((2 : GoInt64)) * _numEntries) : GoInt)) < ((_numEntries : GoInt)))) {
            return { _0 : null, _1 : errHeader };
        };
        var _sparseMap:Slice<GoString> = stdgo.strings.Strings.split((_paxHdrs != null ? _paxHdrs[((("GNU.sparse.map" : GoString)))] : (("" : GoString))), ((("," : GoString))));
        if (((_sparseMap != null ? _sparseMap.length : ((0 : GoInt))) == ((1 : GoInt))) && ((_sparseMap != null ? _sparseMap[((0 : GoInt))] : (("" : GoString))) == ((("" : GoString))))) {
            _sparseMap = ((_sparseMap.__slice__(0, ((0 : GoInt))) : Slice<GoString>));
        };
        if ((((_sparseMap != null ? _sparseMap.length : ((0 : GoInt))) : GoInt64)) != (((2 : GoInt64)) * _numEntries)) {
            return { _0 : null, _1 : errHeader };
        };
        var _spd:T_sparseDatas = (new Slice<T_sparseEntry>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_sparseEntry()]).__setCap__(((_numEntries : GoInt)).toBasic()) == null ? null : new Slice<T_sparseEntry>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_sparseEntry()]).__setCap__(((_numEntries : GoInt)).toBasic()).__copy__());
        while ((_sparseMap != null ? _sparseMap.length : ((0 : GoInt))) >= ((2 : GoInt))) {
            var __tmp__ = stdgo.strconv.Strconv.parseInt((_sparseMap != null ? _sparseMap[((0 : GoInt))] : (("" : GoString))), ((10 : GoInt)), ((64 : GoInt))), _offset:GoInt64 = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
            var __tmp__ = stdgo.strconv.Strconv.parseInt((_sparseMap != null ? _sparseMap[((1 : GoInt))] : (("" : GoString))), ((10 : GoInt)), ((64 : GoInt))), _length:GoInt64 = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
            if ((_err1 != null) || (_err2 != null)) {
                return { _0 : null, _1 : errHeader };
            };
            _spd = ((_spd != null ? _spd.__append__((({ offset : _offset, length : _length } : T_sparseEntry))) : new Slice<Slice<T_sparseEntry>>((({ offset : _offset, length : _length } : T_sparseEntry)))) == null ? null : (_spd != null ? _spd.__append__((({ offset : _offset, length : _length } : T_sparseEntry))) : new Slice<Slice<T_sparseEntry>>((({ offset : _offset, length : _length } : T_sparseEntry)))).__copy__());
            _sparseMap = ((_sparseMap.__slice__(((2 : GoInt))) : Slice<GoString>));
        };
        return { _0 : (_spd == null ? null : _spd.__copy__()), _1 : ((null : stdgo.Error)) };
    }
function _mustReadFull(_r:stdgo.io.Io.Reader, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var __tmp__ = _tryReadFull(_r, _b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == stdgo.io.Io.eof) {
            _err = stdgo.io.Io.errUnexpectedEOF;
        };
        return { _0 : _n, _1 : _err };
    }
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
function testReader(_t:stdgo.testing.Testing.T_):Void {
        var _vectors:Slice<T__struct_1> = ((new Slice<T__struct_1>(
((({ _file : ((("testdata/gnu.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("small.txt" : GoString))), mode : ((416 : GoInt64)), uid : ((73025 : GoInt)), gid : ((5000 : GoInt)), size : ((5 : GoInt64)), modTime : (stdgo.time.Time.unix(((1244428340 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1244428340 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), uname : ((("dsymonds" : GoString))), gname : ((("eng" : GoString))), format : ((8 : GoInt)), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ name : ((("small2.txt" : GoString))), mode : ((416 : GoInt64)), uid : ((73025 : GoInt)), gid : ((5000 : GoInt)), size : ((11 : GoInt64)), modTime : (stdgo.time.Time.unix(((1244436044 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1244436044 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), uname : ((("dsymonds" : GoString))), gname : ((("eng" : GoString))), format : ((8 : GoInt)), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((new Slice<GoString>(((("e38b27eaccb4391bdec553a7f3ae6b2f" : GoString))), ((("c65bd2e50a56a2138bf1716f2fd56fe9" : GoString)))) : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/gnu.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("small.txt" : GoString))), mode : ((416 : GoInt64)), uid : ((73025 : GoInt)), gid : ((5000 : GoInt)), size : ((5 : GoInt64)), modTime : (stdgo.time.Time.unix(((1244428340 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1244428340 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), uname : ((("dsymonds" : GoString))), gname : ((("eng" : GoString))), format : ((8 : GoInt)), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ name : ((("small2.txt" : GoString))), mode : ((416 : GoInt64)), uid : ((73025 : GoInt)), gid : ((5000 : GoInt)), size : ((11 : GoInt64)), modTime : (stdgo.time.Time.unix(((1244436044 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1244436044 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), uname : ((("dsymonds" : GoString))), gname : ((("eng" : GoString))), format : ((8 : GoInt)), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((new Slice<GoString>(((("e38b27eaccb4391bdec553a7f3ae6b2f" : GoString))), ((("c65bd2e50a56a2138bf1716f2fd56fe9" : GoString)))) : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/sparse-formats.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("sparse-gnu" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), size : ((200 : GoInt64)), modTime : (stdgo.time.Time.unix(((1392395740 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1392395740 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((83 : GoUInt8)), linkname : ((("" : GoString))), uname : ((("david" : GoString))), gname : ((("david" : GoString))), devmajor : ((0 : GoInt64)), devminor : ((0 : GoInt64)), format : ((8 : GoInt)), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ name : ((("sparse-posix-0.0" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), size : ((200 : GoInt64)), modTime : (stdgo.time.Time.unix(((1392342187 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1392342187 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((48 : GoUInt8)), linkname : ((("" : GoString))), uname : ((("david" : GoString))), gname : ((("david" : GoString))), devmajor : ((0 : GoInt64)), devminor : ((0 : GoInt64)), paxrecords : Go.map(((("GNU.sparse.size" : GoString))) => ((("200" : GoString))), ((("GNU.sparse.numblocks" : GoString))) => ((("95" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("1,1,3,1,5,1,7,1,9,1,11,1,13,1,15,1,17,1,19,1,21,1,23,1,25,1,27,1,29,1,31,1,33,1,35,1,37,1,39,1,41,1,43,1,45,1,47,1,49,1,51,1,53,1,55,1,57,1,59,1,61,1,63,1,65,1,67,1,69,1,71,1,73,1,75,1,77,1,79,1,81,1,83,1,85,1,87,1,89,1,91,1,93,1,95,1,97,1,99,1,101,1,103,1,105,1,107,1,109,1,111,1,113,1,115,1,117,1,119,1,121,1,123,1,125,1,127,1,129,1,131,1,133,1,135,1,137,1,139,1,141,1,143,1,145,1,147,1,149,1,151,1,153,1,155,1,157,1,159,1,161,1,163,1,165,1,167,1,169,1,171,1,173,1,175,1,177,1,179,1,181,1,183,1,185,1,187,1,189,1" : GoString)))), format : ((4 : GoInt)), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ name : ((("sparse-posix-0.1" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), size : ((200 : GoInt64)), modTime : (stdgo.time.Time.unix(((1392340456 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1392340456 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((48 : GoUInt8)), linkname : ((("" : GoString))), uname : ((("david" : GoString))), gname : ((("david" : GoString))), devmajor : ((0 : GoInt64)), devminor : ((0 : GoInt64)), paxrecords : Go.map(((("GNU.sparse.size" : GoString))) => ((("200" : GoString))), ((("GNU.sparse.numblocks" : GoString))) => ((("95" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("1,1,3,1,5,1,7,1,9,1,11,1,13,1,15,1,17,1,19,1,21,1,23,1,25,1,27,1,29,1,31,1,33,1,35,1,37,1,39,1,41,1,43,1,45,1,47,1,49,1,51,1,53,1,55,1,57,1,59,1,61,1,63,1,65,1,67,1,69,1,71,1,73,1,75,1,77,1,79,1,81,1,83,1,85,1,87,1,89,1,91,1,93,1,95,1,97,1,99,1,101,1,103,1,105,1,107,1,109,1,111,1,113,1,115,1,117,1,119,1,121,1,123,1,125,1,127,1,129,1,131,1,133,1,135,1,137,1,139,1,141,1,143,1,145,1,147,1,149,1,151,1,153,1,155,1,157,1,159,1,161,1,163,1,165,1,167,1,169,1,171,1,173,1,175,1,177,1,179,1,181,1,183,1,185,1,187,1,189,1" : GoString))), ((("GNU.sparse.name" : GoString))) => ((("sparse-posix-0.1" : GoString)))), format : ((4 : GoInt)), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ name : ((("sparse-posix-1.0" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), size : ((200 : GoInt64)), modTime : (stdgo.time.Time.unix(((1392337404 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1392337404 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((48 : GoUInt8)), linkname : ((("" : GoString))), uname : ((("david" : GoString))), gname : ((("david" : GoString))), devmajor : ((0 : GoInt64)), devminor : ((0 : GoInt64)), paxrecords : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString))), ((("GNU.sparse.realsize" : GoString))) => ((("200" : GoString))), ((("GNU.sparse.name" : GoString))) => ((("sparse-posix-1.0" : GoString)))), format : ((4 : GoInt)), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ name : ((("end" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), size : ((4 : GoInt64)), modTime : (stdgo.time.Time.unix(((1392398319 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1392398319 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((48 : GoUInt8)), linkname : ((("" : GoString))), uname : ((("david" : GoString))), gname : ((("david" : GoString))), devmajor : ((0 : GoInt64)), devminor : ((0 : GoInt64)), format : ((8 : GoInt)), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((new Slice<GoString>(((("6f53234398c2449fe67c1812d993012f" : GoString))), ((("6f53234398c2449fe67c1812d993012f" : GoString))), ((("6f53234398c2449fe67c1812d993012f" : GoString))), ((("6f53234398c2449fe67c1812d993012f" : GoString))), ((("b0061974914468de549a2af8ced10316" : GoString)))) : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/sparse-formats.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("sparse-gnu" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), size : ((200 : GoInt64)), modTime : (stdgo.time.Time.unix(((1392395740 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1392395740 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((83 : GoUInt8)), linkname : ((("" : GoString))), uname : ((("david" : GoString))), gname : ((("david" : GoString))), devmajor : ((0 : GoInt64)), devminor : ((0 : GoInt64)), format : ((8 : GoInt)), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ name : ((("sparse-posix-0.0" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), size : ((200 : GoInt64)), modTime : (stdgo.time.Time.unix(((1392342187 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1392342187 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((48 : GoUInt8)), linkname : ((("" : GoString))), uname : ((("david" : GoString))), gname : ((("david" : GoString))), devmajor : ((0 : GoInt64)), devminor : ((0 : GoInt64)), paxrecords : Go.map(((("GNU.sparse.size" : GoString))) => ((("200" : GoString))), ((("GNU.sparse.numblocks" : GoString))) => ((("95" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("1,1,3,1,5,1,7,1,9,1,11,1,13,1,15,1,17,1,19,1,21,1,23,1,25,1,27,1,29,1,31,1,33,1,35,1,37,1,39,1,41,1,43,1,45,1,47,1,49,1,51,1,53,1,55,1,57,1,59,1,61,1,63,1,65,1,67,1,69,1,71,1,73,1,75,1,77,1,79,1,81,1,83,1,85,1,87,1,89,1,91,1,93,1,95,1,97,1,99,1,101,1,103,1,105,1,107,1,109,1,111,1,113,1,115,1,117,1,119,1,121,1,123,1,125,1,127,1,129,1,131,1,133,1,135,1,137,1,139,1,141,1,143,1,145,1,147,1,149,1,151,1,153,1,155,1,157,1,159,1,161,1,163,1,165,1,167,1,169,1,171,1,173,1,175,1,177,1,179,1,181,1,183,1,185,1,187,1,189,1" : GoString)))), format : ((4 : GoInt)), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ name : ((("sparse-posix-0.1" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), size : ((200 : GoInt64)), modTime : (stdgo.time.Time.unix(((1392340456 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1392340456 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((48 : GoUInt8)), linkname : ((("" : GoString))), uname : ((("david" : GoString))), gname : ((("david" : GoString))), devmajor : ((0 : GoInt64)), devminor : ((0 : GoInt64)), paxrecords : Go.map(((("GNU.sparse.size" : GoString))) => ((("200" : GoString))), ((("GNU.sparse.numblocks" : GoString))) => ((("95" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("1,1,3,1,5,1,7,1,9,1,11,1,13,1,15,1,17,1,19,1,21,1,23,1,25,1,27,1,29,1,31,1,33,1,35,1,37,1,39,1,41,1,43,1,45,1,47,1,49,1,51,1,53,1,55,1,57,1,59,1,61,1,63,1,65,1,67,1,69,1,71,1,73,1,75,1,77,1,79,1,81,1,83,1,85,1,87,1,89,1,91,1,93,1,95,1,97,1,99,1,101,1,103,1,105,1,107,1,109,1,111,1,113,1,115,1,117,1,119,1,121,1,123,1,125,1,127,1,129,1,131,1,133,1,135,1,137,1,139,1,141,1,143,1,145,1,147,1,149,1,151,1,153,1,155,1,157,1,159,1,161,1,163,1,165,1,167,1,169,1,171,1,173,1,175,1,177,1,179,1,181,1,183,1,185,1,187,1,189,1" : GoString))), ((("GNU.sparse.name" : GoString))) => ((("sparse-posix-0.1" : GoString)))), format : ((4 : GoInt)), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ name : ((("sparse-posix-1.0" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), size : ((200 : GoInt64)), modTime : (stdgo.time.Time.unix(((1392337404 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1392337404 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((48 : GoUInt8)), linkname : ((("" : GoString))), uname : ((("david" : GoString))), gname : ((("david" : GoString))), devmajor : ((0 : GoInt64)), devminor : ((0 : GoInt64)), paxrecords : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString))), ((("GNU.sparse.realsize" : GoString))) => ((("200" : GoString))), ((("GNU.sparse.name" : GoString))) => ((("sparse-posix-1.0" : GoString)))), format : ((4 : GoInt)), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ name : ((("end" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), size : ((4 : GoInt64)), modTime : (stdgo.time.Time.unix(((1392398319 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1392398319 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((48 : GoUInt8)), linkname : ((("" : GoString))), uname : ((("david" : GoString))), gname : ((("david" : GoString))), devmajor : ((0 : GoInt64)), devminor : ((0 : GoInt64)), format : ((8 : GoInt)), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((new Slice<GoString>(((("6f53234398c2449fe67c1812d993012f" : GoString))), ((("6f53234398c2449fe67c1812d993012f" : GoString))), ((("6f53234398c2449fe67c1812d993012f" : GoString))), ((("6f53234398c2449fe67c1812d993012f" : GoString))), ((("b0061974914468de549a2af8ced10316" : GoString)))) : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/star.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("small.txt" : GoString))), mode : ((416 : GoInt64)), uid : ((73025 : GoInt)), gid : ((5000 : GoInt)), size : ((5 : GoInt64)), modTime : (stdgo.time.Time.unix(((1244592783 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1244592783 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), uname : ((("dsymonds" : GoString))), gname : ((("eng" : GoString))), accessTime : (stdgo.time.Time.unix(((1244592783 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1244592783 : GoInt64)), ((0 : GoInt64))).__copy__()), changeTime : (stdgo.time.Time.unix(((1244592783 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1244592783 : GoInt64)), ((0 : GoInt64))).__copy__()), linkname : "", devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Ref<Header>)), (({ name : ((("small2.txt" : GoString))), mode : ((416 : GoInt64)), uid : ((73025 : GoInt)), gid : ((5000 : GoInt)), size : ((11 : GoInt64)), modTime : (stdgo.time.Time.unix(((1244592783 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1244592783 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), uname : ((("dsymonds" : GoString))), gname : ((("eng" : GoString))), accessTime : (stdgo.time.Time.unix(((1244592783 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1244592783 : GoInt64)), ((0 : GoInt64))).__copy__()), changeTime : (stdgo.time.Time.unix(((1244592783 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1244592783 : GoInt64)), ((0 : GoInt64))).__copy__()), linkname : "", devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/star.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("small.txt" : GoString))), mode : ((416 : GoInt64)), uid : ((73025 : GoInt)), gid : ((5000 : GoInt)), size : ((5 : GoInt64)), modTime : (stdgo.time.Time.unix(((1244592783 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1244592783 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), uname : ((("dsymonds" : GoString))), gname : ((("eng" : GoString))), accessTime : (stdgo.time.Time.unix(((1244592783 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1244592783 : GoInt64)), ((0 : GoInt64))).__copy__()), changeTime : (stdgo.time.Time.unix(((1244592783 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1244592783 : GoInt64)), ((0 : GoInt64))).__copy__()), linkname : "", devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Ref<Header>)), (({ name : ((("small2.txt" : GoString))), mode : ((416 : GoInt64)), uid : ((73025 : GoInt)), gid : ((5000 : GoInt)), size : ((11 : GoInt64)), modTime : (stdgo.time.Time.unix(((1244592783 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1244592783 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), uname : ((("dsymonds" : GoString))), gname : ((("eng" : GoString))), accessTime : (stdgo.time.Time.unix(((1244592783 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1244592783 : GoInt64)), ((0 : GoInt64))).__copy__()), changeTime : (stdgo.time.Time.unix(((1244592783 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1244592783 : GoInt64)), ((0 : GoInt64))).__copy__()), linkname : "", devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/v7.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("small.txt" : GoString))), mode : ((292 : GoInt64)), uid : ((73025 : GoInt)), gid : ((5000 : GoInt)), size : ((5 : GoInt64)), modTime : (stdgo.time.Time.unix(((1244593104 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1244593104 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), linkname : "", uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Ref<Header>)), (({ name : ((("small2.txt" : GoString))), mode : ((292 : GoInt64)), uid : ((73025 : GoInt)), gid : ((5000 : GoInt)), size : ((11 : GoInt64)), modTime : (stdgo.time.Time.unix(((1244593104 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1244593104 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), linkname : "", uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/v7.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("small.txt" : GoString))), mode : ((292 : GoInt64)), uid : ((73025 : GoInt)), gid : ((5000 : GoInt)), size : ((5 : GoInt64)), modTime : (stdgo.time.Time.unix(((1244593104 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1244593104 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), linkname : "", uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Ref<Header>)), (({ name : ((("small2.txt" : GoString))), mode : ((292 : GoInt64)), uid : ((73025 : GoInt)), gid : ((5000 : GoInt)), size : ((11 : GoInt64)), modTime : (stdgo.time.Time.unix(((1244593104 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1244593104 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), linkname : "", uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/pax.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("a/123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100" : GoString))), mode : ((436 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), uname : ((("shane" : GoString))), gname : ((("shane" : GoString))), size : ((7 : GoInt64)), modTime : (stdgo.time.Time.unix(((1350244992 : GoInt64)), ((23960108 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1350244992 : GoInt64)), ((23960108 : GoInt64))).__copy__()), changeTime : (stdgo.time.Time.unix(((1350244992 : GoInt64)), ((23960108 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1350244992 : GoInt64)), ((23960108 : GoInt64))).__copy__()), accessTime : (stdgo.time.Time.unix(((1350244992 : GoInt64)), ((23960108 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1350244992 : GoInt64)), ((23960108 : GoInt64))).__copy__()), typeflag : ((48 : GoUInt8)), paxrecords : Go.map(((("path" : GoString))) => ((("a/123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100" : GoString))), ((("mtime" : GoString))) => ((("1350244992.023960108" : GoString))), ((("atime" : GoString))) => ((("1350244992.023960108" : GoString))), ((("ctime" : GoString))) => ((("1350244992.023960108" : GoString)))), format : ((4 : GoInt)), linkname : "", devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ name : ((("a/b" : GoString))), mode : ((511 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), uname : ((("shane" : GoString))), gname : ((("shane" : GoString))), size : ((0 : GoInt64)), modTime : (stdgo.time.Time.unix(((1350266320 : GoInt64)), ((910238425 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1350266320 : GoInt64)), ((910238425 : GoInt64))).__copy__()), changeTime : (stdgo.time.Time.unix(((1350266320 : GoInt64)), ((910238425 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1350266320 : GoInt64)), ((910238425 : GoInt64))).__copy__()), accessTime : (stdgo.time.Time.unix(((1350266320 : GoInt64)), ((910238425 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1350266320 : GoInt64)), ((910238425 : GoInt64))).__copy__()), typeflag : ((50 : GoUInt8)), linkname : ((("123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100" : GoString))), paxrecords : Go.map(((("linkpath" : GoString))) => ((("123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100" : GoString))), ((("mtime" : GoString))) => ((("1350266320.910238425" : GoString))), ((("atime" : GoString))) => ((("1350266320.910238425" : GoString))), ((("ctime" : GoString))) => ((("1350266320.910238425" : GoString)))), format : ((4 : GoInt)), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/pax.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("a/123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100" : GoString))), mode : ((436 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), uname : ((("shane" : GoString))), gname : ((("shane" : GoString))), size : ((7 : GoInt64)), modTime : (stdgo.time.Time.unix(((1350244992 : GoInt64)), ((23960108 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1350244992 : GoInt64)), ((23960108 : GoInt64))).__copy__()), changeTime : (stdgo.time.Time.unix(((1350244992 : GoInt64)), ((23960108 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1350244992 : GoInt64)), ((23960108 : GoInt64))).__copy__()), accessTime : (stdgo.time.Time.unix(((1350244992 : GoInt64)), ((23960108 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1350244992 : GoInt64)), ((23960108 : GoInt64))).__copy__()), typeflag : ((48 : GoUInt8)), paxrecords : Go.map(((("path" : GoString))) => ((("a/123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100" : GoString))), ((("mtime" : GoString))) => ((("1350244992.023960108" : GoString))), ((("atime" : GoString))) => ((("1350244992.023960108" : GoString))), ((("ctime" : GoString))) => ((("1350244992.023960108" : GoString)))), format : ((4 : GoInt)), linkname : "", devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ name : ((("a/b" : GoString))), mode : ((511 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), uname : ((("shane" : GoString))), gname : ((("shane" : GoString))), size : ((0 : GoInt64)), modTime : (stdgo.time.Time.unix(((1350266320 : GoInt64)), ((910238425 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1350266320 : GoInt64)), ((910238425 : GoInt64))).__copy__()), changeTime : (stdgo.time.Time.unix(((1350266320 : GoInt64)), ((910238425 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1350266320 : GoInt64)), ((910238425 : GoInt64))).__copy__()), accessTime : (stdgo.time.Time.unix(((1350266320 : GoInt64)), ((910238425 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1350266320 : GoInt64)), ((910238425 : GoInt64))).__copy__()), typeflag : ((50 : GoUInt8)), linkname : ((("123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100" : GoString))), paxrecords : Go.map(((("linkpath" : GoString))) => ((("123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899100" : GoString))), ((("mtime" : GoString))) => ((("1350266320.910238425" : GoString))), ((("atime" : GoString))) => ((("1350266320.910238425" : GoString))), ((("ctime" : GoString))) => ((("1350266320.910238425" : GoString)))), format : ((4 : GoInt)), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/pax-bad-hdr-file.tar" : GoString))), _err : errHeader, _headers : ((null : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/pax-bad-hdr-file.tar" : GoString))), _err : errHeader, _headers : ((null : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/pax-bad-mtime-file.tar" : GoString))), _err : errHeader, _headers : ((null : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/pax-bad-mtime-file.tar" : GoString))), _err : errHeader, _headers : ((null : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/pax-pos-size-file.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("foo" : GoString))), mode : ((416 : GoInt64)), uid : ((319973 : GoInt)), gid : ((5000 : GoInt)), size : ((999 : GoInt64)), modTime : (stdgo.time.Time.unix(((1442282516 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1442282516 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), uname : ((("joetsai" : GoString))), gname : ((("eng" : GoString))), paxrecords : Go.map(((("size" : GoString))) => ((("000000000000000000000999" : GoString)))), format : ((4 : GoInt)), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((new Slice<GoString>(((("0afb597b283fe61b5d4879669a350556" : GoString)))) : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/pax-pos-size-file.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("foo" : GoString))), mode : ((416 : GoInt64)), uid : ((319973 : GoInt)), gid : ((5000 : GoInt)), size : ((999 : GoInt64)), modTime : (stdgo.time.Time.unix(((1442282516 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1442282516 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), uname : ((("joetsai" : GoString))), gname : ((("eng" : GoString))), paxrecords : Go.map(((("size" : GoString))) => ((("000000000000000000000999" : GoString)))), format : ((4 : GoInt)), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((new Slice<GoString>(((("0afb597b283fe61b5d4879669a350556" : GoString)))) : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/pax-records.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ typeflag : ((48 : GoUInt8)), name : ((("file" : GoString))), uname : stdgo.strings.Strings.repeat(((("long" : GoString))), ((10 : GoInt))), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), paxrecords : Go.map(((("GOLANG.pkg" : GoString))) => ((("tar" : GoString))), ((("comment" : GoString))) => ((("Hello, 世界" : GoString))), ((("uname" : GoString))) => stdgo.strings.Strings.repeat(((("long" : GoString))), ((10 : GoInt)))), format : ((4 : GoInt)), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/pax-records.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ typeflag : ((48 : GoUInt8)), name : ((("file" : GoString))), uname : stdgo.strings.Strings.repeat(((("long" : GoString))), ((10 : GoInt))), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), paxrecords : Go.map(((("GOLANG.pkg" : GoString))) => ((("tar" : GoString))), ((("comment" : GoString))) => ((("Hello, 世界" : GoString))), ((("uname" : GoString))) => stdgo.strings.Strings.repeat(((("long" : GoString))), ((10 : GoInt)))), format : ((4 : GoInt)), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/pax-global-records.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ typeflag : ((103 : GoUInt8)), name : ((("global1" : GoString))), paxrecords : Go.map(((("path" : GoString))) => ((("global1" : GoString))), ((("mtime" : GoString))) => ((("1500000000.0" : GoString)))), format : ((4 : GoInt)), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ typeflag : ((48 : GoUInt8)), name : ((("file1" : GoString))), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((2 : GoInt)), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ typeflag : ((48 : GoUInt8)), name : ((("file2" : GoString))), paxrecords : Go.map(((("path" : GoString))) => ((("file2" : GoString)))), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((4 : GoInt)), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ typeflag : ((103 : GoUInt8)), name : ((("GlobalHead.0.0" : GoString))), paxrecords : Go.map(((("path" : GoString))) => ((("" : GoString)))), format : ((4 : GoInt)), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ typeflag : ((48 : GoUInt8)), name : ((("file3" : GoString))), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((2 : GoInt)), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ typeflag : ((48 : GoUInt8)), name : ((("file4" : GoString))), modTime : (stdgo.time.Time.unix(((1400000000 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1400000000 : GoInt64)), ((0 : GoInt64))).__copy__()), paxrecords : Go.map(((("mtime" : GoString))) => ((("1400000000" : GoString)))), format : ((4 : GoInt)), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/pax-global-records.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ typeflag : ((103 : GoUInt8)), name : ((("global1" : GoString))), paxrecords : Go.map(((("path" : GoString))) => ((("global1" : GoString))), ((("mtime" : GoString))) => ((("1500000000.0" : GoString)))), format : ((4 : GoInt)), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ typeflag : ((48 : GoUInt8)), name : ((("file1" : GoString))), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((2 : GoInt)), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ typeflag : ((48 : GoUInt8)), name : ((("file2" : GoString))), paxrecords : Go.map(((("path" : GoString))) => ((("file2" : GoString)))), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((4 : GoInt)), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ typeflag : ((103 : GoUInt8)), name : ((("GlobalHead.0.0" : GoString))), paxrecords : Go.map(((("path" : GoString))) => ((("" : GoString)))), format : ((4 : GoInt)), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ typeflag : ((48 : GoUInt8)), name : ((("file3" : GoString))), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((2 : GoInt)), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ typeflag : ((48 : GoUInt8)), name : ((("file4" : GoString))), modTime : (stdgo.time.Time.unix(((1400000000 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1400000000 : GoInt64)), ((0 : GoInt64))).__copy__()), paxrecords : Go.map(((("mtime" : GoString))) => ((("1400000000" : GoString)))), format : ((4 : GoInt)), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/nil-uid.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("P1050238.JPG.log" : GoString))), mode : ((436 : GoInt64)), uid : ((0 : GoInt)), gid : ((0 : GoInt)), size : ((14 : GoInt64)), modTime : (stdgo.time.Time.unix(((1365454838 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1365454838 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((48 : GoUInt8)), linkname : ((("" : GoString))), uname : ((("eyefi" : GoString))), gname : ((("eyefi" : GoString))), devmajor : ((0 : GoInt64)), devminor : ((0 : GoInt64)), format : ((8 : GoInt)), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/nil-uid.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("P1050238.JPG.log" : GoString))), mode : ((436 : GoInt64)), uid : ((0 : GoInt)), gid : ((0 : GoInt)), size : ((14 : GoInt64)), modTime : (stdgo.time.Time.unix(((1365454838 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1365454838 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((48 : GoUInt8)), linkname : ((("" : GoString))), uname : ((("eyefi" : GoString))), gname : ((("eyefi" : GoString))), devmajor : ((0 : GoInt64)), devminor : ((0 : GoInt64)), format : ((8 : GoInt)), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/xattrs.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("small.txt" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((10 : GoInt)), size : ((5 : GoInt64)), modTime : (stdgo.time.Time.unix(((1386065770 : GoInt64)), ((448252320 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1386065770 : GoInt64)), ((448252320 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), uname : ((("alex" : GoString))), gname : ((("wheel" : GoString))), accessTime : (stdgo.time.Time.unix(((1389782991 : GoInt64)), ((419875220 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1389782991 : GoInt64)), ((419875220 : GoInt64))).__copy__()), changeTime : (stdgo.time.Time.unix(((1389782956 : GoInt64)), ((794414986 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1389782956 : GoInt64)), ((794414986 : GoInt64))).__copy__()), xattrs : Go.map(((("user.key" : GoString))) => ((("value" : GoString))), ((("user.key2" : GoString))) => ((("value2" : GoString))), ((("security.selinux" : GoString))) => ((("unconfined_u:object_r:default_t:s0" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)))), paxrecords : Go.map(((("mtime" : GoString))) => ((("1386065770.44825232" : GoString))), ((("atime" : GoString))) => ((("1389782991.41987522" : GoString))), ((("ctime" : GoString))) => ((("1389782956.794414986" : GoString))), ((("SCHILY.xattr.user.key" : GoString))) => ((("value" : GoString))), ((("SCHILY.xattr.user.key2" : GoString))) => ((("value2" : GoString))), ((("SCHILY.xattr.security.selinux" : GoString))) => ((("unconfined_u:object_r:default_t:s0" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)))), format : ((4 : GoInt)), linkname : "", devmajor : 0, devminor : 0 } : Ref<Header>)), (({ name : ((("small2.txt" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((10 : GoInt)), size : ((11 : GoInt64)), modTime : (stdgo.time.Time.unix(((1386065770 : GoInt64)), ((449252304 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1386065770 : GoInt64)), ((449252304 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), uname : ((("alex" : GoString))), gname : ((("wheel" : GoString))), accessTime : (stdgo.time.Time.unix(((1389782991 : GoInt64)), ((419875220 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1389782991 : GoInt64)), ((419875220 : GoInt64))).__copy__()), changeTime : (stdgo.time.Time.unix(((1386065770 : GoInt64)), ((449252304 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1386065770 : GoInt64)), ((449252304 : GoInt64))).__copy__()), xattrs : Go.map(((("security.selinux" : GoString))) => ((("unconfined_u:object_r:default_t:s0" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)))), paxrecords : Go.map(((("mtime" : GoString))) => ((("1386065770.449252304" : GoString))), ((("atime" : GoString))) => ((("1389782991.41987522" : GoString))), ((("ctime" : GoString))) => ((("1386065770.449252304" : GoString))), ((("SCHILY.xattr.security.selinux" : GoString))) => ((("unconfined_u:object_r:default_t:s0" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)))), format : ((4 : GoInt)), linkname : "", devmajor : 0, devminor : 0 } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/xattrs.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("small.txt" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((10 : GoInt)), size : ((5 : GoInt64)), modTime : (stdgo.time.Time.unix(((1386065770 : GoInt64)), ((448252320 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1386065770 : GoInt64)), ((448252320 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), uname : ((("alex" : GoString))), gname : ((("wheel" : GoString))), accessTime : (stdgo.time.Time.unix(((1389782991 : GoInt64)), ((419875220 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1389782991 : GoInt64)), ((419875220 : GoInt64))).__copy__()), changeTime : (stdgo.time.Time.unix(((1389782956 : GoInt64)), ((794414986 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1389782956 : GoInt64)), ((794414986 : GoInt64))).__copy__()), xattrs : Go.map(((("user.key" : GoString))) => ((("value" : GoString))), ((("user.key2" : GoString))) => ((("value2" : GoString))), ((("security.selinux" : GoString))) => ((("unconfined_u:object_r:default_t:s0" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)))), paxrecords : Go.map(((("mtime" : GoString))) => ((("1386065770.44825232" : GoString))), ((("atime" : GoString))) => ((("1389782991.41987522" : GoString))), ((("ctime" : GoString))) => ((("1389782956.794414986" : GoString))), ((("SCHILY.xattr.user.key" : GoString))) => ((("value" : GoString))), ((("SCHILY.xattr.user.key2" : GoString))) => ((("value2" : GoString))), ((("SCHILY.xattr.security.selinux" : GoString))) => ((("unconfined_u:object_r:default_t:s0" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)))), format : ((4 : GoInt)), linkname : "", devmajor : 0, devminor : 0 } : Ref<Header>)), (({ name : ((("small2.txt" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((10 : GoInt)), size : ((11 : GoInt64)), modTime : (stdgo.time.Time.unix(((1386065770 : GoInt64)), ((449252304 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1386065770 : GoInt64)), ((449252304 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), uname : ((("alex" : GoString))), gname : ((("wheel" : GoString))), accessTime : (stdgo.time.Time.unix(((1389782991 : GoInt64)), ((419875220 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1389782991 : GoInt64)), ((419875220 : GoInt64))).__copy__()), changeTime : (stdgo.time.Time.unix(((1386065770 : GoInt64)), ((449252304 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1386065770 : GoInt64)), ((449252304 : GoInt64))).__copy__()), xattrs : Go.map(((("security.selinux" : GoString))) => ((("unconfined_u:object_r:default_t:s0" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)))), paxrecords : Go.map(((("mtime" : GoString))) => ((("1386065770.449252304" : GoString))), ((("atime" : GoString))) => ((("1389782991.41987522" : GoString))), ((("ctime" : GoString))) => ((("1386065770.449252304" : GoString))), ((("SCHILY.xattr.security.selinux" : GoString))) => ((("unconfined_u:object_r:default_t:s0" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)))), format : ((4 : GoInt)), linkname : "", devmajor : 0, devminor : 0 } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/gnu-multi-hdrs.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("GNU2/GNU2/long-path-name" : GoString))), linkname : ((("GNU4/GNU4/long-linkpath-name" : GoString))), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("2" : GoString))).code : GoRune)), format : ((8 : GoInt)), size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/gnu-multi-hdrs.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("GNU2/GNU2/long-path-name" : GoString))), linkname : ((("GNU4/GNU4/long-linkpath-name" : GoString))), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("2" : GoString))).code : GoRune)), format : ((8 : GoInt)), size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/gnu-incremental.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("test2/" : GoString))), mode : ((16877 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), size : ((14 : GoInt64)), modTime : (stdgo.time.Time.unix(((1441973427 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1441973427 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("D" : GoString))).code : GoRune)), uname : ((("rawr" : GoString))), gname : ((("dsnet" : GoString))), accessTime : (stdgo.time.Time.unix(((1441974501 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1441974501 : GoInt64)), ((0 : GoInt64))).__copy__()), changeTime : (stdgo.time.Time.unix(((1441973436 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1441973436 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((8 : GoInt)), linkname : "", devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ name : ((("test2/foo" : GoString))), mode : ((33188 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), size : ((64 : GoInt64)), modTime : (stdgo.time.Time.unix(((1441973363 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1441973363 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), uname : ((("rawr" : GoString))), gname : ((("dsnet" : GoString))), accessTime : (stdgo.time.Time.unix(((1441974501 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1441974501 : GoInt64)), ((0 : GoInt64))).__copy__()), changeTime : (stdgo.time.Time.unix(((1441973436 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1441973436 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((8 : GoInt)), linkname : "", devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ name : ((("test2/sparse" : GoString))), mode : ((33188 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), size : ((536870912 : GoInt64)), modTime : (stdgo.time.Time.unix(((1441973427 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1441973427 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("S" : GoString))).code : GoRune)), uname : ((("rawr" : GoString))), gname : ((("dsnet" : GoString))), accessTime : (stdgo.time.Time.unix(((1441991948 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1441991948 : GoInt64)), ((0 : GoInt64))).__copy__()), changeTime : (stdgo.time.Time.unix(((1441973436 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1441973436 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((8 : GoInt)), linkname : "", devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/gnu-incremental.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("test2/" : GoString))), mode : ((16877 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), size : ((14 : GoInt64)), modTime : (stdgo.time.Time.unix(((1441973427 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1441973427 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("D" : GoString))).code : GoRune)), uname : ((("rawr" : GoString))), gname : ((("dsnet" : GoString))), accessTime : (stdgo.time.Time.unix(((1441974501 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1441974501 : GoInt64)), ((0 : GoInt64))).__copy__()), changeTime : (stdgo.time.Time.unix(((1441973436 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1441973436 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((8 : GoInt)), linkname : "", devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ name : ((("test2/foo" : GoString))), mode : ((33188 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), size : ((64 : GoInt64)), modTime : (stdgo.time.Time.unix(((1441973363 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1441973363 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), uname : ((("rawr" : GoString))), gname : ((("dsnet" : GoString))), accessTime : (stdgo.time.Time.unix(((1441974501 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1441974501 : GoInt64)), ((0 : GoInt64))).__copy__()), changeTime : (stdgo.time.Time.unix(((1441973436 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1441973436 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((8 : GoInt)), linkname : "", devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>)), (({ name : ((("test2/sparse" : GoString))), mode : ((33188 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), size : ((536870912 : GoInt64)), modTime : (stdgo.time.Time.unix(((1441973427 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1441973427 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("S" : GoString))).code : GoRune)), uname : ((("rawr" : GoString))), gname : ((("dsnet" : GoString))), accessTime : (stdgo.time.Time.unix(((1441991948 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1441991948 : GoInt64)), ((0 : GoInt64))).__copy__()), changeTime : (stdgo.time.Time.unix(((1441973436 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1441973436 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((8 : GoInt)), linkname : "", devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/pax-multi-hdrs.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("bar" : GoString))), linkname : ((("PAX4/PAX4/long-linkpath-name" : GoString))), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("2" : GoString))).code : GoRune)), paxrecords : Go.map(((("linkpath" : GoString))) => ((("PAX4/PAX4/long-linkpath-name" : GoString)))), format : ((4 : GoInt)), size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/pax-multi-hdrs.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("bar" : GoString))), linkname : ((("PAX4/PAX4/long-linkpath-name" : GoString))), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("2" : GoString))).code : GoRune)), paxrecords : Go.map(((("linkpath" : GoString))) => ((("PAX4/PAX4/long-linkpath-name" : GoString)))), format : ((4 : GoInt)), size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/gnu-long-nul.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("0123456789" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), modTime : (stdgo.time.Time.unix(((1486082191 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1486082191 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), uname : ((("rawr" : GoString))), gname : ((("dsnet" : GoString))), format : ((8 : GoInt)), linkname : "", size : 0, accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/gnu-long-nul.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("0123456789" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), modTime : (stdgo.time.Time.unix(((1486082191 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1486082191 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), uname : ((("rawr" : GoString))), gname : ((("dsnet" : GoString))), format : ((8 : GoInt)), linkname : "", size : 0, accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/gnu-utf8.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), uname : ((("☺" : GoString))), gname : ((("⚹" : GoString))), format : ((8 : GoInt)), linkname : "", size : 0, accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/gnu-utf8.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), uname : ((("☺" : GoString))), gname : ((("⚹" : GoString))), format : ((8 : GoInt)), linkname : "", size : 0, accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/gnu-not-utf8.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("hi" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("81") : GoString)) + ((haxe.io.Bytes.ofHex("82") : GoString)) + ((haxe.io.Bytes.ofHex("83") : GoString)) + (("bye" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), uname : ((("rawr" : GoString))), gname : ((("dsnet" : GoString))), format : ((8 : GoInt)), linkname : "", size : 0, accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/gnu-not-utf8.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("hi" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("81") : GoString)) + ((haxe.io.Bytes.ofHex("82") : GoString)) + ((haxe.io.Bytes.ofHex("83") : GoString)) + (("bye" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), uname : ((("rawr" : GoString))), gname : ((("dsnet" : GoString))), format : ((8 : GoInt)), linkname : "", size : 0, accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/pax-nul-xattrs.tar" : GoString))), _err : errHeader, _headers : ((null : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/pax-nul-xattrs.tar" : GoString))), _err : errHeader, _headers : ((null : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/pax-nul-path.tar" : GoString))), _err : errHeader, _headers : ((null : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/pax-nul-path.tar" : GoString))), _err : errHeader, _headers : ((null : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/neg-size.tar" : GoString))), _err : errHeader, _headers : ((null : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/neg-size.tar" : GoString))), _err : errHeader, _headers : ((null : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/issue10968.tar" : GoString))), _err : errHeader, _headers : ((null : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/issue10968.tar" : GoString))), _err : errHeader, _headers : ((null : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/issue11169.tar" : GoString))), _err : errHeader, _headers : ((null : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/issue11169.tar" : GoString))), _err : errHeader, _headers : ((null : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/issue12435.tar" : GoString))), _err : errHeader, _headers : ((null : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/issue12435.tar" : GoString))), _err : errHeader, _headers : ((null : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/invalid-go17.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/foo" : GoString))), uid : ((2097152 : GoInt)), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), linkname : "", size : 0, mode : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/invalid-go17.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/foo" : GoString))), uid : ((2097152 : GoInt)), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((((("0" : GoString))).code : GoRune)), linkname : "", size : 0, mode : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/ustar-file-devs.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("file" : GoString))), mode : ((420 : GoInt64)), typeflag : ((((("0" : GoString))).code : GoRune)), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), devmajor : ((1 : GoInt64)), devminor : ((1 : GoInt64)), format : ((2 : GoInt)), linkname : "", size : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/ustar-file-devs.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("file" : GoString))), mode : ((420 : GoInt64)), typeflag : ((((("0" : GoString))).code : GoRune)), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), devmajor : ((1 : GoInt64)), devminor : ((1 : GoInt64)), format : ((2 : GoInt)), linkname : "", size : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/gnu-nil-sparse-data.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("sparse.db" : GoString))), typeflag : ((83 : GoUInt8)), size : ((1000 : GoInt64)), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((8 : GoInt)), linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/gnu-nil-sparse-data.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("sparse.db" : GoString))), typeflag : ((83 : GoUInt8)), size : ((1000 : GoInt64)), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((8 : GoInt)), linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/gnu-nil-sparse-hole.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("sparse.db" : GoString))), typeflag : ((83 : GoUInt8)), size : ((1000 : GoInt64)), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((8 : GoInt)), linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/gnu-nil-sparse-hole.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("sparse.db" : GoString))), typeflag : ((83 : GoUInt8)), size : ((1000 : GoInt64)), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((8 : GoInt)), linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/pax-nil-sparse-data.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("sparse.db" : GoString))), typeflag : ((48 : GoUInt8)), size : ((1000 : GoInt64)), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), paxrecords : Go.map(((("size" : GoString))) => ((("1512" : GoString))), ((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString))), ((("GNU.sparse.realsize" : GoString))) => ((("1000" : GoString))), ((("GNU.sparse.name" : GoString))) => ((("sparse.db" : GoString)))), format : ((4 : GoInt)), linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/pax-nil-sparse-data.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("sparse.db" : GoString))), typeflag : ((48 : GoUInt8)), size : ((1000 : GoInt64)), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), paxrecords : Go.map(((("size" : GoString))) => ((("1512" : GoString))), ((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString))), ((("GNU.sparse.realsize" : GoString))) => ((("1000" : GoString))), ((("GNU.sparse.name" : GoString))) => ((("sparse.db" : GoString)))), format : ((4 : GoInt)), linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/pax-nil-sparse-hole.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("sparse.db" : GoString))), typeflag : ((48 : GoUInt8)), size : ((1000 : GoInt64)), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), paxrecords : Go.map(((("size" : GoString))) => ((("512" : GoString))), ((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString))), ((("GNU.sparse.realsize" : GoString))) => ((("1000" : GoString))), ((("GNU.sparse.name" : GoString))) => ((("sparse.db" : GoString)))), format : ((4 : GoInt)), linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/pax-nil-sparse-hole.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ name : ((("sparse.db" : GoString))), typeflag : ((48 : GoUInt8)), size : ((1000 : GoInt64)), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), paxrecords : Go.map(((("size" : GoString))) => ((("512" : GoString))), ((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString))), ((("GNU.sparse.realsize" : GoString))) => ((("1000" : GoString))), ((("GNU.sparse.name" : GoString))) => ((("sparse.db" : GoString)))), format : ((4 : GoInt)), linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)).__copy__()),
((({ _file : ((("testdata/trailing-slash.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ typeflag : ((53 : GoUInt8)), name : stdgo.strings.Strings.repeat(((("123456789/" : GoString))), ((30 : GoInt))), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), paxrecords : Go.map(((("path" : GoString))) => stdgo.strings.Strings.repeat(((("123456789/" : GoString))), ((30 : GoInt)))), format : ((4 : GoInt)), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)) == null ? null : (({ _file : ((("testdata/trailing-slash.tar" : GoString))), _headers : ((new Slice<Ref<Header>>((({ typeflag : ((53 : GoUInt8)), name : stdgo.strings.Strings.repeat(((("123456789/" : GoString))), ((30 : GoInt))), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), paxrecords : Go.map(((("path" : GoString))) => stdgo.strings.Strings.repeat(((("123456789/" : GoString))), ((30 : GoInt)))), format : ((4 : GoInt)), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Ref<Header>))) : Slice<Ref<Header>>)), _chksums : ((null : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_1)).__copy__())) : Slice<T__struct_1>));
        for (_0 => _v in _vectors) {
            _t.run(stdgo.path.Path.base(_v._file), function(_t:stdgo.testing.Testing.T_):Void {
                var __recover_exception__:AnyInterface = null;
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var __tmp__ = stdgo.os.Os.open(_v._file), _f:Ref<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(((("unexpected error: %v" : GoString))), Go.toInterface(_err));
                    };
                    __deferstack__.unshift(() -> _f.close());
                    var _tr:Ref<Reader> = newReader(_f), _hdrs:Slice<Header> = ((null : Slice<Ref<Header>>)), _chksums:Slice<GoString> = ((null : Slice<GoString>)), _rdbuf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((8 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                    while (true) {
                        var _hdr:Header = ((null : Ref<Header>));
                        {
                            var __tmp__ = _tr.next();
                            _hdr = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            if (_err == stdgo.io.Io.eof) {
                                _err = ((null : stdgo.Error));
                            };
                            break;
                        };
                        _hdrs = (_hdrs != null ? _hdrs.__append__(_hdr) : new Slice<Ref<Header>>(_hdr));
                        if (_v._chksums == null) {
                            continue;
                        };
                        var _h:stdgo.hash.Hash.Hash = stdgo.crypto.md5.Md5.new_();
                        {
                            var __tmp__ = stdgo.io.Io.copyBuffer(_h, _tr, _rdbuf);
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            break;
                        };
                        _chksums = (_chksums != null ? _chksums.__append__(stdgo.fmt.Fmt.sprintf(((("%x" : GoString))), Go.toInterface(_h.sum(((null : Slice<GoUInt8>)))))) : new Slice<GoString>(stdgo.fmt.Fmt.sprintf(((("%x" : GoString))), Go.toInterface(_h.sum(((null : Slice<GoUInt8>)))))));
                    };
                    for (_i => _hdr in _hdrs) {
                        if (_i >= (_v._headers != null ? _v._headers.length : ((0 : GoInt)))) {
                            _t.fatalf(((("entry %d: unexpected header:\ngot %+v" : GoString))), Go.toInterface(_i), Go.toInterface(_hdr));
                            continue;
                        };
                        if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_hdr), Go.toInterface((_v._headers != null ? _v._headers[_i] : ((null : Ref<Header>)))))) {
                            _t.fatalf(((("entry %d: incorrect header:\ngot  %+v\nwant %+v" : GoString))), Go.toInterface(_i), Go.toInterface(_hdr), Go.toInterface((_v._headers != null ? _v._headers[_i] : ((null : Ref<Header>)))));
                        };
                    };
                    if ((_hdrs != null ? _hdrs.length : ((0 : GoInt))) != (_v._headers != null ? _v._headers.length : ((0 : GoInt)))) {
                        _t.fatalf(((("got %d headers, want %d headers" : GoString))), Go.toInterface((_hdrs != null ? _hdrs.length : ((0 : GoInt)))), Go.toInterface((_v._headers != null ? _v._headers.length : ((0 : GoInt)))));
                    };
                    for (_i => _sum in _chksums) {
                        if (_i >= (_v._chksums != null ? _v._chksums.length : ((0 : GoInt)))) {
                            _t.fatalf(((("entry %d: unexpected sum: got %s" : GoString))), Go.toInterface(_i), Go.toInterface(_sum));
                            continue;
                        };
                        if (_sum != (_v._chksums != null ? _v._chksums[_i] : (("" : GoString)))) {
                            _t.fatalf(((("entry %d: incorrect checksum: got %s, want %s" : GoString))), Go.toInterface(_i), Go.toInterface(_sum), Go.toInterface((_v._chksums != null ? _v._chksums[_i] : (("" : GoString)))));
                        };
                    };
                    if (_err != _v._err) {
                        _t.fatalf(((("unexpected error: got %v, want %v" : GoString))), Go.toInterface(_err), Go.toInterface(_v._err));
                    };
                    _f.close();
                    for (defer in __deferstack__) {
                        defer();
                    };
                } catch(__exception__) {
                    if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
                    __recover_exception__ = __exception__.native;
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (__recover_exception__ != null) throw __recover_exception__;
                        return;
                    };
                };
            });
        };
    }
@:structInit class T_testCase_testPartialRead_0 {
    public var _cnt : GoInt = ((0 : GoInt));
    public var _output : GoString = (("" : GoString));
    public function new(?_cnt:GoInt, ?_output:GoString) {
        if (_cnt != null) this._cnt = _cnt;
        if (_output != null) this._output = _output;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_testCase_testPartialRead_0(_cnt, _output);
    }
}
function testPartialRead(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _vectors:Slice<T__struct_2> = ((new Slice<T__struct_2>(((({ _file : ((("testdata/gnu.tar" : GoString))), _cases : ((new Slice<T_testCase_testPartialRead_0>(((new T_testCase_testPartialRead_0(((4 : GoInt)), ((("Kilt" : GoString)))) : T_testCase_testPartialRead_0)), ((new T_testCase_testPartialRead_0(((6 : GoInt)), ((("Google" : GoString)))) : T_testCase_testPartialRead_0))) : Slice<T_testCase_testPartialRead_0>)) } : T__struct_2)) == null ? null : (({ _file : ((("testdata/gnu.tar" : GoString))), _cases : ((new Slice<T_testCase_testPartialRead_0>(((new T_testCase_testPartialRead_0(((4 : GoInt)), ((("Kilt" : GoString)))) : T_testCase_testPartialRead_0)), ((new T_testCase_testPartialRead_0(((6 : GoInt)), ((("Google" : GoString)))) : T_testCase_testPartialRead_0))) : Slice<T_testCase_testPartialRead_0>)) } : T__struct_2)).__copy__()), ((({ _file : ((("testdata/sparse-formats.tar" : GoString))), _cases : ((new Slice<T_testCase_testPartialRead_0>(((new T_testCase_testPartialRead_0(((2 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("G" : GoString)))) : T_testCase_testPartialRead_0)), ((new T_testCase_testPartialRead_0(((4 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("G" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("o" : GoString)))) : T_testCase_testPartialRead_0)), ((new T_testCase_testPartialRead_0(((6 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("G" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("o" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("G" : GoString)))) : T_testCase_testPartialRead_0)), ((new T_testCase_testPartialRead_0(((8 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("G" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("o" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("G" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("o" : GoString)))) : T_testCase_testPartialRead_0)), ((new T_testCase_testPartialRead_0(((4 : GoInt)), ((("end\n" : GoString)))) : T_testCase_testPartialRead_0))) : Slice<T_testCase_testPartialRead_0>)) } : T__struct_2)) == null ? null : (({ _file : ((("testdata/sparse-formats.tar" : GoString))), _cases : ((new Slice<T_testCase_testPartialRead_0>(((new T_testCase_testPartialRead_0(((2 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("G" : GoString)))) : T_testCase_testPartialRead_0)), ((new T_testCase_testPartialRead_0(((4 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("G" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("o" : GoString)))) : T_testCase_testPartialRead_0)), ((new T_testCase_testPartialRead_0(((6 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("G" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("o" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("G" : GoString)))) : T_testCase_testPartialRead_0)), ((new T_testCase_testPartialRead_0(((8 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("G" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("o" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("G" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("o" : GoString)))) : T_testCase_testPartialRead_0)), ((new T_testCase_testPartialRead_0(((4 : GoInt)), ((("end\n" : GoString)))) : T_testCase_testPartialRead_0))) : Slice<T_testCase_testPartialRead_0>)) } : T__struct_2)).__copy__())) : Slice<T__struct_2>));
        for (_0 => _v in _vectors) {
            _t.run(stdgo.path.Path.base(_v._file), function(_t:stdgo.testing.Testing.T_):Void {
                var __recover_exception__:AnyInterface = null;
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var __tmp__ = stdgo.os.Os.open(_v._file), _f:Ref<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(((("Open() error: %v" : GoString))), Go.toInterface(_err));
                    };
                    __deferstack__.unshift(() -> _f.close());
                    var _tr:Ref<Reader> = newReader(_f);
                    for (_i => _tc in _v._cases) {
                        var __tmp__ = _tr.next(), _hdr:Ref<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if ((_err != null) || (_hdr == null)) {
                            _t.fatalf(((("entry %d, Next(): got %v, want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_err), ((null : AnyInterface)));
                        };
                        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_tc._cnt : GoInt)).toBasic()) ((0 : GoUInt8))]);
                        {
                            var __tmp__ = stdgo.io.Io.readFull(_tr, _buf), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                _t.fatalf(((("entry %d, ReadFull(): got %v, want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_err), ((null : AnyInterface)));
                            };
                        };
                        if (((_buf : GoString)) != _tc._output) {
                            _t.fatalf(((("entry %d, ReadFull(): got %q, want %q" : GoString))), Go.toInterface(_i), Go.toInterface(((_buf : GoString))), Go.toInterface(_tc._output));
                        };
                    };
                    {
                        var __tmp__ = _tr.next(), _1:Ref<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != stdgo.io.Io.eof) {
                            _t.fatalf(((("Next(): got %v, want EOF" : GoString))), Go.toInterface(_err));
                        };
                    };
                    for (defer in __deferstack__) {
                        defer();
                    };
                } catch(__exception__) {
                    if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
                    __recover_exception__ = __exception__.native;
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (__recover_exception__ != null) throw __recover_exception__;
                        return;
                    };
                };
            });
        };
    }
function testUninitializedRead(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo.os.Os.open(((("testdata/gnu.tar" : GoString)))), _f:Ref<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(((("Unexpected error: %v" : GoString))), Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _f.close());
            var _tr:Ref<Reader> = newReader(_f);
            {
                var __tmp__ = _tr.read(((new Slice<GoUInt8>() : Slice<GoUInt8>)));
                _err = __tmp__._1;
            };
            if ((_err == null) || (_err != stdgo.io.Io.eof)) {
                _t.errorf(((("Unexpected error: %v, wanted %v" : GoString))), Go.toInterface(_err), Go.toInterface(stdgo.io.Io.eof));
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testReadTruncation(_t:stdgo.testing.Testing.T_):Void {
        var _ss:Slice<GoString> = ((null : Slice<GoString>));
        for (_0 => _p in ((new Slice<GoString>(((("testdata/gnu.tar" : GoString))), ((("testdata/ustar-file-reg.tar" : GoString))), ((("testdata/pax-path-hdr.tar" : GoString))), ((("testdata/sparse-formats.tar" : GoString)))) : Slice<GoString>))) {
            var __tmp__ = stdgo.os.Os.readFile(_p), _buf:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(((("unexpected error: %v" : GoString))), Go.toInterface(_err));
            };
            _ss = (_ss != null ? _ss.__append__(((_buf : GoString))) : new Slice<GoString>(((_buf : GoString))));
        };
        var _data1:GoString = (_ss != null ? _ss[((0 : GoInt))] : (("" : GoString))), _data2:GoString = (_ss != null ? _ss[((1 : GoInt))] : (("" : GoString))), _pax:GoString = (_ss != null ? _ss[((2 : GoInt))] : (("" : GoString))), _sparse:GoString = (_ss != null ? _ss[((3 : GoInt))] : (("" : GoString)));
        _data2 = _data2 + (stdgo.strings.Strings.repeat((((haxe.io.Bytes.ofHex("00") : GoString))), ((5120 : GoInt))));
        var _trash:GoString = stdgo.strings.Strings.repeat(((("garbage " : GoString))), ((64 : GoInt)));
        var _vectors:Slice<T__struct_3> = ((new Slice<T__struct_3>(
((new T__struct_3(((("" : GoString))), ((0 : GoInt)), stdgo.io.Io.eof) : T__struct_3)),
((new T__struct_3(((_data1.__slice__(0, ((511 : GoInt))) : GoString)), ((0 : GoInt)), stdgo.io.Io.errUnexpectedEOF) : T__struct_3)),
((new T__struct_3(((_data1.__slice__(0, ((512 : GoInt))) : GoString)), ((1 : GoInt)), stdgo.io.Io.errUnexpectedEOF) : T__struct_3)),
((new T__struct_3(((_data1.__slice__(0, ((1024 : GoInt))) : GoString)), ((1 : GoInt)), stdgo.io.Io.eof) : T__struct_3)),
((new T__struct_3(((_data1.__slice__(0, ((1536 : GoInt))) : GoString)), ((2 : GoInt)), stdgo.io.Io.errUnexpectedEOF) : T__struct_3)),
((new T__struct_3(((_data1.__slice__(0, ((2048 : GoInt))) : GoString)), ((2 : GoInt)), stdgo.io.Io.eof) : T__struct_3)),
((new T__struct_3(_data1, ((2 : GoInt)), stdgo.io.Io.eof) : T__struct_3)),
((new T__struct_3(((_data1.__slice__(0, ((2048 : GoInt))) : GoString)) + ((_data2.__slice__(0, ((1536 : GoInt))) : GoString)), ((3 : GoInt)), stdgo.io.Io.eof) : T__struct_3)),
((new T__struct_3(((_data2.__slice__(0, ((511 : GoInt))) : GoString)), ((0 : GoInt)), stdgo.io.Io.errUnexpectedEOF) : T__struct_3)),
((new T__struct_3(((_data2.__slice__(0, ((512 : GoInt))) : GoString)), ((1 : GoInt)), stdgo.io.Io.errUnexpectedEOF) : T__struct_3)),
((new T__struct_3(((_data2.__slice__(0, ((1195 : GoInt))) : GoString)), ((1 : GoInt)), stdgo.io.Io.errUnexpectedEOF) : T__struct_3)),
((new T__struct_3(((_data2.__slice__(0, ((1196 : GoInt))) : GoString)), ((1 : GoInt)), stdgo.io.Io.eof) : T__struct_3)),
((new T__struct_3(((_data2.__slice__(0, ((1200 : GoInt))) : GoString)), ((1 : GoInt)), stdgo.io.Io.eof) : T__struct_3)),
((new T__struct_3(((_data2.__slice__(0, ((1535 : GoInt))) : GoString)), ((1 : GoInt)), stdgo.io.Io.eof) : T__struct_3)),
((new T__struct_3(((_data2.__slice__(0, ((1536 : GoInt))) : GoString)), ((1 : GoInt)), stdgo.io.Io.eof) : T__struct_3)),
((new T__struct_3(((_data2.__slice__(0, ((1536 : GoInt))) : GoString)) + ((_trash.__slice__(0, ((1 : GoInt))) : GoString)), ((1 : GoInt)), stdgo.io.Io.errUnexpectedEOF) : T__struct_3)),
((new T__struct_3(((_data2.__slice__(0, ((1536 : GoInt))) : GoString)) + ((_trash.__slice__(0, ((511 : GoInt))) : GoString)), ((1 : GoInt)), stdgo.io.Io.errUnexpectedEOF) : T__struct_3)),
((new T__struct_3(((_data2.__slice__(0, ((1536 : GoInt))) : GoString)) + _trash, ((1 : GoInt)), errHeader) : T__struct_3)),
((new T__struct_3(((_data2.__slice__(0, ((2048 : GoInt))) : GoString)), ((1 : GoInt)), stdgo.io.Io.eof) : T__struct_3)),
((new T__struct_3(((_data2.__slice__(0, ((2048 : GoInt))) : GoString)) + ((_trash.__slice__(0, ((1 : GoInt))) : GoString)), ((1 : GoInt)), stdgo.io.Io.errUnexpectedEOF) : T__struct_3)),
((new T__struct_3(((_data2.__slice__(0, ((2048 : GoInt))) : GoString)) + ((_trash.__slice__(0, ((511 : GoInt))) : GoString)), ((1 : GoInt)), stdgo.io.Io.errUnexpectedEOF) : T__struct_3)),
((new T__struct_3(((_data2.__slice__(0, ((2048 : GoInt))) : GoString)) + _trash, ((1 : GoInt)), errHeader) : T__struct_3)),
((new T__struct_3(((_data2.__slice__(0, ((2560 : GoInt))) : GoString)), ((1 : GoInt)), stdgo.io.Io.eof) : T__struct_3)),
((new T__struct_3(((_data2.__slice__(0, ((2560 : GoInt))) : GoString)) + ((_trash.__slice__(0, ((1 : GoInt))) : GoString)), ((1 : GoInt)), stdgo.io.Io.eof) : T__struct_3)),
((new T__struct_3(((_data2.__slice__(0, ((2560 : GoInt))) : GoString)) + ((_trash.__slice__(0, ((511 : GoInt))) : GoString)), ((1 : GoInt)), stdgo.io.Io.eof) : T__struct_3)),
((new T__struct_3(((_data2.__slice__(0, ((2560 : GoInt))) : GoString)) + _trash, ((1 : GoInt)), stdgo.io.Io.eof) : T__struct_3)),
((new T__struct_3(((_data2.__slice__(0, ((3072 : GoInt))) : GoString)), ((1 : GoInt)), stdgo.io.Io.eof) : T__struct_3)),
((new T__struct_3(_pax, ((0 : GoInt)), stdgo.io.Io.eof) : T__struct_3)),
((new T__struct_3(_pax + ((_trash.__slice__(0, ((1 : GoInt))) : GoString)), ((0 : GoInt)), stdgo.io.Io.errUnexpectedEOF) : T__struct_3)),
((new T__struct_3(_pax + ((_trash.__slice__(0, ((511 : GoInt))) : GoString)), ((0 : GoInt)), stdgo.io.Io.errUnexpectedEOF) : T__struct_3)),
((new T__struct_3(((_sparse.__slice__(0, ((511 : GoInt))) : GoString)), ((0 : GoInt)), stdgo.io.Io.errUnexpectedEOF) : T__struct_3)),
((new T__struct_3(((_sparse.__slice__(0, ((512 : GoInt))) : GoString)), ((0 : GoInt)), stdgo.io.Io.errUnexpectedEOF) : T__struct_3)),
((new T__struct_3(((_sparse.__slice__(0, ((3584 : GoInt))) : GoString)), ((1 : GoInt)), stdgo.io.Io.eof) : T__struct_3)),
((new T__struct_3(((_sparse.__slice__(0, ((9200 : GoInt))) : GoString)), ((1 : GoInt)), stdgo.io.Io.eof) : T__struct_3)),
((new T__struct_3(((_sparse.__slice__(0, ((9216 : GoInt))) : GoString)), ((1 : GoInt)), stdgo.io.Io.eof) : T__struct_3)),
((new T__struct_3(((_sparse.__slice__(0, ((9728 : GoInt))) : GoString)), ((2 : GoInt)), stdgo.io.Io.errUnexpectedEOF) : T__struct_3)),
((new T__struct_3(((_sparse.__slice__(0, ((10240 : GoInt))) : GoString)), ((2 : GoInt)), stdgo.io.Io.eof) : T__struct_3)),
((new T__struct_3(((_sparse.__slice__(0, ((11264 : GoInt))) : GoString)), ((2 : GoInt)), stdgo.io.Io.errUnexpectedEOF) : T__struct_3)),
((new T__struct_3(_sparse, ((5 : GoInt)), stdgo.io.Io.eof) : T__struct_3)),
((new T__struct_3(_sparse + _trash, ((5 : GoInt)), stdgo.io.Io.eof) : T__struct_3))) : Slice<T__struct_3>));
        for (_i => _v in _vectors) {
            {
                var _j:GoInt = ((0 : GoInt));
                Go.cfor(_j < ((6 : GoInt)), _j++, {
                    var _tr:Reader = ((null : Ref<Reader>));
                    var _s1:GoString = (("" : GoString)), _s2:GoString = (("" : GoString));
                    if (_j == ((0 : GoInt))) {
                        _tr = newReader(((new T_reader(stdgo.strings.Strings.newReader(_v._input)) : T_reader)));
                        {
                            final __tmp__0 = ((("io.Reader" : GoString)));
                            final __tmp__1 = ((("auto" : GoString)));
                            _s1 = __tmp__0;
                            _s2 = __tmp__1;
                        };
                    } else if (_j == ((1 : GoInt))) {
                        _tr = newReader(((new T_reader(stdgo.strings.Strings.newReader(_v._input)) : T_reader)));
                        {
                            final __tmp__0 = ((("io.Reader" : GoString)));
                            final __tmp__1 = ((("manual" : GoString)));
                            _s1 = __tmp__0;
                            _s2 = __tmp__1;
                        };
                    } else if (_j == ((2 : GoInt))) {
                        _tr = newReader(((new T_readSeeker(stdgo.strings.Strings.newReader(_v._input)) : T_readSeeker)));
                        {
                            final __tmp__0 = ((("io.ReadSeeker" : GoString)));
                            final __tmp__1 = ((("auto" : GoString)));
                            _s1 = __tmp__0;
                            _s2 = __tmp__1;
                        };
                    } else if (_j == ((3 : GoInt))) {
                        _tr = newReader(((new T_readSeeker(stdgo.strings.Strings.newReader(_v._input)) : T_readSeeker)));
                        {
                            final __tmp__0 = ((("io.ReadSeeker" : GoString)));
                            final __tmp__1 = ((("manual" : GoString)));
                            _s1 = __tmp__0;
                            _s2 = __tmp__1;
                        };
                    } else if (_j == ((4 : GoInt))) {
                        _tr = newReader(((new T_readBadSeeker(stdgo.strings.Strings.newReader(_v._input)) : T_readBadSeeker)));
                        {
                            final __tmp__0 = ((("ReadBadSeeker" : GoString)));
                            final __tmp__1 = ((("auto" : GoString)));
                            _s1 = __tmp__0;
                            _s2 = __tmp__1;
                        };
                    } else if (_j == ((5 : GoInt))) {
                        _tr = newReader(((new T_readBadSeeker(stdgo.strings.Strings.newReader(_v._input)) : T_readBadSeeker)));
                        {
                            final __tmp__0 = ((("ReadBadSeeker" : GoString)));
                            final __tmp__1 = ((("manual" : GoString)));
                            _s1 = __tmp__0;
                            _s2 = __tmp__1;
                        };
                    };
                    var _cnt:GoInt = ((0 : GoInt));
                    var _err:Error = ((null : stdgo.Error));
                    while (true) {
                        {
                            {
                                var __tmp__ = _tr.next();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                break;
                            };
                        };
                        _cnt++;
                        if (_s2 == ((("manual" : GoString)))) {
                            {
                                {
                                    var __tmp__ = _tr._writeTo(stdgo.io.Io.discard);
                                    _err = __tmp__._1;
                                };
                                if (_err != null) {
                                    break;
                                };
                            };
                        };
                    };
                    if (_err != _v._err) {
                        _t.errorf(((("test %d, NewReader(%s) with %s discard: got %v, want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_s1), Go.toInterface(_s2), Go.toInterface(_err), Go.toInterface(_v._err));
                    };
                    if (_cnt != _v._cnt) {
                        _t.errorf(((("test %d, NewReader(%s) with %s discard: got %d headers, want %d headers" : GoString))), Go.toInterface(_i), Go.toInterface(_s1), Go.toInterface(_s2), Go.toInterface(_cnt), Go.toInterface(_v._cnt));
                    };
                });
            };
        };
    }
function testReadHeaderOnly(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo.os.Os.open(((("testdata/hdr-only.tar" : GoString)))), _f:Ref<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(((("unexpected error: %v" : GoString))), Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _f.close());
            var _hdrs:Slice<Header> = ((null : Slice<Ref<Header>>));
            var _tr:Ref<Reader> = newReader(_f);
            while (true) {
                var __tmp__ = _tr.next(), _hdr:Ref<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == stdgo.io.Io.eof) {
                    break;
                };
                if (_err != null) {
                    _t.errorf(((("Next(): got %v, want %v" : GoString))), Go.toInterface(_err), ((null : AnyInterface)));
                    continue;
                };
                _hdrs = (_hdrs != null ? _hdrs.__append__(_hdr) : new Slice<Ref<Header>>(_hdr));
                var __tmp__ = stdgo.io.Io.readFull(_tr, ((new Slice<GoUInt8>(((0 : GoUInt8))) : Slice<GoUInt8>))), _cnt:GoInt = __tmp__._0, _0:stdgo.Error = __tmp__._1;
                if ((_cnt > ((0 : GoInt))) && (_hdr.typeflag != ((48 : GoUInt8)))) {
                    _t.errorf(((("ReadFull(...): got %d bytes, want 0 bytes" : GoString))), Go.toInterface(_cnt));
                };
            };
            if ((_hdrs != null ? _hdrs.length : ((0 : GoInt))) != ((16 : GoInt))) {
                _t.fatalf(((("len(hdrs): got %d, want %d" : GoString))), Go.toInterface((_hdrs != null ? _hdrs.length : ((0 : GoInt)))), Go.toInterface(((16 : GoInt))));
            };
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((8 : GoInt)), _i++, {
                    var _hdr1:Ref<Header> = (_hdrs != null ? _hdrs[_i + ((0 : GoInt))] : ((null : Ref<Header>))), _hdr2:Ref<Header> = (_hdrs != null ? _hdrs[_i + ((8 : GoInt))] : ((null : Ref<Header>)));
                    {
                        final __tmp__0 = ((0 : GoInt64));
                        final __tmp__1 = ((0 : GoInt64));
                        _hdr1.size = __tmp__0;
                        _hdr2.size = __tmp__1;
                    };
                    if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_hdr1), Go.toInterface(_hdr2))) {
                        _t.errorf(((("incorrect header:\ngot  %+v\nwant %+v" : GoString))), Go.toInterface(_hdr1), Go.toInterface(_hdr2));
                    };
                });
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testMergePAX(_t:stdgo.testing.Testing.T_):Void {
        var _vectors:Slice<T__struct_4> = ((new Slice<T__struct_4>(((({ _in : Go.map(((("path" : GoString))) => ((("a/b/c" : GoString))), ((("uid" : GoString))) => ((("1000" : GoString))), ((("mtime" : GoString))) => ((("1350244992.023960108" : GoString)))), _want : (({ name : ((("a/b/c" : GoString))), uid : ((1000 : GoInt)), modTime : (stdgo.time.Time.unix(((1350244992 : GoInt64)), ((23960108 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1350244992 : GoInt64)), ((23960108 : GoInt64))).__copy__()), paxrecords : Go.map(((("path" : GoString))) => ((("a/b/c" : GoString))), ((("uid" : GoString))) => ((("1000" : GoString))), ((("mtime" : GoString))) => ((("1350244992.023960108" : GoString)))), typeflag : 0, linkname : "", size : 0, mode : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _ok : true } : T__struct_4)) == null ? null : (({ _in : Go.map(((("path" : GoString))) => ((("a/b/c" : GoString))), ((("uid" : GoString))) => ((("1000" : GoString))), ((("mtime" : GoString))) => ((("1350244992.023960108" : GoString)))), _want : (({ name : ((("a/b/c" : GoString))), uid : ((1000 : GoInt)), modTime : (stdgo.time.Time.unix(((1350244992 : GoInt64)), ((23960108 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1350244992 : GoInt64)), ((23960108 : GoInt64))).__copy__()), paxrecords : Go.map(((("path" : GoString))) => ((("a/b/c" : GoString))), ((("uid" : GoString))) => ((("1000" : GoString))), ((("mtime" : GoString))) => ((("1350244992.023960108" : GoString)))), typeflag : 0, linkname : "", size : 0, mode : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _ok : true } : T__struct_4)).__copy__()), ((({ _in : Go.map(((("gid" : GoString))) => ((("gtgergergersagersgers" : GoString)))), _ok : false, _want : ((null : Ref<Header>)) } : T__struct_4)) == null ? null : (({ _in : Go.map(((("gid" : GoString))) => ((("gtgergergersagersgers" : GoString)))), _ok : false, _want : ((null : Ref<Header>)) } : T__struct_4)).__copy__()), ((({ _in : Go.map(((("missing" : GoString))) => ((("missing" : GoString))), ((("SCHILY.xattr.key" : GoString))) => ((("value" : GoString)))), _want : (({ xattrs : Go.map(((("key" : GoString))) => ((("value" : GoString)))), paxrecords : Go.map(((("missing" : GoString))) => ((("missing" : GoString))), ((("SCHILY.xattr.key" : GoString))) => ((("value" : GoString)))), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, format : new Format() } : Header)), _ok : true } : T__struct_4)) == null ? null : (({ _in : Go.map(((("missing" : GoString))) => ((("missing" : GoString))), ((("SCHILY.xattr.key" : GoString))) => ((("value" : GoString)))), _want : (({ xattrs : Go.map(((("key" : GoString))) => ((("value" : GoString)))), paxrecords : Go.map(((("missing" : GoString))) => ((("missing" : GoString))), ((("SCHILY.xattr.key" : GoString))) => ((("value" : GoString)))), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, format : new Format() } : Header)), _ok : true } : T__struct_4)).__copy__())) : Slice<T__struct_4>));
        for (_i => _v in _vectors) {
            var _got:Ref<Header> = new Header();
            var _err:stdgo.Error = _mergePAX(_got, _v._in);
            if (_v._ok && !stdgo.reflect.Reflect.deepEqual(Go.toInterface(_got), Go.toInterface(_v._want))) {
                _t.errorf(((("test %d, mergePAX(...):\ngot  %+v\nwant %+v" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_v._want));
            };
            {
                var _ok:Bool = _err == null;
                if (_ok != _v._ok) {
                    _t.errorf(((("test %d, mergePAX(...): got %v, want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_ok), Go.toInterface(_v._ok));
                };
            };
        };
    }
function testParsePAX(_t:stdgo.testing.Testing.T_):Void {
        var _vectors:Slice<T__struct_5> = ((new Slice<T__struct_5>(
((new T__struct_5(((("" : GoString))), ((null : GoMap<GoString, GoString>)), true) : T__struct_5)),
((new T__struct_5(((("6 k=1\n" : GoString))), Go.map(((("k" : GoString))) => ((("1" : GoString)))), true) : T__struct_5)),
((new T__struct_5(((("10 a=name\n" : GoString))), Go.map(((("a" : GoString))) => ((("name" : GoString)))), true) : T__struct_5)),
((new T__struct_5(((("9 a=name\n" : GoString))), Go.map(((("a" : GoString))) => ((("name" : GoString)))), true) : T__struct_5)),
((new T__struct_5(((("30 mtime=1350244992.023960108\n" : GoString))), Go.map(((("mtime" : GoString))) => ((("1350244992.023960108" : GoString)))), true) : T__struct_5)),
((new T__struct_5(((("3 somelongkey=\n" : GoString))), ((null : GoMap<GoString, GoString>)), false) : T__struct_5)),
((new T__struct_5(((("50 tooshort=\n" : GoString))), ((null : GoMap<GoString, GoString>)), false) : T__struct_5)),
((new T__struct_5(((("13 key1=haha\n13 key2=nana\n13 key3=kaka\n" : GoString))), Go.map(((("key1" : GoString))) => ((("haha" : GoString))), ((("key2" : GoString))) => ((("nana" : GoString))), ((("key3" : GoString))) => ((("kaka" : GoString)))), true) : T__struct_5)),
((new T__struct_5(((("13 key1=val1\n13 key2=val2\n8 key1=\n" : GoString))), Go.map(((("key1" : GoString))) => ((("" : GoString))), ((("key2" : GoString))) => ((("val2" : GoString)))), true) : T__struct_5)),
((new T__struct_5(((("22 GNU.sparse.size=10\n26 GNU.sparse.numblocks=2\n23 GNU.sparse.offset=1\n25 GNU.sparse.numbytes=2\n23 GNU.sparse.offset=3\n25 GNU.sparse.numbytes=4\n" : GoString))), Go.map(((("GNU.sparse.size" : GoString))) => ((("10" : GoString))), ((("GNU.sparse.numblocks" : GoString))) => ((("2" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("1,2,3,4" : GoString)))), true) : T__struct_5)),
((new T__struct_5(((("22 GNU.sparse.size=10\n26 GNU.sparse.numblocks=1\n25 GNU.sparse.numbytes=2\n23 GNU.sparse.offset=1\n" : GoString))), ((null : GoMap<GoString, GoString>)), false) : T__struct_5)),
((new T__struct_5(((("22 GNU.sparse.size=10\n26 GNU.sparse.numblocks=1\n25 GNU.sparse.offset=1,2\n25 GNU.sparse.numbytes=2\n" : GoString))), ((null : GoMap<GoString, GoString>)), false) : T__struct_5))) : Slice<T__struct_5>));
        for (_i => _v in _vectors) {
            var _r:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(_v._in);
            var __tmp__ = _parsePAX(_r), _got:GoMap<GoString, GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_got), Go.toInterface(_v._want)) && !(((_got != null ? _got.length : ((0 : GoInt))) == ((0 : GoInt))) && ((_v._want != null ? _v._want.length : ((0 : GoInt))) == ((0 : GoInt))))) {
                _t.errorf(((("test %d, parsePAX():\ngot  %v\nwant %v" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_v._want));
            };
            {
                var _ok:Bool = _err == null;
                if (_ok != _v._ok) {
                    _t.errorf(((("test %d, parsePAX(): got %v, want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_ok), Go.toInterface(_v._ok));
                };
            };
        };
    }
function testReadOldGNUSparseMap(_t:stdgo.testing.Testing.T_):Void {
        var _populateSparseMap:(T_sparseArray, Slice<GoString>) -> Slice<GoString> = function(_sa:T_sparseArray, _sps:Slice<GoString>):Slice<GoString> {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(((_sps != null ? _sps.length : ((0 : GoInt))) > ((0 : GoInt))) && (_i < _sa._maxEntries()), _i++, {
                    Go.copySlice(_sa._entry(_i), (_sps != null ? _sps[((0 : GoInt))] : (("" : GoString))));
                    _sps = ((_sps.__slice__(((1 : GoInt))) : Slice<GoString>));
                });
            };
            if ((_sps != null ? _sps.length : ((0 : GoInt))) > ((0 : GoInt))) {
                Go.copySlice(_sa._isExtended(), (((haxe.io.Bytes.ofHex("80") : GoString))));
            };
            return _sps;
        };
        var _makeInput:(Format, GoString, haxe.Rest<GoString>) -> Slice<GoUInt8> = function(_format:Format, _size:GoString, _sps:haxe.Rest<GoString>):Slice<GoByte> {
            var _out:Slice<GoByte> = ((null : Slice<GoUInt8>));
            var _blk:T_block = new T_block();
            var _gnu:Ref<T_headerGNU> = _blk._toGNU();
            var _sparse:T_sparseArray = (_gnu._sparse() == null ? null : _gnu._sparse().__copy__());
            Go.copySlice(_gnu._realSize(), _size);
            _sps = _populateSparseMap((_sparse == null ? null : _sparse.__copy__()), _sps);
            if (_format != ((0 : GoInt))) {
                _blk._setFormat(_format);
            };
            _out = (_out != null ? _out.__append__(...((_blk.__slice__(0) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_blk.__slice__(0) : Slice<GoUInt8>)).__toArray__()));
            while ((_sps != null ? _sps.length : ((0 : GoInt))) > ((0 : GoInt))) {
                var _blk:T_block = new T_block();
                _sps = _populateSparseMap((_blk._toSparse() == null ? null : _blk._toSparse().__copy__()), _sps);
                _out = (_out != null ? _out.__append__(...((_blk.__slice__(0) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_blk.__slice__(0) : Slice<GoUInt8>)).__toArray__()));
            };
            return _out;
        };
        var _makeSparseStrings:Slice<T_sparseEntry> -> Slice<GoString> = function(_sp:Slice<T_sparseEntry>):Slice<GoString> {
            var _out:Slice<GoString> = ((null : Slice<GoString>));
            var _f:T_formatter = new T_formatter();
            for (_0 => _s in _sp) {
                var _b:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 24) ((0 : GoUInt8))]);
                _f._formatNumeric(((_b.__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>)), _s.offset);
                _f._formatNumeric(((_b.__slice__(((12 : GoInt))) : Slice<GoUInt8>)), _s.length);
                _out = (_out != null ? _out.__append__(((((_b.__slice__(0) : Slice<GoUInt8>)) : GoString))) : new Slice<GoString>(((((_b.__slice__(0) : Slice<GoUInt8>)) : GoString))));
            };
            return _out;
        };
        var _vectors:Slice<T__struct_6> = ((new Slice<T__struct_6>(
((({ _input : _makeInput(((0 : GoInt)), ((("" : GoString)))), _wantErr : errHeader, _wantMap : new T_sparseDatas(), _wantSize : 0 } : T__struct_6)) == null ? null : (({ _input : _makeInput(((0 : GoInt)), ((("" : GoString)))), _wantErr : errHeader, _wantMap : new T_sparseDatas(), _wantSize : 0 } : T__struct_6)).__copy__()),
((({ _input : _makeInput(((8 : GoInt)), ((("1234" : GoString))), ((("fewa" : GoString)))), _wantSize : ((668 : GoInt64)), _wantErr : errHeader, _wantMap : new T_sparseDatas() } : T__struct_6)) == null ? null : (({ _input : _makeInput(((8 : GoInt)), ((("1234" : GoString))), ((("fewa" : GoString)))), _wantSize : ((668 : GoInt64)), _wantErr : errHeader, _wantMap : new T_sparseDatas() } : T__struct_6)).__copy__()),
((({ _input : _makeInput(((8 : GoInt)), ((("0031" : GoString)))), _wantSize : ((25 : GoInt64)), _wantMap : new T_sparseDatas(), _wantErr : ((null : stdgo.Error)) } : T__struct_6)) == null ? null : (({ _input : _makeInput(((8 : GoInt)), ((("0031" : GoString)))), _wantSize : ((25 : GoInt64)), _wantMap : new T_sparseDatas(), _wantErr : ((null : stdgo.Error)) } : T__struct_6)).__copy__()),
((({ _input : _makeInput(((8 : GoInt)), ((("80" : GoString)))), _wantErr : errHeader, _wantMap : new T_sparseDatas(), _wantSize : 0 } : T__struct_6)) == null ? null : (({ _input : _makeInput(((8 : GoInt)), ((("80" : GoString)))), _wantErr : errHeader, _wantMap : new T_sparseDatas(), _wantSize : 0 } : T__struct_6)).__copy__()),
((({ _input : _makeInput(((8 : GoInt)), ((("1234" : GoString))), ..._makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((1 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))).__toArray__()), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((1 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : ((668 : GoInt64)), _wantErr : ((null : stdgo.Error)) } : T__struct_6)) == null ? null : (({ _input : _makeInput(((8 : GoInt)), ((("1234" : GoString))), ..._makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((1 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))).__toArray__()), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((1 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : ((668 : GoInt64)), _wantErr : ((null : stdgo.Error)) } : T__struct_6)).__copy__()),
((({ _input : _makeInput(((8 : GoInt)), ((("1234" : GoString))), ...(_makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((1 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))) != null ? _makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((1 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))).__append__(...((new Slice<GoString>(((("" : GoString))), ((("blah" : GoString)))) : Slice<GoString>)).__toArray__()) : new Slice<GoString>(...((new Slice<GoString>(((("" : GoString))), ((("blah" : GoString)))) : Slice<GoString>)).__toArray__())).__toArray__()), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((1 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : ((668 : GoInt64)), _wantErr : ((null : stdgo.Error)) } : T__struct_6)) == null ? null : (({ _input : _makeInput(((8 : GoInt)), ((("1234" : GoString))), ...(_makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((1 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))) != null ? _makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((1 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))).__append__(...((new Slice<GoString>(((("" : GoString))), ((("blah" : GoString)))) : Slice<GoString>)).__toArray__()) : new Slice<GoString>(...((new Slice<GoString>(((("" : GoString))), ((("blah" : GoString)))) : Slice<GoString>)).__toArray__())).__toArray__()), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((1 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : ((668 : GoInt64)), _wantErr : ((null : stdgo.Error)) } : T__struct_6)).__copy__()),
((({ _input : _makeInput(((8 : GoInt)), ((("3333" : GoString))), ..._makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((4 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))).__toArray__()), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((4 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : ((1755 : GoInt64)), _wantErr : ((null : stdgo.Error)) } : T__struct_6)) == null ? null : (({ _input : _makeInput(((8 : GoInt)), ((("3333" : GoString))), ..._makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((4 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))).__toArray__()), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((4 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : ((1755 : GoInt64)), _wantErr : ((null : stdgo.Error)) } : T__struct_6)).__copy__()),
((({ _input : _makeInput(((8 : GoInt)), ((("" : GoString))), ...((_makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))) != null ? _makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))).__append__(...((new Slice<GoString>(((("" : GoString))), ((("" : GoString)))) : Slice<GoString>)).__toArray__()) : new Slice<GoString>(...((new Slice<GoString>(((("" : GoString))), ((("" : GoString)))) : Slice<GoString>)).__toArray__())) != null ? (_makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))) != null ? _makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))).__append__(...((new Slice<GoString>(((("" : GoString))), ((("" : GoString)))) : Slice<GoString>)).__toArray__()) : new Slice<GoString>(...((new Slice<GoString>(((("" : GoString))), ((("" : GoString)))) : Slice<GoString>)).__toArray__())).__append__(..._makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((4 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))).__toArray__()) : new Slice<GoString>(..._makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((4 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))).__toArray__())).__toArray__()), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((4 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : 0, _wantErr : ((null : stdgo.Error)) } : T__struct_6)) == null ? null : (({ _input : _makeInput(((8 : GoInt)), ((("" : GoString))), ...((_makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))) != null ? _makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))).__append__(...((new Slice<GoString>(((("" : GoString))), ((("" : GoString)))) : Slice<GoString>)).__toArray__()) : new Slice<GoString>(...((new Slice<GoString>(((("" : GoString))), ((("" : GoString)))) : Slice<GoString>)).__toArray__())) != null ? (_makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))) != null ? _makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))).__append__(...((new Slice<GoString>(((("" : GoString))), ((("" : GoString)))) : Slice<GoString>)).__toArray__()) : new Slice<GoString>(...((new Slice<GoString>(((("" : GoString))), ((("" : GoString)))) : Slice<GoString>)).__toArray__())).__append__(..._makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((4 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))).__toArray__()) : new Slice<GoString>(..._makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((4 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))).__toArray__())).__toArray__()), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((4 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : 0, _wantErr : ((null : stdgo.Error)) } : T__struct_6)).__copy__()),
((({ _input : ((_makeInput(((8 : GoInt)), ((("" : GoString))), ..._makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((4 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((10 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))).__toArray__()).__slice__(0, ((512 : GoInt))) : Slice<GoUInt8>)), _wantErr : stdgo.io.Io.errUnexpectedEOF, _wantMap : new T_sparseDatas(), _wantSize : 0 } : T__struct_6)) == null ? null : (({ _input : ((_makeInput(((8 : GoInt)), ((("" : GoString))), ..._makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((4 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((10 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))).__toArray__()).__slice__(0, ((512 : GoInt))) : Slice<GoUInt8>)), _wantErr : stdgo.io.Io.errUnexpectedEOF, _wantMap : new T_sparseDatas(), _wantSize : 0 } : T__struct_6)).__copy__()),
((({ _input : ((_makeInput(((8 : GoInt)), ((("" : GoString))), ..._makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((4 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((10 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))).__toArray__()).__slice__(0, ((768 : GoInt))) : Slice<GoUInt8>)), _wantErr : stdgo.io.Io.errUnexpectedEOF, _wantMap : new T_sparseDatas(), _wantSize : 0 } : T__struct_6)) == null ? null : (({ _input : ((_makeInput(((8 : GoInt)), ((("" : GoString))), ..._makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((4 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((10 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))).__toArray__()).__slice__(0, ((768 : GoInt))) : Slice<GoUInt8>)), _wantErr : stdgo.io.Io.errUnexpectedEOF, _wantMap : new T_sparseDatas(), _wantSize : 0 } : T__struct_6)).__copy__()),
((({ _input : _makeInput(((8 : GoInt)), ((("" : GoString))), ..._makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((4 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((10 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))).__toArray__()), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((4 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((10 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : 0, _wantErr : ((null : stdgo.Error)) } : T__struct_6)) == null ? null : (({ _input : _makeInput(((8 : GoInt)), ((("" : GoString))), ..._makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((4 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((10 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))).__toArray__()), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((4 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((10 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : 0, _wantErr : ((null : stdgo.Error)) } : T__struct_6)).__copy__()),
((({ _input : _makeInput(((8 : GoInt)), ((("" : GoString))), ..._makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry((("10737418240" : GoInt64)), ((512 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry((("21474836480" : GoInt64)), ((512 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))).__toArray__()), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry((("10737418240" : GoInt64)), ((512 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry((("21474836480" : GoInt64)), ((512 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : 0, _wantErr : ((null : stdgo.Error)) } : T__struct_6)) == null ? null : (({ _input : _makeInput(((8 : GoInt)), ((("" : GoString))), ..._makeSparseStrings(((new Slice<T_sparseEntry>(((new T_sparseEntry((("10737418240" : GoInt64)), ((512 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry((("21474836480" : GoInt64)), ((512 : GoInt64))) : T_sparseEntry))) : T_sparseDatas))).__toArray__()), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry((("10737418240" : GoInt64)), ((512 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry((("21474836480" : GoInt64)), ((512 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : 0, _wantErr : ((null : stdgo.Error)) } : T__struct_6)).__copy__())) : Slice<T__struct_6>));
        for (_i => _v in _vectors) {
            var _blk:T_block = new T_block();
            var _hdr:Header = new Header();
            _v._input = ((_v._input.__slice__(Go.copySlice(((_blk.__slice__(0) : Slice<GoUInt8>)), _v._input)) : Slice<GoUInt8>));
            var _tr:Reader = ((({ _r : stdgo.bytes.Bytes.newReader(_v._input), _pad : 0, _curr : ((null : T_fileReader)), _blk : new T_block(), _err : ((null : stdgo.Error)) } : Reader)) == null ? null : (({ _r : stdgo.bytes.Bytes.newReader(_v._input), _pad : 0, _curr : ((null : T_fileReader)), _blk : new T_block(), _err : ((null : stdgo.Error)) } : Reader)).__copy__());
            var __tmp__ = _tr._readOldGNUSparseMap(_hdr, _blk), _got:T_sparseDatas = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (!_equalSparseEntries(_got, _v._wantMap)) {
                _t.errorf(((("test %d, readOldGNUSparseMap(): got %v, want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_v._wantMap));
            };
            if (_err != _v._wantErr) {
                _t.errorf(((("test %d, readOldGNUSparseMap() = %v, want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_err), Go.toInterface(_v._wantErr));
            };
            if (_hdr.size != _v._wantSize) {
                _t.errorf(((("test %d, Header.Size = %d, want %d" : GoString))), Go.toInterface(_i), Go.toInterface(_hdr.size), Go.toInterface(_v._wantSize));
            };
        };
    }
function testReadGNUSparsePAXHeaders(_t:stdgo.testing.Testing.T_):Void {
        var _padInput:GoString -> GoString = function(_s:GoString):GoString {
            return _s + ((((_zeroBlock.__slice__(0, _blockPadding((((_s != null ? _s.length : ((0 : GoInt))) : GoInt64)))) : Slice<GoUInt8>)) : GoString));
        };
        var _vectors:Slice<T__struct_7> = ((new Slice<T__struct_7>(
((({ _inputHdrs : ((null : GoMap<GoString, GoString>)), _wantErr : ((null : stdgo.Error)), _inputData : "", _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)) == null ? null : (({ _inputHdrs : ((null : GoMap<GoString, GoString>)), _wantErr : ((null : stdgo.Error)), _inputData : "", _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)).__copy__()),
((({ _inputHdrs : Go.map(((("GNU.sparse.numblocks" : GoString))) => stdgo.strconv.Strconv.formatInt((("9223372036854775807" : GoInt64)), ((10 : GoInt))), ((("GNU.sparse.map" : GoString))) => ((("0,1,2,3" : GoString)))), _wantErr : errHeader, _inputData : "", _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)) == null ? null : (({ _inputHdrs : Go.map(((("GNU.sparse.numblocks" : GoString))) => stdgo.strconv.Strconv.formatInt((("9223372036854775807" : GoInt64)), ((10 : GoInt))), ((("GNU.sparse.map" : GoString))) => ((("0,1,2,3" : GoString)))), _wantErr : errHeader, _inputData : "", _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)).__copy__()),
((({ _inputHdrs : Go.map(((("GNU.sparse.numblocks" : GoString))) => ((("4" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((("GNU.sparse.map" : GoString))) => ((("0,1,2,3" : GoString)))), _wantErr : errHeader, _inputData : "", _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)) == null ? null : (({ _inputHdrs : Go.map(((("GNU.sparse.numblocks" : GoString))) => ((("4" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((("GNU.sparse.map" : GoString))) => ((("0,1,2,3" : GoString)))), _wantErr : errHeader, _inputData : "", _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)).__copy__()),
((({ _inputHdrs : Go.map(((("GNU.sparse.numblocks" : GoString))) => ((("4" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("0,1,2,3" : GoString)))), _wantErr : errHeader, _inputData : "", _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)) == null ? null : (({ _inputHdrs : Go.map(((("GNU.sparse.numblocks" : GoString))) => ((("4" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("0,1,2,3" : GoString)))), _wantErr : errHeader, _inputData : "", _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)).__copy__()),
((({ _inputHdrs : Go.map(((("GNU.sparse.numblocks" : GoString))) => ((("2" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("0,1,2,3" : GoString)))), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _inputData : "", _wantSize : 0, _wantName : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)) == null ? null : (({ _inputHdrs : Go.map(((("GNU.sparse.numblocks" : GoString))) => ((("2" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("0,1,2,3" : GoString)))), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _inputData : "", _wantSize : 0, _wantName : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)).__copy__()),
((({ _inputHdrs : Go.map(((("GNU.sparse.numblocks" : GoString))) => ((("2" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("0, 1,2,3" : GoString)))), _wantErr : errHeader, _inputData : "", _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)) == null ? null : (({ _inputHdrs : Go.map(((("GNU.sparse.numblocks" : GoString))) => ((("2" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("0, 1,2,3" : GoString)))), _wantErr : errHeader, _inputData : "", _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)).__copy__()),
((({ _inputHdrs : Go.map(((("GNU.sparse.numblocks" : GoString))) => ((("2" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("0,1,02,3" : GoString))), ((("GNU.sparse.realsize" : GoString))) => ((("4321" : GoString)))), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : ((4321 : GoInt64)), _inputData : "", _wantName : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)) == null ? null : (({ _inputHdrs : Go.map(((("GNU.sparse.numblocks" : GoString))) => ((("2" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("0,1,02,3" : GoString))), ((("GNU.sparse.realsize" : GoString))) => ((("4321" : GoString)))), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : ((4321 : GoInt64)), _inputData : "", _wantName : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)).__copy__()),
((({ _inputHdrs : Go.map(((("GNU.sparse.numblocks" : GoString))) => ((("2" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("0,one1,2,3" : GoString)))), _wantErr : errHeader, _inputData : "", _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)) == null ? null : (({ _inputHdrs : Go.map(((("GNU.sparse.numblocks" : GoString))) => ((("2" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("0,one1,2,3" : GoString)))), _wantErr : errHeader, _inputData : "", _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)).__copy__()),
((({ _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("0" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString))), ((("GNU.sparse.numblocks" : GoString))) => ((("2" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("0,1,2,3" : GoString))), ((("GNU.sparse.size" : GoString))) => ((("1234" : GoString))), ((("GNU.sparse.realsize" : GoString))) => ((("4321" : GoString))), ((("GNU.sparse.name" : GoString))) => ((("realname" : GoString)))), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : ((1234 : GoInt64)), _wantName : ((("realname" : GoString))), _inputData : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)) == null ? null : (({ _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("0" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString))), ((("GNU.sparse.numblocks" : GoString))) => ((("2" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("0,1,2,3" : GoString))), ((("GNU.sparse.size" : GoString))) => ((("1234" : GoString))), ((("GNU.sparse.realsize" : GoString))) => ((("4321" : GoString))), ((("GNU.sparse.name" : GoString))) => ((("realname" : GoString)))), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : ((1234 : GoInt64)), _wantName : ((("realname" : GoString))), _inputData : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)).__copy__()),
((({ _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("0" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString))), ((("GNU.sparse.numblocks" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("10737418240,512" : GoString))), ((("GNU.sparse.size" : GoString))) => ((("10737418240" : GoString))), ((("GNU.sparse.name" : GoString))) => ((("realname" : GoString)))), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry((("10737418240" : GoInt64)), ((512 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : (("10737418240" : GoInt64)), _wantName : ((("realname" : GoString))), _inputData : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)) == null ? null : (({ _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("0" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString))), ((("GNU.sparse.numblocks" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("10737418240,512" : GoString))), ((("GNU.sparse.size" : GoString))) => ((("10737418240" : GoString))), ((("GNU.sparse.name" : GoString))) => ((("realname" : GoString)))), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry((("10737418240" : GoInt64)), ((512 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : (("10737418240" : GoInt64)), _wantName : ((("realname" : GoString))), _inputData : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)).__copy__()),
((({ _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("0" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString))), ((("GNU.sparse.numblocks" : GoString))) => ((("0" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("" : GoString)))), _wantMap : ((new Slice<T_sparseEntry>() : T_sparseDatas)), _inputData : "", _wantSize : 0, _wantName : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)) == null ? null : (({ _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("0" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString))), ((("GNU.sparse.numblocks" : GoString))) => ((("0" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("" : GoString)))), _wantMap : ((new Slice<T_sparseEntry>() : T_sparseDatas)), _inputData : "", _wantSize : 0, _wantName : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)).__copy__()),
((({ _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("0" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.numblocks" : GoString))) => ((("4" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("0,5,10,5,20,5,30,5" : GoString)))), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((10 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((20 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((30 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _inputData : "", _wantSize : 0, _wantName : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)) == null ? null : (({ _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("0" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.numblocks" : GoString))) => ((("4" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("0,5,10,5,20,5,30,5" : GoString)))), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((10 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((20 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((30 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _inputData : "", _wantSize : 0, _wantName : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)).__copy__()),
((({ _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString))), ((("GNU.sparse.numblocks" : GoString))) => ((("4" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("0,5,10,5,20,5,30,5" : GoString)))), _wantErr : stdgo.io.Io.errUnexpectedEOF, _inputData : "", _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)) == null ? null : (({ _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString))), ((("GNU.sparse.numblocks" : GoString))) => ((("4" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("0,5,10,5,20,5,30,5" : GoString)))), _wantErr : stdgo.io.Io.errUnexpectedEOF, _inputData : "", _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)).__copy__()),
((({ _inputData : _padInput(((("0\n" : GoString)))), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantMap : ((new Slice<T_sparseEntry>() : T_sparseDatas)), _wantSize : 0, _wantName : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)) == null ? null : (({ _inputData : _padInput(((("0\n" : GoString)))), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantMap : ((new Slice<T_sparseEntry>() : T_sparseDatas)), _wantSize : 0, _wantName : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)).__copy__()),
((({ _inputData : ((_padInput(((("0\n" : GoString)))).__slice__(0, ((511 : GoInt))) : GoString)) + ((("#" : GoString))), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantMap : ((new Slice<T_sparseEntry>() : T_sparseDatas)), _wantSize : 0, _wantName : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)) == null ? null : (({ _inputData : ((_padInput(((("0\n" : GoString)))).__slice__(0, ((511 : GoInt))) : GoString)) + ((("#" : GoString))), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantMap : ((new Slice<T_sparseEntry>() : T_sparseDatas)), _wantSize : 0, _wantName : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)).__copy__()),
((({ _inputData : _padInput(((("0" : GoString)))), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantErr : stdgo.io.Io.errUnexpectedEOF, _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)) == null ? null : (({ _inputData : _padInput(((("0" : GoString)))), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantErr : stdgo.io.Io.errUnexpectedEOF, _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)).__copy__()),
((({ _inputData : _padInput(((("ab\n" : GoString)))), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantErr : errHeader, _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)) == null ? null : (({ _inputData : _padInput(((("ab\n" : GoString)))), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantErr : errHeader, _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)).__copy__()),
((({ _inputData : _padInput(((("1\n2\n3\n" : GoString)))), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : 0, _wantName : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)) == null ? null : (({ _inputData : _padInput(((("1\n2\n3\n" : GoString)))), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : 0, _wantName : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)).__copy__()),
((({ _inputData : _padInput(((("1\n2\n" : GoString)))), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantErr : stdgo.io.Io.errUnexpectedEOF, _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)) == null ? null : (({ _inputData : _padInput(((("1\n2\n" : GoString)))), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantErr : stdgo.io.Io.errUnexpectedEOF, _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)).__copy__()),
((({ _inputData : _padInput(((("1\n2\n\n" : GoString)))), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantErr : errHeader, _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)) == null ? null : (({ _inputData : _padInput(((("1\n2\n\n" : GoString)))), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantErr : errHeader, _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)).__copy__()),
((({ _inputData : ((((_zeroBlock.__slice__(0) : Slice<GoUInt8>)) : GoString)) + _padInput(((("0\n" : GoString)))), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantErr : errHeader, _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)) == null ? null : (({ _inputData : ((((_zeroBlock.__slice__(0) : Slice<GoUInt8>)) : GoString)) + _padInput(((("0\n" : GoString)))), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantErr : errHeader, _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)).__copy__()),
((({ _inputData : stdgo.strings.Strings.repeat(((("0" : GoString))), ((512 : GoInt))) + _padInput(((("1\n5\n1\n" : GoString)))), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((5 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : 0, _wantName : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)) == null ? null : (({ _inputData : stdgo.strings.Strings.repeat(((("0" : GoString))), ((512 : GoInt))) + _padInput(((("1\n5\n1\n" : GoString)))), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((5 : GoInt64)), ((1 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : 0, _wantName : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)).__copy__()),
((({ _inputData : _padInput(stdgo.fmt.Fmt.sprintf(((("%d\n" : GoString))), Go.toInterface((((("9223372036854775807" : GoInt64)) : GoInt64))))), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantErr : errHeader, _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)) == null ? null : (({ _inputData : _padInput(stdgo.fmt.Fmt.sprintf(((("%d\n" : GoString))), Go.toInterface((((("9223372036854775807" : GoInt64)) : GoInt64))))), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantErr : errHeader, _wantMap : new T_sparseDatas(), _wantSize : 0, _wantName : "" } : T__struct_7)).__copy__()),
((({ _inputData : _padInput(((((stdgo.strings.Strings.repeat(((("0" : GoString))), ((300 : GoInt))) + ((("1\n" : GoString)))) + stdgo.strings.Strings.repeat(((("0" : GoString))), ((1000 : GoInt)))) + ((("5\n" : GoString)))) + stdgo.strings.Strings.repeat(((("0" : GoString))), ((800 : GoInt)))) + ((("2\n" : GoString)))), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((5 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : 0, _wantName : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)) == null ? null : (({ _inputData : _padInput(((((stdgo.strings.Strings.repeat(((("0" : GoString))), ((300 : GoInt))) + ((("1\n" : GoString)))) + stdgo.strings.Strings.repeat(((("0" : GoString))), ((1000 : GoInt)))) + ((("5\n" : GoString)))) + stdgo.strings.Strings.repeat(((("0" : GoString))), ((800 : GoInt)))) + ((("2\n" : GoString)))), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((5 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : 0, _wantName : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)).__copy__()),
((({ _inputData : _padInput(((("2\n10737418240\n512\n21474836480\n512\n" : GoString)))), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry((("10737418240" : GoInt64)), ((512 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry((("21474836480" : GoInt64)), ((512 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : 0, _wantName : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)) == null ? null : (({ _inputData : _padInput(((("2\n10737418240\n512\n21474836480\n512\n" : GoString)))), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantMap : ((new Slice<T_sparseEntry>(((new T_sparseEntry((("10737418240" : GoInt64)), ((512 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry((("21474836480" : GoInt64)), ((512 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), _wantSize : 0, _wantName : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)).__copy__()),
((({ _inputData : _padInput(((("100\n" : GoString))) + {
            var a = function():GoString {
                var _ss:Slice<GoString> = ((null : Slice<GoString>));
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < ((100 : GoInt)), _i++, {
                        _ss = (_ss != null ? _ss.__append__(stdgo.fmt.Fmt.sprintf(((("%d\n%d\n" : GoString))), Go.toInterface(((_i : GoInt64)) << ((30 : GoUnTypedInt))), Go.toInterface(((512 : GoInt))))) : new Slice<GoString>(stdgo.fmt.Fmt.sprintf(((("%d\n%d\n" : GoString))), Go.toInterface(((_i : GoInt64)) << ((30 : GoUnTypedInt))), Go.toInterface(((512 : GoInt))))));
                    });
                };
                return stdgo.strings.Strings.join(_ss, ((("" : GoString))));
            };
            a();
        }), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantMap : {
            var a = function():T_sparseDatas {
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < ((100 : GoInt)), _i++, {
                        _spd = ((_spd != null ? _spd.__append__(((new T_sparseEntry(((_i : GoInt64)) << ((30 : GoUnTypedInt)), ((512 : GoInt64))) : T_sparseEntry))) : new Slice<Slice<T_sparseEntry>>(((new T_sparseEntry(((_i : GoInt64)) << ((30 : GoUnTypedInt)), ((512 : GoInt64))) : T_sparseEntry)))) == null ? null : (_spd != null ? _spd.__append__(((new T_sparseEntry(((_i : GoInt64)) << ((30 : GoUnTypedInt)), ((512 : GoInt64))) : T_sparseEntry))) : new Slice<Slice<T_sparseEntry>>(((new T_sparseEntry(((_i : GoInt64)) << ((30 : GoUnTypedInt)), ((512 : GoInt64))) : T_sparseEntry)))).__copy__());
                    });
                };
                return (_spd == null ? null : _spd.__copy__());
            };
            a();
        }, _wantSize : 0, _wantName : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)) == null ? null : (({ _inputData : _padInput(((("100\n" : GoString))) + {
            var a = function():GoString {
                var _ss:Slice<GoString> = ((null : Slice<GoString>));
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < ((100 : GoInt)), _i++, {
                        _ss = (_ss != null ? _ss.__append__(stdgo.fmt.Fmt.sprintf(((("%d\n%d\n" : GoString))), Go.toInterface(((_i : GoInt64)) << ((30 : GoUnTypedInt))), Go.toInterface(((512 : GoInt))))) : new Slice<GoString>(stdgo.fmt.Fmt.sprintf(((("%d\n%d\n" : GoString))), Go.toInterface(((_i : GoInt64)) << ((30 : GoUnTypedInt))), Go.toInterface(((512 : GoInt))))));
                    });
                };
                return stdgo.strings.Strings.join(_ss, ((("" : GoString))));
            };
            a();
        }), _inputHdrs : Go.map(((("GNU.sparse.major" : GoString))) => ((("1" : GoString))), ((("GNU.sparse.minor" : GoString))) => ((("0" : GoString)))), _wantMap : {
            var a = function():T_sparseDatas {
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < ((100 : GoInt)), _i++, {
                        _spd = ((_spd != null ? _spd.__append__(((new T_sparseEntry(((_i : GoInt64)) << ((30 : GoUnTypedInt)), ((512 : GoInt64))) : T_sparseEntry))) : new Slice<Slice<T_sparseEntry>>(((new T_sparseEntry(((_i : GoInt64)) << ((30 : GoUnTypedInt)), ((512 : GoInt64))) : T_sparseEntry)))) == null ? null : (_spd != null ? _spd.__append__(((new T_sparseEntry(((_i : GoInt64)) << ((30 : GoUnTypedInt)), ((512 : GoInt64))) : T_sparseEntry))) : new Slice<Slice<T_sparseEntry>>(((new T_sparseEntry(((_i : GoInt64)) << ((30 : GoUnTypedInt)), ((512 : GoInt64))) : T_sparseEntry)))).__copy__());
                    });
                };
                return (_spd == null ? null : _spd.__copy__());
            };
            a();
        }, _wantSize : 0, _wantName : "", _wantErr : ((null : stdgo.Error)) } : T__struct_7)).__copy__())) : Slice<T__struct_7>));
        for (_i => _v in _vectors) {
            var _hdr:Header = new Header();
            _hdr.paxrecords = _v._inputHdrs;
            var _r:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(_v._inputData + ((("#" : GoString))));
            var _tr:Reader = ((({ _curr : ((new T_regFileReader(_r, ((_r.len() : GoInt64))) : T_regFileReader)), _r : ((null : stdgo.io.Io.Reader)), _pad : 0, _blk : new T_block(), _err : ((null : stdgo.Error)) } : Reader)) == null ? null : (({ _curr : ((new T_regFileReader(_r, ((_r.len() : GoInt64))) : T_regFileReader)), _r : ((null : stdgo.io.Io.Reader)), _pad : 0, _blk : new T_block(), _err : ((null : stdgo.Error)) } : Reader)).__copy__());
            var __tmp__ = _tr._readGNUSparsePAXHeaders(_hdr), _got:T_sparseDatas = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (!_equalSparseEntries(_got, _v._wantMap)) {
                _t.errorf(((("test %d, readGNUSparsePAXHeaders(): got %v, want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_v._wantMap));
            };
            if (_err != _v._wantErr) {
                _t.errorf(((("test %d, readGNUSparsePAXHeaders() = %v, want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_err), Go.toInterface(_v._wantErr));
            };
            if (_hdr.size != _v._wantSize) {
                _t.errorf(((("test %d, Header.Size = %d, want %d" : GoString))), Go.toInterface(_i), Go.toInterface(_hdr.size), Go.toInterface(_v._wantSize));
            };
            if (_hdr.name != _v._wantName) {
                _t.errorf(((("test %d, Header.Name = %s, want %s" : GoString))), Go.toInterface(_i), Go.toInterface(_hdr.name), Go.toInterface(_v._wantName));
            };
            if ((_v._wantErr == null) && (_r.len() == ((0 : GoInt)))) {
                _t.errorf(((("test %d, canary byte unexpectedly consumed" : GoString))), Go.toInterface(_i));
            };
        };
    }
@:structInit class T_testRead_testFileReader_0 {
    public var _cnt : GoInt = ((0 : GoInt));
    public var _wantStr : GoString = (("" : GoString));
    public var _wantErr : stdgo.Error = ((null : stdgo.Error));
    public function new(?_cnt:GoInt, ?_wantStr:GoString, ?_wantErr:stdgo.Error) {
        if (_cnt != null) this._cnt = _cnt;
        if (_wantStr != null) this._wantStr = _wantStr;
        if (_wantErr != null) this._wantErr = _wantErr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_testRead_testFileReader_0(_cnt, _wantStr, _wantErr);
    }
}
@:structInit class T_testWriteTo_testFileReader_1 {
    public var _ops : T_fileOps = new T_fileOps();
    public var _wantCnt : GoInt64 = ((0 : GoInt64));
    public var _wantErr : stdgo.Error = ((null : stdgo.Error));
    public function new(?_ops:T_fileOps, ?_wantCnt:GoInt64, ?_wantErr:stdgo.Error) {
        if (_ops != null) this._ops = _ops;
        if (_wantCnt != null) this._wantCnt = _wantCnt;
        if (_wantErr != null) this._wantErr = _wantErr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_testWriteTo_testFileReader_1(_ops, _wantCnt, _wantErr);
    }
}
@:structInit class T_testRemaining_testFileReader_2 {
    public var _wantLCnt : GoInt64 = ((0 : GoInt64));
    public var _wantPCnt : GoInt64 = ((0 : GoInt64));
    public function new(?_wantLCnt:GoInt64, ?_wantPCnt:GoInt64) {
        if (_wantLCnt != null) this._wantLCnt = _wantLCnt;
        if (_wantPCnt != null) this._wantPCnt = _wantPCnt;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_testRemaining_testFileReader_2(_wantLCnt, _wantPCnt);
    }
}
@:follow typedef T_testFnc_testFileReader_3 = AnyInterface;
@:structInit class T_makeReg_testFileReader_4 {
    public var _str : GoString = (("" : GoString));
    public var _size : GoInt64 = ((0 : GoInt64));
    public function new(?_str:GoString, ?_size:GoInt64) {
        if (_str != null) this._str = _str;
        if (_size != null) this._size = _size;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_makeReg_testFileReader_4(_str, _size);
    }
}
@:structInit class T_makeSparse_testFileReader_5 {
    public var _makeReg : T_makeReg_testFileReader_4 = new T_makeReg_testFileReader_4();
    public var _spd : T_sparseDatas = new T_sparseDatas();
    public var _size : GoInt64 = ((0 : GoInt64));
    public function new(?_makeReg:T_makeReg_testFileReader_4, ?_spd:T_sparseDatas, ?_size:GoInt64) {
        if (_makeReg != null) this._makeReg = _makeReg;
        if (_spd != null) this._spd = _spd;
        if (_size != null) this._size = _size;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_makeSparse_testFileReader_5(_makeReg, _spd, _size);
    }
}
@:follow typedef T_fileMaker_testFileReader_6 = AnyInterface;
function testFileReader(_t:stdgo.testing.Testing.T_):Void {
        {};
        {};
        var _vectors:Slice<T__struct_8> = ((new Slice<T__struct_8>(
((({ _maker : Go.toInterface(((new T_makeReg_testFileReader_4(((("" : GoString))), ((0 : GoInt64))) : T_makeReg_testFileReader_4))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testRead_testFileReader_0(((0 : GoInt)), ((("" : GoString))), stdgo.io.Io.eof) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRead_testFileReader_0(((1 : GoInt)), ((("" : GoString))), stdgo.io.Io.eof) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testWriteTo_testFileReader_1(null, ((0 : GoInt64)), ((null : stdgo.Error))) : T_testWriteTo_testFileReader_1))), Go.toInterface(((new T_testRemaining_testFileReader_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeReg_testFileReader_4(((("" : GoString))), ((0 : GoInt64))) : T_makeReg_testFileReader_4))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testRead_testFileReader_0(((0 : GoInt)), ((("" : GoString))), stdgo.io.Io.eof) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRead_testFileReader_0(((1 : GoInt)), ((("" : GoString))), stdgo.io.Io.eof) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testWriteTo_testFileReader_1(null, ((0 : GoInt64)), ((null : stdgo.Error))) : T_testWriteTo_testFileReader_1))), Go.toInterface(((new T_testRemaining_testFileReader_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeReg_testFileReader_4(((("" : GoString))), ((1 : GoInt64))) : T_makeReg_testFileReader_4))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((1 : GoInt64)), ((1 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testRead_testFileReader_0(((5 : GoInt)), ((("" : GoString))), stdgo.io.Io.errUnexpectedEOF) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testWriteTo_testFileReader_1(null, ((0 : GoInt64)), stdgo.io.Io.errUnexpectedEOF) : T_testWriteTo_testFileReader_1))), Go.toInterface(((new T_testRemaining_testFileReader_2(((1 : GoInt64)), ((1 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeReg_testFileReader_4(((("" : GoString))), ((1 : GoInt64))) : T_makeReg_testFileReader_4))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((1 : GoInt64)), ((1 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testRead_testFileReader_0(((5 : GoInt)), ((("" : GoString))), stdgo.io.Io.errUnexpectedEOF) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testWriteTo_testFileReader_1(null, ((0 : GoInt64)), stdgo.io.Io.errUnexpectedEOF) : T_testWriteTo_testFileReader_1))), Go.toInterface(((new T_testRemaining_testFileReader_2(((1 : GoInt64)), ((1 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeReg_testFileReader_4(((("hello" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((5 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testRead_testFileReader_0(((5 : GoInt)), ((("hello" : GoString))), stdgo.io.Io.eof) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRemaining_testFileReader_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeReg_testFileReader_4(((("hello" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((5 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testRead_testFileReader_0(((5 : GoInt)), ((("hello" : GoString))), stdgo.io.Io.eof) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRemaining_testFileReader_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeReg_testFileReader_4(((("hello, world" : GoString))), ((50 : GoInt64))) : T_makeReg_testFileReader_4))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((50 : GoInt64)), ((50 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testRead_testFileReader_0(((7 : GoInt)), ((("hello, " : GoString))), ((null : stdgo.Error))) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRemaining_testFileReader_2(((43 : GoInt64)), ((43 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testRead_testFileReader_0(((5 : GoInt)), ((("world" : GoString))), ((null : stdgo.Error))) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRemaining_testFileReader_2(((38 : GoInt64)), ((38 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testWriteTo_testFileReader_1(null, ((0 : GoInt64)), stdgo.io.Io.errUnexpectedEOF) : T_testWriteTo_testFileReader_1))), Go.toInterface(((new T_testRead_testFileReader_0(((1 : GoInt)), ((("" : GoString))), stdgo.io.Io.errUnexpectedEOF) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRemaining_testFileReader_2(((38 : GoInt64)), ((38 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeReg_testFileReader_4(((("hello, world" : GoString))), ((50 : GoInt64))) : T_makeReg_testFileReader_4))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((50 : GoInt64)), ((50 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testRead_testFileReader_0(((7 : GoInt)), ((("hello, " : GoString))), ((null : stdgo.Error))) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRemaining_testFileReader_2(((43 : GoInt64)), ((43 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testRead_testFileReader_0(((5 : GoInt)), ((("world" : GoString))), ((null : stdgo.Error))) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRemaining_testFileReader_2(((38 : GoInt64)), ((38 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testWriteTo_testFileReader_1(null, ((0 : GoInt64)), stdgo.io.Io.errUnexpectedEOF) : T_testWriteTo_testFileReader_1))), Go.toInterface(((new T_testRead_testFileReader_0(((1 : GoInt)), ((("" : GoString))), stdgo.io.Io.errUnexpectedEOF) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRemaining_testFileReader_2(((38 : GoInt64)), ((38 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeReg_testFileReader_4(((("hello, world" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((5 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testRead_testFileReader_0(((0 : GoInt)), ((("" : GoString))), ((null : stdgo.Error))) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRead_testFileReader_0(((4 : GoInt)), ((("hell" : GoString))), ((null : stdgo.Error))) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRemaining_testFileReader_2(((1 : GoInt64)), ((1 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testWriteTo_testFileReader_1(((new Slice<AnyInterface>(Go.toInterface(((("o" : GoString))))) : T_fileOps)), ((1 : GoInt64)), ((null : stdgo.Error))) : T_testWriteTo_testFileReader_1))), Go.toInterface(((new T_testRemaining_testFileReader_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testWriteTo_testFileReader_1(null, ((0 : GoInt64)), ((null : stdgo.Error))) : T_testWriteTo_testFileReader_1))), Go.toInterface(((new T_testRead_testFileReader_0(((0 : GoInt)), ((("" : GoString))), stdgo.io.Io.eof) : T_testRead_testFileReader_0)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeReg_testFileReader_4(((("hello, world" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((5 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testRead_testFileReader_0(((0 : GoInt)), ((("" : GoString))), ((null : stdgo.Error))) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRead_testFileReader_0(((4 : GoInt)), ((("hell" : GoString))), ((null : stdgo.Error))) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRemaining_testFileReader_2(((1 : GoInt64)), ((1 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testWriteTo_testFileReader_1(((new Slice<AnyInterface>(Go.toInterface(((("o" : GoString))))) : T_fileOps)), ((1 : GoInt64)), ((null : stdgo.Error))) : T_testWriteTo_testFileReader_1))), Go.toInterface(((new T_testRemaining_testFileReader_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testWriteTo_testFileReader_1(null, ((0 : GoInt64)), ((null : stdgo.Error))) : T_testWriteTo_testFileReader_1))), Go.toInterface(((new T_testRead_testFileReader_0(((0 : GoInt)), ((("" : GoString))), stdgo.io.Io.eof) : T_testRead_testFileReader_0)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcde" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((8 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((8 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testRead_testFileReader_0(((3 : GoInt)), ((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((null : stdgo.Error))) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRead_testFileReader_0(((10 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("cde" : GoString))), stdgo.io.Io.eof) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRemaining_testFileReader_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcde" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((8 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((8 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testRead_testFileReader_0(((3 : GoInt)), ((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((null : stdgo.Error))) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRead_testFileReader_0(((10 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("cde" : GoString))), stdgo.io.Io.eof) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRemaining_testFileReader_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcde" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((8 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((8 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testWriteTo_testFileReader_1(((new Slice<AnyInterface>(Go.toInterface(((("ab" : GoString)))), Go.toInterface(((((3 : GoInt64)) : GoInt64))), Go.toInterface(((("cde" : GoString))))) : T_fileOps)), ((8 : GoInt64)), ((null : stdgo.Error))) : T_testWriteTo_testFileReader_1))), Go.toInterface(((new T_testRemaining_testFileReader_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcde" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((8 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((8 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testWriteTo_testFileReader_1(((new Slice<AnyInterface>(Go.toInterface(((("ab" : GoString)))), Go.toInterface(((((3 : GoInt64)) : GoInt64))), Go.toInterface(((("cde" : GoString))))) : T_fileOps)), ((8 : GoInt64)), ((null : stdgo.Error))) : T_testWriteTo_testFileReader_1))), Go.toInterface(((new T_testRemaining_testFileReader_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcde" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((10 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((10 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), ((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("cde" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), stdgo.io.Io.eof) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRemaining_testFileReader_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcde" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((10 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((10 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), ((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("cde" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), stdgo.io.Io.eof) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRemaining_testFileReader_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abc" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((10 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((10 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), ((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("c" : GoString))), stdgo.io.Io.errUnexpectedEOF) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRemaining_testFileReader_2(((4 : GoInt64)), ((2 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abc" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((10 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((10 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), ((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("c" : GoString))), stdgo.io.Io.errUnexpectedEOF) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRemaining_testFileReader_2(((4 : GoInt64)), ((2 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcde" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((8 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((8 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testRead_testFileReader_0(((8 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("abc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("de" : GoString))), stdgo.io.Io.eof) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRemaining_testFileReader_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcde" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((8 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((8 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testRead_testFileReader_0(((8 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("abc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("de" : GoString))), stdgo.io.Io.eof) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRemaining_testFileReader_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcde" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((8 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((8 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testRead_testFileReader_0(((8 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("abc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("de" : GoString))), stdgo.io.Io.eof) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRemaining_testFileReader_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcde" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((8 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((8 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testRead_testFileReader_0(((8 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("abc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("de" : GoString))), stdgo.io.Io.eof) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRemaining_testFileReader_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcde" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((8 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((8 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testWriteTo_testFileReader_1(((new Slice<AnyInterface>(Go.toInterface(((((1 : GoInt64)) : GoInt64))), Go.toInterface(((("abc" : GoString)))), Go.toInterface(((((2 : GoInt64)) : GoInt64))), Go.toInterface(((("de" : GoString))))) : T_fileOps)), ((8 : GoInt64)), ((null : stdgo.Error))) : T_testWriteTo_testFileReader_1))), Go.toInterface(((new T_testRemaining_testFileReader_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcde" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((8 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((8 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testWriteTo_testFileReader_1(((new Slice<AnyInterface>(Go.toInterface(((((1 : GoInt64)) : GoInt64))), Go.toInterface(((("abc" : GoString)))), Go.toInterface(((((2 : GoInt64)) : GoInt64))), Go.toInterface(((("de" : GoString))))) : T_fileOps)), ((8 : GoInt64)), ((null : stdgo.Error))) : T_testWriteTo_testFileReader_1))), Go.toInterface(((new T_testRemaining_testFileReader_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcde" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((10 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("abc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("de" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), stdgo.io.Io.eof) : T_testRead_testFileReader_0)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcde" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((10 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("abc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("de" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), stdgo.io.Io.eof) : T_testRead_testFileReader_0)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcde" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((10 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testWriteTo_testFileReader_1(((new Slice<AnyInterface>(Go.toInterface(((((1 : GoInt64)) : GoInt64))), Go.toInterface(((("abc" : GoString)))), Go.toInterface(((((2 : GoInt64)) : GoInt64))), Go.toInterface(((("de" : GoString)))), Go.toInterface(((((1 : GoInt64)) : GoInt64))), Go.toInterface((((haxe.io.Bytes.ofHex("00") : GoString))))) : T_fileOps)), ((10 : GoInt64)), ((null : stdgo.Error))) : T_testWriteTo_testFileReader_1)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcde" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((10 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testWriteTo_testFileReader_1(((new Slice<AnyInterface>(Go.toInterface(((((1 : GoInt64)) : GoInt64))), Go.toInterface(((("abc" : GoString)))), Go.toInterface(((((2 : GoInt64)) : GoInt64))), Go.toInterface(((("de" : GoString)))), Go.toInterface(((((1 : GoInt64)) : GoInt64))), Go.toInterface((((haxe.io.Bytes.ofHex("00") : GoString))))) : T_fileOps)), ((10 : GoInt64)), ((null : stdgo.Error))) : T_testWriteTo_testFileReader_1)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcde" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((10 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("abc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("de" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), stdgo.io.Io.eof) : T_testRead_testFileReader_0)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcde" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((10 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("abc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("de" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), stdgo.io.Io.eof) : T_testRead_testFileReader_0)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("" : GoString))), ((0 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>() : T_sparseDatas)), ((2 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), stdgo.io.Io.eof) : T_testRead_testFileReader_0)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("" : GoString))), ((0 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>() : T_sparseDatas)), ((2 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), stdgo.io.Io.eof) : T_testRead_testFileReader_0)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("" : GoString))), ((8 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((15 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString))), stdgo.io.Io.errUnexpectedEOF) : T_testRead_testFileReader_0)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("" : GoString))), ((8 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((15 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString))), stdgo.io.Io.errUnexpectedEOF) : T_testRead_testFileReader_0)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("ab" : GoString))), ((2 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((15 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("ab" : GoString))), _errMissData) : T_testRead_testFileReader_0)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("ab" : GoString))), ((2 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((15 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("ab" : GoString))), _errMissData) : T_testRead_testFileReader_0)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("ab" : GoString))), ((8 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((15 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("ab" : GoString))), stdgo.io.Io.errUnexpectedEOF) : T_testRead_testFileReader_0)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("ab" : GoString))), ((8 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((15 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("ab" : GoString))), stdgo.io.Io.errUnexpectedEOF) : T_testRead_testFileReader_0)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abc" : GoString))), ((3 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((15 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("abc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), _errMissData) : T_testRead_testFileReader_0)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abc" : GoString))), ((3 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((15 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("abc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), _errMissData) : T_testRead_testFileReader_0)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abc" : GoString))), ((8 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((15 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("abc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), stdgo.io.Io.errUnexpectedEOF) : T_testRead_testFileReader_0)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abc" : GoString))), ((8 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((15 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("abc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), stdgo.io.Io.errUnexpectedEOF) : T_testRead_testFileReader_0)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcde" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((15 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("abc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("de" : GoString))), _errMissData) : T_testRead_testFileReader_0)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcde" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((15 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("abc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("de" : GoString))), _errMissData) : T_testRead_testFileReader_0)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcde" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((15 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testWriteTo_testFileReader_1(((new Slice<AnyInterface>(Go.toInterface(((((1 : GoInt64)) : GoInt64))), Go.toInterface(((("abc" : GoString)))), Go.toInterface(((((2 : GoInt64)) : GoInt64))), Go.toInterface(((("de" : GoString))))) : T_fileOps)), ((8 : GoInt64)), _errMissData) : T_testWriteTo_testFileReader_1)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcde" : GoString))), ((5 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((15 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testWriteTo_testFileReader_1(((new Slice<AnyInterface>(Go.toInterface(((((1 : GoInt64)) : GoInt64))), Go.toInterface(((("abc" : GoString)))), Go.toInterface(((((2 : GoInt64)) : GoInt64))), Go.toInterface(((("de" : GoString))))) : T_fileOps)), ((8 : GoInt64)), _errMissData) : T_testWriteTo_testFileReader_1)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcde" : GoString))), ((8 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((15 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("abc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("de" : GoString))), stdgo.io.Io.errUnexpectedEOF) : T_testRead_testFileReader_0)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcde" : GoString))), ((8 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((15 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("abc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("de" : GoString))), stdgo.io.Io.errUnexpectedEOF) : T_testRead_testFileReader_0)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcdefghEXTRA" : GoString))), ((13 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((15 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((15 : GoInt64)), ((13 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("abc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("defgh" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), _errUnrefData) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testWriteTo_testFileReader_1(null, ((0 : GoInt64)), _errUnrefData) : T_testWriteTo_testFileReader_1))), Go.toInterface(((new T_testRemaining_testFileReader_2(((0 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcdefghEXTRA" : GoString))), ((13 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((15 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((15 : GoInt64)), ((13 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("abc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("defgh" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), _errUnrefData) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testWriteTo_testFileReader_1(null, ((0 : GoInt64)), _errUnrefData) : T_testWriteTo_testFileReader_1))), Go.toInterface(((new T_testRemaining_testFileReader_2(((0 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcdefghEXTRA" : GoString))), ((13 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((15 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((15 : GoInt64)), ((13 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testWriteTo_testFileReader_1(((new Slice<AnyInterface>(Go.toInterface(((((1 : GoInt64)) : GoInt64))), Go.toInterface(((("abc" : GoString)))), Go.toInterface(((((2 : GoInt64)) : GoInt64))), Go.toInterface(((("defgh" : GoString)))), Go.toInterface(((((4 : GoInt64)) : GoInt64)))) : T_fileOps)), ((15 : GoInt64)), _errUnrefData) : T_testWriteTo_testFileReader_1))), Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), ((("" : GoString))), _errUnrefData) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRemaining_testFileReader_2(((0 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileReader_5(((new T_makeReg_testFileReader_4(((("abcdefghEXTRA" : GoString))), ((13 : GoInt64))) : T_makeReg_testFileReader_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((5 : GoInt64))) : T_sparseEntry))) : T_sparseDatas)), ((15 : GoInt64))) : T_makeSparse_testFileReader_5))), _tests : ((new Slice<T_testFnc_testFileReader_3>(Go.toInterface(((new T_testRemaining_testFileReader_2(((15 : GoInt64)), ((13 : GoInt64))) : T_testRemaining_testFileReader_2))), Go.toInterface(((new T_testWriteTo_testFileReader_1(((new Slice<AnyInterface>(Go.toInterface(((((1 : GoInt64)) : GoInt64))), Go.toInterface(((("abc" : GoString)))), Go.toInterface(((((2 : GoInt64)) : GoInt64))), Go.toInterface(((("defgh" : GoString)))), Go.toInterface(((((4 : GoInt64)) : GoInt64)))) : T_fileOps)), ((15 : GoInt64)), _errUnrefData) : T_testWriteTo_testFileReader_1))), Go.toInterface(((new T_testRead_testFileReader_0(((100 : GoInt)), ((("" : GoString))), _errUnrefData) : T_testRead_testFileReader_0))), Go.toInterface(((new T_testRemaining_testFileReader_2(((0 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileReader_2)))) : Slice<T_testFnc_testFileReader_3>)) } : T__struct_8)).__copy__())) : Slice<T__struct_8>));
        for (_i => _v in _vectors) {
            var _fr:T_fileReader = ((null : T_fileReader));
            if (Go.assertable(((_v._maker : T_makeReg_testFileReader_4)))) {
                var _maker:T_makeReg_testFileReader_4 = _v._maker == null ? null : _v._maker.__underlying__() == null ? null : _v._maker == null ? null : _v._maker.__underlying__().value;
                var _r:T_testNonEmptyReader = ((new T_testNonEmptyReader(stdgo.strings.Strings.newReader(_maker._str)) : T_testNonEmptyReader));
                _fr = ((new T_regFileReader(_r, _maker._size) : T_regFileReader));
            } else if (Go.assertable(((_v._maker : T_makeSparse_testFileReader_5)))) {
                var _maker:T_makeSparse_testFileReader_5 = _v._maker == null ? null : _v._maker.__underlying__() == null ? null : _v._maker == null ? null : _v._maker.__underlying__().value;
                if (!_validateSparseEntries(_maker._spd, _maker._size)) {
                    _t.fatalf(((("invalid sparse map: %v" : GoString))), Go.toInterface(_maker._spd));
                };
                var _sph:Slice<T_sparseEntry> = _invertSparseEntries(_maker._spd, _maker._size);
                var _r:T_testNonEmptyReader = ((new T_testNonEmptyReader(stdgo.strings.Strings.newReader(_maker._makeReg._str)) : T_testNonEmptyReader));
                _fr = ((new T_regFileReader(_r, _maker._makeReg._size) : T_regFileReader));
                _fr = ((new T_sparseFileReader(_fr, (_sph == null ? null : _sph.__copy__()), ((0 : GoInt64))) : T_sparseFileReader));
            } else {
                var _maker:T_fileMaker_testFileReader_6 = _v._maker == null ? null : _v._maker.__underlying__();
                _t.fatalf(((("test %d, unknown make operation: %T" : GoString))), Go.toInterface(_i), Go.toInterface(_maker));
            };
            for (_j => _tf in _v._tests) {
                if (Go.assertable(((_tf : T_testRead_testFileReader_0)))) {
                    var _tf:T_testRead_testFileReader_0 = _tf == null ? null : _tf.__underlying__() == null ? null : _tf == null ? null : _tf.__underlying__().value;
                    var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_tf._cnt : GoInt)).toBasic()) ((0 : GoUInt8))]);
                    var __tmp__ = _fr.read(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    {
                        var _got:GoString = ((((_b.__slice__(0, _n) : Slice<GoUInt8>)) : GoString));
                        if ((_got != _tf._wantStr) || (_err != _tf._wantErr)) {
                            _t.errorf(((("test %d.%d, Read(%d):\ngot  (%q, %v)\nwant (%q, %v)" : GoString))), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_tf._cnt), Go.toInterface(_got), Go.toInterface(_err), Go.toInterface(_tf._wantStr), Go.toInterface(_tf._wantErr));
                        };
                    };
                } else if (Go.assertable(((_tf : T_testWriteTo_testFileReader_1)))) {
                    var _tf:T_testWriteTo_testFileReader_1 = _tf == null ? null : _tf.__underlying__() == null ? null : _tf == null ? null : _tf.__underlying__().value;
                    var _f:Ref<T_testFile> = (({ _ops : (_tf._ops == null ? null : _tf._ops.__copy__()), _pos : 0 } : T_testFile));
                    var __tmp__ = _fr.writeTo(_f), _got:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    {
                        var __tmp__ = try {
                            { value : ((((_err.__underlying__().value : Dynamic)) : T_testError)), ok : true };
                        } catch(_) {
                            { value : new T_testError(), ok : false };
                        }, _0 = __tmp__.value, _ok = __tmp__.ok;
                        if (_ok) {
                            _t.errorf(((("test %d.%d, WriteTo(): %v" : GoString))), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_err));
                        } else if ((_got != _tf._wantCnt) || (_err != _tf._wantErr)) {
                            _t.errorf(((("test %d.%d, WriteTo() = (%d, %v), want (%d, %v)" : GoString))), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_got), Go.toInterface(_err), Go.toInterface(_tf._wantCnt), Go.toInterface(_tf._wantErr));
                        };
                    };
                    if ((_f._ops != null ? _f._ops.length : ((0 : GoInt))) > ((0 : GoInt))) {
                        _t.errorf(((("test %d.%d, expected %d more operations" : GoString))), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface((_f._ops != null ? _f._ops.length : ((0 : GoInt)))));
                    };
                } else if (Go.assertable(((_tf : T_testRemaining_testFileReader_2)))) {
                    var _tf:T_testRemaining_testFileReader_2 = _tf == null ? null : _tf.__underlying__() == null ? null : _tf == null ? null : _tf.__underlying__().value;
                    {
                        var _got:GoInt64 = _fr._logicalRemaining();
                        if (_got != _tf._wantLCnt) {
                            _t.errorf(((("test %d.%d, logicalRemaining() = %d, want %d" : GoString))), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_got), Go.toInterface(_tf._wantLCnt));
                        };
                    };
                    {
                        var _got:GoInt64 = _fr._physicalRemaining();
                        if (_got != _tf._wantPCnt) {
                            _t.errorf(((("test %d.%d, physicalRemaining() = %d, want %d" : GoString))), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_got), Go.toInterface(_tf._wantPCnt));
                        };
                    };
                } else {
                    var _tf:T_testFnc_testFileReader_3 = _tf == null ? null : _tf.__underlying__();
                    _t.fatalf(((("test %d.%d, unknown test operation: %T" : GoString))), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_tf));
                };
            };
        };
    }
function _hasNUL(_s:GoString):Bool {
        return stdgo.strings.Strings.contains(_s, (((haxe.io.Bytes.ofHex("00") : GoString))));
    }
function _isASCII(_s:GoString):Bool {
        for (_0 => _c in _s) {
            if ((_c >= ((128 : GoInt32))) || (_c == ((0 : GoInt32)))) {
                return false;
            };
        };
        return true;
    }
function _toASCII(_s:GoString):GoString {
        if (_isASCII(_s)) {
            return _s;
        };
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__((((_s != null ? _s.length : ((0 : GoInt))) : GoInt)).toBasic());
        for (_0 => _c in _s) {
            if ((_c < ((128 : GoInt32))) && (_c != ((0 : GoInt32)))) {
                _b = (_b != null ? _b.__append__(((_c : GoByte))) : new Slice<GoUInt8>(((_c : GoByte))));
            };
        };
        return ((_b : GoString));
    }
function _fitsInBase256(_n:GoInt, _x:GoInt64):Bool {
        var _binBits:GoUInt = (((_n - ((1 : GoInt))) : GoUInt)) * ((8 : GoUInt));
        return (_n >= ((9 : GoInt))) || ((_x >= (((-1 : GoInt64)) << _binBits)) && (_x < (((1 : GoInt64)) << _binBits)));
    }
function _fitsInOctal(_n:GoInt, _x:GoInt64):Bool {
        var _octBits:GoUInt = (((_n - ((1 : GoInt))) : GoUInt)) * ((3 : GoUInt));
        return (_x >= ((0 : GoInt64))) && ((_n >= ((22 : GoInt))) || (_x < (((1 : GoInt64)) << _octBits)));
    }
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
function testFitsInBase256(_t:stdgo.testing.Testing.T_):Void {
        var _vectors:Slice<T__struct_9> = ((new Slice<T__struct_9>(
((new T__struct_9(((1 : GoInt64)), ((8 : GoInt)), true) : T__struct_9)),
((new T__struct_9(((0 : GoInt64)), ((8 : GoInt)), true) : T__struct_9)),
((new T__struct_9(((-1 : GoInt64)), ((8 : GoInt)), true) : T__struct_9)),
((new T__struct_9((("72057594037927936" : GoInt64)), ((8 : GoInt)), false) : T__struct_9)),
((new T__struct_9((("72057594037927935" : GoInt64)), ((8 : GoInt)), true) : T__struct_9)),
((new T__struct_9((("-72057594037927936" : GoInt64)), ((8 : GoInt)), true) : T__struct_9)),
((new T__struct_9((("-72057594037927937" : GoInt64)), ((8 : GoInt)), false) : T__struct_9)),
((new T__struct_9(((121654 : GoInt64)), ((8 : GoInt)), true) : T__struct_9)),
((new T__struct_9(((-9849849 : GoInt64)), ((8 : GoInt)), true) : T__struct_9)),
((new T__struct_9((("9223372036854775807" : GoInt64)), ((9 : GoInt)), true) : T__struct_9)),
((new T__struct_9(((0 : GoInt64)), ((9 : GoInt)), true) : T__struct_9)),
((new T__struct_9((("-9223372036854775808" : GoInt64)), ((9 : GoInt)), true) : T__struct_9)),
((new T__struct_9((("9223372036854775807" : GoInt64)), ((12 : GoInt)), true) : T__struct_9)),
((new T__struct_9(((0 : GoInt64)), ((12 : GoInt)), true) : T__struct_9)),
((new T__struct_9((("-9223372036854775808" : GoInt64)), ((12 : GoInt)), true) : T__struct_9))) : Slice<T__struct_9>));
        for (_0 => _v in _vectors) {
            var _ok:Bool = _fitsInBase256(_v._width, _v._in);
            if (_ok != _v._ok) {
                _t.errorf(((("fitsInBase256(%d, %d): got %v, want %v" : GoString))), Go.toInterface(_v._in), Go.toInterface(_v._width), Go.toInterface(_ok), Go.toInterface(_v._ok));
            };
        };
    }
function testParseNumeric(_t:stdgo.testing.Testing.T_):Void {
        var _vectors:Slice<T__struct_10> = ((new Slice<T__struct_10>(
((new T__struct_10(((("" : GoString))), ((0 : GoInt64)), true) : T__struct_10)),
((new T__struct_10((((haxe.io.Bytes.ofHex("80") : GoString))), ((0 : GoInt64)), true) : T__struct_10)),
((new T__struct_10((((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((0 : GoInt64)), true) : T__struct_10)),
((new T__struct_10((((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((0 : GoInt64)), true) : T__struct_10)),
((new T__struct_10((((haxe.io.Bytes.ofHex("bf") : GoString))), ((63 : GoInt64)), true) : T__struct_10)),
((new T__struct_10((((haxe.io.Bytes.ofHex("bf") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))), ((16383 : GoInt64)), true) : T__struct_10)),
((new T__struct_10((((haxe.io.Bytes.ofHex("bf") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))), ((4194303 : GoInt64)), true) : T__struct_10)),
((new T__struct_10((((haxe.io.Bytes.ofHex("ff") : GoString))), ((-1 : GoInt64)), true) : T__struct_10)),
((new T__struct_10((((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))), ((-1 : GoInt64)), true) : T__struct_10)),
((new T__struct_10((((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))), ((-1 : GoInt64)), true) : T__struct_10)),
((new T__struct_10((((haxe.io.Bytes.ofHex("c0") : GoString))), ((-64 : GoInt64)), true) : T__struct_10)),
((new T__struct_10((((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((-16384 : GoInt64)), true) : T__struct_10)),
((new T__struct_10((((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((-4194304 : GoInt64)), true) : T__struct_10)),
((new T__struct_10((((haxe.io.Bytes.ofHex("87") : GoString)) + ((haxe.io.Bytes.ofHex("76") : GoString)) + ((haxe.io.Bytes.ofHex("a2") : GoString)) + ((haxe.io.Bytes.ofHex("22") : GoString)) + ((haxe.io.Bytes.ofHex("eb") : GoString)) + ((haxe.io.Bytes.ofHex("8a") : GoString)) + ((haxe.io.Bytes.ofHex("72") : GoString)) + ((haxe.io.Bytes.ofHex("61") : GoString))), (("537795476381659745" : GoInt64)), true) : T__struct_10)),
((new T__struct_10((((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("07") : GoString)) + ((haxe.io.Bytes.ofHex("76") : GoString)) + ((haxe.io.Bytes.ofHex("a2") : GoString)) + ((haxe.io.Bytes.ofHex("22") : GoString)) + ((haxe.io.Bytes.ofHex("eb") : GoString)) + ((haxe.io.Bytes.ofHex("8a") : GoString)) + ((haxe.io.Bytes.ofHex("72") : GoString)) + ((haxe.io.Bytes.ofHex("61") : GoString))), (("537795476381659745" : GoInt64)), true) : T__struct_10)),
((new T__struct_10((((haxe.io.Bytes.ofHex("f7") : GoString)) + ((haxe.io.Bytes.ofHex("76") : GoString)) + ((haxe.io.Bytes.ofHex("a2") : GoString)) + ((haxe.io.Bytes.ofHex("22") : GoString)) + ((haxe.io.Bytes.ofHex("eb") : GoString)) + ((haxe.io.Bytes.ofHex("8a") : GoString)) + ((haxe.io.Bytes.ofHex("72") : GoString)) + ((haxe.io.Bytes.ofHex("61") : GoString))), (("-615126028225187231" : GoInt64)), true) : T__struct_10)),
((new T__struct_10((((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("f7") : GoString)) + ((haxe.io.Bytes.ofHex("76") : GoString)) + ((haxe.io.Bytes.ofHex("a2") : GoString)) + ((haxe.io.Bytes.ofHex("22") : GoString)) + ((haxe.io.Bytes.ofHex("eb") : GoString)) + ((haxe.io.Bytes.ofHex("8a") : GoString)) + ((haxe.io.Bytes.ofHex("72") : GoString)) + ((haxe.io.Bytes.ofHex("61") : GoString))), (("-615126028225187231" : GoInt64)), true) : T__struct_10)),
((new T__struct_10((((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("7f") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))), (("9223372036854775807" : GoInt64)), true) : T__struct_10)),
((new T__struct_10((((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((0 : GoInt64)), false) : T__struct_10)),
((new T__struct_10((((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), (("-9223372036854775808" : GoInt64)), true) : T__struct_10)),
((new T__struct_10((((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("7f") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))), ((0 : GoInt64)), false) : T__struct_10)),
((new T__struct_10((((haxe.io.Bytes.ofHex("f5") : GoString)) + ((haxe.io.Bytes.ofHex("ec") : GoString)) + ((haxe.io.Bytes.ofHex("d1") : GoString)) + ((haxe.io.Bytes.ofHex("c7") : GoString)) + ((haxe.io.Bytes.ofHex("7e") : GoString)) + ((haxe.io.Bytes.ofHex("5f") : GoString)) + ((haxe.io.Bytes.ofHex("26") : GoString)) + ((haxe.io.Bytes.ofHex("48") : GoString)) + ((haxe.io.Bytes.ofHex("81") : GoString)) + ((haxe.io.Bytes.ofHex("9f") : GoString)) + ((haxe.io.Bytes.ofHex("8f") : GoString)) + ((haxe.io.Bytes.ofHex("9b") : GoString))), ((0 : GoInt64)), false) : T__struct_10)),
((new T__struct_10(((("0000000" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((0 : GoInt64)), true) : T__struct_10)),
((new T__struct_10((((" " : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("00000" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((0 : GoInt64)), true) : T__struct_10)),
((new T__struct_10((((" " : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("00003" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((3 : GoInt64)), true) : T__struct_10)),
((new T__struct_10(((("00000000227" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((151 : GoInt64)), true) : T__struct_10)),
((new T__struct_10(((("032033" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((" " : GoString))), ((13339 : GoInt64)), true) : T__struct_10)),
((new T__struct_10(((("320330" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((" " : GoString))), ((106712 : GoInt64)), true) : T__struct_10)),
((new T__struct_10(((("0000660" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((" " : GoString))), ((432 : GoInt64)), true) : T__struct_10)),
((new T__struct_10((((haxe.io.Bytes.ofHex("00") : GoString)) + ((" 0000660" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((" " : GoString))), ((432 : GoInt64)), true) : T__struct_10)),
((new T__struct_10(((("0123456789abcdef" : GoString))), ((0 : GoInt64)), false) : T__struct_10)),
((new T__struct_10(((("0123456789" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("abcdef" : GoString))), ((0 : GoInt64)), false) : T__struct_10)),
((new T__struct_10(((("01234567" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("89abcdef" : GoString))), ((342391 : GoInt64)), true) : T__struct_10)),
((new T__struct_10(((("0123" : GoString)) + ((haxe.io.Bytes.ofHex("7e") : GoString)) + ((haxe.io.Bytes.ofHex("5f") : GoString)) + ((haxe.io.Bytes.ofHex("26") : GoString)) + (("4123" : GoString))), ((0 : GoInt64)), false) : T__struct_10))) : Slice<T__struct_10>));
        for (_0 => _v in _vectors) {
            var _p:T_parser = new T_parser();
            var _got:GoInt64 = _p._parseNumeric(((_v._in : Slice<GoByte>)));
            var _ok:Bool = (_p._err == null);
            if (_ok != _v._ok) {
                if (_v._ok) {
                    _t.errorf(((("parseNumeric(%q): got parsing failure, want success" : GoString))), Go.toInterface(_v._in));
                } else {
                    _t.errorf(((("parseNumeric(%q): got parsing success, want failure" : GoString))), Go.toInterface(_v._in));
                };
            };
            if (_ok && (_got != _v._want)) {
                _t.errorf(((("parseNumeric(%q): got %d, want %d" : GoString))), Go.toInterface(_v._in), Go.toInterface(_got), Go.toInterface(_v._want));
            };
        };
    }
function testFormatNumeric(_t:stdgo.testing.Testing.T_):Void {
        var _vectors:Slice<T__struct_10> = ((new Slice<T__struct_10>(
((new T__struct_10(((0 : GoInt64)), ((("0" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), true) : T__struct_10)),
((new T__struct_10(((7 : GoInt64)), ((("7" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), true) : T__struct_10)),
((new T__struct_10(((8 : GoInt64)), (((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("08") : GoString))), true) : T__struct_10)),
((new T__struct_10(((63 : GoInt64)), ((("77" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), true) : T__struct_10)),
((new T__struct_10(((64 : GoInt64)), (((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("40") : GoString))), true) : T__struct_10)),
((new T__struct_10(((0 : GoInt64)), ((("0000000" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), true) : T__struct_10)),
((new T__struct_10(((83 : GoInt64)), ((("0000123" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), true) : T__struct_10)),
((new T__struct_10(((2054353 : GoInt64)), ((("7654321" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), true) : T__struct_10)),
((new T__struct_10(((2097151 : GoInt64)), ((("7777777" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), true) : T__struct_10)),
((new T__struct_10(((2097152 : GoInt64)), (((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("20") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), true) : T__struct_10)),
((new T__struct_10(((0 : GoInt64)), ((("00000000000" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), true) : T__struct_10)),
((new T__struct_10(((342391 : GoInt64)), ((("00001234567" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), true) : T__struct_10)),
((new T__struct_10((("8414630097" : GoInt64)), ((("76543210321" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), true) : T__struct_10)),
((new T__struct_10(((1402433619 : GoInt64)), ((("12345670123" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), true) : T__struct_10)),
((new T__struct_10((("8589934591" : GoInt64)), ((("77777777777" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), true) : T__struct_10)),
((new T__struct_10((("8589934592" : GoInt64)), (((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), true) : T__struct_10)),
((new T__struct_10((("9223372036854775807" : GoInt64)), ((("777777777777777777777" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), true) : T__struct_10)),
((new T__struct_10(((-1 : GoInt64)), (((haxe.io.Bytes.ofHex("ff") : GoString))), true) : T__struct_10)),
((new T__struct_10(((-1 : GoInt64)), (((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))), true) : T__struct_10)),
((new T__struct_10(((-1 : GoInt64)), (((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))), true) : T__struct_10)),
((new T__struct_10(((1 : GoInt64)), ((("0" : GoString))), false) : T__struct_10)),
((new T__struct_10(((255 : GoInt64)), (((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))), true) : T__struct_10)),
((new T__struct_10(((256 : GoInt64)), ((("0" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), false) : T__struct_10)),
((new T__struct_10(((65535 : GoInt64)), (((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))), true) : T__struct_10)),
((new T__struct_10(((65536 : GoInt64)), ((("00" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), false) : T__struct_10)),
((new T__struct_10(((-1 : GoInt64)), (((haxe.io.Bytes.ofHex("ff") : GoString))), true) : T__struct_10)),
((new T__struct_10(((-2 : GoInt64)), ((("0" : GoString))), false) : T__struct_10)),
((new T__struct_10(((-256 : GoInt64)), (((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), true) : T__struct_10)),
((new T__struct_10(((-257 : GoInt64)), ((("0" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), false) : T__struct_10)),
((new T__struct_10(((-65536 : GoInt64)), (((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), true) : T__struct_10)),
((new T__struct_10(((-65537 : GoInt64)), ((("00" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), false) : T__struct_10)),
((new T__struct_10((("537795476381659745" : GoInt64)), ((("0000000" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), false) : T__struct_10)),
((new T__struct_10((("537795476381659745" : GoInt64)), (((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("07") : GoString)) + ((haxe.io.Bytes.ofHex("76") : GoString)) + ((haxe.io.Bytes.ofHex("a2") : GoString)) + ((haxe.io.Bytes.ofHex("22") : GoString)) + ((haxe.io.Bytes.ofHex("eb") : GoString)) + ((haxe.io.Bytes.ofHex("8a") : GoString)) + ((haxe.io.Bytes.ofHex("72") : GoString)) + ((haxe.io.Bytes.ofHex("61") : GoString))), true) : T__struct_10)),
((new T__struct_10((("-615126028225187231" : GoInt64)), ((("0000000" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), false) : T__struct_10)),
((new T__struct_10((("-615126028225187231" : GoInt64)), (((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("f7") : GoString)) + ((haxe.io.Bytes.ofHex("76") : GoString)) + ((haxe.io.Bytes.ofHex("a2") : GoString)) + ((haxe.io.Bytes.ofHex("22") : GoString)) + ((haxe.io.Bytes.ofHex("eb") : GoString)) + ((haxe.io.Bytes.ofHex("8a") : GoString)) + ((haxe.io.Bytes.ofHex("72") : GoString)) + ((haxe.io.Bytes.ofHex("61") : GoString))), true) : T__struct_10)),
((new T__struct_10((("9223372036854775807" : GoInt64)), ((("0000000" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), false) : T__struct_10)),
((new T__struct_10((("9223372036854775807" : GoInt64)), (((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("7f") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))), true) : T__struct_10)),
((new T__struct_10((("-9223372036854775808" : GoInt64)), ((("0000000" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), false) : T__struct_10)),
((new T__struct_10((("-9223372036854775808" : GoInt64)), (((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), true) : T__struct_10)),
((new T__struct_10((("9223372036854775807" : GoInt64)), (((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("7f") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))), true) : T__struct_10)),
((new T__struct_10((("-9223372036854775808" : GoInt64)), (((haxe.io.Bytes.ofHex("ff") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), true) : T__struct_10))) : Slice<T__struct_10>));
        for (_0 => _v in _vectors) {
            var _f:T_formatter = new T_formatter();
            var _got:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_v._want != null ? _v._want.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            _f._formatNumeric(_got, _v._in);
            var _ok:Bool = (_f._err == null);
            if (_ok != _v._ok) {
                if (_v._ok) {
                    _t.errorf(((("formatNumeric(%d): got formatting failure, want success" : GoString))), Go.toInterface(_v._in));
                } else {
                    _t.errorf(((("formatNumeric(%d): got formatting success, want failure" : GoString))), Go.toInterface(_v._in));
                };
            };
            if (((_got : GoString)) != _v._want) {
                _t.errorf(((("formatNumeric(%d): got %q, want %q" : GoString))), Go.toInterface(_v._in), Go.toInterface(_got), Go.toInterface(_v._want));
            };
        };
    }
function testFitsInOctal(_t:stdgo.testing.Testing.T_):Void {
        var _vectors:Slice<T__struct_11> = ((new Slice<T__struct_11>(
((new T__struct_11(((-1 : GoInt64)), ((1 : GoInt)), false) : T__struct_11)),
((new T__struct_11(((-1 : GoInt64)), ((2 : GoInt)), false) : T__struct_11)),
((new T__struct_11(((-1 : GoInt64)), ((3 : GoInt)), false) : T__struct_11)),
((new T__struct_11(((0 : GoInt64)), ((1 : GoInt)), true) : T__struct_11)),
((new T__struct_11(((1 : GoInt64)), ((1 : GoInt)), false) : T__struct_11)),
((new T__struct_11(((0 : GoInt64)), ((2 : GoInt)), true) : T__struct_11)),
((new T__struct_11(((7 : GoInt64)), ((2 : GoInt)), true) : T__struct_11)),
((new T__struct_11(((8 : GoInt64)), ((2 : GoInt)), false) : T__struct_11)),
((new T__struct_11(((0 : GoInt64)), ((4 : GoInt)), true) : T__struct_11)),
((new T__struct_11(((511 : GoInt64)), ((4 : GoInt)), true) : T__struct_11)),
((new T__struct_11(((512 : GoInt64)), ((4 : GoInt)), false) : T__struct_11)),
((new T__struct_11(((0 : GoInt64)), ((8 : GoInt)), true) : T__struct_11)),
((new T__struct_11(((2097151 : GoInt64)), ((8 : GoInt)), true) : T__struct_11)),
((new T__struct_11(((2097152 : GoInt64)), ((8 : GoInt)), false) : T__struct_11)),
((new T__struct_11(((0 : GoInt64)), ((12 : GoInt)), true) : T__struct_11)),
((new T__struct_11((("8589934591" : GoInt64)), ((12 : GoInt)), true) : T__struct_11)),
((new T__struct_11((("8589934592" : GoInt64)), ((12 : GoInt)), false) : T__struct_11)),
((new T__struct_11((("9223372036854775807" : GoInt64)), ((22 : GoInt)), true) : T__struct_11)),
((new T__struct_11(((1402433619 : GoInt64)), ((12 : GoInt)), true) : T__struct_11)),
((new T__struct_11(((452724 : GoInt64)), ((12 : GoInt)), true) : T__struct_11)),
((new T__struct_11(((-1402433619 : GoInt64)), ((12 : GoInt)), false) : T__struct_11)),
((new T__struct_11(((-452724 : GoInt64)), ((12 : GoInt)), false) : T__struct_11)),
((new T__struct_11(((-1564164 : GoInt64)), ((30 : GoInt)), false) : T__struct_11))) : Slice<T__struct_11>));
        for (_0 => _v in _vectors) {
            var _ok:Bool = _fitsInOctal(_v._width, _v._input);
            if (_ok != _v._ok) {
                _t.errorf(((("checkOctal(%d, %d): got %v, want %v" : GoString))), Go.toInterface(_v._input), Go.toInterface(_v._width), Go.toInterface(_ok), Go.toInterface(_v._ok));
            };
        };
    }
function testParsePAXTime(_t:stdgo.testing.Testing.T_):Void {
        var _vectors:Slice<T__struct_12> = ((new Slice<T__struct_12>(
((new T__struct_12(((("1350244992.023960108" : GoString))), (stdgo.time.Time.unix(((1350244992 : GoInt64)), ((23960108 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1350244992 : GoInt64)), ((23960108 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("1350244992.02396010" : GoString))), (stdgo.time.Time.unix(((1350244992 : GoInt64)), ((23960100 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1350244992 : GoInt64)), ((23960100 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("1350244992.0239601089" : GoString))), (stdgo.time.Time.unix(((1350244992 : GoInt64)), ((23960108 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1350244992 : GoInt64)), ((23960108 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("1350244992.3" : GoString))), (stdgo.time.Time.unix(((1350244992 : GoInt64)), ((300000000 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1350244992 : GoInt64)), ((300000000 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("1350244992" : GoString))), (stdgo.time.Time.unix(((1350244992 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1350244992 : GoInt64)), ((0 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("-1.000000001" : GoString))), (stdgo.time.Time.unix(((-1 : GoInt64)), ((-1 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-1 : GoInt64)), ((-1 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("-1.000001" : GoString))), (stdgo.time.Time.unix(((-1 : GoInt64)), ((-1000 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-1 : GoInt64)), ((-1000 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("-1.001000" : GoString))), (stdgo.time.Time.unix(((-1 : GoInt64)), ((-1000000 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-1 : GoInt64)), ((-1000000 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("-1" : GoString))), (stdgo.time.Time.unix(((-1 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-1 : GoInt64)), ((0 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("-1.999000" : GoString))), (stdgo.time.Time.unix(((-1 : GoInt64)), ((-999000000 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-1 : GoInt64)), ((-999000000 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("-1.999999" : GoString))), (stdgo.time.Time.unix(((-1 : GoInt64)), ((-999999000 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-1 : GoInt64)), ((-999999000 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("-1.999999999" : GoString))), (stdgo.time.Time.unix(((-1 : GoInt64)), ((-999999999 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-1 : GoInt64)), ((-999999999 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("0.000000001" : GoString))), (stdgo.time.Time.unix(((0 : GoInt64)), ((1 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((1 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("0.000001" : GoString))), (stdgo.time.Time.unix(((0 : GoInt64)), ((1000 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((1000 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("0.001000" : GoString))), (stdgo.time.Time.unix(((0 : GoInt64)), ((1000000 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((1000000 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("0" : GoString))), (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("0.999000" : GoString))), (stdgo.time.Time.unix(((0 : GoInt64)), ((999000000 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((999000000 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("0.999999" : GoString))), (stdgo.time.Time.unix(((0 : GoInt64)), ((999999000 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((999999000 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("0.999999999" : GoString))), (stdgo.time.Time.unix(((0 : GoInt64)), ((999999999 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((999999999 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("1.000000001" : GoString))), (stdgo.time.Time.unix(((1 : GoInt64)), ((1 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1 : GoInt64)), ((1 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("1.000001" : GoString))), (stdgo.time.Time.unix(((1 : GoInt64)), ((1000 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1 : GoInt64)), ((1000 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("1.001000" : GoString))), (stdgo.time.Time.unix(((1 : GoInt64)), ((1000000 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1 : GoInt64)), ((1000000 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("1" : GoString))), (stdgo.time.Time.unix(((1 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1 : GoInt64)), ((0 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("1.999000" : GoString))), (stdgo.time.Time.unix(((1 : GoInt64)), ((999000000 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1 : GoInt64)), ((999000000 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("1.999999" : GoString))), (stdgo.time.Time.unix(((1 : GoInt64)), ((999999000 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1 : GoInt64)), ((999999000 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("1.999999999" : GoString))), (stdgo.time.Time.unix(((1 : GoInt64)), ((999999999 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1 : GoInt64)), ((999999999 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("-1350244992.023960108" : GoString))), (stdgo.time.Time.unix(((-1350244992 : GoInt64)), ((-23960108 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-1350244992 : GoInt64)), ((-23960108 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("-1350244992.02396010" : GoString))), (stdgo.time.Time.unix(((-1350244992 : GoInt64)), ((-23960100 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-1350244992 : GoInt64)), ((-23960100 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("-1350244992.0239601089" : GoString))), (stdgo.time.Time.unix(((-1350244992 : GoInt64)), ((-23960108 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-1350244992 : GoInt64)), ((-23960108 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("-1350244992.3" : GoString))), (stdgo.time.Time.unix(((-1350244992 : GoInt64)), ((-300000000 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-1350244992 : GoInt64)), ((-300000000 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("-1350244992" : GoString))), (stdgo.time.Time.unix(((-1350244992 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-1350244992 : GoInt64)), ((0 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("" : GoString))), ((new stdgo.time.Time.Time() : stdgo.time.Time.Time)), false) : T__struct_12)),
((new T__struct_12(((("0" : GoString))), (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("1." : GoString))), (stdgo.time.Time.unix(((1 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1 : GoInt64)), ((0 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("0.0" : GoString))), (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12((((".5" : GoString))), ((new stdgo.time.Time.Time() : stdgo.time.Time.Time)), false) : T__struct_12)),
((new T__struct_12(((("-1.3" : GoString))), (stdgo.time.Time.unix(((-1 : GoInt64)), ((-300000000 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-1 : GoInt64)), ((-300000000 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("-1.0" : GoString))), (stdgo.time.Time.unix(((-1 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-1 : GoInt64)), ((0 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("-0.0" : GoString))), (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("-0.1" : GoString))), (stdgo.time.Time.unix(((0 : GoInt64)), ((-100000000 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((-100000000 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("-0.01" : GoString))), (stdgo.time.Time.unix(((0 : GoInt64)), ((-10000000 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((-10000000 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("-0.99" : GoString))), (stdgo.time.Time.unix(((0 : GoInt64)), ((-990000000 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((-990000000 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("-0.98" : GoString))), (stdgo.time.Time.unix(((0 : GoInt64)), ((-980000000 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((-980000000 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("-1.1" : GoString))), (stdgo.time.Time.unix(((-1 : GoInt64)), ((-100000000 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-1 : GoInt64)), ((-100000000 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("-1.01" : GoString))), (stdgo.time.Time.unix(((-1 : GoInt64)), ((-10000000 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-1 : GoInt64)), ((-10000000 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("-2.99" : GoString))), (stdgo.time.Time.unix(((-2 : GoInt64)), ((-990000000 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-2 : GoInt64)), ((-990000000 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("-5.98" : GoString))), (stdgo.time.Time.unix(((-5 : GoInt64)), ((-980000000 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-5 : GoInt64)), ((-980000000 : GoInt64))).__copy__()), true) : T__struct_12)),
((new T__struct_12(((("-" : GoString))), ((new stdgo.time.Time.Time() : stdgo.time.Time.Time)), false) : T__struct_12)),
((new T__struct_12(((("+" : GoString))), ((new stdgo.time.Time.Time() : stdgo.time.Time.Time)), false) : T__struct_12)),
((new T__struct_12(((("-1.-1" : GoString))), ((new stdgo.time.Time.Time() : stdgo.time.Time.Time)), false) : T__struct_12)),
((new T__struct_12(((("99999999999999999999999999999999999999999999999" : GoString))), ((new stdgo.time.Time.Time() : stdgo.time.Time.Time)), false) : T__struct_12)),
((new T__struct_12(((("0.123456789abcdef" : GoString))), ((new stdgo.time.Time.Time() : stdgo.time.Time.Time)), false) : T__struct_12)),
((new T__struct_12(((("foo" : GoString))), ((new stdgo.time.Time.Time() : stdgo.time.Time.Time)), false) : T__struct_12)),
((new T__struct_12((((haxe.io.Bytes.ofHex("00") : GoString))), ((new stdgo.time.Time.Time() : stdgo.time.Time.Time)), false) : T__struct_12)),
((new T__struct_12(((("aaaaaaaaaa.aaaaaaaaaa" : GoString))), ((new stdgo.time.Time.Time() : stdgo.time.Time.Time)), false) : T__struct_12)),
((new T__struct_12(((("98765﹒43210" : GoString))), ((new stdgo.time.Time.Time() : stdgo.time.Time.Time)), false) : T__struct_12))) : Slice<T__struct_12>));
        for (_0 => _v in _vectors) {
            var __tmp__ = _parsePAXTime(_v._in), _ts:stdgo.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            var _ok:Bool = (_err == null);
            if (_v._ok != _ok) {
                if (_v._ok) {
                    _t.errorf(((("parsePAXTime(%q): got parsing failure, want success" : GoString))), Go.toInterface(_v._in));
                } else {
                    _t.errorf(((("parsePAXTime(%q): got parsing success, want failure" : GoString))), Go.toInterface(_v._in));
                };
            };
            if (_ok && !_ts.equal((_v._want == null ? null : _v._want.__copy__()))) {
                _t.errorf(((("parsePAXTime(%q): got (%ds %dns), want (%ds %dns)" : GoString))), Go.toInterface(_v._in), Go.toInterface(_ts.unix()), Go.toInterface(_ts.nanosecond()), Go.toInterface(_v._want.unix()), Go.toInterface(_v._want.nanosecond()));
            };
        };
    }
function testFormatPAXTime(_t:stdgo.testing.Testing.T_):Void {
        var _vectors:Slice<T__struct_13> = ((new Slice<T__struct_13>(
((new T__struct_13(((1350244992 : GoInt64)), ((0 : GoInt64)), ((("1350244992" : GoString)))) : T__struct_13)),
((new T__struct_13(((1350244992 : GoInt64)), ((300000000 : GoInt64)), ((("1350244992.3" : GoString)))) : T__struct_13)),
((new T__struct_13(((1350244992 : GoInt64)), ((23960100 : GoInt64)), ((("1350244992.0239601" : GoString)))) : T__struct_13)),
((new T__struct_13(((1350244992 : GoInt64)), ((23960108 : GoInt64)), ((("1350244992.023960108" : GoString)))) : T__struct_13)),
((new T__struct_13(((1 : GoInt64)), ((999999999 : GoInt64)), ((("1.999999999" : GoString)))) : T__struct_13)),
((new T__struct_13(((1 : GoInt64)), ((999999000 : GoInt64)), ((("1.999999" : GoString)))) : T__struct_13)),
((new T__struct_13(((1 : GoInt64)), ((999000000 : GoInt64)), ((("1.999" : GoString)))) : T__struct_13)),
((new T__struct_13(((1 : GoInt64)), ((0 : GoInt64)), ((("1" : GoString)))) : T__struct_13)),
((new T__struct_13(((1 : GoInt64)), ((1000000 : GoInt64)), ((("1.001" : GoString)))) : T__struct_13)),
((new T__struct_13(((1 : GoInt64)), ((1000 : GoInt64)), ((("1.000001" : GoString)))) : T__struct_13)),
((new T__struct_13(((1 : GoInt64)), ((1 : GoInt64)), ((("1.000000001" : GoString)))) : T__struct_13)),
((new T__struct_13(((0 : GoInt64)), ((999999999 : GoInt64)), ((("0.999999999" : GoString)))) : T__struct_13)),
((new T__struct_13(((0 : GoInt64)), ((999999000 : GoInt64)), ((("0.999999" : GoString)))) : T__struct_13)),
((new T__struct_13(((0 : GoInt64)), ((999000000 : GoInt64)), ((("0.999" : GoString)))) : T__struct_13)),
((new T__struct_13(((0 : GoInt64)), ((0 : GoInt64)), ((("0" : GoString)))) : T__struct_13)),
((new T__struct_13(((0 : GoInt64)), ((1000000 : GoInt64)), ((("0.001" : GoString)))) : T__struct_13)),
((new T__struct_13(((0 : GoInt64)), ((1000 : GoInt64)), ((("0.000001" : GoString)))) : T__struct_13)),
((new T__struct_13(((0 : GoInt64)), ((1 : GoInt64)), ((("0.000000001" : GoString)))) : T__struct_13)),
((new T__struct_13(((-1 : GoInt64)), ((-999999999 : GoInt64)), ((("-1.999999999" : GoString)))) : T__struct_13)),
((new T__struct_13(((-1 : GoInt64)), ((-999999000 : GoInt64)), ((("-1.999999" : GoString)))) : T__struct_13)),
((new T__struct_13(((-1 : GoInt64)), ((-999000000 : GoInt64)), ((("-1.999" : GoString)))) : T__struct_13)),
((new T__struct_13(((-1 : GoInt64)), ((0 : GoInt64)), ((("-1" : GoString)))) : T__struct_13)),
((new T__struct_13(((-1 : GoInt64)), ((-1000000 : GoInt64)), ((("-1.001" : GoString)))) : T__struct_13)),
((new T__struct_13(((-1 : GoInt64)), ((-1000 : GoInt64)), ((("-1.000001" : GoString)))) : T__struct_13)),
((new T__struct_13(((-1 : GoInt64)), ((-1 : GoInt64)), ((("-1.000000001" : GoString)))) : T__struct_13)),
((new T__struct_13(((-1350244992 : GoInt64)), ((0 : GoInt64)), ((("-1350244992" : GoString)))) : T__struct_13)),
((new T__struct_13(((-1350244992 : GoInt64)), ((-300000000 : GoInt64)), ((("-1350244992.3" : GoString)))) : T__struct_13)),
((new T__struct_13(((-1350244992 : GoInt64)), ((-23960100 : GoInt64)), ((("-1350244992.0239601" : GoString)))) : T__struct_13)),
((new T__struct_13(((-1350244992 : GoInt64)), ((-23960108 : GoInt64)), ((("-1350244992.023960108" : GoString)))) : T__struct_13))) : Slice<T__struct_13>));
        for (_0 => _v in _vectors) {
            var _got:GoString = _formatPAXTime((stdgo.time.Time.unix(_v._sec, _v._nsec) == null ? null : stdgo.time.Time.unix(_v._sec, _v._nsec).__copy__()));
            if (_got != _v._want) {
                _t.errorf(((("formatPAXTime(%ds, %dns): got %q, want %q" : GoString))), Go.toInterface(_v._sec), Go.toInterface(_v._nsec), Go.toInterface(_got), Go.toInterface(_v._want));
            };
        };
    }
function testParsePAXRecord(_t:stdgo.testing.Testing.T_):Void {
        var _medName:GoString = stdgo.strings.Strings.repeat(((("CD" : GoString))), ((50 : GoInt)));
        var _longName:GoString = stdgo.strings.Strings.repeat(((("AB" : GoString))), ((100 : GoInt)));
        var _vectors:Slice<T__struct_14> = ((new Slice<T__struct_14>(
((new T__struct_14(((("6 k=v\n\n" : GoString))), ((("\n" : GoString))), ((("k" : GoString))), ((("v" : GoString))), true) : T__struct_14)),
((new T__struct_14(((("19 path=/etc/hosts\n" : GoString))), ((("" : GoString))), ((("path" : GoString))), ((("/etc/hosts" : GoString))), true) : T__struct_14)),
((new T__struct_14((((("210 path=" : GoString))) + _longName) + ((("\nabc" : GoString))), ((("abc" : GoString))), ((("path" : GoString))), _longName, true) : T__struct_14)),
((new T__struct_14((((("110 path=" : GoString))) + _medName) + ((("\n" : GoString))), ((("" : GoString))), ((("path" : GoString))), _medName, true) : T__struct_14)),
((new T__struct_14(((("9 foo=ba\n" : GoString))), ((("" : GoString))), ((("foo" : GoString))), ((("ba" : GoString))), true) : T__struct_14)),
((new T__struct_14(((("11 foo=bar\n" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), (((haxe.io.Bytes.ofHex("00") : GoString))), ((("foo" : GoString))), ((("bar" : GoString))), true) : T__struct_14)),
((new T__struct_14(((("18 foo=b=\nar=\n==" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("\n" : GoString))), ((("" : GoString))), ((("foo" : GoString))), ((("b=\nar=\n==" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), true) : T__struct_14)),
((new T__struct_14(((("27 foo=hello9 foo=ba\nworld\n" : GoString))), ((("" : GoString))), ((("foo" : GoString))), ((("hello9 foo=ba\nworld" : GoString))), true) : T__struct_14)),
((new T__struct_14(((("27 ☺☻☹=日a本b語ç\nmeow mix" : GoString))), ((("meow mix" : GoString))), ((("☺☻☹" : GoString))), ((("日a本b語ç" : GoString))), true) : T__struct_14)),
((new T__struct_14(((("17 " : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("hello=" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("world\n" : GoString))), ((("17 " : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("hello=" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("world\n" : GoString))), ((("" : GoString))), ((("" : GoString))), false) : T__struct_14)),
((new T__struct_14(((("1 k=1\n" : GoString))), ((("1 k=1\n" : GoString))), ((("" : GoString))), ((("" : GoString))), false) : T__struct_14)),
((new T__struct_14(((("6 k~1\n" : GoString))), ((("6 k~1\n" : GoString))), ((("" : GoString))), ((("" : GoString))), false) : T__struct_14)),
((new T__struct_14(((("6_k=1\n" : GoString))), ((("6_k=1\n" : GoString))), ((("" : GoString))), ((("" : GoString))), false) : T__struct_14)),
((new T__struct_14(((("6 k=1 " : GoString))), ((("6 k=1 " : GoString))), ((("" : GoString))), ((("" : GoString))), false) : T__struct_14)),
((new T__struct_14(((("632 k=1\n" : GoString))), ((("632 k=1\n" : GoString))), ((("" : GoString))), ((("" : GoString))), false) : T__struct_14)),
((new T__struct_14(((("16 longkeyname=hahaha\n" : GoString))), ((("16 longkeyname=hahaha\n" : GoString))), ((("" : GoString))), ((("" : GoString))), false) : T__struct_14)),
((new T__struct_14(((("3 somelongkey=\n" : GoString))), ((("3 somelongkey=\n" : GoString))), ((("" : GoString))), ((("" : GoString))), false) : T__struct_14)),
((new T__struct_14(((("50 tooshort=\n" : GoString))), ((("50 tooshort=\n" : GoString))), ((("" : GoString))), ((("" : GoString))), false) : T__struct_14)),
((new T__struct_14(((("0000000000000000000000000000000030 mtime=1432668921.098285006\n30 ctime=2147483649.15163319" : GoString))), ((("0000000000000000000000000000000030 mtime=1432668921.098285006\n30 ctime=2147483649.15163319" : GoString))), ((("mtime" : GoString))), ((("1432668921.098285006" : GoString))), false) : T__struct_14)),
((new T__struct_14(((("06 k=v\n" : GoString))), ((("06 k=v\n" : GoString))), ((("" : GoString))), ((("" : GoString))), false) : T__struct_14)),
((new T__struct_14(((("00006 k=v\n" : GoString))), ((("00006 k=v\n" : GoString))), ((("" : GoString))), ((("" : GoString))), false) : T__struct_14)),
((new T__struct_14(((("000006 k=v\n" : GoString))), ((("000006 k=v\n" : GoString))), ((("" : GoString))), ((("" : GoString))), false) : T__struct_14)),
((new T__struct_14(((("000000 k=v\n" : GoString))), ((("000000 k=v\n" : GoString))), ((("" : GoString))), ((("" : GoString))), false) : T__struct_14)),
((new T__struct_14(((("0 k=v\n" : GoString))), ((("0 k=v\n" : GoString))), ((("" : GoString))), ((("" : GoString))), false) : T__struct_14)),
((new T__struct_14(((("+0000005 x=\n" : GoString))), ((("+0000005 x=\n" : GoString))), ((("" : GoString))), ((("" : GoString))), false) : T__struct_14))) : Slice<T__struct_14>));
        for (_0 => _v in _vectors) {
            var __tmp__ = _parsePAXRecord(_v._in), _key:GoString = __tmp__._0, _val:GoString = __tmp__._1, _res:GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
            var _ok:Bool = (_err == null);
            if (_ok != _v._ok) {
                if (_v._ok) {
                    _t.errorf(((("parsePAXRecord(%q): got parsing failure, want success" : GoString))), Go.toInterface(_v._in));
                } else {
                    _t.errorf(((("parsePAXRecord(%q): got parsing success, want failure" : GoString))), Go.toInterface(_v._in));
                };
            };
            if (_v._ok && ((_key != _v._wantKey) || (_val != _v._wantVal))) {
                _t.errorf(((("parsePAXRecord(%q): got (%q: %q), want (%q: %q)" : GoString))), Go.toInterface(_v._in), Go.toInterface(_key), Go.toInterface(_val), Go.toInterface(_v._wantKey), Go.toInterface(_v._wantVal));
            };
            if (_res != _v._wantRes) {
                _t.errorf(((("parsePAXRecord(%q): got residual %q, want residual %q" : GoString))), Go.toInterface(_v._in), Go.toInterface(_res), Go.toInterface(_v._wantRes));
            };
        };
    }
function testFormatPAXRecord(_t:stdgo.testing.Testing.T_):Void {
        var _medName:GoString = stdgo.strings.Strings.repeat(((("CD" : GoString))), ((50 : GoInt)));
        var _longName:GoString = stdgo.strings.Strings.repeat(((("AB" : GoString))), ((100 : GoInt)));
        var _vectors:Slice<T__struct_15> = ((new Slice<T__struct_15>(
((new T__struct_15(((("k" : GoString))), ((("v" : GoString))), ((("6 k=v\n" : GoString))), true) : T__struct_15)),
((new T__struct_15(((("path" : GoString))), ((("/etc/hosts" : GoString))), ((("19 path=/etc/hosts\n" : GoString))), true) : T__struct_15)),
((new T__struct_15(((("path" : GoString))), _longName, (((("210 path=" : GoString))) + _longName) + ((("\n" : GoString))), true) : T__struct_15)),
((new T__struct_15(((("path" : GoString))), _medName, (((("110 path=" : GoString))) + _medName) + ((("\n" : GoString))), true) : T__struct_15)),
((new T__struct_15(((("foo" : GoString))), ((("ba" : GoString))), ((("9 foo=ba\n" : GoString))), true) : T__struct_15)),
((new T__struct_15(((("foo" : GoString))), ((("bar" : GoString))), ((("11 foo=bar\n" : GoString))), true) : T__struct_15)),
((new T__struct_15(((("foo" : GoString))), ((("b=\nar=\n==" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((("18 foo=b=\nar=\n==" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("\n" : GoString))), true) : T__struct_15)),
((new T__struct_15(((("foo" : GoString))), ((("hello9 foo=ba\nworld" : GoString))), ((("27 foo=hello9 foo=ba\nworld\n" : GoString))), true) : T__struct_15)),
((new T__struct_15(((("☺☻☹" : GoString))), ((("日a本b語ç" : GoString))), ((("27 ☺☻☹=日a本b語ç\n" : GoString))), true) : T__struct_15)),
((new T__struct_15(((("xhello" : GoString))), (((haxe.io.Bytes.ofHex("00") : GoString)) + (("world" : GoString))), ((("17 xhello=" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("world\n" : GoString))), true) : T__struct_15)),
((new T__struct_15(((("path" : GoString))), ((("null" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((("" : GoString))), false) : T__struct_15)),
((new T__struct_15(((("null" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((("value" : GoString))), ((("" : GoString))), false) : T__struct_15)),
((new T__struct_15(((("SCHILY.xattr.key" : GoString))), ((("null" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((("26 SCHILY.xattr.key=null" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("\n" : GoString))), true) : T__struct_15))) : Slice<T__struct_15>));
        for (_0 => _v in _vectors) {
            var __tmp__ = _formatPAXRecord(_v._inKey, _v._inVal), _got:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            var _ok:Bool = (_err == null);
            if (_ok != _v._ok) {
                if (_v._ok) {
                    _t.errorf(((("formatPAXRecord(%q, %q): got format failure, want success" : GoString))), Go.toInterface(_v._inKey), Go.toInterface(_v._inVal));
                } else {
                    _t.errorf(((("formatPAXRecord(%q, %q): got format success, want failure" : GoString))), Go.toInterface(_v._inKey), Go.toInterface(_v._inVal));
                };
            };
            if (_got != _v._want) {
                _t.errorf(((("formatPAXRecord(%q, %q): got %q, want %q" : GoString))), Go.toInterface(_v._inKey), Go.toInterface(_v._inVal), Go.toInterface(_got), Go.toInterface(_v._want));
            };
        };
    }
function _equalSparseEntries(_x:Slice<T_sparseEntry>, _y:Slice<T_sparseEntry>):Bool {
        return (((_x != null ? _x.length : ((0 : GoInt))) == ((0 : GoInt))) && ((_y != null ? _y.length : ((0 : GoInt))) == ((0 : GoInt)))) || stdgo.reflect.Reflect.deepEqual(Go.toInterface(_x), Go.toInterface(_y));
    }
function testSparseEntries(_t:stdgo.testing.Testing.T_):Void {
        var _vectors:Slice<T__struct_16> = ((new Slice<T__struct_16>(
((({ _in : ((new Slice<T_sparseEntry>() : Slice<T_sparseEntry>)), _size : ((0 : GoInt64)), _wantValid : true, _wantInverted : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _wantAligned : ((null : Slice<T_sparseEntry>)) } : T__struct_16)) == null ? null : (({ _in : ((new Slice<T_sparseEntry>() : Slice<T_sparseEntry>)), _size : ((0 : GoInt64)), _wantValid : true, _wantInverted : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _wantAligned : ((null : Slice<T_sparseEntry>)) } : T__struct_16)).__copy__()),
((({ _in : ((new Slice<T_sparseEntry>() : Slice<T_sparseEntry>)), _size : ((5000 : GoInt64)), _wantValid : true, _wantInverted : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((5000 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _wantAligned : ((null : Slice<T_sparseEntry>)) } : T__struct_16)) == null ? null : (({ _in : ((new Slice<T_sparseEntry>() : Slice<T_sparseEntry>)), _size : ((5000 : GoInt64)), _wantValid : true, _wantInverted : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((5000 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _wantAligned : ((null : Slice<T_sparseEntry>)) } : T__struct_16)).__copy__()),
((({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((5000 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((5000 : GoInt64)), _wantValid : true, _wantAligned : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((5000 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _wantInverted : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((5000 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)) } : T__struct_16)) == null ? null : (({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((5000 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((5000 : GoInt64)), _wantValid : true, _wantAligned : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((5000 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _wantInverted : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((5000 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)) } : T__struct_16)).__copy__()),
((({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1000 : GoInt64)), ((4000 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((5000 : GoInt64)), _wantValid : true, _wantAligned : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1024 : GoInt64)), ((3976 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _wantInverted : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1000 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5000 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)) } : T__struct_16)) == null ? null : (({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1000 : GoInt64)), ((4000 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((5000 : GoInt64)), _wantValid : true, _wantAligned : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1024 : GoInt64)), ((3976 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _wantInverted : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1000 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5000 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)) } : T__struct_16)).__copy__()),
((({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((3000 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((5000 : GoInt64)), _wantValid : true, _wantAligned : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2560 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _wantInverted : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((3000 : GoInt64)), ((2000 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)) } : T__struct_16)) == null ? null : (({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((3000 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((5000 : GoInt64)), _wantValid : true, _wantAligned : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2560 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _wantInverted : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((3000 : GoInt64)), ((2000 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)) } : T__struct_16)).__copy__()),
((({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((3000 : GoInt64)), ((2000 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((5000 : GoInt64)), _wantValid : true, _wantAligned : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((3072 : GoInt64)), ((1928 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _wantInverted : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((3000 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5000 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)) } : T__struct_16)) == null ? null : (({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((3000 : GoInt64)), ((2000 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((5000 : GoInt64)), _wantValid : true, _wantAligned : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((3072 : GoInt64)), ((1928 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _wantInverted : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((3000 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5000 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)) } : T__struct_16)).__copy__()),
((({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2000 : GoInt64)), ((2000 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((5000 : GoInt64)), _wantValid : true, _wantAligned : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2048 : GoInt64)), ((1536 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _wantInverted : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2000 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((4000 : GoInt64)), ((1000 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)) } : T__struct_16)) == null ? null : (({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2000 : GoInt64)), ((2000 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((5000 : GoInt64)), _wantValid : true, _wantAligned : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2048 : GoInt64)), ((1536 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _wantInverted : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2000 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((4000 : GoInt64)), ((1000 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)) } : T__struct_16)).__copy__()),
((({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2000 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8000 : GoInt64)), ((2000 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((10000 : GoInt64)), _wantValid : true, _wantAligned : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1536 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8192 : GoInt64)), ((1808 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _wantInverted : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2000 : GoInt64)), ((6000 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((10000 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)) } : T__struct_16)) == null ? null : (({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2000 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8000 : GoInt64)), ((2000 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((10000 : GoInt64)), _wantValid : true, _wantAligned : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1536 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8192 : GoInt64)), ((1808 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _wantInverted : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2000 : GoInt64)), ((6000 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((10000 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)) } : T__struct_16)).__copy__()),
((({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2000 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2000 : GoInt64)), ((2000 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((4000 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((4000 : GoInt64)), ((3000 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((7000 : GoInt64)), ((1000 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8000 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8000 : GoInt64)), ((2000 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((10000 : GoInt64)), _wantValid : true, _wantAligned : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1536 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2048 : GoInt64)), ((1536 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((4096 : GoInt64)), ((2560 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((7168 : GoInt64)), ((512 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8192 : GoInt64)), ((1808 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _wantInverted : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((10000 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)) } : T__struct_16)) == null ? null : (({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2000 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2000 : GoInt64)), ((2000 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((4000 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((4000 : GoInt64)), ((3000 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((7000 : GoInt64)), ((1000 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8000 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8000 : GoInt64)), ((2000 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((10000 : GoInt64)), _wantValid : true, _wantAligned : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((1536 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2048 : GoInt64)), ((1536 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((4096 : GoInt64)), ((2560 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((7168 : GoInt64)), ((512 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((8192 : GoInt64)), ((1808 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _wantInverted : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((10000 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)) } : T__struct_16)).__copy__()),
((({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((1000 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2000 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((3000 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((4000 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5000 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((5000 : GoInt64)), _wantValid : true, _wantInverted : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((5000 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _wantAligned : ((null : Slice<T_sparseEntry>)) } : T__struct_16)) == null ? null : (({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((1000 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2000 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((3000 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((4000 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5000 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((5000 : GoInt64)), _wantValid : true, _wantInverted : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((5000 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _wantAligned : ((null : Slice<T_sparseEntry>)) } : T__struct_16)).__copy__()),
((({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((0 : GoInt64)), _wantValid : false, _wantAligned : ((null : Slice<T_sparseEntry>)), _wantInverted : ((null : Slice<T_sparseEntry>)) } : T__struct_16)) == null ? null : (({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((0 : GoInt64)), _wantValid : false, _wantAligned : ((null : Slice<T_sparseEntry>)), _wantInverted : ((null : Slice<T_sparseEntry>)) } : T__struct_16)).__copy__()),
((({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((-1 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((100 : GoInt64)), _wantValid : false, _wantAligned : ((null : Slice<T_sparseEntry>)), _wantInverted : ((null : Slice<T_sparseEntry>)) } : T__struct_16)) == null ? null : (({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((-1 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((100 : GoInt64)), _wantValid : false, _wantAligned : ((null : Slice<T_sparseEntry>)), _wantInverted : ((null : Slice<T_sparseEntry>)) } : T__struct_16)).__copy__()),
((({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((-1 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((100 : GoInt64)), _wantValid : false, _wantAligned : ((null : Slice<T_sparseEntry>)), _wantInverted : ((null : Slice<T_sparseEntry>)) } : T__struct_16)) == null ? null : (({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((-1 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((100 : GoInt64)), _wantValid : false, _wantAligned : ((null : Slice<T_sparseEntry>)), _wantInverted : ((null : Slice<T_sparseEntry>)) } : T__struct_16)).__copy__()),
((({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((-100 : GoInt64)), _wantValid : false, _wantAligned : ((null : Slice<T_sparseEntry>)), _wantInverted : ((null : Slice<T_sparseEntry>)) } : T__struct_16)) == null ? null : (({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((-100 : GoInt64)), _wantValid : false, _wantAligned : ((null : Slice<T_sparseEntry>)), _wantInverted : ((null : Slice<T_sparseEntry>)) } : T__struct_16)).__copy__()),
((({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry((("9223372036854775807" : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((-5 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((35 : GoInt64)), _wantValid : false, _wantAligned : ((null : Slice<T_sparseEntry>)), _wantInverted : ((null : Slice<T_sparseEntry>)) } : T__struct_16)) == null ? null : (({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry((("9223372036854775807" : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((-5 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((35 : GoInt64)), _wantValid : false, _wantAligned : ((null : Slice<T_sparseEntry>)), _wantInverted : ((null : Slice<T_sparseEntry>)) } : T__struct_16)).__copy__()),
((({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((-5 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((35 : GoInt64)), _wantValid : false, _wantAligned : ((null : Slice<T_sparseEntry>)), _wantInverted : ((null : Slice<T_sparseEntry>)) } : T__struct_16)) == null ? null : (({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((6 : GoInt64)), ((-5 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((35 : GoInt64)), _wantValid : false, _wantAligned : ((null : Slice<T_sparseEntry>)), _wantInverted : ((null : Slice<T_sparseEntry>)) } : T__struct_16)).__copy__()),
((({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry((("9223372036854775807" : GoInt64)), (("9223372036854775807" : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : (("9223372036854775807" : GoInt64)), _wantValid : false, _wantAligned : ((null : Slice<T_sparseEntry>)), _wantInverted : ((null : Slice<T_sparseEntry>)) } : T__struct_16)) == null ? null : (({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry((("9223372036854775807" : GoInt64)), (("9223372036854775807" : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : (("9223372036854775807" : GoInt64)), _wantValid : false, _wantAligned : ((null : Slice<T_sparseEntry>)), _wantInverted : ((null : Slice<T_sparseEntry>)) } : T__struct_16)).__copy__()),
((({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((3 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((5 : GoInt64)), _wantValid : false, _wantAligned : ((null : Slice<T_sparseEntry>)), _wantInverted : ((null : Slice<T_sparseEntry>)) } : T__struct_16)) == null ? null : (({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((3 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((5 : GoInt64)), _wantValid : false, _wantAligned : ((null : Slice<T_sparseEntry>)), _wantInverted : ((null : Slice<T_sparseEntry>)) } : T__struct_16)).__copy__()),
((({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((1 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((0 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((3 : GoInt64)), _wantValid : false, _wantAligned : ((null : Slice<T_sparseEntry>)), _wantInverted : ((null : Slice<T_sparseEntry>)) } : T__struct_16)) == null ? null : (({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((1 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((0 : GoInt64)), ((0 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((3 : GoInt64)), _wantValid : false, _wantAligned : ((null : Slice<T_sparseEntry>)), _wantInverted : ((null : Slice<T_sparseEntry>)) } : T__struct_16)).__copy__()),
((({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((10 : GoInt64)), _wantValid : false, _wantAligned : ((null : Slice<T_sparseEntry>)), _wantInverted : ((null : Slice<T_sparseEntry>)) } : T__struct_16)) == null ? null : (({ _in : ((new Slice<T_sparseEntry>(((new T_sparseEntry(((1 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((2 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : Slice<T_sparseEntry>)), _size : ((10 : GoInt64)), _wantValid : false, _wantAligned : ((null : Slice<T_sparseEntry>)), _wantInverted : ((null : Slice<T_sparseEntry>)) } : T__struct_16)).__copy__())) : Slice<T__struct_16>));
        for (_i => _v in _vectors) {
            var _gotValid:Bool = _validateSparseEntries(_v._in, _v._size);
            if (_gotValid != _v._wantValid) {
                _t.errorf(((("test %d, validateSparseEntries() = %v, want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_gotValid), Go.toInterface(_v._wantValid));
            };
            if (!_v._wantValid) {
                continue;
            };
            var _gotAligned:Slice<T_sparseEntry> = _alignSparseEntries((((new Slice<T_sparseEntry>() : Slice<T_sparseEntry>)) != null ? ((new Slice<T_sparseEntry>() : Slice<T_sparseEntry>)).__append__(..._v._in.__toArray__()) : new Slice<T_sparseEntry>(..._v._in.__toArray__())), _v._size);
            if (!_equalSparseEntries(_gotAligned, _v._wantAligned)) {
                _t.errorf(((("test %d, alignSparseEntries():\ngot  %v\nwant %v" : GoString))), Go.toInterface(_i), Go.toInterface(_gotAligned), Go.toInterface(_v._wantAligned));
            };
            var _gotInverted:Slice<T_sparseEntry> = _invertSparseEntries((((new Slice<T_sparseEntry>() : Slice<T_sparseEntry>)) != null ? ((new Slice<T_sparseEntry>() : Slice<T_sparseEntry>)).__append__(..._v._in.__toArray__()) : new Slice<T_sparseEntry>(..._v._in.__toArray__())), _v._size);
            if (!_equalSparseEntries(_gotInverted, _v._wantInverted)) {
                _t.errorf(((("test %d, inverseSparseEntries():\ngot  %v\nwant %v" : GoString))), Go.toInterface(_i), Go.toInterface(_gotInverted), Go.toInterface(_v._wantInverted));
            };
        };
    }
function testFileInfoHeader(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = stdgo.os.Os.stat(((("testdata/small.txt" : GoString)))), _fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var __tmp__ = fileInfoHeader(_fi, ((("" : GoString)))), _h:Ref<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("FileInfoHeader: %v" : GoString))), Go.toInterface(_err));
        };
        {
            var _g:GoString = _h.name, _e:GoString = ((("small.txt" : GoString)));
            if (_g != _e) {
                _t.errorf(((("Name = %q; want %q" : GoString))), Go.toInterface(_g), Go.toInterface(_e));
            };
        };
        {
            var _g:GoInt64 = _h.mode, _e:GoInt64 = ((_fi.mode().perm() : GoInt64));
            if (_g != _e) {
                _t.errorf(((("Mode = %#o; want %#o" : GoString))), Go.toInterface(_g), Go.toInterface(_e));
            };
        };
        {
            var _g:GoInt64 = _h.size, _e:GoInt64 = ((((5 : GoInt64)) : GoInt64));
            if (_g != _e) {
                _t.errorf(((("Size = %v; want %v" : GoString))), Go.toInterface(_g), Go.toInterface(_e));
            };
        };
        {
            var _g:stdgo.time.Time.Time = (_h.modTime == null ? null : _h.modTime.__copy__()), _e:stdgo.time.Time.Time = (_fi.modTime() == null ? null : _fi.modTime().__copy__());
            if (!_g.equal((_e == null ? null : _e.__copy__()))) {
                _t.errorf(((("ModTime = %v; want %v" : GoString))), Go.toInterface(_g), Go.toInterface(_e));
            };
        };
        {
            var __tmp__ = fileInfoHeader(((null : stdgo.io.fs.Fs.FileInfo)), ((("" : GoString)))), _0:Ref<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.fatalf(((("Expected error when passing nil to FileInfoHeader" : GoString))));
            };
        };
    }
function testFileInfoHeaderDir(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = stdgo.os.Os.stat(((("testdata" : GoString)))), _fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var __tmp__ = fileInfoHeader(_fi, ((("" : GoString)))), _h:Ref<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("FileInfoHeader: %v" : GoString))), Go.toInterface(_err));
        };
        {
            var _g:GoString = _h.name, _e:GoString = ((("testdata/" : GoString)));
            if (_g != _e) {
                _t.errorf(((("Name = %q; want %q" : GoString))), Go.toInterface(_g), Go.toInterface(_e));
            };
        };
        {
            var _g:GoInt64 = _h.mode & (((1024 : GoInt64)) ^ ((-1 : GoUnTypedInt))), _e:GoInt64 = ((_fi.mode().perm() : GoInt64));
            if (_g != _e) {
                _t.errorf(((("Mode = %#o; want %#o" : GoString))), Go.toInterface(_g), Go.toInterface(_e));
            };
        };
        {
            var _g:GoInt64 = _h.size, _e:GoInt64 = ((((0 : GoInt64)) : GoInt64));
            if (_g != _e) {
                _t.errorf(((("Size = %v; want %v" : GoString))), Go.toInterface(_g), Go.toInterface(_e));
            };
        };
        {
            var _g:stdgo.time.Time.Time = (_h.modTime == null ? null : _h.modTime.__copy__()), _e:stdgo.time.Time.Time = (_fi.modTime() == null ? null : _fi.modTime().__copy__());
            if (!_g.equal((_e == null ? null : _e.__copy__()))) {
                _t.errorf(((("ModTime = %v; want %v" : GoString))), Go.toInterface(_g), Go.toInterface(_e));
            };
        };
    }
function testFileInfoHeaderSymlink(_t:stdgo.testing.Testing.T_):Void {
        stdgo.internal.testenv.Testenv.mustHaveSymlink(_t);
        var _tmpdir:GoString = _t.tempDir();
        var _link:GoString = stdgo.path.filepath.Filepath.join(_tmpdir, ((("link" : GoString))));
        var _target:GoString = _tmpdir;
        {
            var _err:stdgo.Error = stdgo.os.Os.symlink(_target, _link);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        var __tmp__ = stdgo.os.Os.lstat(_link), _fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var __tmp__ = fileInfoHeader(_fi, _target), _h:Ref<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {
            var _g:GoString = _h.name, _e:GoString = _fi.name();
            if (_g != _e) {
                _t.errorf(((("Name = %q; want %q" : GoString))), Go.toInterface(_g), Go.toInterface(_e));
            };
        };
        {
            var _g:GoString = _h.linkname, _e:GoString = _target;
            if (_g != _e) {
                _t.errorf(((("Linkname = %q; want %q" : GoString))), Go.toInterface(_g), Go.toInterface(_e));
            };
        };
        {
            var _g:GoUInt8 = _h.typeflag, _e:GoUInt8 = ((((50 : GoUInt8)) : GoByte));
            if (_g != _e) {
                _t.errorf(((("Typeflag = %v; want %v" : GoString))), Go.toInterface(_g), Go.toInterface(_e));
            };
        };
    }
function testRoundTrip(_t:stdgo.testing.Testing.T_):Void {
        var _data:Slice<GoUInt8> = ((((("some file contents" : GoString))) : Slice<GoByte>));
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _tw:Ref<Writer> = newWriter(_b);
        var _hdr:Ref<Header> = (({ name : ((("file.txt" : GoString))), uid : ((2097152 : GoInt)), size : (((_data != null ? _data.length : ((0 : GoInt))) : GoInt64)), modTime : (stdgo.time.Time.now().round(((1000000000 : GoInt64))) == null ? null : stdgo.time.Time.now().round(((1000000000 : GoInt64))).__copy__()), paxrecords : Go.map(((("uid" : GoString))) => ((("2097152" : GoString)))), format : ((4 : GoInt)), typeflag : ((48 : GoUInt8)), linkname : "", mode : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)) } : Header));
        {
            var _err:stdgo.Error = _tw.writeHeader(_hdr);
            if (_err != null) {
                _t.fatalf(((("tw.WriteHeader: %v" : GoString))), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _tw.write(_data), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(((("tw.Write: %v" : GoString))), Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _tw.close();
            if (_err != null) {
                _t.fatalf(((("tw.Close: %v" : GoString))), Go.toInterface(_err));
            };
        };
        var _tr:Ref<Reader> = newReader(_b);
        var __tmp__ = _tr.next(), _rHdr:Ref<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("tr.Next: %v" : GoString))), Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_rHdr), Go.toInterface(_hdr))) {
            _t.errorf(((("Header mismatch.\n got %+v\nwant %+v" : GoString))), Go.toInterface(_rHdr), Go.toInterface(_hdr));
        };
        var __tmp__ = stdgo.io.Io.readAll(_tr), _rData:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("Read: %v" : GoString))), Go.toInterface(_err));
        };
        if (!stdgo.bytes.Bytes.equal(_rData, _data)) {
            _t.errorf(((("Data mismatch.\n got %q\nwant %q" : GoString))), Go.toInterface(_rData), Go.toInterface(_data));
        };
    }
function testHeaderRoundTrip(_t:stdgo.testing.Testing.T_):Void {
        var _vectors:Slice<T_headerRoundTripTest> = ((new Slice<T_headerRoundTripTest>(
((({ _h : (({ name : ((("test.txt" : GoString))), mode : ((420 : GoInt64)), size : ((12 : GoInt64)), modTime : (stdgo.time.Time.unix(((1360600916 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1360600916 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((48 : GoUInt8)), linkname : "", uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _fm : ((420 : GoUInt32)) } : T_headerRoundTripTest)) == null ? null : (({ _h : (({ name : ((("test.txt" : GoString))), mode : ((420 : GoInt64)), size : ((12 : GoInt64)), modTime : (stdgo.time.Time.unix(((1360600916 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1360600916 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((48 : GoUInt8)), linkname : "", uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _fm : ((420 : GoUInt32)) } : T_headerRoundTripTest)).__copy__()),
((({ _h : (({ name : ((("link.txt" : GoString))), mode : ((511 : GoInt64)), size : ((0 : GoInt64)), modTime : (stdgo.time.Time.unix(((1360600852 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1360600852 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((50 : GoUInt8)), linkname : "", uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _fm : ((134218239 : GoUInt32)) } : T_headerRoundTripTest)) == null ? null : (({ _h : (({ name : ((("link.txt" : GoString))), mode : ((511 : GoInt64)), size : ((0 : GoInt64)), modTime : (stdgo.time.Time.unix(((1360600852 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1360600852 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((50 : GoUInt8)), linkname : "", uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _fm : ((134218239 : GoUInt32)) } : T_headerRoundTripTest)).__copy__()),
((({ _h : (({ name : ((("dev/null" : GoString))), mode : ((438 : GoInt64)), size : ((0 : GoInt64)), modTime : (stdgo.time.Time.unix(((1360578951 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1360578951 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((51 : GoUInt8)), linkname : "", uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _fm : ((69206454 : GoUInt32)) } : T_headerRoundTripTest)) == null ? null : (({ _h : (({ name : ((("dev/null" : GoString))), mode : ((438 : GoInt64)), size : ((0 : GoInt64)), modTime : (stdgo.time.Time.unix(((1360578951 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1360578951 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((51 : GoUInt8)), linkname : "", uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _fm : ((69206454 : GoUInt32)) } : T_headerRoundTripTest)).__copy__()),
((({ _h : (({ name : ((("dev/sda" : GoString))), mode : ((432 : GoInt64)), size : ((0 : GoInt64)), modTime : (stdgo.time.Time.unix(((1360578954 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1360578954 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((52 : GoUInt8)), linkname : "", uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _fm : ((67109296 : GoUInt32)) } : T_headerRoundTripTest)) == null ? null : (({ _h : (({ name : ((("dev/sda" : GoString))), mode : ((432 : GoInt64)), size : ((0 : GoInt64)), modTime : (stdgo.time.Time.unix(((1360578954 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1360578954 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((52 : GoUInt8)), linkname : "", uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _fm : ((67109296 : GoUInt32)) } : T_headerRoundTripTest)).__copy__()),
((({ _h : (({ name : ((("dir/" : GoString))), mode : ((493 : GoInt64)), size : ((0 : GoInt64)), modTime : (stdgo.time.Time.unix(((1360601116 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1360601116 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((53 : GoUInt8)), linkname : "", uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _fm : (("2147484141" : GoUInt32)) } : T_headerRoundTripTest)) == null ? null : (({ _h : (({ name : ((("dir/" : GoString))), mode : ((493 : GoInt64)), size : ((0 : GoInt64)), modTime : (stdgo.time.Time.unix(((1360601116 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1360601116 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((53 : GoUInt8)), linkname : "", uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _fm : (("2147484141" : GoUInt32)) } : T_headerRoundTripTest)).__copy__()),
((({ _h : (({ name : ((("dev/initctl" : GoString))), mode : ((384 : GoInt64)), size : ((0 : GoInt64)), modTime : (stdgo.time.Time.unix(((1360578949 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1360578949 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((54 : GoUInt8)), linkname : "", uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _fm : ((33554816 : GoUInt32)) } : T_headerRoundTripTest)) == null ? null : (({ _h : (({ name : ((("dev/initctl" : GoString))), mode : ((384 : GoInt64)), size : ((0 : GoInt64)), modTime : (stdgo.time.Time.unix(((1360578949 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1360578949 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((54 : GoUInt8)), linkname : "", uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _fm : ((33554816 : GoUInt32)) } : T_headerRoundTripTest)).__copy__()),
((({ _h : (({ name : ((("bin/su" : GoString))), mode : ((2541 : GoInt64)), size : ((23232 : GoInt64)), modTime : (stdgo.time.Time.unix(((1355405093 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1355405093 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((48 : GoUInt8)), linkname : "", uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _fm : ((8389101 : GoUInt32)) } : T_headerRoundTripTest)) == null ? null : (({ _h : (({ name : ((("bin/su" : GoString))), mode : ((2541 : GoInt64)), size : ((23232 : GoInt64)), modTime : (stdgo.time.Time.unix(((1355405093 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1355405093 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((48 : GoUInt8)), linkname : "", uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _fm : ((8389101 : GoUInt32)) } : T_headerRoundTripTest)).__copy__()),
((({ _h : (({ name : ((("group.txt" : GoString))), mode : ((1512 : GoInt64)), size : ((0 : GoInt64)), modTime : (stdgo.time.Time.unix(((1360602346 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1360602346 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((48 : GoUInt8)), linkname : "", uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _fm : ((4194792 : GoUInt32)) } : T_headerRoundTripTest)) == null ? null : (({ _h : (({ name : ((("group.txt" : GoString))), mode : ((1512 : GoInt64)), size : ((0 : GoInt64)), modTime : (stdgo.time.Time.unix(((1360602346 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1360602346 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((48 : GoUInt8)), linkname : "", uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _fm : ((4194792 : GoUInt32)) } : T_headerRoundTripTest)).__copy__()),
((({ _h : (({ name : ((("sticky.txt" : GoString))), mode : ((896 : GoInt64)), size : ((7 : GoInt64)), modTime : (stdgo.time.Time.unix(((1360602540 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1360602540 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((48 : GoUInt8)), linkname : "", uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _fm : ((1048960 : GoUInt32)) } : T_headerRoundTripTest)) == null ? null : (({ _h : (({ name : ((("sticky.txt" : GoString))), mode : ((896 : GoInt64)), size : ((7 : GoInt64)), modTime : (stdgo.time.Time.unix(((1360602540 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1360602540 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((48 : GoUInt8)), linkname : "", uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _fm : ((1048960 : GoUInt32)) } : T_headerRoundTripTest)).__copy__()),
((({ _h : (({ name : ((("hard.txt" : GoString))), mode : ((420 : GoInt64)), size : ((0 : GoInt64)), linkname : ((("file.txt" : GoString))), modTime : (stdgo.time.Time.unix(((1360600916 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1360600916 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((49 : GoUInt8)), uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _fm : ((420 : GoUInt32)) } : T_headerRoundTripTest)) == null ? null : (({ _h : (({ name : ((("hard.txt" : GoString))), mode : ((420 : GoInt64)), size : ((0 : GoInt64)), linkname : ((("file.txt" : GoString))), modTime : (stdgo.time.Time.unix(((1360600916 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1360600916 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : ((49 : GoUInt8)), uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _fm : ((420 : GoUInt32)) } : T_headerRoundTripTest)).__copy__()),
((({ _h : (({ name : ((("info.txt" : GoString))), mode : ((384 : GoInt64)), size : ((0 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), modTime : (stdgo.time.Time.unix(((1360602540 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1360602540 : GoInt64)), ((0 : GoInt64))).__copy__()), uname : ((("slartibartfast" : GoString))), gname : ((("users" : GoString))), typeflag : ((48 : GoUInt8)), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _fm : ((384 : GoUInt32)) } : T_headerRoundTripTest)) == null ? null : (({ _h : (({ name : ((("info.txt" : GoString))), mode : ((384 : GoInt64)), size : ((0 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), modTime : (stdgo.time.Time.unix(((1360602540 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1360602540 : GoInt64)), ((0 : GoInt64))).__copy__()), uname : ((("slartibartfast" : GoString))), gname : ((("users" : GoString))), typeflag : ((48 : GoUInt8)), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _fm : ((384 : GoUInt32)) } : T_headerRoundTripTest)).__copy__())) : Slice<T_headerRoundTripTest>));
        for (_i => _v in _vectors) {
            var _fi:stdgo.io.fs.Fs.FileInfo = _v._h.fileInfo();
            var __tmp__ = fileInfoHeader(_fi, ((("" : GoString)))), _h2:Ref<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(Go.toInterface(_err));
                continue;
            };
            if (stdgo.strings.Strings.contains(_fi.name(), ((("/" : GoString))))) {
                _t.errorf(((("FileInfo of %q contains slash: %q" : GoString))), Go.toInterface(_v._h.name), Go.toInterface(_fi.name()));
            };
            var _name:GoString = stdgo.path.Path.base(_v._h.name);
            if (_fi.isDir()) {
                _name = _name + (((("/" : GoString))));
            };
            {
                var _got:GoString = _h2.name, _want:GoString = _name;
                if (_got != _want) {
                    _t.errorf(((("i=%d: Name: got %v, want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
            {
                var _got:GoInt64 = _h2.size, _want:GoInt64 = _v._h.size;
                if (_got != _want) {
                    _t.errorf(((("i=%d: Size: got %v, want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
            {
                var _got:GoInt = _h2.uid, _want:GoInt = _v._h.uid;
                if (_got != _want) {
                    _t.errorf(((("i=%d: Uid: got %d, want %d" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
            {
                var _got:GoInt = _h2.gid, _want:GoInt = _v._h.gid;
                if (_got != _want) {
                    _t.errorf(((("i=%d: Gid: got %d, want %d" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
            {
                var _got:GoString = _h2.uname, _want:GoString = _v._h.uname;
                if (_got != _want) {
                    _t.errorf(((("i=%d: Uname: got %q, want %q" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
            {
                var _got:GoString = _h2.gname, _want:GoString = _v._h.gname;
                if (_got != _want) {
                    _t.errorf(((("i=%d: Gname: got %q, want %q" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
            {
                var _got:GoString = _h2.linkname, _want:GoString = _v._h.linkname;
                if (_got != _want) {
                    _t.errorf(((("i=%d: Linkname: got %v, want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
            {
                var _got:GoUInt8 = _h2.typeflag, _want:GoUInt8 = _v._h.typeflag;
                if (_got != _want) {
                    _t.logf(((("%#v %#v" : GoString))), Go.toInterface(_v._h), Go.toInterface(_fi.sys()));
                    _t.errorf(((("i=%d: Typeflag: got %q, want %q" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
            {
                var _got:GoInt64 = _h2.mode, _want:GoInt64 = _v._h.mode;
                if (_got != _want) {
                    _t.errorf(((("i=%d: Mode: got %o, want %o" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
            {
                var _got:stdgo.io.fs.Fs.FileMode = _fi.mode(), _want:stdgo.io.fs.Fs.FileMode = _v._fm;
                if (_got != _want) {
                    _t.errorf(((("i=%d: fi.Mode: got %o, want %o" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
            {
                var _got:stdgo.time.Time.Time = (_h2.accessTime == null ? null : _h2.accessTime.__copy__()), _want:stdgo.time.Time.Time = (_v._h.accessTime == null ? null : _v._h.accessTime.__copy__());
                if (_got != _want) {
                    _t.errorf(((("i=%d: AccessTime: got %v, want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
            {
                var _got:stdgo.time.Time.Time = (_h2.changeTime == null ? null : _h2.changeTime.__copy__()), _want:stdgo.time.Time.Time = (_v._h.changeTime == null ? null : _v._h.changeTime.__copy__());
                if (_got != _want) {
                    _t.errorf(((("i=%d: ChangeTime: got %v, want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
            {
                var _got:stdgo.time.Time.Time = (_h2.modTime == null ? null : _h2.modTime.__copy__()), _want:stdgo.time.Time.Time = (_v._h.modTime == null ? null : _v._h.modTime.__copy__());
                if (_got != _want) {
                    _t.errorf(((("i=%d: ModTime: got %v, want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
            {
                var __tmp__ = try {
                    { value : ((_fi.sys().value : Header)), ok : true };
                } catch(_) {
                    { value : ((null : Ref<Header>)), ok : false };
                }, _sysh = __tmp__.value, _ok = __tmp__.ok;
                if (!_ok || (_sysh != _v._h)) {
                    _t.errorf(((("i=%d: Sys didn\'t return original *Header" : GoString))), Go.toInterface(_i));
                };
            };
        };
    }
function testHeaderAllowedFormats(_t:stdgo.testing.Testing.T_):Void {
        var _vectors:Slice<T__struct_17> = ((new Slice<T__struct_17>(
((({ _header : ((new Header() : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : ((new Header() : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ size : (("8589934591" : GoInt64)), typeflag : 0, name : "", linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ size : (("8589934591" : GoInt64)), typeflag : 0, name : "", linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ size : (("8589934591" : GoInt64)), format : ((2 : GoInt)), typeflag : 0, name : "", linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _formats : ((2 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ size : (("8589934591" : GoInt64)), format : ((2 : GoInt)), typeflag : 0, name : "", linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _formats : ((2 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ size : (("8589934591" : GoInt64)), format : ((4 : GoInt)), typeflag : 0, name : "", linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _formats : ((6 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ size : (("8589934591" : GoInt64)), format : ((4 : GoInt)), typeflag : 0, name : "", linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _formats : ((6 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ size : (("8589934591" : GoInt64)), format : ((8 : GoInt)), typeflag : 0, name : "", linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _formats : ((8 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ size : (("8589934591" : GoInt64)), format : ((8 : GoInt)), typeflag : 0, name : "", linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _formats : ((8 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ size : (("8589934592" : GoInt64)), typeflag : 0, name : "", linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("size" : GoString))) => ((("8589934592" : GoString)))), _formats : ((12 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ size : (("8589934592" : GoInt64)), typeflag : 0, name : "", linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("size" : GoString))) => ((("8589934592" : GoString)))), _formats : ((12 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ size : (("8589934592" : GoInt64)), format : ((4 : GoInt)), typeflag : 0, name : "", linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("size" : GoString))) => ((("8589934592" : GoString)))), _formats : ((4 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ size : (("8589934592" : GoInt64)), format : ((4 : GoInt)), typeflag : 0, name : "", linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("size" : GoString))) => ((("8589934592" : GoString)))), _formats : ((4 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ size : (("8589934592" : GoInt64)), format : ((8 : GoInt)), typeflag : 0, name : "", linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("size" : GoString))) => ((("8589934592" : GoString)))), _formats : ((8 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ size : (("8589934592" : GoInt64)), format : ((8 : GoInt)), typeflag : 0, name : "", linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("size" : GoString))) => ((("8589934592" : GoString)))), _formats : ((8 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ mode : ((2097151 : GoInt64)), typeflag : 0, name : "", linkname : "", size : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ mode : ((2097151 : GoInt64)), typeflag : 0, name : "", linkname : "", size : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ mode : ((2097152 : GoInt64)), typeflag : 0, name : "", linkname : "", size : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((8 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ mode : ((2097152 : GoInt64)), typeflag : 0, name : "", linkname : "", size : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((8 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ devmajor : ((-123 : GoInt64)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((8 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ devmajor : ((-123 : GoInt64)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((8 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ devmajor : (("72057594037927935" : GoInt64)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((8 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ devmajor : (("72057594037927935" : GoInt64)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((8 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ devmajor : (("72057594037927936" : GoInt64)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((0 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ devmajor : (("72057594037927936" : GoInt64)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((0 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ devmajor : (("-72057594037927936" : GoInt64)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((8 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ devmajor : (("-72057594037927936" : GoInt64)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((8 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ devmajor : (("-72057594037927937" : GoInt64)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((0 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ devmajor : (("-72057594037927937" : GoInt64)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((0 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ name : ((("用戶名" : GoString))), devmajor : (("-72057594037927936" : GoInt64)), typeflag : 0, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((8 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ name : ((("用戶名" : GoString))), devmajor : (("-72057594037927936" : GoInt64)), typeflag : 0, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((8 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ size : (("9223372036854775807" : GoInt64)), typeflag : 0, name : "", linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("size" : GoString))) => ((("9223372036854775807" : GoString)))), _formats : ((12 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ size : (("9223372036854775807" : GoInt64)), typeflag : 0, name : "", linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("size" : GoString))) => ((("9223372036854775807" : GoString)))), _formats : ((12 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ size : (("-9223372036854775808" : GoInt64)), typeflag : 0, name : "", linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("size" : GoString))) => ((("-9223372036854775808" : GoString)))), _formats : ((0 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ size : (("-9223372036854775808" : GoInt64)), typeflag : 0, name : "", linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("size" : GoString))) => ((("-9223372036854775808" : GoString)))), _formats : ((0 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ uname : ((("0123456789abcdef0123456789abcdef" : GoString))), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ uname : ((("0123456789abcdef0123456789abcdef" : GoString))), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ uname : ((("0123456789abcdef0123456789abcdefx" : GoString))), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("uname" : GoString))) => ((("0123456789abcdef0123456789abcdefx" : GoString)))), _formats : ((4 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ uname : ((("0123456789abcdef0123456789abcdefx" : GoString))), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("uname" : GoString))) => ((("0123456789abcdef0123456789abcdefx" : GoString)))), _formats : ((4 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ name : ((("foobar" : GoString))), typeflag : 0, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ name : ((("foobar" : GoString))), typeflag : 0, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ name : stdgo.strings.Strings.repeat(((("a" : GoString))), ((100 : GoInt))), typeflag : 0, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ name : stdgo.strings.Strings.repeat(((("a" : GoString))), ((100 : GoInt))), typeflag : 0, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ name : stdgo.strings.Strings.repeat(((("a" : GoString))), ((101 : GoInt))), typeflag : 0, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("path" : GoString))) => stdgo.strings.Strings.repeat(((("a" : GoString))), ((101 : GoInt)))), _formats : ((12 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ name : stdgo.strings.Strings.repeat(((("a" : GoString))), ((101 : GoInt))), typeflag : 0, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("path" : GoString))) => stdgo.strings.Strings.repeat(((("a" : GoString))), ((101 : GoInt)))), _formats : ((12 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ linkname : ((("用戶名" : GoString))), typeflag : 0, name : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("linkpath" : GoString))) => ((("用戶名" : GoString)))), _formats : ((12 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ linkname : ((("用戶名" : GoString))), typeflag : 0, name : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("linkpath" : GoString))) => ((("用戶名" : GoString)))), _formats : ((12 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ linkname : stdgo.strings.Strings.repeat(((("用戶名" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((100 : GoInt))), typeflag : 0, name : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("linkpath" : GoString))) => stdgo.strings.Strings.repeat(((("用戶名" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((100 : GoInt)))), _formats : ((0 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ linkname : stdgo.strings.Strings.repeat(((("用戶名" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((100 : GoInt))), typeflag : 0, name : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("linkpath" : GoString))) => stdgo.strings.Strings.repeat(((("用戶名" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((100 : GoInt)))), _formats : ((0 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ linkname : (((haxe.io.Bytes.ofHex("00") : GoString)) + (("hello" : GoString))), typeflag : 0, name : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("linkpath" : GoString))) => (((haxe.io.Bytes.ofHex("00") : GoString)) + (("hello" : GoString)))), _formats : ((0 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ linkname : (((haxe.io.Bytes.ofHex("00") : GoString)) + (("hello" : GoString))), typeflag : 0, name : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("linkpath" : GoString))) => (((haxe.io.Bytes.ofHex("00") : GoString)) + (("hello" : GoString)))), _formats : ((0 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ uid : ((2097151 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ uid : ((2097151 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ uid : ((2097152 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("uid" : GoString))) => ((("2097152" : GoString)))), _formats : ((12 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ uid : ((2097152 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("uid" : GoString))) => ((("2097152" : GoString)))), _formats : ((12 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ xattrs : ((null : GoMap<GoString, GoString>)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ xattrs : ((null : GoMap<GoString, GoString>)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ xattrs : Go.map(((("foo" : GoString))) => ((("bar" : GoString)))), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("SCHILY.xattr.foo" : GoString))) => ((("bar" : GoString)))), _formats : ((4 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ xattrs : Go.map(((("foo" : GoString))) => ((("bar" : GoString)))), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("SCHILY.xattr.foo" : GoString))) => ((("bar" : GoString)))), _formats : ((4 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ xattrs : Go.map(((("foo" : GoString))) => ((("bar" : GoString)))), format : ((8 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("SCHILY.xattr.foo" : GoString))) => ((("bar" : GoString)))), _formats : ((0 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ xattrs : Go.map(((("foo" : GoString))) => ((("bar" : GoString)))), format : ((8 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("SCHILY.xattr.foo" : GoString))) => ((("bar" : GoString)))), _formats : ((0 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ xattrs : Go.map(((("用戶名" : GoString))) => (((haxe.io.Bytes.ofHex("00") : GoString)) + (("hello" : GoString)))), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("SCHILY.xattr." : GoString)) + ((haxe.io.Bytes.ofHex("E7") : GoString)) + ((haxe.io.Bytes.ofHex("94") : GoString)) + ((haxe.io.Bytes.ofHex("A8") : GoString)) + ((haxe.io.Bytes.ofHex("E6") : GoString)) + ((haxe.io.Bytes.ofHex("88") : GoString)) + ((haxe.io.Bytes.ofHex("B6") : GoString)) + ((haxe.io.Bytes.ofHex("E5") : GoString)) + ((haxe.io.Bytes.ofHex("90") : GoString)) + ((haxe.io.Bytes.ofHex("8D") : GoString))) => (((haxe.io.Bytes.ofHex("00") : GoString)) + (("hello" : GoString)))), _formats : ((4 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ xattrs : Go.map(((("用戶名" : GoString))) => (((haxe.io.Bytes.ofHex("00") : GoString)) + (("hello" : GoString)))), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("SCHILY.xattr." : GoString)) + ((haxe.io.Bytes.ofHex("E7") : GoString)) + ((haxe.io.Bytes.ofHex("94") : GoString)) + ((haxe.io.Bytes.ofHex("A8") : GoString)) + ((haxe.io.Bytes.ofHex("E6") : GoString)) + ((haxe.io.Bytes.ofHex("88") : GoString)) + ((haxe.io.Bytes.ofHex("B6") : GoString)) + ((haxe.io.Bytes.ofHex("E5") : GoString)) + ((haxe.io.Bytes.ofHex("90") : GoString)) + ((haxe.io.Bytes.ofHex("8D") : GoString))) => (((haxe.io.Bytes.ofHex("00") : GoString)) + (("hello" : GoString)))), _formats : ((4 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ xattrs : Go.map(((("foo=bar" : GoString))) => ((("baz" : GoString)))), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((0 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ xattrs : Go.map(((("foo=bar" : GoString))) => ((("baz" : GoString)))), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((0 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ xattrs : Go.map(((("foo" : GoString))) => ((("" : GoString)))), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("SCHILY.xattr.foo" : GoString))) => ((("" : GoString)))), _formats : ((4 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ xattrs : Go.map(((("foo" : GoString))) => ((("" : GoString)))), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("SCHILY.xattr.foo" : GoString))) => ((("" : GoString)))), _formats : ((4 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ modTime : (stdgo.time.Time.unix((("8589934591" : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix((("8589934591" : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ modTime : (stdgo.time.Time.unix((("8589934591" : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix((("8589934591" : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ modTime : (stdgo.time.Time.unix((("8589934592" : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix((("8589934592" : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("mtime" : GoString))) => ((("8589934592" : GoString)))), _formats : ((12 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ modTime : (stdgo.time.Time.unix((("8589934592" : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix((("8589934592" : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("mtime" : GoString))) => ((("8589934592" : GoString)))), _formats : ((12 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ modTime : (stdgo.time.Time.unix((("9223372036854775807" : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix((("9223372036854775807" : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("mtime" : GoString))) => ((("9223372036854775807" : GoString)))), _formats : ((12 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ modTime : (stdgo.time.Time.unix((("9223372036854775807" : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix((("9223372036854775807" : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("mtime" : GoString))) => ((("9223372036854775807" : GoString)))), _formats : ((12 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ modTime : (stdgo.time.Time.unix((("9223372036854775807" : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix((("9223372036854775807" : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((2 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("mtime" : GoString))) => ((("9223372036854775807" : GoString)))), _formats : ((0 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ modTime : (stdgo.time.Time.unix((("9223372036854775807" : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix((("9223372036854775807" : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((2 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("mtime" : GoString))) => ((("9223372036854775807" : GoString)))), _formats : ((0 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ modTime : (stdgo.time.Time.unix(((-1 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-1 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("mtime" : GoString))) => ((("-1" : GoString)))), _formats : ((12 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ modTime : (stdgo.time.Time.unix(((-1 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-1 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("mtime" : GoString))) => ((("-1" : GoString)))), _formats : ((12 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ modTime : (stdgo.time.Time.unix(((1 : GoInt64)), ((500 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1 : GoInt64)), ((500 : GoInt64))).__copy__()), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("mtime" : GoString))) => ((("1.0000005" : GoString)))), _formats : ((14 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ modTime : (stdgo.time.Time.unix(((1 : GoInt64)), ((500 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1 : GoInt64)), ((500 : GoInt64))).__copy__()), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("mtime" : GoString))) => ((("1.0000005" : GoString)))), _formats : ((14 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ modTime : (stdgo.time.Time.unix(((1 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ modTime : (stdgo.time.Time.unix(((1 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ modTime : (stdgo.time.Time.unix(((1 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((4 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _formats : ((6 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ modTime : (stdgo.time.Time.unix(((1 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((4 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _formats : ((6 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ modTime : (stdgo.time.Time.unix(((1 : GoInt64)), ((500 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1 : GoInt64)), ((500 : GoInt64))).__copy__()), format : ((2 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("mtime" : GoString))) => ((("1.0000005" : GoString)))), _formats : ((2 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ modTime : (stdgo.time.Time.unix(((1 : GoInt64)), ((500 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1 : GoInt64)), ((500 : GoInt64))).__copy__()), format : ((2 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("mtime" : GoString))) => ((("1.0000005" : GoString)))), _formats : ((2 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ modTime : (stdgo.time.Time.unix(((1 : GoInt64)), ((500 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1 : GoInt64)), ((500 : GoInt64))).__copy__()), format : ((4 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("mtime" : GoString))) => ((("1.0000005" : GoString)))), _formats : ((4 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ modTime : (stdgo.time.Time.unix(((1 : GoInt64)), ((500 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1 : GoInt64)), ((500 : GoInt64))).__copy__()), format : ((4 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("mtime" : GoString))) => ((("1.0000005" : GoString)))), _formats : ((4 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ modTime : (stdgo.time.Time.unix(((1 : GoInt64)), ((500 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1 : GoInt64)), ((500 : GoInt64))).__copy__()), format : ((8 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("mtime" : GoString))) => ((("1.0000005" : GoString)))), _formats : ((8 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ modTime : (stdgo.time.Time.unix(((1 : GoInt64)), ((500 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1 : GoInt64)), ((500 : GoInt64))).__copy__()), format : ((8 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("mtime" : GoString))) => ((("1.0000005" : GoString)))), _formats : ((8 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ modTime : (stdgo.time.Time.unix(((-1 : GoInt64)), ((500 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-1 : GoInt64)), ((500 : GoInt64))).__copy__()), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("mtime" : GoString))) => ((("-0.9999995" : GoString)))), _formats : ((12 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ modTime : (stdgo.time.Time.unix(((-1 : GoInt64)), ((500 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-1 : GoInt64)), ((500 : GoInt64))).__copy__()), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("mtime" : GoString))) => ((("-0.9999995" : GoString)))), _formats : ((12 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ modTime : (stdgo.time.Time.unix(((-1 : GoInt64)), ((500 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-1 : GoInt64)), ((500 : GoInt64))).__copy__()), format : ((8 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("mtime" : GoString))) => ((("-0.9999995" : GoString)))), _formats : ((8 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ modTime : (stdgo.time.Time.unix(((-1 : GoInt64)), ((500 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-1 : GoInt64)), ((500 : GoInt64))).__copy__()), format : ((8 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("mtime" : GoString))) => ((("-0.9999995" : GoString)))), _formats : ((8 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ accessTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("atime" : GoString))) => ((("0" : GoString)))), _formats : ((12 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ accessTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("atime" : GoString))) => ((("0" : GoString)))), _formats : ((12 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ accessTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((2 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("atime" : GoString))) => ((("0" : GoString)))), _formats : ((0 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ accessTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((2 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("atime" : GoString))) => ((("0" : GoString)))), _formats : ((0 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ accessTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((4 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("atime" : GoString))) => ((("0" : GoString)))), _formats : ((4 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ accessTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((4 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("atime" : GoString))) => ((("0" : GoString)))), _formats : ((4 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ accessTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((8 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("atime" : GoString))) => ((("0" : GoString)))), _formats : ((8 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ accessTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((8 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("atime" : GoString))) => ((("0" : GoString)))), _formats : ((8 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ accessTime : (stdgo.time.Time.unix(((-123 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-123 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("atime" : GoString))) => ((("-123" : GoString)))), _formats : ((12 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ accessTime : (stdgo.time.Time.unix(((-123 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-123 : GoInt64)), ((0 : GoInt64))).__copy__()), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("atime" : GoString))) => ((("-123" : GoString)))), _formats : ((12 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ accessTime : (stdgo.time.Time.unix(((-123 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-123 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((4 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("atime" : GoString))) => ((("-123" : GoString)))), _formats : ((4 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ accessTime : (stdgo.time.Time.unix(((-123 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((-123 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((4 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("atime" : GoString))) => ((("-123" : GoString)))), _formats : ((4 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ changeTime : (stdgo.time.Time.unix(((123 : GoInt64)), ((456 : GoInt64))) == null ? null : stdgo.time.Time.unix(((123 : GoInt64)), ((456 : GoInt64))).__copy__()), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("ctime" : GoString))) => ((("123.000000456" : GoString)))), _formats : ((12 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ changeTime : (stdgo.time.Time.unix(((123 : GoInt64)), ((456 : GoInt64))) == null ? null : stdgo.time.Time.unix(((123 : GoInt64)), ((456 : GoInt64))).__copy__()), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _paxHdrs : Go.map(((("ctime" : GoString))) => ((("123.000000456" : GoString)))), _formats : ((12 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ changeTime : (stdgo.time.Time.unix(((123 : GoInt64)), ((456 : GoInt64))) == null ? null : stdgo.time.Time.unix(((123 : GoInt64)), ((456 : GoInt64))).__copy__()), format : ((2 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("ctime" : GoString))) => ((("123.000000456" : GoString)))), _formats : ((0 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ changeTime : (stdgo.time.Time.unix(((123 : GoInt64)), ((456 : GoInt64))) == null ? null : stdgo.time.Time.unix(((123 : GoInt64)), ((456 : GoInt64))).__copy__()), format : ((2 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("ctime" : GoString))) => ((("123.000000456" : GoString)))), _formats : ((0 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ changeTime : (stdgo.time.Time.unix(((123 : GoInt64)), ((456 : GoInt64))) == null ? null : stdgo.time.Time.unix(((123 : GoInt64)), ((456 : GoInt64))).__copy__()), format : ((8 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("ctime" : GoString))) => ((("123.000000456" : GoString)))), _formats : ((8 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ changeTime : (stdgo.time.Time.unix(((123 : GoInt64)), ((456 : GoInt64))) == null ? null : stdgo.time.Time.unix(((123 : GoInt64)), ((456 : GoInt64))).__copy__()), format : ((8 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("ctime" : GoString))) => ((("123.000000456" : GoString)))), _formats : ((8 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ changeTime : (stdgo.time.Time.unix(((123 : GoInt64)), ((456 : GoInt64))) == null ? null : stdgo.time.Time.unix(((123 : GoInt64)), ((456 : GoInt64))).__copy__()), format : ((4 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("ctime" : GoString))) => ((("123.000000456" : GoString)))), _formats : ((4 : GoInt)) } : T__struct_17)) == null ? null : (({ _header : (({ changeTime : (stdgo.time.Time.unix(((123 : GoInt64)), ((456 : GoInt64))) == null ? null : stdgo.time.Time.unix(((123 : GoInt64)), ((456 : GoInt64))).__copy__()), format : ((4 : GoInt)), typeflag : 0, name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)), _paxHdrs : Go.map(((("ctime" : GoString))) => ((("123.000000456" : GoString)))), _formats : ((4 : GoInt)) } : T__struct_17)).__copy__()),
((({ _header : (({ name : ((("foo/" : GoString))), typeflag : ((53 : GoUInt8)), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ name : ((("foo/" : GoString))), typeflag : ((53 : GoUInt8)), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ name : ((("foo/" : GoString))), typeflag : ((48 : GoUInt8)), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((0 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ name : ((("foo/" : GoString))), typeflag : ((48 : GoUInt8)), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((0 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__()),
((({ _header : (({ name : ((("foo/" : GoString))), typeflag : ((50 : GoUInt8)), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)) == null ? null : (({ _header : (({ name : ((("foo/" : GoString))), typeflag : ((50 : GoUInt8)), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), _formats : ((14 : GoInt)), _paxHdrs : ((null : GoMap<GoString, GoString>)) } : T__struct_17)).__copy__())) : Slice<T__struct_17>));
        for (_i => _v in _vectors) {
            var __tmp__ = _v._header._allowedFormats(), _formats:Format = __tmp__._0, _paxHdrs:GoMap<GoString, GoString> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_formats != _v._formats) {
                _t.errorf(((("test %d, allowedFormats(): got %v, want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_formats), Go.toInterface(_v._formats));
            };
            if ((((_formats & ((4 : GoInt))) > ((0 : GoInt))) && !stdgo.reflect.Reflect.deepEqual(Go.toInterface(_paxHdrs), Go.toInterface(_v._paxHdrs))) && !(((_paxHdrs != null ? _paxHdrs.length : ((0 : GoInt))) == ((0 : GoInt))) && ((_v._paxHdrs != null ? _v._paxHdrs.length : ((0 : GoInt))) == ((0 : GoInt))))) {
                _t.errorf(((("test %d, allowedFormats():\ngot  %v\nwant %s" : GoString))), Go.toInterface(_i), Go.toInterface(_paxHdrs), Go.toInterface(_v._paxHdrs));
            };
            if ((_formats != ((0 : GoInt))) && (_err != null)) {
                _t.errorf(((("test %d, unexpected error: %v" : GoString))), Go.toInterface(_i), Go.toInterface(_err));
            };
            if ((_formats == ((0 : GoInt))) && (_err == null)) {
                _t.errorf(((("test %d, got nil-error, want non-nil error" : GoString))), Go.toInterface(_i));
            };
        };
    }
@:structInit class T_file_benchmark_0 {
    public var _hdr : Ref<Header> = ((null : Ref<Header>));
    public var _body : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public function new(?_hdr:Ref<Header>, ?_body:Slice<GoUInt8>) {
        if (_hdr != null) this._hdr = _hdr;
        if (_body != null) this._body = _body;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_file_benchmark_0(_hdr, _body);
    }
}
function benchmark(_b:stdgo.testing.Testing.B):Void {
        {};
        var _vectors:Slice<T__struct_18> = ((new Slice<T__struct_18>(((new T__struct_18(((("USTAR" : GoString))), ((new Slice<T_file_benchmark_0>(((new T_file_benchmark_0((({ name : ((("bar" : GoString))), mode : ((416 : GoInt64)), size : ((((3 : GoInt64)) : GoInt64)), typeflag : 0, linkname : "", uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), ((((("foo" : GoString))) : Slice<GoByte>))) : T_file_benchmark_0)), ((new T_file_benchmark_0((({ name : ((("world" : GoString))), mode : ((416 : GoInt64)), size : ((((5 : GoInt64)) : GoInt64)), typeflag : 0, linkname : "", uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), ((((("hello" : GoString))) : Slice<GoByte>))) : T_file_benchmark_0))) : Slice<T_file_benchmark_0>))) : T__struct_18)), ((new T__struct_18(((("GNU" : GoString))), ((new Slice<T_file_benchmark_0>(((new T_file_benchmark_0((({ name : ((("bar" : GoString))), mode : ((416 : GoInt64)), size : ((((3 : GoInt64)) : GoInt64)), devmajor : ((-1 : GoInt64)), typeflag : 0, linkname : "", uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), ((((("foo" : GoString))) : Slice<GoByte>))) : T_file_benchmark_0)), ((new T_file_benchmark_0((({ name : ((("world" : GoString))), mode : ((416 : GoInt64)), size : ((((5 : GoInt64)) : GoInt64)), devmajor : ((-1 : GoInt64)), typeflag : 0, linkname : "", uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), ((((("hello" : GoString))) : Slice<GoByte>))) : T_file_benchmark_0))) : Slice<T_file_benchmark_0>))) : T__struct_18)), ((new T__struct_18(((("PAX" : GoString))), ((new Slice<T_file_benchmark_0>(((new T_file_benchmark_0((({ name : ((("bar" : GoString))), mode : ((416 : GoInt64)), size : ((((3 : GoInt64)) : GoInt64)), xattrs : Go.map(((("foo" : GoString))) => ((("bar" : GoString)))), typeflag : 0, linkname : "", uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), ((((("foo" : GoString))) : Slice<GoByte>))) : T_file_benchmark_0)), ((new T_file_benchmark_0((({ name : ((("world" : GoString))), mode : ((416 : GoInt64)), size : ((((5 : GoInt64)) : GoInt64)), xattrs : Go.map(((("foo" : GoString))) => ((("bar" : GoString)))), typeflag : 0, linkname : "", uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)), ((((("hello" : GoString))) : Slice<GoByte>))) : T_file_benchmark_0))) : Slice<T_file_benchmark_0>))) : T__struct_18))) : Slice<T__struct_18>));
        _b.run(((("Writer" : GoString))), function(_b:stdgo.testing.Testing.B):Void {
            for (_0 => _v in _vectors) {
                _b.run(_v._label, function(_b:stdgo.testing.Testing.B):Void {
                    _b.reportAllocs();
                    {
                        var _i:GoInt = ((0 : GoInt));
                        Go.cfor(_i < _b.n, _i++, {
                            var _tw:Ref<Writer> = newWriter(stdgo.io.Io.discard);
                            for (_0 => _file in _v._files) {
                                {
                                    var _err:stdgo.Error = _tw.writeHeader(_file._hdr);
                                    if (_err != null) {
                                        _b.errorf(((("unexpected WriteHeader error: %v" : GoString))), Go.toInterface(_err));
                                    };
                                };
                                {
                                    var __tmp__ = _tw.write(_file._body), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                    if (_err != null) {
                                        _b.errorf(((("unexpected Write error: %v" : GoString))), Go.toInterface(_err));
                                    };
                                };
                            };
                            {
                                var _err:stdgo.Error = _tw.close();
                                if (_err != null) {
                                    _b.errorf(((("unexpected Close error: %v" : GoString))), Go.toInterface(_err));
                                };
                            };
                        });
                    };
                });
            };
        });
        _b.run(((("Reader" : GoString))), function(_b:stdgo.testing.Testing.B):Void {
            for (_0 => _v in _vectors) {
                var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
                var _r:stdgo.bytes.Bytes.Reader = new stdgo.bytes.Bytes.Reader();
                var _tw:Ref<Writer> = newWriter(_buf);
                for (_1 => _file in _v._files) {
                    _tw.writeHeader(_file._hdr);
                    _tw.write(_file._body);
                };
                _tw.close();
                _b.run(_v._label, function(_b:stdgo.testing.Testing.B):Void {
                    _b.reportAllocs();
                    {
                        var _i:GoInt = ((0 : GoInt));
                        Go.cfor(_i < _b.n, _i++, {
                            _r.reset(_buf.bytes());
                            var _tr:Ref<Reader> = newReader(_r);
                            {
                                var __tmp__ = _tr.next(), _0:Ref<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    _b.errorf(((("unexpected Next error: %v" : GoString))), Go.toInterface(_err));
                                };
                            };
                            {
                                var __tmp__ = stdgo.io.Io.copy(stdgo.io.Io.discard, _tr), _1:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    _b.errorf(((("unexpected Copy error : %v" : GoString))), Go.toInterface(_err));
                                };
                            };
                        });
                    };
                });
            };
        });
    }
function newWriter(_w:stdgo.io.Io.Writer):Writer {
        return (({ _w : _w, _curr : ((new T_regFileWriter(_w, ((0 : GoInt64))) : T_regFileWriter)), _pad : 0, _hdr : new Header(), _blk : new T_block(), _err : ((null : stdgo.Error)) } : Writer));
    }
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
function _ensureEOF(_r:stdgo.io.Io.Reader):Error {
        var __tmp__ = _tryReadFull(_r, ((new Slice<GoUInt8>(((0 : GoUInt8))) : Slice<GoUInt8>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n > ((0 : GoInt))) {
            return errWriteTooLong;
        } else if (_err == stdgo.io.Io.eof) {
            return ((null : stdgo.Error));
        } else {
            return _err;
        };
    }
function _bytediff(_a:Slice<GoByte>, _b:Slice<GoByte>):GoString {
        {};
        var _ss:Slice<GoString> = ((null : Slice<GoString>));
        var _sa:Slice<GoString> = stdgo.strings.Strings.split(stdgo.strings.Strings.trimSpace(stdgo.encoding.hex.Hex.dump(_a)), ((("\n" : GoString))));
        var _sb:Slice<GoString> = stdgo.strings.Strings.split(stdgo.strings.Strings.trimSpace(stdgo.encoding.hex.Hex.dump(_b)), ((("\n" : GoString))));
        while (((_sa != null ? _sa.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_sb != null ? _sb.length : ((0 : GoInt))) > ((0 : GoInt)))) {
            if ((_sa != null ? _sa[((0 : GoInt))] : (("" : GoString))) == (_sb != null ? _sb[((0 : GoInt))] : (("" : GoString)))) {
                _ss = (_ss != null ? _ss.__append__(((("   " : GoString))) + (_sa != null ? _sa[((0 : GoInt))] : (("" : GoString)))) : new Slice<GoString>(((("   " : GoString))) + (_sa != null ? _sa[((0 : GoInt))] : (("" : GoString)))));
            } else {
                _ss = (_ss != null ? _ss.__append__(((("-  " : GoString))) + (_sa != null ? _sa[((0 : GoInt))] : (("" : GoString)))) : new Slice<GoString>(((("-  " : GoString))) + (_sa != null ? _sa[((0 : GoInt))] : (("" : GoString)))));
                _ss = (_ss != null ? _ss.__append__(((("+  " : GoString))) + (_sb != null ? _sb[((0 : GoInt))] : (("" : GoString)))) : new Slice<GoString>(((("+  " : GoString))) + (_sb != null ? _sb[((0 : GoInt))] : (("" : GoString)))));
            };
            {
                final __tmp__0 = ((_sa.__slice__(((1 : GoInt))) : Slice<GoString>));
                final __tmp__1 = ((_sb.__slice__(((1 : GoInt))) : Slice<GoString>));
                _sa = __tmp__0;
                _sb = __tmp__1;
            };
        };
        while ((_sa != null ? _sa.length : ((0 : GoInt))) > ((0 : GoInt))) {
            _ss = (_ss != null ? _ss.__append__(((("-  " : GoString))) + (_sa != null ? _sa[((0 : GoInt))] : (("" : GoString)))) : new Slice<GoString>(((("-  " : GoString))) + (_sa != null ? _sa[((0 : GoInt))] : (("" : GoString)))));
            _sa = ((_sa.__slice__(((1 : GoInt))) : Slice<GoString>));
        };
        while ((_sb != null ? _sb.length : ((0 : GoInt))) > ((0 : GoInt))) {
            _ss = (_ss != null ? _ss.__append__(((("+  " : GoString))) + (_sb != null ? _sb[((0 : GoInt))] : (("" : GoString)))) : new Slice<GoString>(((("+  " : GoString))) + (_sb != null ? _sb[((0 : GoInt))] : (("" : GoString)))));
            _sb = ((_sb.__slice__(((1 : GoInt))) : Slice<GoString>));
        };
        return stdgo.strings.Strings.join(_ss, ((("\n" : GoString))));
    }
@:structInit class T_testHeader_testWriter_0 {
    public var _hdr : Header = new Header();
    public var _wantErr : stdgo.Error = ((null : stdgo.Error));
    public function new(?_hdr:Header, ?_wantErr:stdgo.Error) {
        if (_hdr != null) this._hdr = _hdr;
        if (_wantErr != null) this._wantErr = _wantErr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_testHeader_testWriter_0(_hdr, _wantErr);
    }
}
@:structInit class T_testWrite_testWriter_1 {
    public var _str : GoString = (("" : GoString));
    public var _wantCnt : GoInt = ((0 : GoInt));
    public var _wantErr : stdgo.Error = ((null : stdgo.Error));
    public function new(?_str:GoString, ?_wantCnt:GoInt, ?_wantErr:stdgo.Error) {
        if (_str != null) this._str = _str;
        if (_wantCnt != null) this._wantCnt = _wantCnt;
        if (_wantErr != null) this._wantErr = _wantErr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_testWrite_testWriter_1(_str, _wantCnt, _wantErr);
    }
}
@:structInit class T_testReadFrom_testWriter_2 {
    public var _ops : T_fileOps = new T_fileOps();
    public var _wantCnt : GoInt64 = ((0 : GoInt64));
    public var _wantErr : stdgo.Error = ((null : stdgo.Error));
    public function new(?_ops:T_fileOps, ?_wantCnt:GoInt64, ?_wantErr:stdgo.Error) {
        if (_ops != null) this._ops = _ops;
        if (_wantCnt != null) this._wantCnt = _wantCnt;
        if (_wantErr != null) this._wantErr = _wantErr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_testReadFrom_testWriter_2(_ops, _wantCnt, _wantErr);
    }
}
@:structInit class T_testClose_testWriter_3 {
    public var _wantErr : stdgo.Error = ((null : stdgo.Error));
    public function new(?_wantErr:stdgo.Error) {
        if (_wantErr != null) this._wantErr = _wantErr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_testClose_testWriter_3(_wantErr);
    }
}
@:follow typedef T_testFnc_testWriter_4 = AnyInterface;
function testWriter(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _vectors:Slice<T__struct_20> = ((new Slice<T__struct_20>(
((({ _file : ((("testdata/writer.tar" : GoString))), _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("small.txt" : GoString))), size : ((5 : GoInt64)), mode : ((416 : GoInt64)), uid : ((73025 : GoInt)), gid : ((5000 : GoInt)), uname : ((("dsymonds" : GoString))), gname : ((("eng" : GoString))), modTime : (stdgo.time.Time.unix(((1246508266 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1246508266 : GoInt64)), ((0 : GoInt64))).__copy__()), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("small.txt" : GoString))), size : ((5 : GoInt64)), mode : ((416 : GoInt64)), uid : ((73025 : GoInt)), gid : ((5000 : GoInt)), uname : ((("dsymonds" : GoString))), gname : ((("eng" : GoString))), modTime : (stdgo.time.Time.unix(((1246508266 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1246508266 : GoInt64)), ((0 : GoInt64))).__copy__()), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testWrite_testWriter_1(((("Kilts" : GoString))), ((5 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testWriter_1))), Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("small2.txt" : GoString))), size : ((11 : GoInt64)), mode : ((416 : GoInt64)), uid : ((73025 : GoInt)), uname : ((("dsymonds" : GoString))), gname : ((("eng" : GoString))), gid : ((5000 : GoInt)), modTime : (stdgo.time.Time.unix(((1245217492 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1245217492 : GoInt64)), ((0 : GoInt64))).__copy__()), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("small2.txt" : GoString))), size : ((11 : GoInt64)), mode : ((416 : GoInt64)), uid : ((73025 : GoInt)), uname : ((("dsymonds" : GoString))), gname : ((("eng" : GoString))), gid : ((5000 : GoInt)), modTime : (stdgo.time.Time.unix(((1245217492 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1245217492 : GoInt64)), ((0 : GoInt64))).__copy__()), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testWrite_testWriter_1(((("Google.com\n" : GoString))), ((11 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testWriter_1))), Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((50 : GoUInt8)), name : ((("link.txt" : GoString))), linkname : ((("small.txt" : GoString))), mode : ((511 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), uname : ((("strings" : GoString))), gname : ((("strings" : GoString))), modTime : (stdgo.time.Time.unix(((1314603082 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1314603082 : GoInt64)), ((0 : GoInt64))).__copy__()), size : 0, accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((50 : GoUInt8)), name : ((("link.txt" : GoString))), linkname : ((("small.txt" : GoString))), mode : ((511 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), uname : ((("strings" : GoString))), gname : ((("strings" : GoString))), modTime : (stdgo.time.Time.unix(((1314603082 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1314603082 : GoInt64)), ((0 : GoInt64))).__copy__()), size : 0, accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testWrite_testWriter_1(((("" : GoString))), ((0 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testWriter_1))), Go.toInterface(((new T_testClose_testWriter_3(((null : stdgo.Error))) : T_testClose_testWriter_3)))) : Slice<T_testFnc_testWriter_4>)) } : T__struct_20)) == null ? null : (({ _file : ((("testdata/writer.tar" : GoString))), _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("small.txt" : GoString))), size : ((5 : GoInt64)), mode : ((416 : GoInt64)), uid : ((73025 : GoInt)), gid : ((5000 : GoInt)), uname : ((("dsymonds" : GoString))), gname : ((("eng" : GoString))), modTime : (stdgo.time.Time.unix(((1246508266 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1246508266 : GoInt64)), ((0 : GoInt64))).__copy__()), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("small.txt" : GoString))), size : ((5 : GoInt64)), mode : ((416 : GoInt64)), uid : ((73025 : GoInt)), gid : ((5000 : GoInt)), uname : ((("dsymonds" : GoString))), gname : ((("eng" : GoString))), modTime : (stdgo.time.Time.unix(((1246508266 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1246508266 : GoInt64)), ((0 : GoInt64))).__copy__()), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testWrite_testWriter_1(((("Kilts" : GoString))), ((5 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testWriter_1))), Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("small2.txt" : GoString))), size : ((11 : GoInt64)), mode : ((416 : GoInt64)), uid : ((73025 : GoInt)), uname : ((("dsymonds" : GoString))), gname : ((("eng" : GoString))), gid : ((5000 : GoInt)), modTime : (stdgo.time.Time.unix(((1245217492 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1245217492 : GoInt64)), ((0 : GoInt64))).__copy__()), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("small2.txt" : GoString))), size : ((11 : GoInt64)), mode : ((416 : GoInt64)), uid : ((73025 : GoInt)), uname : ((("dsymonds" : GoString))), gname : ((("eng" : GoString))), gid : ((5000 : GoInt)), modTime : (stdgo.time.Time.unix(((1245217492 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1245217492 : GoInt64)), ((0 : GoInt64))).__copy__()), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testWrite_testWriter_1(((("Google.com\n" : GoString))), ((11 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testWriter_1))), Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((50 : GoUInt8)), name : ((("link.txt" : GoString))), linkname : ((("small.txt" : GoString))), mode : ((511 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), uname : ((("strings" : GoString))), gname : ((("strings" : GoString))), modTime : (stdgo.time.Time.unix(((1314603082 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1314603082 : GoInt64)), ((0 : GoInt64))).__copy__()), size : 0, accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((50 : GoUInt8)), name : ((("link.txt" : GoString))), linkname : ((("small.txt" : GoString))), mode : ((511 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), uname : ((("strings" : GoString))), gname : ((("strings" : GoString))), modTime : (stdgo.time.Time.unix(((1314603082 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1314603082 : GoInt64)), ((0 : GoInt64))).__copy__()), size : 0, accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testWrite_testWriter_1(((("" : GoString))), ((0 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testWriter_1))), Go.toInterface(((new T_testClose_testWriter_3(((null : stdgo.Error))) : T_testClose_testWriter_3)))) : Slice<T_testFnc_testWriter_4>)) } : T__struct_20)).__copy__()),
((({ _file : ((("testdata/writer-big.tar" : GoString))), _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("tmp/16gig.txt" : GoString))), size : (("17179869184" : GoInt64)), mode : ((416 : GoInt64)), uid : ((73025 : GoInt)), gid : ((5000 : GoInt)), uname : ((("dsymonds" : GoString))), gname : ((("eng" : GoString))), modTime : (stdgo.time.Time.unix(((1254699560 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1254699560 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((8 : GoInt)), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("tmp/16gig.txt" : GoString))), size : (("17179869184" : GoInt64)), mode : ((416 : GoInt64)), uid : ((73025 : GoInt)), gid : ((5000 : GoInt)), uname : ((("dsymonds" : GoString))), gname : ((("eng" : GoString))), modTime : (stdgo.time.Time.unix(((1254699560 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1254699560 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((8 : GoInt)), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0)))) : Slice<T_testFnc_testWriter_4>)) } : T__struct_20)) == null ? null : (({ _file : ((("testdata/writer-big.tar" : GoString))), _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("tmp/16gig.txt" : GoString))), size : (("17179869184" : GoInt64)), mode : ((416 : GoInt64)), uid : ((73025 : GoInt)), gid : ((5000 : GoInt)), uname : ((("dsymonds" : GoString))), gname : ((("eng" : GoString))), modTime : (stdgo.time.Time.unix(((1254699560 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1254699560 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((8 : GoInt)), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("tmp/16gig.txt" : GoString))), size : (("17179869184" : GoInt64)), mode : ((416 : GoInt64)), uid : ((73025 : GoInt)), gid : ((5000 : GoInt)), uname : ((("dsymonds" : GoString))), gname : ((("eng" : GoString))), modTime : (stdgo.time.Time.unix(((1254699560 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1254699560 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((8 : GoInt)), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0)))) : Slice<T_testFnc_testWriter_4>)) } : T__struct_20)).__copy__()),
((({ _file : ((("testdata/writer-big-long.tar" : GoString))), _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : stdgo.strings.Strings.repeat(((("longname/" : GoString))), ((15 : GoInt))) + ((("16gig.txt" : GoString))), size : (("17179869184" : GoInt64)), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), uname : ((("guillaume" : GoString))), gname : ((("guillaume" : GoString))), modTime : (stdgo.time.Time.unix(((1399583047 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1399583047 : GoInt64)), ((0 : GoInt64))).__copy__()), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : stdgo.strings.Strings.repeat(((("longname/" : GoString))), ((15 : GoInt))) + ((("16gig.txt" : GoString))), size : (("17179869184" : GoInt64)), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), uname : ((("guillaume" : GoString))), gname : ((("guillaume" : GoString))), modTime : (stdgo.time.Time.unix(((1399583047 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1399583047 : GoInt64)), ((0 : GoInt64))).__copy__()), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0)))) : Slice<T_testFnc_testWriter_4>)) } : T__struct_20)) == null ? null : (({ _file : ((("testdata/writer-big-long.tar" : GoString))), _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : stdgo.strings.Strings.repeat(((("longname/" : GoString))), ((15 : GoInt))) + ((("16gig.txt" : GoString))), size : (("17179869184" : GoInt64)), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), uname : ((("guillaume" : GoString))), gname : ((("guillaume" : GoString))), modTime : (stdgo.time.Time.unix(((1399583047 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1399583047 : GoInt64)), ((0 : GoInt64))).__copy__()), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : stdgo.strings.Strings.repeat(((("longname/" : GoString))), ((15 : GoInt))) + ((("16gig.txt" : GoString))), size : (("17179869184" : GoInt64)), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), uname : ((("guillaume" : GoString))), gname : ((("guillaume" : GoString))), modTime : (stdgo.time.Time.unix(((1399583047 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1399583047 : GoInt64)), ((0 : GoInt64))).__copy__()), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0)))) : Slice<T_testFnc_testWriter_4>)) } : T__struct_20)).__copy__()),
((({ _file : ((("testdata/ustar.tar" : GoString))), _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : stdgo.strings.Strings.repeat(((("longname/" : GoString))), ((15 : GoInt))) + ((("file.txt" : GoString))), size : ((6 : GoInt64)), mode : ((420 : GoInt64)), uid : ((501 : GoInt)), gid : ((20 : GoInt)), uname : ((("shane" : GoString))), gname : ((("staff" : GoString))), modTime : (stdgo.time.Time.unix(((1360135598 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1360135598 : GoInt64)), ((0 : GoInt64))).__copy__()), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : stdgo.strings.Strings.repeat(((("longname/" : GoString))), ((15 : GoInt))) + ((("file.txt" : GoString))), size : ((6 : GoInt64)), mode : ((420 : GoInt64)), uid : ((501 : GoInt)), gid : ((20 : GoInt)), uname : ((("shane" : GoString))), gname : ((("staff" : GoString))), modTime : (stdgo.time.Time.unix(((1360135598 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1360135598 : GoInt64)), ((0 : GoInt64))).__copy__()), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testWrite_testWriter_1(((("hello\n" : GoString))), ((6 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testWriter_1))), Go.toInterface(((new T_testClose_testWriter_3(((null : stdgo.Error))) : T_testClose_testWriter_3)))) : Slice<T_testFnc_testWriter_4>)) } : T__struct_20)) == null ? null : (({ _file : ((("testdata/ustar.tar" : GoString))), _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : stdgo.strings.Strings.repeat(((("longname/" : GoString))), ((15 : GoInt))) + ((("file.txt" : GoString))), size : ((6 : GoInt64)), mode : ((420 : GoInt64)), uid : ((501 : GoInt)), gid : ((20 : GoInt)), uname : ((("shane" : GoString))), gname : ((("staff" : GoString))), modTime : (stdgo.time.Time.unix(((1360135598 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1360135598 : GoInt64)), ((0 : GoInt64))).__copy__()), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : stdgo.strings.Strings.repeat(((("longname/" : GoString))), ((15 : GoInt))) + ((("file.txt" : GoString))), size : ((6 : GoInt64)), mode : ((420 : GoInt64)), uid : ((501 : GoInt)), gid : ((20 : GoInt)), uname : ((("shane" : GoString))), gname : ((("staff" : GoString))), modTime : (stdgo.time.Time.unix(((1360135598 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1360135598 : GoInt64)), ((0 : GoInt64))).__copy__()), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testWrite_testWriter_1(((("hello\n" : GoString))), ((6 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testWriter_1))), Go.toInterface(((new T_testClose_testWriter_3(((null : stdgo.Error))) : T_testClose_testWriter_3)))) : Slice<T_testFnc_testWriter_4>)) } : T__struct_20)).__copy__()),
((({ _file : ((("testdata/hardlink.tar" : GoString))), _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("file.txt" : GoString))), size : ((15 : GoInt64)), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((100 : GoInt)), uname : ((("vbatts" : GoString))), gname : ((("users" : GoString))), modTime : (stdgo.time.Time.unix(((1425484303 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1425484303 : GoInt64)), ((0 : GoInt64))).__copy__()), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("file.txt" : GoString))), size : ((15 : GoInt64)), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((100 : GoInt)), uname : ((("vbatts" : GoString))), gname : ((("users" : GoString))), modTime : (stdgo.time.Time.unix(((1425484303 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1425484303 : GoInt64)), ((0 : GoInt64))).__copy__()), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testWrite_testWriter_1(((("Slartibartfast\n" : GoString))), ((15 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testWriter_1))), Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((49 : GoUInt8)), name : ((("hard.txt" : GoString))), linkname : ((("file.txt" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((100 : GoInt)), uname : ((("vbatts" : GoString))), gname : ((("users" : GoString))), modTime : (stdgo.time.Time.unix(((1425484303 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1425484303 : GoInt64)), ((0 : GoInt64))).__copy__()), size : 0, accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((49 : GoUInt8)), name : ((("hard.txt" : GoString))), linkname : ((("file.txt" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((100 : GoInt)), uname : ((("vbatts" : GoString))), gname : ((("users" : GoString))), modTime : (stdgo.time.Time.unix(((1425484303 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1425484303 : GoInt64)), ((0 : GoInt64))).__copy__()), size : 0, accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testWrite_testWriter_1(((("" : GoString))), ((0 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testWriter_1))), Go.toInterface(((new T_testClose_testWriter_3(((null : stdgo.Error))) : T_testClose_testWriter_3)))) : Slice<T_testFnc_testWriter_4>)) } : T__struct_20)) == null ? null : (({ _file : ((("testdata/hardlink.tar" : GoString))), _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("file.txt" : GoString))), size : ((15 : GoInt64)), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((100 : GoInt)), uname : ((("vbatts" : GoString))), gname : ((("users" : GoString))), modTime : (stdgo.time.Time.unix(((1425484303 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1425484303 : GoInt64)), ((0 : GoInt64))).__copy__()), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("file.txt" : GoString))), size : ((15 : GoInt64)), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((100 : GoInt)), uname : ((("vbatts" : GoString))), gname : ((("users" : GoString))), modTime : (stdgo.time.Time.unix(((1425484303 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1425484303 : GoInt64)), ((0 : GoInt64))).__copy__()), linkname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testWrite_testWriter_1(((("Slartibartfast\n" : GoString))), ((15 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testWriter_1))), Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((49 : GoUInt8)), name : ((("hard.txt" : GoString))), linkname : ((("file.txt" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((100 : GoInt)), uname : ((("vbatts" : GoString))), gname : ((("users" : GoString))), modTime : (stdgo.time.Time.unix(((1425484303 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1425484303 : GoInt64)), ((0 : GoInt64))).__copy__()), size : 0, accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((49 : GoUInt8)), name : ((("hard.txt" : GoString))), linkname : ((("file.txt" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((100 : GoInt)), uname : ((("vbatts" : GoString))), gname : ((("users" : GoString))), modTime : (stdgo.time.Time.unix(((1425484303 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1425484303 : GoInt64)), ((0 : GoInt64))).__copy__()), size : 0, accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testWrite_testWriter_1(((("" : GoString))), ((0 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testWriter_1))), Go.toInterface(((new T_testClose_testWriter_3(((null : stdgo.Error))) : T_testClose_testWriter_3)))) : Slice<T_testFnc_testWriter_4>)) } : T__struct_20)).__copy__()),
((({ _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("bad-null.txt" : GoString))), xattrs : Go.map(((("null" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("null" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))) => ((("fizzbuzz" : GoString)))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("bad-null.txt" : GoString))), xattrs : Go.map(((("null" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("null" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))) => ((("fizzbuzz" : GoString)))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), new T_headerError_wrapper(((new Slice<GoString>() : T_headerError)))) : T_testHeader_testWriter_0)))) : Slice<T_testFnc_testWriter_4>)), _file : "" } : T__struct_20)) == null ? null : (({ _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("bad-null.txt" : GoString))), xattrs : Go.map(((("null" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("null" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))) => ((("fizzbuzz" : GoString)))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("bad-null.txt" : GoString))), xattrs : Go.map(((("null" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("null" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))) => ((("fizzbuzz" : GoString)))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), new T_headerError_wrapper(((new Slice<GoString>() : T_headerError)))) : T_testHeader_testWriter_0)))) : Slice<T_testFnc_testWriter_4>)), _file : "" } : T__struct_20)).__copy__()),
((({ _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("null" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((".txt" : GoString))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("null" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((".txt" : GoString))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), new T_headerError_wrapper(((new Slice<GoString>() : T_headerError)))) : T_testHeader_testWriter_0)))) : Slice<T_testFnc_testWriter_4>)), _file : "" } : T__struct_20)) == null ? null : (({ _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("null" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((".txt" : GoString))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("null" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((".txt" : GoString))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), new T_headerError_wrapper(((new Slice<GoString>() : T_headerError)))) : T_testHeader_testWriter_0)))) : Slice<T_testFnc_testWriter_4>)), _file : "" } : T__struct_20)).__copy__()),
((({ _file : ((("testdata/pax-records.tar" : GoString))), _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("file" : GoString))), uname : stdgo.strings.Strings.repeat(((("long" : GoString))), ((10 : GoInt))), paxrecords : Go.map(((("path" : GoString))) => ((("FILE" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("0,0" : GoString))), ((("comment" : GoString))) => ((("Hello, 世界" : GoString))), ((("GOLANG.pkg" : GoString))) => ((("tar" : GoString)))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("file" : GoString))), uname : stdgo.strings.Strings.repeat(((("long" : GoString))), ((10 : GoInt))), paxrecords : Go.map(((("path" : GoString))) => ((("FILE" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("0,0" : GoString))), ((("comment" : GoString))) => ((("Hello, 世界" : GoString))), ((("GOLANG.pkg" : GoString))) => ((("tar" : GoString)))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testClose_testWriter_3(((null : stdgo.Error))) : T_testClose_testWriter_3)))) : Slice<T_testFnc_testWriter_4>)) } : T__struct_20)) == null ? null : (({ _file : ((("testdata/pax-records.tar" : GoString))), _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("file" : GoString))), uname : stdgo.strings.Strings.repeat(((("long" : GoString))), ((10 : GoInt))), paxrecords : Go.map(((("path" : GoString))) => ((("FILE" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("0,0" : GoString))), ((("comment" : GoString))) => ((("Hello, 世界" : GoString))), ((("GOLANG.pkg" : GoString))) => ((("tar" : GoString)))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("file" : GoString))), uname : stdgo.strings.Strings.repeat(((("long" : GoString))), ((10 : GoInt))), paxrecords : Go.map(((("path" : GoString))) => ((("FILE" : GoString))), ((("GNU.sparse.map" : GoString))) => ((("0,0" : GoString))), ((("comment" : GoString))) => ((("Hello, 世界" : GoString))), ((("GOLANG.pkg" : GoString))) => ((("tar" : GoString)))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testClose_testWriter_3(((null : stdgo.Error))) : T_testClose_testWriter_3)))) : Slice<T_testFnc_testWriter_4>)) } : T__struct_20)).__copy__()),
((({ _file : ((("testdata/pax-global-records.tar" : GoString))), _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((103 : GoUInt8)), paxrecords : Go.map(((("path" : GoString))) => ((("global1" : GoString))), ((("mtime" : GoString))) => ((("1500000000.0" : GoString)))), name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((103 : GoUInt8)), paxrecords : Go.map(((("path" : GoString))) => ((("global1" : GoString))), ((("mtime" : GoString))) => ((("1500000000.0" : GoString)))), name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("file1" : GoString))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("file1" : GoString))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("file2" : GoString))), paxrecords : Go.map(((("path" : GoString))) => ((("file2" : GoString)))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("file2" : GoString))), paxrecords : Go.map(((("path" : GoString))) => ((("file2" : GoString)))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((103 : GoUInt8)), paxrecords : Go.map(((("path" : GoString))) => ((("" : GoString)))), name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((103 : GoUInt8)), paxrecords : Go.map(((("path" : GoString))) => ((("" : GoString)))), name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("file3" : GoString))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("file3" : GoString))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("file4" : GoString))), modTime : (stdgo.time.Time.unix(((1400000000 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1400000000 : GoInt64)), ((0 : GoInt64))).__copy__()), paxrecords : Go.map(((("mtime" : GoString))) => ((("1400000000" : GoString)))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("file4" : GoString))), modTime : (stdgo.time.Time.unix(((1400000000 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1400000000 : GoInt64)), ((0 : GoInt64))).__copy__()), paxrecords : Go.map(((("mtime" : GoString))) => ((("1400000000" : GoString)))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testClose_testWriter_3(((null : stdgo.Error))) : T_testClose_testWriter_3)))) : Slice<T_testFnc_testWriter_4>)) } : T__struct_20)) == null ? null : (({ _file : ((("testdata/pax-global-records.tar" : GoString))), _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((103 : GoUInt8)), paxrecords : Go.map(((("path" : GoString))) => ((("global1" : GoString))), ((("mtime" : GoString))) => ((("1500000000.0" : GoString)))), name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((103 : GoUInt8)), paxrecords : Go.map(((("path" : GoString))) => ((("global1" : GoString))), ((("mtime" : GoString))) => ((("1500000000.0" : GoString)))), name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("file1" : GoString))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("file1" : GoString))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("file2" : GoString))), paxrecords : Go.map(((("path" : GoString))) => ((("file2" : GoString)))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("file2" : GoString))), paxrecords : Go.map(((("path" : GoString))) => ((("file2" : GoString)))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((103 : GoUInt8)), paxrecords : Go.map(((("path" : GoString))) => ((("" : GoString)))), name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((103 : GoUInt8)), paxrecords : Go.map(((("path" : GoString))) => ((("" : GoString)))), name : "", linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("file3" : GoString))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("file3" : GoString))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("file4" : GoString))), modTime : (stdgo.time.Time.unix(((1400000000 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1400000000 : GoInt64)), ((0 : GoInt64))).__copy__()), paxrecords : Go.map(((("mtime" : GoString))) => ((("1400000000" : GoString)))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("file4" : GoString))), modTime : (stdgo.time.Time.unix(((1400000000 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1400000000 : GoInt64)), ((0 : GoInt64))).__copy__()), paxrecords : Go.map(((("mtime" : GoString))) => ((("1400000000" : GoString)))), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testClose_testWriter_3(((null : stdgo.Error))) : T_testClose_testWriter_3)))) : Slice<T_testFnc_testWriter_4>)) } : T__struct_20)).__copy__()),
((({ _file : ((("testdata/gnu-utf8.tar" : GoString))), _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), uname : ((("☺" : GoString))), gname : ((("⚹" : GoString))), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((8 : GoInt)), linkname : "", size : 0, accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), uname : ((("☺" : GoString))), gname : ((("⚹" : GoString))), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((8 : GoInt)), linkname : "", size : 0, accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testClose_testWriter_3(((null : stdgo.Error))) : T_testClose_testWriter_3)))) : Slice<T_testFnc_testWriter_4>)) } : T__struct_20)) == null ? null : (({ _file : ((("testdata/gnu-utf8.tar" : GoString))), _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), uname : ((("☺" : GoString))), gname : ((("⚹" : GoString))), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((8 : GoInt)), linkname : "", size : 0, accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹☺☻☹" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), uname : ((("☺" : GoString))), gname : ((("⚹" : GoString))), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((8 : GoInt)), linkname : "", size : 0, accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testClose_testWriter_3(((null : stdgo.Error))) : T_testClose_testWriter_3)))) : Slice<T_testFnc_testWriter_4>)) } : T__struct_20)).__copy__()),
((({ _file : ((("testdata/gnu-not-utf8.tar" : GoString))), _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("hi" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("81") : GoString)) + ((haxe.io.Bytes.ofHex("82") : GoString)) + ((haxe.io.Bytes.ofHex("83") : GoString)) + (("bye" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), uname : ((("rawr" : GoString))), gname : ((("dsnet" : GoString))), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((8 : GoInt)), linkname : "", size : 0, accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("hi" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("81") : GoString)) + ((haxe.io.Bytes.ofHex("82") : GoString)) + ((haxe.io.Bytes.ofHex("83") : GoString)) + (("bye" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), uname : ((("rawr" : GoString))), gname : ((("dsnet" : GoString))), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((8 : GoInt)), linkname : "", size : 0, accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testClose_testWriter_3(((null : stdgo.Error))) : T_testClose_testWriter_3)))) : Slice<T_testFnc_testWriter_4>)) } : T__struct_20)) == null ? null : (({ _file : ((("testdata/gnu-not-utf8.tar" : GoString))), _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ typeflag : ((48 : GoUInt8)), name : ((("hi" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("81") : GoString)) + ((haxe.io.Bytes.ofHex("82") : GoString)) + ((haxe.io.Bytes.ofHex("83") : GoString)) + (("bye" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), uname : ((("rawr" : GoString))), gname : ((("dsnet" : GoString))), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((8 : GoInt)), linkname : "", size : 0, accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)) == null ? null : (({ typeflag : ((48 : GoUInt8)), name : ((("hi" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("81") : GoString)) + ((haxe.io.Bytes.ofHex("82") : GoString)) + ((haxe.io.Bytes.ofHex("83") : GoString)) + (("bye" : GoString))), mode : ((420 : GoInt64)), uid : ((1000 : GoInt)), gid : ((1000 : GoInt)), uname : ((("rawr" : GoString))), gname : ((("dsnet" : GoString))), modTime : (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()), format : ((8 : GoInt)), linkname : "", size : 0, accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)) } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testClose_testWriter_3(((null : stdgo.Error))) : T_testClose_testWriter_3)))) : Slice<T_testFnc_testWriter_4>)) } : T__struct_20)).__copy__()),
((({ _file : ((("testdata/trailing-slash.tar" : GoString))), _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ name : stdgo.strings.Strings.repeat(((("123456789/" : GoString))), ((30 : GoInt))), typeflag : 0, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ name : stdgo.strings.Strings.repeat(((("123456789/" : GoString))), ((30 : GoInt))), typeflag : 0, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testClose_testWriter_3(((null : stdgo.Error))) : T_testClose_testWriter_3)))) : Slice<T_testFnc_testWriter_4>)) } : T__struct_20)) == null ? null : (({ _file : ((("testdata/trailing-slash.tar" : GoString))), _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ name : stdgo.strings.Strings.repeat(((("123456789/" : GoString))), ((30 : GoInt))), typeflag : 0, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ name : stdgo.strings.Strings.repeat(((("123456789/" : GoString))), ((30 : GoInt))), typeflag : 0, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testClose_testWriter_3(((null : stdgo.Error))) : T_testClose_testWriter_3)))) : Slice<T_testFnc_testWriter_4>)) } : T__struct_20)).__copy__()),
((({ _file : ((("testdata/file-and-dir.tar" : GoString))), _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ name : ((("small.txt" : GoString))), size : ((5 : GoInt64)), typeflag : 0, linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ name : ((("small.txt" : GoString))), size : ((5 : GoInt64)), typeflag : 0, linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testWrite_testWriter_1(((("Kilts" : GoString))), ((5 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testWriter_1))), Go.toInterface(((new T_testHeader_testWriter_0(((({ name : ((("dir/" : GoString))), typeflag : 0, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ name : ((("dir/" : GoString))), typeflag : 0, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testClose_testWriter_3(((null : stdgo.Error))) : T_testClose_testWriter_3)))) : Slice<T_testFnc_testWriter_4>)) } : T__struct_20)) == null ? null : (({ _file : ((("testdata/file-and-dir.tar" : GoString))), _tests : ((new Slice<T_testFnc_testWriter_4>(Go.toInterface(((new T_testHeader_testWriter_0(((({ name : ((("small.txt" : GoString))), size : ((5 : GoInt64)), typeflag : 0, linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ name : ((("small.txt" : GoString))), size : ((5 : GoInt64)), typeflag : 0, linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testWrite_testWriter_1(((("Kilts" : GoString))), ((5 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testWriter_1))), Go.toInterface(((new T_testHeader_testWriter_0(((({ name : ((("dir/" : GoString))), typeflag : 0, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)) == null ? null : (({ name : ((("dir/" : GoString))), typeflag : 0, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)).__copy__()), ((null : stdgo.Error))) : T_testHeader_testWriter_0))), Go.toInterface(((new T_testClose_testWriter_3(((null : stdgo.Error))) : T_testClose_testWriter_3)))) : Slice<T_testFnc_testWriter_4>)) } : T__struct_20)).__copy__())) : Slice<T__struct_20>));
        var _equalError:(stdgo.Error, stdgo.Error) -> Bool = function(_x:Error, _y:Error):Bool {
            var __tmp__ = try {
                { value : ((((_x.__underlying__().value : Dynamic)) : T_headerError)), ok : true };
            } catch(_) {
                { value : new T_headerError(), ok : false };
            }, _0 = __tmp__.value, _ok1 = __tmp__.ok;
            var __tmp__ = try {
                { value : ((((_y.__underlying__().value : Dynamic)) : T_headerError)), ok : true };
            } catch(_) {
                { value : new T_headerError(), ok : false };
            }, _1 = __tmp__.value, _ok2 = __tmp__.ok;
            if (_ok1 || _ok2) {
                return _ok1 && _ok2;
            };
            return _x == _y;
        };
        for (_0 => _v in _vectors) {
            _t.run(stdgo.path.Path.base(_v._file), function(_t:stdgo.testing.Testing.T_):Void {
                {};
                var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
                var _tw:Ref<Writer> = newWriter(stdgo.testing.iotest.Iotest.truncateWriter(_buf, ((10240 : GoInt64))));
                for (_i => _tf in _v._tests) {
                    if (Go.assertable(((_tf : T_testHeader_testWriter_0)))) {
                        var _tf:T_testHeader_testWriter_0 = _tf == null ? null : _tf.__underlying__() == null ? null : _tf == null ? null : _tf.__underlying__().value;
                        var _err:stdgo.Error = _tw.writeHeader(_tf._hdr);
                        if (!_equalError(_err, _tf._wantErr)) {
                            _t.fatalf(((("test %d, WriteHeader() = %v, want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_err), Go.toInterface(_tf._wantErr));
                        };
                    } else if (Go.assertable(((_tf : T_testWrite_testWriter_1)))) {
                        var _tf:T_testWrite_testWriter_1 = _tf == null ? null : _tf.__underlying__() == null ? null : _tf == null ? null : _tf.__underlying__().value;
                        var __tmp__ = _tw.write(((_tf._str : Slice<GoByte>))), _got:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if ((_got != _tf._wantCnt) || !_equalError(_err, _tf._wantErr)) {
                            _t.fatalf(((("test %d, Write() = (%d, %v), want (%d, %v)" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_err), Go.toInterface(_tf._wantCnt), Go.toInterface(_tf._wantErr));
                        };
                    } else if (Go.assertable(((_tf : T_testReadFrom_testWriter_2)))) {
                        var _tf:T_testReadFrom_testWriter_2 = _tf == null ? null : _tf.__underlying__() == null ? null : _tf == null ? null : _tf.__underlying__().value;
                        var _f:Ref<T_testFile> = (({ _ops : (_tf._ops == null ? null : _tf._ops.__copy__()), _pos : 0 } : T_testFile));
                        var __tmp__ = _tw._readFrom(_f), _got:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        {
                            var __tmp__ = try {
                                { value : ((((_err.__underlying__().value : Dynamic)) : T_testError)), ok : true };
                            } catch(_) {
                                { value : new T_testError(), ok : false };
                            }, _0 = __tmp__.value, _ok = __tmp__.ok;
                            if (_ok) {
                                _t.errorf(((("test %d, ReadFrom(): %v" : GoString))), Go.toInterface(_i), Go.toInterface(_err));
                            } else if ((_got != _tf._wantCnt) || !_equalError(_err, _tf._wantErr)) {
                                _t.errorf(((("test %d, ReadFrom() = (%d, %v), want (%d, %v)" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_err), Go.toInterface(_tf._wantCnt), Go.toInterface(_tf._wantErr));
                            };
                        };
                        if ((_f._ops != null ? _f._ops.length : ((0 : GoInt))) > ((0 : GoInt))) {
                            _t.errorf(((("test %d, expected %d more operations" : GoString))), Go.toInterface(_i), Go.toInterface((_f._ops != null ? _f._ops.length : ((0 : GoInt)))));
                        };
                    } else if (Go.assertable(((_tf : T_testClose_testWriter_3)))) {
                        var _tf:T_testClose_testWriter_3 = _tf == null ? null : _tf.__underlying__() == null ? null : _tf == null ? null : _tf.__underlying__().value;
                        var _err:stdgo.Error = _tw.close();
                        if (!_equalError(_err, _tf._wantErr)) {
                            _t.fatalf(((("test %d, Close() = %v, want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_err), Go.toInterface(_tf._wantErr));
                        };
                    } else {
                        var _tf:T_testFnc_testWriter_4 = _tf == null ? null : _tf.__underlying__();
                        _t.fatalf(((("test %d, unknown test operation: %T" : GoString))), Go.toInterface(_i), Go.toInterface(_tf));
                    };
                };
                if (_v._file != ((("" : GoString)))) {
                    var __tmp__ = stdgo.os.Os.readFile(_v._file), _want:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(((("ReadFile() = %v, want nil" : GoString))), Go.toInterface(_err));
                    };
                    var _got:Slice<GoUInt8> = _buf.bytes();
                    if (!stdgo.bytes.Bytes.equal(_want, _got)) {
                        _t.fatalf(((("incorrect result: (-got +want)\n%v" : GoString))), Go.toInterface(_bytediff(_got, _want)));
                    };
                };
            });
        };
    }
function testPax(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = stdgo.os.Os.stat(((("testdata/small.txt" : GoString)))), _fileinfo:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var __tmp__ = fileInfoHeader(_fileinfo, ((("" : GoString)))), _hdr:Ref<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("os.Stat: %v" : GoString))), Go.toInterface(_err));
        };
        var _longName:GoString = stdgo.strings.Strings.repeat(((("ab" : GoString))), ((100 : GoInt)));
        var _contents:GoString = stdgo.strings.Strings.repeat((((" " : GoString))), ((_hdr.size : GoInt)));
        _hdr.name = _longName;
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _writer:Ref<Writer> = newWriter(_buf);
        {
            var _err:stdgo.Error = _writer.writeHeader(_hdr);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            {
                var __tmp__ = _writer.write(((_contents : Slice<GoByte>)));
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _writer.close();
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        if (!stdgo.bytes.Bytes.contains(_buf.bytes(), ((((("PaxHeaders.0" : GoString))) : Slice<GoByte>)))) {
            _t.fatal(Go.toInterface(((("Expected at least one PAX header to be written." : GoString)))));
        };
        var _reader:Ref<Reader> = newReader(_buf);
        {
            var __tmp__ = _reader.next();
            _hdr = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        if (_hdr.name != _longName) {
            _t.fatal(Go.toInterface(((("Couldn\'t recover long file name" : GoString)))));
        };
    }
function testPaxSymlink(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = stdgo.os.Os.stat(((("testdata/small.txt" : GoString)))), _fileinfo:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var __tmp__ = fileInfoHeader(_fileinfo, ((("" : GoString)))), _hdr:Ref<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _hdr.typeflag = ((50 : GoUInt8));
        if (_err != null) {
            _t.fatalf(((("os.Stat:1 %v" : GoString))), Go.toInterface(_err));
        };
        var _longLinkname:GoString = stdgo.strings.Strings.repeat(((("1234567890/1234567890" : GoString))), ((10 : GoInt)));
        _hdr.linkname = _longLinkname;
        _hdr.size = ((0 : GoInt64));
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _writer:Ref<Writer> = newWriter(_buf);
        {
            var _err:stdgo.Error = _writer.writeHeader(_hdr);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _writer.close();
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        if (!stdgo.bytes.Bytes.contains(_buf.bytes(), ((((("PaxHeaders.0" : GoString))) : Slice<GoByte>)))) {
            _t.fatal(Go.toInterface(((("Expected at least one PAX header to be written." : GoString)))));
        };
        var _reader:Ref<Reader> = newReader(_buf);
        {
            var __tmp__ = _reader.next();
            _hdr = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        if (_hdr.linkname != _longLinkname) {
            _t.fatal(Go.toInterface(((("Couldn\'t recover long link name" : GoString)))));
        };
    }
function testPaxNonAscii(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = stdgo.os.Os.stat(((("testdata/small.txt" : GoString)))), _fileinfo:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var __tmp__ = fileInfoHeader(_fileinfo, ((("" : GoString)))), _hdr:Ref<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("os.Stat:1 %v" : GoString))), Go.toInterface(_err));
        };
        var _chineseFilename:GoString = ((("文件名" : GoString)));
        var _chineseGroupname:GoString = ((("組" : GoString)));
        var _chineseUsername:GoString = ((("用戶名" : GoString)));
        _hdr.name = _chineseFilename;
        _hdr.gname = _chineseGroupname;
        _hdr.uname = _chineseUsername;
        var _contents:GoString = stdgo.strings.Strings.repeat((((" " : GoString))), ((_hdr.size : GoInt)));
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _writer:Ref<Writer> = newWriter(_buf);
        {
            var _err:stdgo.Error = _writer.writeHeader(_hdr);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            {
                var __tmp__ = _writer.write(((_contents : Slice<GoByte>)));
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _writer.close();
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        if (!stdgo.bytes.Bytes.contains(_buf.bytes(), ((((("PaxHeaders.0" : GoString))) : Slice<GoByte>)))) {
            _t.fatal(Go.toInterface(((("Expected at least one PAX header to be written." : GoString)))));
        };
        var _reader:Ref<Reader> = newReader(_buf);
        {
            var __tmp__ = _reader.next();
            _hdr = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        if (_hdr.name != _chineseFilename) {
            _t.fatal(Go.toInterface(((("Couldn\'t recover unicode name" : GoString)))));
        };
        if (_hdr.gname != _chineseGroupname) {
            _t.fatal(Go.toInterface(((("Couldn\'t recover unicode group" : GoString)))));
        };
        if (_hdr.uname != _chineseUsername) {
            _t.fatal(Go.toInterface(((("Couldn\'t recover unicode user" : GoString)))));
        };
    }
function testPaxXattrs(_t:stdgo.testing.Testing.T_):Void {
        var _xattrs:GoMap<GoString, GoString> = Go.map(((("user.key" : GoString))) => ((("value" : GoString))));
        var __tmp__ = stdgo.os.Os.stat(((("testdata/small.txt" : GoString)))), _fileinfo:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var __tmp__ = fileInfoHeader(_fileinfo, ((("" : GoString)))), _hdr:Ref<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("os.Stat: %v" : GoString))), Go.toInterface(_err));
        };
        var _contents:GoString = ((("Kilts" : GoString)));
        _hdr.xattrs = _xattrs;
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _writer:Ref<Writer> = newWriter(_buf);
        {
            var _err:stdgo.Error = _writer.writeHeader(_hdr);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            {
                var __tmp__ = _writer.write(((_contents : Slice<GoByte>)));
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _writer.close();
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        var _reader:Ref<Reader> = newReader(_buf);
        {
            var __tmp__ = _reader.next();
            _hdr = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_hdr.xattrs), Go.toInterface(_xattrs))) {
            _t.fatalf(((("xattrs did not survive round trip: got %+v, want %+v" : GoString))), Go.toInterface(_hdr.xattrs), Go.toInterface(_xattrs));
        };
    }
function testPaxHeadersSorted(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = stdgo.os.Os.stat(((("testdata/small.txt" : GoString)))), _fileinfo:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var __tmp__ = fileInfoHeader(_fileinfo, ((("" : GoString)))), _hdr:Ref<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("os.Stat: %v" : GoString))), Go.toInterface(_err));
        };
        var _contents:GoString = stdgo.strings.Strings.repeat((((" " : GoString))), ((_hdr.size : GoInt)));
        _hdr.xattrs = Go.map(((("foo" : GoString))) => ((("foo" : GoString))), ((("bar" : GoString))) => ((("bar" : GoString))), ((("baz" : GoString))) => ((("baz" : GoString))), ((("qux" : GoString))) => ((("qux" : GoString))));
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _writer:Ref<Writer> = newWriter(_buf);
        {
            var _err:stdgo.Error = _writer.writeHeader(_hdr);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            {
                var __tmp__ = _writer.write(((_contents : Slice<GoByte>)));
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _writer.close();
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        if (!stdgo.bytes.Bytes.contains(_buf.bytes(), ((((("PaxHeaders.0" : GoString))) : Slice<GoByte>)))) {
            _t.fatal(Go.toInterface(((("Expected at least one PAX header to be written." : GoString)))));
        };
        var _indices:Slice<GoInt> = ((new Slice<GoInt>(stdgo.bytes.Bytes.index(_buf.bytes(), ((((("bar=bar" : GoString))) : Slice<GoByte>))), stdgo.bytes.Bytes.index(_buf.bytes(), ((((("baz=baz" : GoString))) : Slice<GoByte>))), stdgo.bytes.Bytes.index(_buf.bytes(), ((((("foo=foo" : GoString))) : Slice<GoByte>))), stdgo.bytes.Bytes.index(_buf.bytes(), ((((("qux=qux" : GoString))) : Slice<GoByte>)))) : Slice<GoInt>));
        if (!stdgo.sort.Sort.intsAreSorted(_indices)) {
            _t.fatal(Go.toInterface(((("PAX headers are not sorted" : GoString)))));
        };
    }
function testUSTARLongName(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = stdgo.os.Os.stat(((("testdata/small.txt" : GoString)))), _fileinfo:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var __tmp__ = fileInfoHeader(_fileinfo, ((("" : GoString)))), _hdr:Ref<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _hdr.typeflag = ((53 : GoUInt8));
        if (_err != null) {
            _t.fatalf(((("os.Stat:1 %v" : GoString))), Go.toInterface(_err));
        };
        var _longName:GoString = ((("/0000_0000000/00000-000000000/0000_0000000/00000-0000000000000/0000_0000000/00000-0000000-00000000/0000_0000000/00000000/0000_0000000/000/0000_0000000/00000000v00/0000_0000000/000000/0000_0000000/0000000/0000_0000000/00000y-00/0000/0000/00000000/0x000000/" : GoString)));
        _hdr.name = _longName;
        _hdr.size = ((0 : GoInt64));
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _writer:Ref<Writer> = newWriter(_buf);
        {
            var _err:stdgo.Error = _writer.writeHeader(_hdr);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _writer.close();
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        var _reader:Ref<Reader> = newReader(_buf);
        {
            var __tmp__ = _reader.next();
            _hdr = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        if (_hdr.name != _longName) {
            _t.fatal(Go.toInterface(((("Couldn\'t recover long name" : GoString)))));
        };
    }
function testValidTypeflagWithPAXHeader(_t:stdgo.testing.Testing.T_):Void {
        var _buffer:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _tw:Ref<Writer> = newWriter(_buffer);
        var _fileName:GoString = stdgo.strings.Strings.repeat(((("ab" : GoString))), ((100 : GoInt)));
        var _hdr:Ref<Header> = (({ name : _fileName, size : ((4 : GoInt64)), typeflag : ((0 : GoUInt8)), linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header));
        {
            var _err:stdgo.Error = _tw.writeHeader(_hdr);
            if (_err != null) {
                _t.fatalf(((("Failed to write header: %s" : GoString))), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _tw.write(((((("fooo" : GoString))) : Slice<GoByte>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(((("Failed to write the file\'s data: %s" : GoString))), Go.toInterface(_err));
            };
        };
        _tw.close();
        var _tr:Ref<Reader> = newReader(_buffer);
        while (true) {
            var __tmp__ = _tr.next(), _header:Ref<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == stdgo.io.Io.eof) {
                break;
            };
            if (_err != null) {
                _t.fatalf(((("Failed to read header: %s" : GoString))), Go.toInterface(_err));
            };
            if (_header.typeflag != ((48 : GoUInt8))) {
                _t.fatalf(((("Typeflag should\'ve been %d, found %d" : GoString))), Go.toInterface(((48 : GoInt32))), Go.toInterface(_header.typeflag));
            };
        };
    }
function testWriterErrors(_t:stdgo.testing.Testing.T_):Void {
        _t.run(((("HeaderOnly" : GoString))), function(_t:stdgo.testing.Testing.T_):Void {
            var _tw:Ref<Writer> = newWriter(new stdgo.bytes.Bytes.Buffer());
            var _hdr:Ref<Header> = (({ name : ((("dir/" : GoString))), typeflag : ((53 : GoUInt8)), linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header));
            {
                var _err:stdgo.Error = _tw.writeHeader(_hdr);
                if (_err != null) {
                    _t.fatalf(((("WriteHeader() = %v, want nil" : GoString))), Go.toInterface(_err));
                };
            };
            {
                var __tmp__ = _tw.write(((new Slice<GoUInt8>(((0 : GoUInt8))) : Slice<GoUInt8>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != errWriteTooLong) {
                    _t.fatalf(((("Write() = %v, want %v" : GoString))), Go.toInterface(_err), Go.toInterface(errWriteTooLong));
                };
            };
        });
        _t.run(((("NegativeSize" : GoString))), function(_t:stdgo.testing.Testing.T_):Void {
            var _tw:Ref<Writer> = newWriter(new stdgo.bytes.Bytes.Buffer());
            var _hdr:Ref<Header> = (({ name : ((("small.txt" : GoString))), size : ((-1 : GoInt64)), typeflag : 0, linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header));
            {
                var _err:stdgo.Error = _tw.writeHeader(_hdr);
                if (_err == null) {
                    _t.fatalf(((("WriteHeader() = nil, want non-nil error" : GoString))));
                };
            };
        });
        _t.run(((("BeforeHeader" : GoString))), function(_t:stdgo.testing.Testing.T_):Void {
            var _tw:Ref<Writer> = newWriter(new stdgo.bytes.Bytes.Buffer());
            {
                var __tmp__ = _tw.write(((((("Kilts" : GoString))) : Slice<GoByte>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != errWriteTooLong) {
                    _t.fatalf(((("Write() = %v, want %v" : GoString))), Go.toInterface(_err), Go.toInterface(errWriteTooLong));
                };
            };
        });
        _t.run(((("AfterClose" : GoString))), function(_t:stdgo.testing.Testing.T_):Void {
            var _tw:Ref<Writer> = newWriter(new stdgo.bytes.Bytes.Buffer());
            var _hdr:Ref<Header> = (({ name : ((("small.txt" : GoString))), typeflag : 0, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header));
            {
                var _err:stdgo.Error = _tw.writeHeader(_hdr);
                if (_err != null) {
                    _t.fatalf(((("WriteHeader() = %v, want nil" : GoString))), Go.toInterface(_err));
                };
            };
            {
                var _err:stdgo.Error = _tw.close();
                if (_err != null) {
                    _t.fatalf(((("Close() = %v, want nil" : GoString))), Go.toInterface(_err));
                };
            };
            {
                var __tmp__ = _tw.write(((((("Kilts" : GoString))) : Slice<GoByte>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != errWriteAfterClose) {
                    _t.fatalf(((("Write() = %v, want %v" : GoString))), Go.toInterface(_err), Go.toInterface(errWriteAfterClose));
                };
            };
            {
                var _err:stdgo.Error = _tw.flush();
                if (_err != errWriteAfterClose) {
                    _t.fatalf(((("Flush() = %v, want %v" : GoString))), Go.toInterface(_err), Go.toInterface(errWriteAfterClose));
                };
            };
            {
                var _err:stdgo.Error = _tw.close();
                if (_err != null) {
                    _t.fatalf(((("Close() = %v, want nil" : GoString))), Go.toInterface(_err));
                };
            };
        });
        _t.run(((("PrematureFlush" : GoString))), function(_t:stdgo.testing.Testing.T_):Void {
            var _tw:Ref<Writer> = newWriter(new stdgo.bytes.Bytes.Buffer());
            var _hdr:Ref<Header> = (({ name : ((("small.txt" : GoString))), size : ((5 : GoInt64)), typeflag : 0, linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header));
            {
                var _err:stdgo.Error = _tw.writeHeader(_hdr);
                if (_err != null) {
                    _t.fatalf(((("WriteHeader() = %v, want nil" : GoString))), Go.toInterface(_err));
                };
            };
            {
                var _err:stdgo.Error = _tw.flush();
                if (_err == null) {
                    _t.fatalf(((("Flush() = %v, want non-nil error" : GoString))), Go.toInterface(_err));
                };
            };
        });
        _t.run(((("PrematureClose" : GoString))), function(_t:stdgo.testing.Testing.T_):Void {
            var _tw:Ref<Writer> = newWriter(new stdgo.bytes.Bytes.Buffer());
            var _hdr:Ref<Header> = (({ name : ((("small.txt" : GoString))), size : ((5 : GoInt64)), typeflag : 0, linkname : "", mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header));
            {
                var _err:stdgo.Error = _tw.writeHeader(_hdr);
                if (_err != null) {
                    _t.fatalf(((("WriteHeader() = %v, want nil" : GoString))), Go.toInterface(_err));
                };
            };
            {
                var _err:stdgo.Error = _tw.close();
                if (_err == null) {
                    _t.fatalf(((("Close() = %v, want non-nil error" : GoString))), Go.toInterface(_err));
                };
            };
        });
        _t.run(((("Persistence" : GoString))), function(_t:stdgo.testing.Testing.T_):Void {
            var _tw:Ref<Writer> = newWriter(new T_failOnceWriter_wrapper(Go.pointer(new T_failOnceWriter())));
            {
                var _err:stdgo.Error = _tw.writeHeader(((new Header() : Header)));
                if (_err != stdgo.io.Io.errShortWrite) {
                    _t.fatalf(((("WriteHeader() = %v, want %v" : GoString))), Go.toInterface(_err), Go.toInterface(stdgo.io.Io.errShortWrite));
                };
            };
            {
                var _err:stdgo.Error = _tw.writeHeader((({ name : ((("small.txt" : GoString))), typeflag : 0, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)));
                if (_err == null) {
                    _t.errorf(((("WriteHeader() = got %v, want non-nil error" : GoString))), Go.toInterface(_err));
                };
            };
            {
                var __tmp__ = _tw.write(((null : Slice<GoUInt8>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(((("Write() = %v, want non-nil error" : GoString))), Go.toInterface(_err));
                };
            };
            {
                var _err:stdgo.Error = _tw.flush();
                if (_err == null) {
                    _t.errorf(((("Flush() = %v, want non-nil error" : GoString))), Go.toInterface(_err));
                };
            };
            {
                var _err:stdgo.Error = _tw.close();
                if (_err == null) {
                    _t.errorf(((("Close() = %v, want non-nil error" : GoString))), Go.toInterface(_err));
                };
            };
        });
    }
function testSplitUSTARPath(_t:stdgo.testing.Testing.T_):Void {
        var _sr:(GoString, GoInt) -> GoString = stdgo.strings.Strings.repeat;
        var _vectors:Slice<T__struct_21> = ((new Slice<T__struct_21>(
((new T__struct_21(((("" : GoString))), ((("" : GoString))), ((("" : GoString))), false) : T__struct_21)),
((new T__struct_21(((("abc" : GoString))), ((("" : GoString))), ((("" : GoString))), false) : T__struct_21)),
((new T__struct_21(((("用戶名" : GoString))), ((("" : GoString))), ((("" : GoString))), false) : T__struct_21)),
((new T__struct_21(_sr(((("a" : GoString))), ((100 : GoInt))), ((("" : GoString))), ((("" : GoString))), false) : T__struct_21)),
((new T__struct_21(_sr(((("a" : GoString))), ((100 : GoInt))) + ((("/" : GoString))), ((("" : GoString))), ((("" : GoString))), false) : T__struct_21)),
((new T__struct_21(_sr(((("a" : GoString))), ((100 : GoInt))) + ((("/a" : GoString))), _sr(((("a" : GoString))), ((100 : GoInt))), ((("a" : GoString))), true) : T__struct_21)),
((new T__struct_21(_sr(((("a" : GoString))), ((155 : GoInt))) + ((("/" : GoString))), ((("" : GoString))), ((("" : GoString))), false) : T__struct_21)),
((new T__struct_21(_sr(((("a" : GoString))), ((155 : GoInt))) + ((("/a" : GoString))), _sr(((("a" : GoString))), ((155 : GoInt))), ((("a" : GoString))), true) : T__struct_21)),
((new T__struct_21(_sr(((("a" : GoString))), ((101 : GoInt))), ((("" : GoString))), ((("" : GoString))), false) : T__struct_21)),
((new T__struct_21(_sr(((("/" : GoString))), ((101 : GoInt))), _sr(((("/" : GoString))), ((99 : GoInt))), ((("/" : GoString))), true) : T__struct_21)),
((new T__struct_21((_sr(((("a" : GoString))), ((155 : GoInt))) + ((("/" : GoString)))) + _sr(((("b" : GoString))), ((100 : GoInt))), _sr(((("a" : GoString))), ((155 : GoInt))), _sr(((("b" : GoString))), ((100 : GoInt))), true) : T__struct_21)),
((new T__struct_21((_sr(((("a" : GoString))), ((155 : GoInt))) + ((("//" : GoString)))) + _sr(((("b" : GoString))), ((100 : GoInt))), ((("" : GoString))), ((("" : GoString))), false) : T__struct_21)),
((new T__struct_21(_sr(((("a/" : GoString))), ((100 : GoInt))), _sr(((("a/" : GoString))), ((77 : GoInt))) + ((("a" : GoString))), _sr(((("a/" : GoString))), ((22 : GoInt))), true) : T__struct_21))) : Slice<T__struct_21>));
        for (_0 => _v in _vectors) {
            var __tmp__ = _splitUSTARPath(_v._input), _prefix:GoString = __tmp__._0, _suffix:GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (((_prefix != _v._prefix) || (_suffix != _v._suffix)) || (_ok != _v._ok)) {
                _t.errorf(((("splitUSTARPath(%q):\ngot  (%q, %q, %v)\nwant (%q, %q, %v)" : GoString))), Go.toInterface(_v._input), Go.toInterface(_prefix), Go.toInterface(_suffix), Go.toInterface(_ok), Go.toInterface(_v._prefix), Go.toInterface(_v._suffix), Go.toInterface(_v._ok));
            };
        };
    }
function testIssue12594(_t:stdgo.testing.Testing.T_):Void {
        var _names:Slice<GoString> = ((new Slice<GoString>(((("0/1/2/3/4/5/6/7/8/9/10/11/12/13/14/15/16/17/18/19/20/21/22/23/24/25/26/27/28/29/30/file.txt" : GoString))), ((("0/1/2/3/4/5/6/7/8/9/10/11/12/13/14/15/16/17/18/19/20/21/22/23/24/25/26/27/28/29/30/31/32/33/file.txt" : GoString))), ((("0/1/2/3/4/5/6/7/8/9/10/11/12/13/14/15/16/17/18/19/20/21/22/23/24/25/26/27/28/29/30/31/32/333/file.txt" : GoString))), ((("0/1/2/3/4/5/6/7/8/9/10/11/12/13/14/15/16/17/18/19/20/21/22/23/24/25/26/27/28/29/30/31/32/33/34/35/36/37/38/39/40/file.txt" : GoString))), ((("0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000/file.txt" : GoString))), ((("/home/support/.openoffice.org/3/user/uno_packages/cache/registry/com.sun.star.comp.deployment.executable.PackageRegistryBackend" : GoString)))) : Slice<GoString>));
        for (_i => _name in _names) {
            var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
            var _tw:Ref<Writer> = newWriter(_b);
            {
                var _err:stdgo.Error = _tw.writeHeader((({ name : _name, uid : ((33554432 : GoInt)), typeflag : 0, linkname : "", size : 0, mode : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : ((null : GoMap<GoString, GoString>)), paxrecords : ((null : GoMap<GoString, GoString>)), format : new Format() } : Header)));
                if (_err != null) {
                    _t.errorf(((("test %d, unexpected WriteHeader error: %v" : GoString))), Go.toInterface(_i), Go.toInterface(_err));
                };
            };
            {
                var _err:stdgo.Error = _tw.close();
                if (_err != null) {
                    _t.errorf(((("test %d, unexpected Close error: %v" : GoString))), Go.toInterface(_i), Go.toInterface(_err));
                };
            };
            var _blk:T_block = new T_block();
            Go.copySlice(((_blk.__slice__(0) : Slice<GoUInt8>)), _b.bytes());
            var _prefix:GoString = ((_blk._toUSTAR()._prefix() : GoString));
            {
                var __tmp__ = stdgo.strings.Strings.cut(_prefix, (((haxe.io.Bytes.ofHex("00") : GoString))));
                _prefix = __tmp__._0;
            };
            if (((_blk._getFormat() == ((8 : GoInt))) && ((_prefix != null ? _prefix.length : ((0 : GoInt))) > ((0 : GoInt)))) && stdgo.strings.Strings.hasPrefix(_name, _prefix)) {
                _t.errorf(((("test %d, found prefix in GNU format: %s" : GoString))), Go.toInterface(_i), Go.toInterface(_prefix));
            };
            var _tr:Ref<Reader> = newReader(_b);
            var __tmp__ = _tr.next(), _hdr:Ref<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("test %d, unexpected Next error: %v" : GoString))), Go.toInterface(_i), Go.toInterface(_err));
            };
            if (_hdr.name != _name) {
                _t.errorf(((("test %d, hdr.Name = %s, want %s" : GoString))), Go.toInterface(_i), Go.toInterface(_hdr.name), Go.toInterface(_name));
            };
        };
    }
@:structInit class T_testWrite_testFileWriter_0 {
    public var _str : GoString = (("" : GoString));
    public var _wantCnt : GoInt = ((0 : GoInt));
    public var _wantErr : stdgo.Error = ((null : stdgo.Error));
    public function new(?_str:GoString, ?_wantCnt:GoInt, ?_wantErr:stdgo.Error) {
        if (_str != null) this._str = _str;
        if (_wantCnt != null) this._wantCnt = _wantCnt;
        if (_wantErr != null) this._wantErr = _wantErr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_testWrite_testFileWriter_0(_str, _wantCnt, _wantErr);
    }
}
@:structInit class T_testReadFrom_testFileWriter_1 {
    public var _ops : T_fileOps = new T_fileOps();
    public var _wantCnt : GoInt64 = ((0 : GoInt64));
    public var _wantErr : stdgo.Error = ((null : stdgo.Error));
    public function new(?_ops:T_fileOps, ?_wantCnt:GoInt64, ?_wantErr:stdgo.Error) {
        if (_ops != null) this._ops = _ops;
        if (_wantCnt != null) this._wantCnt = _wantCnt;
        if (_wantErr != null) this._wantErr = _wantErr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_testReadFrom_testFileWriter_1(_ops, _wantCnt, _wantErr);
    }
}
@:structInit class T_testRemaining_testFileWriter_2 {
    public var _wantLCnt : GoInt64 = ((0 : GoInt64));
    public var _wantPCnt : GoInt64 = ((0 : GoInt64));
    public function new(?_wantLCnt:GoInt64, ?_wantPCnt:GoInt64) {
        if (_wantLCnt != null) this._wantLCnt = _wantLCnt;
        if (_wantPCnt != null) this._wantPCnt = _wantPCnt;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_testRemaining_testFileWriter_2(_wantLCnt, _wantPCnt);
    }
}
@:follow typedef T_testFnc_testFileWriter_3 = AnyInterface;
@:structInit class T_makeReg_testFileWriter_4 {
    public var _size : GoInt64 = ((0 : GoInt64));
    public var _wantStr : GoString = (("" : GoString));
    public function new(?_size:GoInt64, ?_wantStr:GoString) {
        if (_size != null) this._size = _size;
        if (_wantStr != null) this._wantStr = _wantStr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_makeReg_testFileWriter_4(_size, _wantStr);
    }
}
@:structInit class T_makeSparse_testFileWriter_5 {
    public var _makeReg : T_makeReg_testFileWriter_4 = new T_makeReg_testFileWriter_4();
    public var _sph : T_sparseHoles = new T_sparseHoles();
    public var _size : GoInt64 = ((0 : GoInt64));
    public function new(?_makeReg:T_makeReg_testFileWriter_4, ?_sph:T_sparseHoles, ?_size:GoInt64) {
        if (_makeReg != null) this._makeReg = _makeReg;
        if (_sph != null) this._sph = _sph;
        if (_size != null) this._size = _size;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_makeSparse_testFileWriter_5(_makeReg, _sph, _size);
    }
}
@:follow typedef T_fileMaker_testFileWriter_6 = AnyInterface;
function testFileWriter(_t:stdgo.testing.Testing.T_):Void {
        {};
        {};
        var _vectors:Slice<T__struct_22> = ((new Slice<T__struct_22>(
((({ _maker : Go.toInterface(((new T_makeReg_testFileWriter_4(((0 : GoInt64)), ((("" : GoString)))) : T_makeReg_testFileWriter_4))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("" : GoString))), ((0 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("a" : GoString))), ((0 : GoInt)), errWriteTooLong) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface(((("" : GoString))))) : T_fileOps)), ((0 : GoInt64)), ((null : stdgo.Error))) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface(((("a" : GoString))))) : T_fileOps)), ((0 : GoInt64)), errWriteTooLong) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeReg_testFileWriter_4(((0 : GoInt64)), ((("" : GoString)))) : T_makeReg_testFileWriter_4))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("" : GoString))), ((0 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("a" : GoString))), ((0 : GoInt)), errWriteTooLong) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface(((("" : GoString))))) : T_fileOps)), ((0 : GoInt64)), ((null : stdgo.Error))) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface(((("a" : GoString))))) : T_fileOps)), ((0 : GoInt64)), errWriteTooLong) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeReg_testFileWriter_4(((1 : GoInt64)), ((("a" : GoString)))) : T_makeReg_testFileWriter_4))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testRemaining_testFileWriter_2(((1 : GoInt64)), ((1 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("" : GoString))), ((0 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("a" : GoString))), ((1 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("bcde" : GoString))), ((0 : GoInt)), errWriteTooLong) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("" : GoString))), ((0 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface(((("" : GoString))))) : T_fileOps)), ((0 : GoInt64)), ((null : stdgo.Error))) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface(((("a" : GoString))))) : T_fileOps)), ((0 : GoInt64)), errWriteTooLong) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeReg_testFileWriter_4(((1 : GoInt64)), ((("a" : GoString)))) : T_makeReg_testFileWriter_4))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testRemaining_testFileWriter_2(((1 : GoInt64)), ((1 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("" : GoString))), ((0 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("a" : GoString))), ((1 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("bcde" : GoString))), ((0 : GoInt)), errWriteTooLong) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("" : GoString))), ((0 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface(((("" : GoString))))) : T_fileOps)), ((0 : GoInt64)), ((null : stdgo.Error))) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface(((("a" : GoString))))) : T_fileOps)), ((0 : GoInt64)), errWriteTooLong) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeReg_testFileWriter_4(((5 : GoInt64)), ((("hello" : GoString)))) : T_makeReg_testFileWriter_4))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testRemaining_testFileWriter_2(((5 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("hello" : GoString))), ((5 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeReg_testFileWriter_4(((5 : GoInt64)), ((("hello" : GoString)))) : T_makeReg_testFileWriter_4))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testRemaining_testFileWriter_2(((5 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("hello" : GoString))), ((5 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeReg_testFileWriter_4(((5 : GoInt64)), (((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)))) : T_makeReg_testFileWriter_4))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testRemaining_testFileWriter_2(((5 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))))) : T_fileOps)), ((5 : GoInt64)), ((null : stdgo.Error))) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeReg_testFileWriter_4(((5 : GoInt64)), (((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)))) : T_makeReg_testFileWriter_4))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testRemaining_testFileWriter_2(((5 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))))) : T_fileOps)), ((5 : GoInt64)), ((null : stdgo.Error))) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeReg_testFileWriter_4(((5 : GoInt64)), (((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)))) : T_makeReg_testFileWriter_4))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testRemaining_testFileWriter_2(((5 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("extra" : GoString))))) : T_fileOps)), ((5 : GoInt64)), errWriteTooLong) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeReg_testFileWriter_4(((5 : GoInt64)), (((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)))) : T_makeReg_testFileWriter_4))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testRemaining_testFileWriter_2(((5 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("extra" : GoString))))) : T_fileOps)), ((5 : GoInt64)), errWriteTooLong) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeReg_testFileWriter_4(((5 : GoInt64)), ((("abc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)))) : T_makeReg_testFileWriter_4))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testRemaining_testFileWriter_2(((5 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("abc" : GoString))), ((3 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((2 : GoInt64)), ((2 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))))) : T_fileOps)), ((2 : GoInt64)), ((null : stdgo.Error))) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeReg_testFileWriter_4(((5 : GoInt64)), ((("abc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)))) : T_makeReg_testFileWriter_4))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testRemaining_testFileWriter_2(((5 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("abc" : GoString))), ((3 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((2 : GoInt64)), ((2 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))))) : T_fileOps)), ((2 : GoInt64)), ((null : stdgo.Error))) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeReg_testFileWriter_4(((5 : GoInt64)), (((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("abc" : GoString)))) : T_makeReg_testFileWriter_4))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testRemaining_testFileWriter_2(((5 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((2 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((3 : GoInt64)), ((3 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("abc" : GoString))), ((3 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface(((("z" : GoString))))) : T_fileOps)), ((0 : GoInt64)), errWriteTooLong) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("z" : GoString))), ((0 : GoInt)), errWriteTooLong) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeReg_testFileWriter_4(((5 : GoInt64)), (((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("abc" : GoString)))) : T_makeReg_testFileWriter_4))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testRemaining_testFileWriter_2(((5 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((2 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((3 : GoInt64)), ((3 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("abc" : GoString))), ((3 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface(((("z" : GoString))))) : T_fileOps)), ((0 : GoInt64)), errWriteTooLong) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("z" : GoString))), ((0 : GoInt)), errWriteTooLong) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((5 : GoInt64)), ((("abcde" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((8 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testRemaining_testFileWriter_2(((8 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("cde" : GoString))), ((8 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("a" : GoString))), ((0 : GoInt)), errWriteTooLong) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((5 : GoInt64)), ((("abcde" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((8 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testRemaining_testFileWriter_2(((8 : GoInt64)), ((5 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("cde" : GoString))), ((8 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("a" : GoString))), ((0 : GoInt)), errWriteTooLong) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((5 : GoInt64)), ((("abcde" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((8 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testWrite_testFileWriter_0(((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("cdez" : GoString))), ((8 : GoInt)), errWriteTooLong) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((5 : GoInt64)), ((("abcde" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((8 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testWrite_testFileWriter_0(((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("cdez" : GoString))), ((8 : GoInt)), errWriteTooLong) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((5 : GoInt64)), ((("abcde" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((8 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testWrite_testFileWriter_0(((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((3 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((5 : GoInt64)), ((3 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("cde" : GoString))), ((5 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("a" : GoString))), ((0 : GoInt)), errWriteTooLong) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((5 : GoInt64)), ((("abcde" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((8 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testWrite_testFileWriter_0(((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((3 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((5 : GoInt64)), ((3 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("cde" : GoString))), ((5 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("a" : GoString))), ((0 : GoInt)), errWriteTooLong) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((5 : GoInt64)), ((("abcde" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((8 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testWrite_testFileWriter_0(((("ab" : GoString))), ((2 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((6 : GoInt64)), ((3 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface(((((3 : GoInt64)) : GoInt64))), Go.toInterface(((("cde" : GoString))))) : T_fileOps)), ((6 : GoInt64)), ((null : stdgo.Error))) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((5 : GoInt64)), ((("abcde" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((8 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testWrite_testFileWriter_0(((("ab" : GoString))), ((2 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((6 : GoInt64)), ((3 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface(((((3 : GoInt64)) : GoInt64))), Go.toInterface(((("cde" : GoString))))) : T_fileOps)), ((6 : GoInt64)), ((null : stdgo.Error))) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((5 : GoInt64)), ((("abcde" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((8 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface(((("ab" : GoString)))), Go.toInterface(((((3 : GoInt64)) : GoInt64))), Go.toInterface(((("cde" : GoString))))) : T_fileOps)), ((8 : GoInt64)), ((null : stdgo.Error))) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((5 : GoInt64)), ((("abcde" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((8 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface(((("ab" : GoString)))), Go.toInterface(((((3 : GoInt64)) : GoInt64))), Go.toInterface(((("cde" : GoString))))) : T_fileOps)), ((8 : GoInt64)), ((null : stdgo.Error))) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((5 : GoInt64)), ((("abcde" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((8 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface(((("ab" : GoString)))), Go.toInterface(((((3 : GoInt64)) : GoInt64))), Go.toInterface(((("cdeX" : GoString))))) : T_fileOps)), ((8 : GoInt64)), errWriteTooLong) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((5 : GoInt64)), ((("abcde" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((8 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface(((("ab" : GoString)))), Go.toInterface(((((3 : GoInt64)) : GoInt64))), Go.toInterface(((("cdeX" : GoString))))) : T_fileOps)), ((8 : GoInt64)), errWriteTooLong) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((4 : GoInt64)), ((("abcd" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((8 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface(((("ab" : GoString)))), Go.toInterface(((((3 : GoInt64)) : GoInt64))), Go.toInterface(((("cd" : GoString))))) : T_fileOps)), ((7 : GoInt64)), stdgo.io.Io.errUnexpectedEOF) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((1 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((4 : GoInt64)), ((("abcd" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((8 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface(((("ab" : GoString)))), Go.toInterface(((((3 : GoInt64)) : GoInt64))), Go.toInterface(((("cd" : GoString))))) : T_fileOps)), ((7 : GoInt64)), stdgo.io.Io.errUnexpectedEOF) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((1 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((4 : GoInt64)), ((("abcd" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((8 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface(((("ab" : GoString)))), Go.toInterface(((((3 : GoInt64)) : GoInt64))), Go.toInterface(((("cde" : GoString))))) : T_fileOps)), ((7 : GoInt64)), _errMissData) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((1 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((4 : GoInt64)), ((("abcd" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((8 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface(((("ab" : GoString)))), Go.toInterface(((((3 : GoInt64)) : GoInt64))), Go.toInterface(((("cde" : GoString))))) : T_fileOps)), ((7 : GoInt64)), _errMissData) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((1 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((6 : GoInt64)), ((("abcde" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((8 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface(((("ab" : GoString)))), Go.toInterface(((((3 : GoInt64)) : GoInt64))), Go.toInterface(((("cde" : GoString))))) : T_fileOps)), ((8 : GoInt64)), _errUnrefData) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((1 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((6 : GoInt64)), ((("abcde" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((8 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface(((("ab" : GoString)))), Go.toInterface(((((3 : GoInt64)) : GoInt64))), Go.toInterface(((("cde" : GoString))))) : T_fileOps)), ((8 : GoInt64)), _errUnrefData) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((1 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((4 : GoInt64)), ((("abcd" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((8 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testWrite_testFileWriter_0(((("ab" : GoString))), ((2 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((6 : GoInt64)), ((2 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((3 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((3 : GoInt64)), ((2 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("cde" : GoString))), ((2 : GoInt)), _errMissData) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((1 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((4 : GoInt64)), ((("abcd" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((8 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testWrite_testFileWriter_0(((("ab" : GoString))), ((2 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((6 : GoInt64)), ((2 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((3 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((3 : GoInt64)), ((2 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("cde" : GoString))), ((2 : GoInt)), _errMissData) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((1 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((6 : GoInt64)), ((("abcde" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((8 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testWrite_testFileWriter_0(((("ab" : GoString))), ((2 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((6 : GoInt64)), ((4 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((3 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((3 : GoInt64)), ((4 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("cde" : GoString))), ((3 : GoInt)), _errUnrefData) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((1 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((6 : GoInt64)), ((("abcde" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((2 : GoInt64)), ((3 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((8 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testWrite_testFileWriter_0(((("ab" : GoString))), ((2 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((6 : GoInt64)), ((4 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((3 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((3 : GoInt64)), ((4 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("cde" : GoString))), ((3 : GoInt)), _errUnrefData) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((1 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((3 : GoInt64)), ((("abc" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((7 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testRemaining_testFileWriter_2(((7 : GoInt64)), ((3 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("abc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((7 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((3 : GoInt64)), ((("abc" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((7 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testRemaining_testFileWriter_2(((7 : GoInt64)), ((3 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("abc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((7 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((3 : GoInt64)), ((("abc" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((7 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testRemaining_testFileWriter_2(((7 : GoInt64)), ((3 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface(((((2 : GoInt64)) : GoInt64))), Go.toInterface(((("abc" : GoString)))), Go.toInterface(((((1 : GoInt64)) : GoInt64))), Go.toInterface((((haxe.io.Bytes.ofHex("00") : GoString))))) : T_fileOps)), ((7 : GoInt64)), ((null : stdgo.Error))) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((3 : GoInt64)), ((("abc" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((7 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testRemaining_testFileWriter_2(((7 : GoInt64)), ((3 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testReadFrom_testFileWriter_1(((new Slice<AnyInterface>(Go.toInterface(((((2 : GoInt64)) : GoInt64))), Go.toInterface(((("abc" : GoString)))), Go.toInterface(((((1 : GoInt64)) : GoInt64))), Go.toInterface((((haxe.io.Bytes.ofHex("00") : GoString))))) : T_fileOps)), ((7 : GoInt64)), ((null : stdgo.Error))) : T_testReadFrom_testFileWriter_1))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((3 : GoInt64)), ((("" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((7 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testWrite_testFileWriter_0(((("abcdefg" : GoString))), ((0 : GoInt)), _errWriteHole) : T_testWrite_testFileWriter_0)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((3 : GoInt64)), ((("" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((7 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testWrite_testFileWriter_0(((("abcdefg" : GoString))), ((0 : GoInt)), _errWriteHole) : T_testWrite_testFileWriter_0)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((3 : GoInt64)), ((("abc" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((7 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("abcde" : GoString))), ((5 : GoInt)), _errWriteHole) : T_testWrite_testFileWriter_0)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((3 : GoInt64)), ((("abc" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((7 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("abcde" : GoString))), ((5 : GoInt)), _errWriteHole) : T_testWrite_testFileWriter_0)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((3 : GoInt64)), ((("abc" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((7 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("abc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("z" : GoString))), ((7 : GoInt)), errWriteTooLong) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((3 : GoInt64)), ((("abc" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((7 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("abc" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("z" : GoString))), ((7 : GoInt)), errWriteTooLong) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((3 : GoInt64)), ((("abc" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((7 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((2 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((5 : GoInt64)), ((3 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("abc" : GoString))), ((3 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((2 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((2 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((3 : GoInt64)), ((("abc" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((7 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((2 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((5 : GoInt64)), ((3 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("abc" : GoString))), ((3 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((2 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2))), Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((2 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testRemaining_testFileWriter_2(((0 : GoInt64)), ((0 : GoInt64))) : T_testRemaining_testFileWriter_2)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((2 : GoInt64)), ((("ab" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((7 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((2 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("abc" : GoString))), ((2 : GoInt)), _errMissData) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((0 : GoInt)), _errMissData) : T_testWrite_testFileWriter_0)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((2 : GoInt64)), ((("ab" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((7 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((2 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("abc" : GoString))), ((2 : GoInt)), _errMissData) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((0 : GoInt)), _errMissData) : T_testWrite_testFileWriter_0)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__()),
((({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((4 : GoInt64)), ((("abc" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((7 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((2 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("abc" : GoString))), ((3 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((2 : GoInt)), _errUnrefData) : T_testWrite_testFileWriter_0)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)) == null ? null : (({ _maker : Go.toInterface(((new T_makeSparse_testFileWriter_5(((new T_makeReg_testFileWriter_4(((4 : GoInt64)), ((("abc" : GoString)))) : T_makeReg_testFileWriter_4)), ((new Slice<T_sparseEntry>(((new T_sparseEntry(((0 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry)), ((new T_sparseEntry(((5 : GoInt64)), ((2 : GoInt64))) : T_sparseEntry))) : T_sparseHoles)), ((7 : GoInt64))) : T_makeSparse_testFileWriter_5))), _tests : ((new Slice<T_testFnc_testFileWriter_3>(Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((2 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testWrite_testFileWriter_0(((("abc" : GoString))), ((3 : GoInt)), ((null : stdgo.Error))) : T_testWrite_testFileWriter_0))), Go.toInterface(((new T_testWrite_testFileWriter_0((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((2 : GoInt)), _errUnrefData) : T_testWrite_testFileWriter_0)))) : Slice<T_testFnc_testFileWriter_3>)) } : T__struct_22)).__copy__())) : Slice<T__struct_22>));
        for (_i => _v in _vectors) {
            var _wantStr:GoString = (("" : GoString));
            var _bb:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
            var _w:T_testNonEmptyWriter = ((new T_testNonEmptyWriter(_bb) : T_testNonEmptyWriter));
            var _fw:T_fileWriter = ((null : T_fileWriter));
            if (Go.assertable(((_v._maker : T_makeReg_testFileWriter_4)))) {
                var _maker:T_makeReg_testFileWriter_4 = _v._maker == null ? null : _v._maker.__underlying__() == null ? null : _v._maker == null ? null : _v._maker.__underlying__().value;
                _fw = ((new T_regFileWriter(_w, _maker._size) : T_regFileWriter));
                _wantStr = _maker._wantStr;
            } else if (Go.assertable(((_v._maker : T_makeSparse_testFileWriter_5)))) {
                var _maker:T_makeSparse_testFileWriter_5 = _v._maker == null ? null : _v._maker.__underlying__() == null ? null : _v._maker == null ? null : _v._maker.__underlying__().value;
                if (!_validateSparseEntries(_maker._sph, _maker._size)) {
                    _t.fatalf(((("invalid sparse map: %v" : GoString))), Go.toInterface(_maker._sph));
                };
                var _spd:Slice<T_sparseEntry> = _invertSparseEntries(_maker._sph, _maker._size);
                _fw = ((new T_regFileWriter(_w, _maker._makeReg._size) : T_regFileWriter));
                _fw = ((new T_sparseFileWriter(_fw, (_spd == null ? null : _spd.__copy__()), ((0 : GoInt64))) : T_sparseFileWriter));
                _wantStr = _maker._makeReg._wantStr;
            } else {
                var _maker:T_fileMaker_testFileWriter_6 = _v._maker == null ? null : _v._maker.__underlying__();
                _t.fatalf(((("test %d, unknown make operation: %T" : GoString))), Go.toInterface(_i), Go.toInterface(_maker));
            };
            for (_j => _tf in _v._tests) {
                if (Go.assertable(((_tf : T_testWrite_testFileWriter_0)))) {
                    var _tf:T_testWrite_testFileWriter_0 = _tf == null ? null : _tf.__underlying__() == null ? null : _tf == null ? null : _tf.__underlying__().value;
                    var __tmp__ = _fw.write(((_tf._str : Slice<GoByte>))), _got:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if ((_got != _tf._wantCnt) || (_err != _tf._wantErr)) {
                        _t.errorf(((("test %d.%d, Write(%s):\ngot  (%d, %v)\nwant (%d, %v)" : GoString))), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_tf._str), Go.toInterface(_got), Go.toInterface(_err), Go.toInterface(_tf._wantCnt), Go.toInterface(_tf._wantErr));
                    };
                } else if (Go.assertable(((_tf : T_testReadFrom_testFileWriter_1)))) {
                    var _tf:T_testReadFrom_testFileWriter_1 = _tf == null ? null : _tf.__underlying__() == null ? null : _tf == null ? null : _tf.__underlying__().value;
                    var _f:Ref<T_testFile> = (({ _ops : (_tf._ops == null ? null : _tf._ops.__copy__()), _pos : 0 } : T_testFile));
                    var __tmp__ = _fw.readFrom(_f), _got:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    {
                        var __tmp__ = try {
                            { value : ((((_err.__underlying__().value : Dynamic)) : T_testError)), ok : true };
                        } catch(_) {
                            { value : new T_testError(), ok : false };
                        }, _0 = __tmp__.value, _ok = __tmp__.ok;
                        if (_ok) {
                            _t.errorf(((("test %d.%d, ReadFrom(): %v" : GoString))), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_err));
                        } else if ((_got != _tf._wantCnt) || (_err != _tf._wantErr)) {
                            _t.errorf(((("test %d.%d, ReadFrom() = (%d, %v), want (%d, %v)" : GoString))), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_got), Go.toInterface(_err), Go.toInterface(_tf._wantCnt), Go.toInterface(_tf._wantErr));
                        };
                    };
                    if ((_f._ops != null ? _f._ops.length : ((0 : GoInt))) > ((0 : GoInt))) {
                        _t.errorf(((("test %d.%d, expected %d more operations" : GoString))), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface((_f._ops != null ? _f._ops.length : ((0 : GoInt)))));
                    };
                } else if (Go.assertable(((_tf : T_testRemaining_testFileWriter_2)))) {
                    var _tf:T_testRemaining_testFileWriter_2 = _tf == null ? null : _tf.__underlying__() == null ? null : _tf == null ? null : _tf.__underlying__().value;
                    {
                        var _got:GoInt64 = _fw._logicalRemaining();
                        if (_got != _tf._wantLCnt) {
                            _t.errorf(((("test %d.%d, logicalRemaining() = %d, want %d" : GoString))), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_got), Go.toInterface(_tf._wantLCnt));
                        };
                    };
                    {
                        var _got:GoInt64 = _fw._physicalRemaining();
                        if (_got != _tf._wantPCnt) {
                            _t.errorf(((("test %d.%d, physicalRemaining() = %d, want %d" : GoString))), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_got), Go.toInterface(_tf._wantPCnt));
                        };
                    };
                } else {
                    var _tf:T_testFnc_testFileWriter_3 = _tf == null ? null : _tf.__underlying__();
                    _t.fatalf(((("test %d.%d, unknown test operation: %T" : GoString))), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_tf));
                };
            };
            {
                var _got:GoString = ((_bb.toString() : GoString));
                if (_got != _wantStr) {
                    _t.fatalf(((("test %d, String() = %q, want %q" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_wantStr));
                };
            };
        };
    }
class T_fileState_wrapper {
    public var __t__ : T_fileState;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_fileReader_wrapper {
    public var __t__ : T_fileReader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_fileWriter_wrapper {
    public var __t__ : T_fileWriter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class Header_wrapper {
    @:keep
    public function fileInfo():stdgo.io.fs.Fs.FileInfo {
        var _h = __t__;
        _h;
        return ((new T_headerFileInfo(_h) : T_headerFileInfo));
    }
    @:keep
    public function _allowedFormats():{ var _0 : Format; var _1 : GoMap<GoString, GoString>; var _2 : Error; } {
        var _h = __t__;
        (_h == null ? null : _h.__copy__());
        var _format:Format = new Format(), _paxHdrs:GoMap<GoString, GoString> = ((null : GoMap<GoString, GoString>)), _err:Error = ((null : stdgo.Error));
        _format = ((14 : GoInt));
        _paxHdrs = new GoObjectMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))));
        var _whyNoUSTAR:GoString = (("" : GoString)), _whyNoPAX:GoString = (("" : GoString)), _whyNoGNU:GoString = (("" : GoString));
        var _preferPAX:Bool = false;
        var _verifyString:(GoString, GoInt, GoString, GoString) -> Void = function(_s:GoString, _size:GoInt, _name:GoString, _paxKey:GoString):Void {
            var _tooLong:Bool = (_s != null ? _s.length : ((0 : GoInt))) > _size;
            var _allowLongGNU:Bool = (_paxKey == ((("path" : GoString)))) || (_paxKey == ((("linkpath" : GoString))));
            if (_hasNUL(_s) || (_tooLong && !_allowLongGNU)) {
                _whyNoGNU = stdgo.fmt.Fmt.sprintf(((("GNU cannot encode %s=%q" : GoString))), Go.toInterface(_name), Go.toInterface(_s));
                Go.pointer(_format)._mustNotBe(((8 : GoInt)));
            };
            if (!_isASCII(_s) || _tooLong) {
                var _canSplitUSTAR:Bool = _paxKey == ((("path" : GoString)));
                {
                    var __tmp__ = _splitUSTARPath(_s), _0:GoString = __tmp__._0, _1:GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                    if (!_canSplitUSTAR || !_ok) {
                        _whyNoUSTAR = stdgo.fmt.Fmt.sprintf(((("USTAR cannot encode %s=%q" : GoString))), Go.toInterface(_name), Go.toInterface(_s));
                        Go.pointer(_format)._mustNotBe(((2 : GoInt)));
                    };
                };
                if (_paxKey == ((("" : GoString)))) {
                    _whyNoPAX = stdgo.fmt.Fmt.sprintf(((("PAX cannot encode %s=%q" : GoString))), Go.toInterface(_name), Go.toInterface(_s));
                    Go.pointer(_format)._mustNotBe(((4 : GoInt)));
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
                Go.pointer(_format)._mustNotBe(((8 : GoInt)));
            };
            if (!_fitsInOctal(_size, _n)) {
                _whyNoUSTAR = stdgo.fmt.Fmt.sprintf(((("USTAR cannot encode %s=%d" : GoString))), Go.toInterface(_name), Go.toInterface(_n));
                Go.pointer(_format)._mustNotBe(((2 : GoInt)));
                if (_paxKey == ((("" : GoString)))) {
                    _whyNoPAX = stdgo.fmt.Fmt.sprintf(((("PAX cannot encode %s=%d" : GoString))), Go.toInterface(_name), Go.toInterface(_n));
                    Go.pointer(_format)._mustNotBe(((4 : GoInt)));
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
                Go.pointer(_format)._mustNotBe(((8 : GoInt)));
            };
            var _isMtime:Bool = _paxKey == ((("mtime" : GoString)));
            var _fitsOctal:Bool = _fitsInOctal(_size, _ts.unix());
            if ((_isMtime && !_fitsOctal) || !_isMtime) {
                _whyNoUSTAR = stdgo.fmt.Fmt.sprintf(((("USTAR cannot encode %s=%v" : GoString))), Go.toInterface(_name), Go.toInterface(_ts));
                Go.pointer(_format)._mustNotBe(((2 : GoInt)));
            };
            var _needsNano:Bool = _ts.nanosecond() != ((0 : GoInt));
            if ((!_isMtime || !_fitsOctal) || _needsNano) {
                _preferPAX = true;
                if (_paxKey == ((("" : GoString)))) {
                    _whyNoPAX = stdgo.fmt.Fmt.sprintf(((("PAX cannot encode %s=%v" : GoString))), Go.toInterface(_name), Go.toInterface(_ts));
                    Go.pointer(_format)._mustNotBe(((4 : GoInt)));
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
        var _v7:Ref<T_headerV7> = _blk._toV7();
        var _ustar:Ref<T_headerUSTAR> = _blk._toUSTAR();
        var _gnu:Ref<T_headerGNU> = _blk._toGNU();
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
                return { _0 : ((0 : GoInt)), _1 : ((null : GoMap<GoString, GoString>)), _2 : new T_headerError_wrapper(((new Slice<GoString>(((("filename may not have trailing slash" : GoString)))) : T_headerError))) };
            };
        } else if (_h.typeflag == ((120 : GoUInt8)) || _h.typeflag == ((76 : GoUInt8)) || _h.typeflag == ((75 : GoUInt8))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : GoMap<GoString, GoString>)), _2 : new T_headerError_wrapper(((new Slice<GoString>(((("cannot manually encode TypeXHeader, TypeGNULongName, or TypeGNULongLink headers" : GoString)))) : T_headerError))) };
        } else if (_h.typeflag == ((103 : GoUInt8))) {
            var _h2:Header = ((({ name : _h.name, typeflag : _h.typeflag, xattrs : _h.xattrs, paxrecords : _h.paxrecords, format : _h.format, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0 } : Header)) == null ? null : (({ name : _h.name, typeflag : _h.typeflag, xattrs : _h.xattrs, paxrecords : _h.paxrecords, format : _h.format, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0 } : Header)).__copy__());
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_h), Go.toInterface(_h2))) {
                return { _0 : ((0 : GoInt)), _1 : ((null : GoMap<GoString, GoString>)), _2 : new T_headerError_wrapper(((new Slice<GoString>(((("only PAXRecords should be set for TypeXGlobalHeader" : GoString)))) : T_headerError))) };
            };
            _whyOnlyPAX = ((("only PAX supports TypeXGlobalHeader" : GoString)));
            Go.pointer(_format)._mayOnlyBe(((4 : GoInt)));
        };
        if (!_isHeaderOnlyType(_h.typeflag) && (_h.size < ((0 : GoInt64)))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : GoMap<GoString, GoString>)), _2 : new T_headerError_wrapper(((new Slice<GoString>(((("negative size on header-only type" : GoString)))) : T_headerError))) };
        };
        if ((_h.xattrs != null ? _h.xattrs.length : ((0 : GoInt))) > ((0 : GoInt))) {
            for (_k => _v in _h.xattrs) {
                if (_paxHdrs != null) _paxHdrs[((("SCHILY.xattr." : GoString))) + _k] = _v;
            };
            _whyOnlyPAX = ((("only PAX supports Xattrs" : GoString)));
            Go.pointer(_format)._mayOnlyBe(((4 : GoInt)));
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
            Go.pointer(_format)._mayOnlyBe(((4 : GoInt)));
        };
        for (_k => _v in _paxHdrs) {
            if (!_validPAXRecord(_k, _v)) {
                return { _0 : ((0 : GoInt)), _1 : ((null : GoMap<GoString, GoString>)), _2 : new T_headerError_wrapper(((new Slice<GoString>(stdgo.fmt.Fmt.sprintf(((("invalid PAX record: %q" : GoString))), Go.toInterface((_k + (((" = " : GoString)))) + _v))) : T_headerError))) };
            };
        };
        {
            var _wantFormat:Format = _h.format;
            if (_wantFormat != ((0 : GoInt))) {
                if (_wantFormat._has(((4 : GoInt))) && !_preferPAX) {
                    Go.pointer(_wantFormat)._mayBe(((2 : GoInt)));
                };
                Go.pointer(_format)._mayOnlyBe(_wantFormat);
            };
        };
        if (_format == ((0 : GoInt))) {
            if (_h.format == ((2 : GoInt))) {
                _err = new T_headerError_wrapper(((new Slice<GoString>(((("Format specifies USTAR" : GoString))), _whyNoUSTAR, _whyOnlyPAX, _whyOnlyGNU) : T_headerError)));
            } else if (_h.format == ((4 : GoInt))) {
                _err = new T_headerError_wrapper(((new Slice<GoString>(((("Format specifies PAX" : GoString))), _whyNoPAX, _whyOnlyGNU) : T_headerError)));
            } else if (_h.format == ((8 : GoInt))) {
                _err = new T_headerError_wrapper(((new Slice<GoString>(((("Format specifies GNU" : GoString))), _whyNoGNU, _whyOnlyPAX) : T_headerError)));
            } else {
                _err = new T_headerError_wrapper(((new Slice<GoString>(_whyNoUSTAR, _whyNoPAX, _whyNoGNU, _whyOnlyPAX, _whyOnlyGNU) : T_headerError)));
            };
        };
        return { _0 : _format, _1 : _paxHdrs, _2 : _err };
    }
    public var __t__ : Header;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class Header_static_extension {
    @:keep
    public static function fileInfo(_h:Ref<Header>):stdgo.io.fs.Fs.FileInfo {
        _h;
        return ((new T_headerFileInfo(_h) : T_headerFileInfo));
    }
    @:keep
    public static function _allowedFormats(_h:Header):{ var _0 : Format; var _1 : GoMap<GoString, GoString>; var _2 : Error; } {
        (_h == null ? null : _h.__copy__());
        var _format:Format = new Format(), _paxHdrs:GoMap<GoString, GoString> = ((null : GoMap<GoString, GoString>)), _err:Error = ((null : stdgo.Error));
        _format = ((14 : GoInt));
        _paxHdrs = new GoObjectMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))));
        var _whyNoUSTAR:GoString = (("" : GoString)), _whyNoPAX:GoString = (("" : GoString)), _whyNoGNU:GoString = (("" : GoString));
        var _preferPAX:Bool = false;
        var _verifyString:(GoString, GoInt, GoString, GoString) -> Void = function(_s:GoString, _size:GoInt, _name:GoString, _paxKey:GoString):Void {
            var _tooLong:Bool = (_s != null ? _s.length : ((0 : GoInt))) > _size;
            var _allowLongGNU:Bool = (_paxKey == ((("path" : GoString)))) || (_paxKey == ((("linkpath" : GoString))));
            if (_hasNUL(_s) || (_tooLong && !_allowLongGNU)) {
                _whyNoGNU = stdgo.fmt.Fmt.sprintf(((("GNU cannot encode %s=%q" : GoString))), Go.toInterface(_name), Go.toInterface(_s));
                Go.pointer(_format)._mustNotBe(((8 : GoInt)));
            };
            if (!_isASCII(_s) || _tooLong) {
                var _canSplitUSTAR:Bool = _paxKey == ((("path" : GoString)));
                {
                    var __tmp__ = _splitUSTARPath(_s), _0:GoString = __tmp__._0, _1:GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                    if (!_canSplitUSTAR || !_ok) {
                        _whyNoUSTAR = stdgo.fmt.Fmt.sprintf(((("USTAR cannot encode %s=%q" : GoString))), Go.toInterface(_name), Go.toInterface(_s));
                        Go.pointer(_format)._mustNotBe(((2 : GoInt)));
                    };
                };
                if (_paxKey == ((("" : GoString)))) {
                    _whyNoPAX = stdgo.fmt.Fmt.sprintf(((("PAX cannot encode %s=%q" : GoString))), Go.toInterface(_name), Go.toInterface(_s));
                    Go.pointer(_format)._mustNotBe(((4 : GoInt)));
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
                Go.pointer(_format)._mustNotBe(((8 : GoInt)));
            };
            if (!_fitsInOctal(_size, _n)) {
                _whyNoUSTAR = stdgo.fmt.Fmt.sprintf(((("USTAR cannot encode %s=%d" : GoString))), Go.toInterface(_name), Go.toInterface(_n));
                Go.pointer(_format)._mustNotBe(((2 : GoInt)));
                if (_paxKey == ((("" : GoString)))) {
                    _whyNoPAX = stdgo.fmt.Fmt.sprintf(((("PAX cannot encode %s=%d" : GoString))), Go.toInterface(_name), Go.toInterface(_n));
                    Go.pointer(_format)._mustNotBe(((4 : GoInt)));
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
                Go.pointer(_format)._mustNotBe(((8 : GoInt)));
            };
            var _isMtime:Bool = _paxKey == ((("mtime" : GoString)));
            var _fitsOctal:Bool = _fitsInOctal(_size, _ts.unix());
            if ((_isMtime && !_fitsOctal) || !_isMtime) {
                _whyNoUSTAR = stdgo.fmt.Fmt.sprintf(((("USTAR cannot encode %s=%v" : GoString))), Go.toInterface(_name), Go.toInterface(_ts));
                Go.pointer(_format)._mustNotBe(((2 : GoInt)));
            };
            var _needsNano:Bool = _ts.nanosecond() != ((0 : GoInt));
            if ((!_isMtime || !_fitsOctal) || _needsNano) {
                _preferPAX = true;
                if (_paxKey == ((("" : GoString)))) {
                    _whyNoPAX = stdgo.fmt.Fmt.sprintf(((("PAX cannot encode %s=%v" : GoString))), Go.toInterface(_name), Go.toInterface(_ts));
                    Go.pointer(_format)._mustNotBe(((4 : GoInt)));
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
        var _v7:Ref<T_headerV7> = _blk._toV7();
        var _ustar:Ref<T_headerUSTAR> = _blk._toUSTAR();
        var _gnu:Ref<T_headerGNU> = _blk._toGNU();
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
                return { _0 : ((0 : GoInt)), _1 : ((null : GoMap<GoString, GoString>)), _2 : new T_headerError_wrapper(((new Slice<GoString>(((("filename may not have trailing slash" : GoString)))) : T_headerError))) };
            };
        } else if (_h.typeflag == ((120 : GoUInt8)) || _h.typeflag == ((76 : GoUInt8)) || _h.typeflag == ((75 : GoUInt8))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : GoMap<GoString, GoString>)), _2 : new T_headerError_wrapper(((new Slice<GoString>(((("cannot manually encode TypeXHeader, TypeGNULongName, or TypeGNULongLink headers" : GoString)))) : T_headerError))) };
        } else if (_h.typeflag == ((103 : GoUInt8))) {
            var _h2:Header = ((({ name : _h.name, typeflag : _h.typeflag, xattrs : _h.xattrs, paxrecords : _h.paxrecords, format : _h.format, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0 } : Header)) == null ? null : (({ name : _h.name, typeflag : _h.typeflag, xattrs : _h.xattrs, paxrecords : _h.paxrecords, format : _h.format, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0 } : Header)).__copy__());
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_h), Go.toInterface(_h2))) {
                return { _0 : ((0 : GoInt)), _1 : ((null : GoMap<GoString, GoString>)), _2 : new T_headerError_wrapper(((new Slice<GoString>(((("only PAXRecords should be set for TypeXGlobalHeader" : GoString)))) : T_headerError))) };
            };
            _whyOnlyPAX = ((("only PAX supports TypeXGlobalHeader" : GoString)));
            Go.pointer(_format)._mayOnlyBe(((4 : GoInt)));
        };
        if (!_isHeaderOnlyType(_h.typeflag) && (_h.size < ((0 : GoInt64)))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : GoMap<GoString, GoString>)), _2 : new T_headerError_wrapper(((new Slice<GoString>(((("negative size on header-only type" : GoString)))) : T_headerError))) };
        };
        if ((_h.xattrs != null ? _h.xattrs.length : ((0 : GoInt))) > ((0 : GoInt))) {
            for (_k => _v in _h.xattrs) {
                if (_paxHdrs != null) _paxHdrs[((("SCHILY.xattr." : GoString))) + _k] = _v;
            };
            _whyOnlyPAX = ((("only PAX supports Xattrs" : GoString)));
            Go.pointer(_format)._mayOnlyBe(((4 : GoInt)));
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
            Go.pointer(_format)._mayOnlyBe(((4 : GoInt)));
        };
        for (_k => _v in _paxHdrs) {
            if (!_validPAXRecord(_k, _v)) {
                return { _0 : ((0 : GoInt)), _1 : ((null : GoMap<GoString, GoString>)), _2 : new T_headerError_wrapper(((new Slice<GoString>(stdgo.fmt.Fmt.sprintf(((("invalid PAX record: %q" : GoString))), Go.toInterface((_k + (((" = " : GoString)))) + _v))) : T_headerError))) };
            };
        };
        {
            var _wantFormat:Format = _h.format;
            if (_wantFormat != ((0 : GoInt))) {
                if (_wantFormat._has(((4 : GoInt))) && !_preferPAX) {
                    Go.pointer(_wantFormat)._mayBe(((2 : GoInt)));
                };
                Go.pointer(_format)._mayOnlyBe(_wantFormat);
            };
        };
        if (_format == ((0 : GoInt))) {
            if (_h.format == ((2 : GoInt))) {
                _err = new T_headerError_wrapper(((new Slice<GoString>(((("Format specifies USTAR" : GoString))), _whyNoUSTAR, _whyOnlyPAX, _whyOnlyGNU) : T_headerError)));
            } else if (_h.format == ((4 : GoInt))) {
                _err = new T_headerError_wrapper(((new Slice<GoString>(((("Format specifies PAX" : GoString))), _whyNoPAX, _whyOnlyGNU) : T_headerError)));
            } else if (_h.format == ((8 : GoInt))) {
                _err = new T_headerError_wrapper(((new Slice<GoString>(((("Format specifies GNU" : GoString))), _whyNoGNU, _whyOnlyPAX) : T_headerError)));
            } else {
                _err = new T_headerError_wrapper(((new Slice<GoString>(_whyNoUSTAR, _whyNoPAX, _whyNoGNU, _whyOnlyPAX, _whyOnlyGNU) : T_headerError)));
            };
        };
        return { _0 : _format, _1 : _paxHdrs, _2 : _err };
    }
}
class T_sparseEntry_wrapper {
    @:keep
    public function _endOffset():GoInt64 {
        var _s = __t__;
        (_s == null ? null : _s.__copy__());
        return _s.offset + _s.length;
    }
    public var __t__ : T_sparseEntry;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_sparseEntry_static_extension {
    @:keep
    public static function _endOffset(_s:T_sparseEntry):GoInt64 {
        (_s == null ? null : _s.__copy__());
        return _s.offset + _s.length;
    }
}
class T_headerFileInfo_wrapper {
    @:keep
    public function mode():stdgo.io.fs.Fs.FileMode {
        var _fi = __t__;
        (_fi == null ? null : _fi.__copy__());
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
    @:keep
    public function name():GoString {
        var _fi = __t__;
        (_fi == null ? null : _fi.__copy__());
        if (_fi.isDir()) {
            return stdgo.path.Path.base(stdgo.path.Path.clean(_fi._h.name));
        };
        return stdgo.path.Path.base(_fi._h.name);
    }
    @:keep
    public function sys():AnyInterface {
        var _fi = __t__;
        (_fi == null ? null : _fi.__copy__());
        return Go.toInterface(_fi._h);
    }
    @:keep
    public function modTime():stdgo.time.Time.Time {
        var _fi = __t__;
        (_fi == null ? null : _fi.__copy__());
        return (_fi._h.modTime == null ? null : _fi._h.modTime.__copy__());
    }
    @:keep
    public function isDir():Bool {
        var _fi = __t__;
        (_fi == null ? null : _fi.__copy__());
        return _fi.mode().isDir();
    }
    @:keep
    public function size():GoInt64 {
        var _fi = __t__;
        (_fi == null ? null : _fi.__copy__());
        return _fi._h.size;
    }
    public var __t__ : T_headerFileInfo;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_headerFileInfo_static_extension {
    @:keep
    public static function mode(_fi:T_headerFileInfo):stdgo.io.fs.Fs.FileMode {
        (_fi == null ? null : _fi.__copy__());
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
    @:keep
    public static function name(_fi:T_headerFileInfo):GoString {
        (_fi == null ? null : _fi.__copy__());
        if (_fi.isDir()) {
            return stdgo.path.Path.base(stdgo.path.Path.clean(_fi._h.name));
        };
        return stdgo.path.Path.base(_fi._h.name);
    }
    @:keep
    public static function sys(_fi:T_headerFileInfo):AnyInterface {
        (_fi == null ? null : _fi.__copy__());
        return Go.toInterface(_fi._h);
    }
    @:keep
    public static function modTime(_fi:T_headerFileInfo):stdgo.time.Time.Time {
        (_fi == null ? null : _fi.__copy__());
        return (_fi._h.modTime == null ? null : _fi._h.modTime.__copy__());
    }
    @:keep
    public static function isDir(_fi:T_headerFileInfo):Bool {
        (_fi == null ? null : _fi.__copy__());
        return _fi.mode().isDir();
    }
    @:keep
    public static function size(_fi:T_headerFileInfo):GoInt64 {
        (_fi == null ? null : _fi.__copy__());
        return _fi._h.size;
    }
}
class Reader_wrapper {
    @:keep
    public function _writeTo(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        var _tr = __t__;
        _tr;
        if (_tr._err != null) {
            return { _0 : ((0 : GoInt64)), _1 : _tr._err };
        };
        var __tmp__ = _tr._curr.writeTo(_w), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _tr._err = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _tr = __t__;
        _tr;
        if (_tr._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _tr._err };
        };
        var __tmp__ = _tr._curr.read(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) && (_err != stdgo.io.Io.eof)) {
            _tr._err = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function _readOldGNUSparseMap(_hdr:Header, _blk:T_block):{ var _0 : T_sparseDatas; var _1 : Error; } {
        var _tr = __t__;
        _tr;
        if (_blk._getFormat() != ((8 : GoInt))) {
            return { _0 : null, _1 : errHeader };
        };
        Go.pointer(_hdr.format)._mayOnlyBe(((8 : GoInt)));
        var _p:T_parser = new T_parser();
        _hdr.size = _p._parseNumeric(_blk._toGNU()._realSize());
        if (_p._err != null) {
            return { _0 : null, _1 : _p._err };
        };
        var _s:T_sparseArray = (_blk._toGNU()._sparse() == null ? null : _blk._toGNU()._sparse().__copy__());
        var _spd:T_sparseDatas = (new Slice<T_sparseEntry>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_sparseEntry()]).__setCap__(((_s._maxEntries() : GoInt)).toBasic()) == null ? null : new Slice<T_sparseEntry>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_sparseEntry()]).__setCap__(((_s._maxEntries() : GoInt)).toBasic()).__copy__());
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
                    _spd = ((_spd != null ? _spd.__append__((({ offset : _offset, length : _length } : T_sparseEntry))) : new Slice<Slice<T_sparseEntry>>((({ offset : _offset, length : _length } : T_sparseEntry)))) == null ? null : (_spd != null ? _spd.__append__((({ offset : _offset, length : _length } : T_sparseEntry))) : new Slice<Slice<T_sparseEntry>>((({ offset : _offset, length : _length } : T_sparseEntry)))).__copy__());
                });
            };
            if ((_s._isExtended() != null ? _s._isExtended()[((0 : GoInt))] : ((0 : GoUInt8))) > ((0 : GoUInt8))) {
                {
                    var __tmp__ = _mustReadFull(_tr._r, ((_blk.__slice__(0) : Slice<GoUInt8>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
                _s = (_blk._toSparse() == null ? null : _blk._toSparse().__copy__());
                continue;
            };
            return { _0 : (_spd == null ? null : _spd.__copy__()), _1 : ((null : stdgo.Error)) };
        };
    }
    @:keep
    public function _readHeader():{ var _0 : Header; var _1 : T_block; var _2 : Error; } {
        var _tr = __t__;
        _tr;
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
        var _hdr:Ref<Header> = new Header();
        var _v7:Ref<T_headerV7> = _tr._blk._toV7();
        _hdr.typeflag = (_v7._typeFlag() != null ? _v7._typeFlag()[((0 : GoInt))] : ((0 : GoUInt8)));
        _hdr.name = _p._parseString(_v7._name());
        _hdr.linkname = _p._parseString(_v7._linkName());
        _hdr.size = _p._parseNumeric(_v7._size());
        _hdr.mode = _p._parseNumeric(_v7._mode());
        _hdr.uid = ((_p._parseNumeric(_v7._uid()) : GoInt));
        _hdr.gid = ((_p._parseNumeric(_v7._gid()) : GoInt));
        _hdr.modTime = (stdgo.time.Time.unix(_p._parseNumeric(_v7._modTime()), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(_p._parseNumeric(_v7._modTime()), ((0 : GoInt64))).__copy__());
        if (_format > ((1 : GoInt))) {
            var _ustar:Ref<T_headerUSTAR> = _tr._blk._toUSTAR();
            _hdr.uname = _p._parseString(_ustar._userName());
            _hdr.gname = _p._parseString(_ustar._groupName());
            _hdr.devmajor = _p._parseNumeric(_ustar._devMajor());
            _hdr.devminor = _p._parseNumeric(_ustar._devMinor());
            var _prefix:GoString = (("" : GoString));
            if (_format._has(((6 : GoInt)))) {
                _hdr.format = _format;
                var _ustar:Ref<T_headerUSTAR> = _tr._blk._toUSTAR();
                _prefix = _p._parseString(_ustar._prefix());
                var _notASCII:GoInt32 -> Bool = function(_r:GoRune):Bool {
                    return _r >= ((128 : GoInt32));
                };
                if (stdgo.bytes.Bytes.indexFunc(((_tr._blk.__slice__(0) : Slice<GoUInt8>)), _notASCII) >= ((0 : GoInt))) {
                    _hdr.format = ((0 : GoInt));
                };
                var _nul:Slice<GoUInt8> -> Bool = function(_b:Slice<GoByte>):Bool {
                    return (((_b != null ? _b[(_b != null ? _b.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) : GoInt)) == ((0 : GoInt));
                };
                if (!((((((_nul(_v7._size()) && _nul(_v7._mode())) && _nul(_v7._uid())) && _nul(_v7._gid())) && _nul(_v7._modTime())) && _nul(_ustar._devMajor())) && _nul(_ustar._devMinor()))) {
                    _hdr.format = ((0 : GoInt));
                };
            } else if (_format._has(((16 : GoInt)))) {
                var _star:Ref<T_headerSTAR> = _tr._blk._toSTAR();
                _prefix = _p._parseString(_star._prefix());
                _hdr.accessTime = (stdgo.time.Time.unix(_p._parseNumeric(_star._accessTime()), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(_p._parseNumeric(_star._accessTime()), ((0 : GoInt64))).__copy__());
                _hdr.changeTime = (stdgo.time.Time.unix(_p._parseNumeric(_star._changeTime()), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(_p._parseNumeric(_star._changeTime()), ((0 : GoInt64))).__copy__());
            } else if (_format._has(((8 : GoInt)))) {
                _hdr.format = _format;
                var _p2:T_parser = new T_parser();
                var _gnu:Ref<T_headerGNU> = _tr._blk._toGNU();
                {
                    var _b:Slice<GoUInt8> = _gnu._accessTime();
                    if ((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) != ((0 : GoUInt8))) {
                        _hdr.accessTime = (stdgo.time.Time.unix(_p2._parseNumeric(_b), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(_p2._parseNumeric(_b), ((0 : GoInt64))).__copy__());
                    };
                };
                {
                    var _b:Slice<GoUInt8> = _gnu._changeTime();
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
                    var _ustar:Ref<T_headerUSTAR> = _tr._blk._toUSTAR();
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
    @:keep
    public function _readGNUSparsePAXHeaders(_hdr:Header):{ var _0 : T_sparseDatas; var _1 : Error; } {
        var _tr = __t__;
        _tr;
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
        Go.pointer(_hdr.format)._mayOnlyBe(((4 : GoInt)));
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
    @:keep
    public function _handleSparseFile(_hdr:Header, _rawHdr:T_block):Error {
        var _tr = __t__;
        _tr;
        var _spd:T_sparseDatas = new T_sparseDatas();
        var _err:Error = ((null : stdgo.Error));
        if (_hdr.typeflag == ((83 : GoUInt8))) {
            {
                var __tmp__ = _tr._readOldGNUSparseMap(_hdr, _rawHdr);
                _spd = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                _err = __tmp__._1;
            };
        } else {
            {
                var __tmp__ = _tr._readGNUSparsePAXHeaders(_hdr);
                _spd = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                _err = __tmp__._1;
            };
        };
        if ((_err == null) && (_spd != null)) {
            if (_isHeaderOnlyType(_hdr.typeflag) || !_validateSparseEntries(_spd, _hdr.size)) {
                return errHeader;
            };
            var _sph:Slice<T_sparseEntry> = _invertSparseEntries(_spd, _hdr.size);
            _tr._curr = ((new T_sparseFileReader(_tr._curr, (_sph == null ? null : _sph.__copy__()), ((0 : GoInt64))) : T_sparseFileReader));
        };
        return _err;
    }
    @:keep
    public function _handleRegularFile(_hdr:Header):Error {
        var _tr = __t__;
        _tr;
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
    public function _next():{ var _0 : Header; var _1 : Error; } {
        var _tr = __t__;
        _tr;
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
            Go.pointer(_format)._mayOnlyBe(_hdr.format);
            if (_hdr.typeflag == ((120 : GoUInt8)) || _hdr.typeflag == ((103 : GoUInt8))) {
                Go.pointer(_format)._mayOnlyBe(((4 : GoInt)));
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
                Go.pointer(_format)._mayOnlyBe(((8 : GoInt)));
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
                    Go.pointer(_format)._mayOnlyBe(((2 : GoInt)));
                };
                _hdr.format = _format;
                return { _0 : _hdr, _1 : ((null : stdgo.Error)) };
            };
        };
    }
    @:keep
    public function next():{ var _0 : Header; var _1 : Error; } {
        var _tr = __t__;
        _tr;
        if (_tr._err != null) {
            return { _0 : null, _1 : _tr._err };
        };
        var __tmp__ = _tr._next(), _hdr:Ref<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _tr._err = _err;
        return { _0 : _hdr, _1 : _err };
    }
    public var __t__ : Reader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class Reader_static_extension {
    @:keep
    public static function _writeTo(_tr:Ref<Reader>, _w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        _tr;
        if (_tr._err != null) {
            return { _0 : ((0 : GoInt64)), _1 : _tr._err };
        };
        var __tmp__ = _tr._curr.writeTo(_w), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _tr._err = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public static function read(_tr:Ref<Reader>, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _tr;
        if (_tr._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _tr._err };
        };
        var __tmp__ = _tr._curr.read(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) && (_err != stdgo.io.Io.eof)) {
            _tr._err = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public static function _readOldGNUSparseMap(_tr:Ref<Reader>, _hdr:Header, _blk:T_block):{ var _0 : T_sparseDatas; var _1 : Error; } {
        _tr;
        if (_blk._getFormat() != ((8 : GoInt))) {
            return { _0 : null, _1 : errHeader };
        };
        Go.pointer(_hdr.format)._mayOnlyBe(((8 : GoInt)));
        var _p:T_parser = new T_parser();
        _hdr.size = _p._parseNumeric(_blk._toGNU()._realSize());
        if (_p._err != null) {
            return { _0 : null, _1 : _p._err };
        };
        var _s:T_sparseArray = (_blk._toGNU()._sparse() == null ? null : _blk._toGNU()._sparse().__copy__());
        var _spd:T_sparseDatas = (new Slice<T_sparseEntry>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_sparseEntry()]).__setCap__(((_s._maxEntries() : GoInt)).toBasic()) == null ? null : new Slice<T_sparseEntry>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_sparseEntry()]).__setCap__(((_s._maxEntries() : GoInt)).toBasic()).__copy__());
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
                    _spd = ((_spd != null ? _spd.__append__((({ offset : _offset, length : _length } : T_sparseEntry))) : new Slice<Slice<T_sparseEntry>>((({ offset : _offset, length : _length } : T_sparseEntry)))) == null ? null : (_spd != null ? _spd.__append__((({ offset : _offset, length : _length } : T_sparseEntry))) : new Slice<Slice<T_sparseEntry>>((({ offset : _offset, length : _length } : T_sparseEntry)))).__copy__());
                });
            };
            if ((_s._isExtended() != null ? _s._isExtended()[((0 : GoInt))] : ((0 : GoUInt8))) > ((0 : GoUInt8))) {
                {
                    var __tmp__ = _mustReadFull(_tr._r, ((_blk.__slice__(0) : Slice<GoUInt8>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
                _s = (_blk._toSparse() == null ? null : _blk._toSparse().__copy__());
                continue;
            };
            return { _0 : (_spd == null ? null : _spd.__copy__()), _1 : ((null : stdgo.Error)) };
        };
    }
    @:keep
    public static function _readHeader(_tr:Ref<Reader>):{ var _0 : Header; var _1 : T_block; var _2 : Error; } {
        _tr;
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
        var _hdr:Ref<Header> = new Header();
        var _v7:Ref<T_headerV7> = _tr._blk._toV7();
        _hdr.typeflag = (_v7._typeFlag() != null ? _v7._typeFlag()[((0 : GoInt))] : ((0 : GoUInt8)));
        _hdr.name = _p._parseString(_v7._name());
        _hdr.linkname = _p._parseString(_v7._linkName());
        _hdr.size = _p._parseNumeric(_v7._size());
        _hdr.mode = _p._parseNumeric(_v7._mode());
        _hdr.uid = ((_p._parseNumeric(_v7._uid()) : GoInt));
        _hdr.gid = ((_p._parseNumeric(_v7._gid()) : GoInt));
        _hdr.modTime = (stdgo.time.Time.unix(_p._parseNumeric(_v7._modTime()), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(_p._parseNumeric(_v7._modTime()), ((0 : GoInt64))).__copy__());
        if (_format > ((1 : GoInt))) {
            var _ustar:Ref<T_headerUSTAR> = _tr._blk._toUSTAR();
            _hdr.uname = _p._parseString(_ustar._userName());
            _hdr.gname = _p._parseString(_ustar._groupName());
            _hdr.devmajor = _p._parseNumeric(_ustar._devMajor());
            _hdr.devminor = _p._parseNumeric(_ustar._devMinor());
            var _prefix:GoString = (("" : GoString));
            if (_format._has(((6 : GoInt)))) {
                _hdr.format = _format;
                var _ustar:Ref<T_headerUSTAR> = _tr._blk._toUSTAR();
                _prefix = _p._parseString(_ustar._prefix());
                var _notASCII:GoInt32 -> Bool = function(_r:GoRune):Bool {
                    return _r >= ((128 : GoInt32));
                };
                if (stdgo.bytes.Bytes.indexFunc(((_tr._blk.__slice__(0) : Slice<GoUInt8>)), _notASCII) >= ((0 : GoInt))) {
                    _hdr.format = ((0 : GoInt));
                };
                var _nul:Slice<GoUInt8> -> Bool = function(_b:Slice<GoByte>):Bool {
                    return (((_b != null ? _b[(_b != null ? _b.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) : GoInt)) == ((0 : GoInt));
                };
                if (!((((((_nul(_v7._size()) && _nul(_v7._mode())) && _nul(_v7._uid())) && _nul(_v7._gid())) && _nul(_v7._modTime())) && _nul(_ustar._devMajor())) && _nul(_ustar._devMinor()))) {
                    _hdr.format = ((0 : GoInt));
                };
            } else if (_format._has(((16 : GoInt)))) {
                var _star:Ref<T_headerSTAR> = _tr._blk._toSTAR();
                _prefix = _p._parseString(_star._prefix());
                _hdr.accessTime = (stdgo.time.Time.unix(_p._parseNumeric(_star._accessTime()), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(_p._parseNumeric(_star._accessTime()), ((0 : GoInt64))).__copy__());
                _hdr.changeTime = (stdgo.time.Time.unix(_p._parseNumeric(_star._changeTime()), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(_p._parseNumeric(_star._changeTime()), ((0 : GoInt64))).__copy__());
            } else if (_format._has(((8 : GoInt)))) {
                _hdr.format = _format;
                var _p2:T_parser = new T_parser();
                var _gnu:Ref<T_headerGNU> = _tr._blk._toGNU();
                {
                    var _b:Slice<GoUInt8> = _gnu._accessTime();
                    if ((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) != ((0 : GoUInt8))) {
                        _hdr.accessTime = (stdgo.time.Time.unix(_p2._parseNumeric(_b), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(_p2._parseNumeric(_b), ((0 : GoInt64))).__copy__());
                    };
                };
                {
                    var _b:Slice<GoUInt8> = _gnu._changeTime();
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
                    var _ustar:Ref<T_headerUSTAR> = _tr._blk._toUSTAR();
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
    @:keep
    public static function _readGNUSparsePAXHeaders(_tr:Ref<Reader>, _hdr:Header):{ var _0 : T_sparseDatas; var _1 : Error; } {
        _tr;
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
        Go.pointer(_hdr.format)._mayOnlyBe(((4 : GoInt)));
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
    @:keep
    public static function _handleSparseFile(_tr:Ref<Reader>, _hdr:Header, _rawHdr:T_block):Error {
        _tr;
        var _spd:T_sparseDatas = new T_sparseDatas();
        var _err:Error = ((null : stdgo.Error));
        if (_hdr.typeflag == ((83 : GoUInt8))) {
            {
                var __tmp__ = _tr._readOldGNUSparseMap(_hdr, _rawHdr);
                _spd = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                _err = __tmp__._1;
            };
        } else {
            {
                var __tmp__ = _tr._readGNUSparsePAXHeaders(_hdr);
                _spd = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                _err = __tmp__._1;
            };
        };
        if ((_err == null) && (_spd != null)) {
            if (_isHeaderOnlyType(_hdr.typeflag) || !_validateSparseEntries(_spd, _hdr.size)) {
                return errHeader;
            };
            var _sph:Slice<T_sparseEntry> = _invertSparseEntries(_spd, _hdr.size);
            _tr._curr = ((new T_sparseFileReader(_tr._curr, (_sph == null ? null : _sph.__copy__()), ((0 : GoInt64))) : T_sparseFileReader));
        };
        return _err;
    }
    @:keep
    public static function _handleRegularFile(_tr:Ref<Reader>, _hdr:Header):Error {
        _tr;
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
    public static function _next(_tr:Ref<Reader>):{ var _0 : Header; var _1 : Error; } {
        _tr;
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
            Go.pointer(_format)._mayOnlyBe(_hdr.format);
            if (_hdr.typeflag == ((120 : GoUInt8)) || _hdr.typeflag == ((103 : GoUInt8))) {
                Go.pointer(_format)._mayOnlyBe(((4 : GoInt)));
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
                Go.pointer(_format)._mayOnlyBe(((8 : GoInt)));
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
                    Go.pointer(_format)._mayOnlyBe(((2 : GoInt)));
                };
                _hdr.format = _format;
                return { _0 : _hdr, _1 : ((null : stdgo.Error)) };
            };
        };
    }
    @:keep
    public static function next(_tr:Ref<Reader>):{ var _0 : Header; var _1 : Error; } {
        _tr;
        if (_tr._err != null) {
            return { _0 : null, _1 : _tr._err };
        };
        var __tmp__ = _tr._next(), _hdr:Ref<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _tr._err = _err;
        return { _0 : _hdr, _1 : _err };
    }
}
class T_regFileReader_wrapper {
    @:keep
    public function _physicalRemaining():GoInt64 {
        var _fr = __t__;
        (_fr == null ? null : _fr.__copy__());
        return _fr._nb;
    }
    @:keep
    public function _logicalRemaining():GoInt64 {
        var _fr = __t__;
        (_fr == null ? null : _fr.__copy__());
        return _fr._nb;
    }
    @:keep
    public function writeTo(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        var _fr = __t__;
        _fr;
        return stdgo.io.Io.copy(_w, ((new T_reader(_fr) : T_reader)));
    }
    @:keep
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _fr = __t__;
        _fr;
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
    public var __t__ : T_regFileReader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_regFileReader_static_extension {
    @:keep
    public static function _physicalRemaining(_fr:T_regFileReader):GoInt64 {
        (_fr == null ? null : _fr.__copy__());
        return _fr._nb;
    }
    @:keep
    public static function _logicalRemaining(_fr:T_regFileReader):GoInt64 {
        (_fr == null ? null : _fr.__copy__());
        return _fr._nb;
    }
    @:keep
    public static function writeTo(_fr:Ref<T_regFileReader>, _w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        _fr;
        return stdgo.io.Io.copy(_w, ((new T_reader(_fr) : T_reader)));
    }
    @:keep
    public static function read(_fr:Ref<T_regFileReader>, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _fr;
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
class T_sparseFileReader_wrapper {
    @:keep
    public function _physicalRemaining():GoInt64 {
        var _sr = __t__;
        (_sr == null ? null : _sr.__copy__());
        return _sr._fr._physicalRemaining();
    }
    @:keep
    public function _logicalRemaining():GoInt64 {
        var _sr = __t__;
        (_sr == null ? null : _sr.__copy__());
        return (_sr._sp != null ? _sr._sp[(_sr._sp != null ? _sr._sp.length : ((0 : GoInt))) - ((1 : GoInt))] : new T_sparseEntry())._endOffset() - _sr._pos;
    }
    @:keep
    public function writeTo(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        var _sr = __t__;
        _sr;
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
            return stdgo.io.Io.copy(_w, ((new T_reader(_sr) : T_reader)));
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
                _sr._sp = (((_sr._sp.__slice__(((1 : GoInt))) : T_sparseHoles)) == null ? null : ((_sr._sp.__slice__(((1 : GoInt))) : T_sparseHoles)).__copy__());
            };
        };
        if (_writeLastByte && (_err == null)) {
            {
                var __tmp__ = _ws.write(((new Slice<GoUInt8>(((0 : GoUInt8))) : Slice<GoUInt8>)));
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
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _sr = __t__;
        _sr;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _finished:Bool = (((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)) >= _sr._logicalRemaining();
        if (_finished) {
            _b = ((_b.__slice__(0, _sr._logicalRemaining()) : Slice<GoUInt8>));
        };
        var _b0:Slice<GoUInt8> = _b;
        var _endPos:GoInt64 = _sr._pos + (((_b != null ? _b.length : ((0 : GoInt))) : GoInt64));
        while ((_endPos > _sr._pos) && (_err == null)) {
            var _nf:GoInt = ((0 : GoInt));
            var _holeStart:GoInt64 = (_sr._sp != null ? _sr._sp[((0 : GoInt))] : new T_sparseEntry()).offset, _holeEnd:GoInt64 = (_sr._sp != null ? _sr._sp[((0 : GoInt))] : new T_sparseEntry())._endOffset();
            if (_sr._pos < _holeStart) {
                var _bf:Slice<GoUInt8> = ((_b.__slice__(0, _min((((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)), _holeStart - _sr._pos)) : Slice<GoUInt8>));
                {
                    var __tmp__ = _tryReadFull(_sr._fr, _bf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else {
                var _bf:Slice<GoUInt8> = ((_b.__slice__(0, _min((((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)), _holeEnd - _sr._pos)) : Slice<GoUInt8>));
                {
                    var __tmp__ = _tryReadFull(((new T_zeroReader() : T_zeroReader)), _bf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
            _b = ((_b.__slice__(_nf) : Slice<GoUInt8>));
            _sr._pos = _sr._pos + (((_nf : GoInt64)));
            if ((_sr._pos >= _holeEnd) && ((_sr._sp != null ? _sr._sp.length : ((0 : GoInt))) > ((1 : GoInt)))) {
                _sr._sp = (((_sr._sp.__slice__(((1 : GoInt))) : T_sparseHoles)) == null ? null : ((_sr._sp.__slice__(((1 : GoInt))) : T_sparseHoles)).__copy__());
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
    public var __t__ : T_sparseFileReader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_sparseFileReader_static_extension {
    @:keep
    public static function _physicalRemaining(_sr:T_sparseFileReader):GoInt64 {
        (_sr == null ? null : _sr.__copy__());
        return _sr._fr._physicalRemaining();
    }
    @:keep
    public static function _logicalRemaining(_sr:T_sparseFileReader):GoInt64 {
        (_sr == null ? null : _sr.__copy__());
        return (_sr._sp != null ? _sr._sp[(_sr._sp != null ? _sr._sp.length : ((0 : GoInt))) - ((1 : GoInt))] : new T_sparseEntry())._endOffset() - _sr._pos;
    }
    @:keep
    public static function writeTo(_sr:Ref<T_sparseFileReader>, _w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        _sr;
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
            return stdgo.io.Io.copy(_w, ((new T_reader(_sr) : T_reader)));
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
                _sr._sp = (((_sr._sp.__slice__(((1 : GoInt))) : T_sparseHoles)) == null ? null : ((_sr._sp.__slice__(((1 : GoInt))) : T_sparseHoles)).__copy__());
            };
        };
        if (_writeLastByte && (_err == null)) {
            {
                var __tmp__ = _ws.write(((new Slice<GoUInt8>(((0 : GoUInt8))) : Slice<GoUInt8>)));
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
    public static function read(_sr:Ref<T_sparseFileReader>, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _sr;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _finished:Bool = (((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)) >= _sr._logicalRemaining();
        if (_finished) {
            _b = ((_b.__slice__(0, _sr._logicalRemaining()) : Slice<GoUInt8>));
        };
        var _b0:Slice<GoUInt8> = _b;
        var _endPos:GoInt64 = _sr._pos + (((_b != null ? _b.length : ((0 : GoInt))) : GoInt64));
        while ((_endPos > _sr._pos) && (_err == null)) {
            var _nf:GoInt = ((0 : GoInt));
            var _holeStart:GoInt64 = (_sr._sp != null ? _sr._sp[((0 : GoInt))] : new T_sparseEntry()).offset, _holeEnd:GoInt64 = (_sr._sp != null ? _sr._sp[((0 : GoInt))] : new T_sparseEntry())._endOffset();
            if (_sr._pos < _holeStart) {
                var _bf:Slice<GoUInt8> = ((_b.__slice__(0, _min((((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)), _holeStart - _sr._pos)) : Slice<GoUInt8>));
                {
                    var __tmp__ = _tryReadFull(_sr._fr, _bf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else {
                var _bf:Slice<GoUInt8> = ((_b.__slice__(0, _min((((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)), _holeEnd - _sr._pos)) : Slice<GoUInt8>));
                {
                    var __tmp__ = _tryReadFull(((new T_zeroReader() : T_zeroReader)), _bf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
            _b = ((_b.__slice__(_nf) : Slice<GoUInt8>));
            _sr._pos = _sr._pos + (((_nf : GoInt64)));
            if ((_sr._pos >= _holeEnd) && ((_sr._sp != null ? _sr._sp.length : ((0 : GoInt))) > ((1 : GoInt)))) {
                _sr._sp = (((_sr._sp.__slice__(((1 : GoInt))) : T_sparseHoles)) == null ? null : ((_sr._sp.__slice__(((1 : GoInt))) : T_sparseHoles)).__copy__());
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
class T_zeroReader_wrapper {
    @:keep
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _ = __t__;
        for (_i => _ in _b) {
            if (_b != null) _b[_i] = ((0 : GoUInt8));
        };
        return { _0 : (_b != null ? _b.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    public var __t__ : T_zeroReader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_zeroReader_static_extension {
    @:keep
    public static function read(_:T_zeroReader, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        for (_i => _ in _b) {
            if (_b != null) _b[_i] = ((0 : GoUInt8));
        };
        return { _0 : (_b != null ? _b.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
}
class T_reader_wrapper {
    public var __t__ : T_reader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_readSeeker_wrapper {
    public var __t__ : T_readSeeker;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_readBadSeeker_wrapper {
    @:keep
    public function seek(_0:GoInt64, _1:GoInt):{ var _0 : GoInt64; var _1 : Error; } {
        var _rbs = __t__;
        _rbs;
        return { _0 : ((0 : GoInt64)), _1 : stdgo.fmt.Fmt.errorf(((("illegal seek" : GoString)))) };
    }
    public var __t__ : T_readBadSeeker;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_readBadSeeker_static_extension {
    @:keep
    public static function seek(_rbs:Ref<T_readBadSeeker>, _0:GoInt64, _1:GoInt):{ var _0 : GoInt64; var _1 : Error; } {
        _rbs;
        return { _0 : ((0 : GoInt64)), _1 : stdgo.fmt.Fmt.errorf(((("illegal seek" : GoString)))) };
    }
}
class T_testNonEmptyReader_wrapper {
    @:keep
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = __t__;
        (_r == null ? null : _r.__copy__());
        if ((_b != null ? _b.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("unexpected empty Read call" : GoString)))) };
        };
        return _r.reader.read(_b);
    }
    public var __t__ : T_testNonEmptyReader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_testNonEmptyReader_static_extension {
    @:keep
    public static function read(_r:T_testNonEmptyReader, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        (_r == null ? null : _r.__copy__());
        if ((_b != null ? _b.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("unexpected empty Read call" : GoString)))) };
        };
        return _r.reader.read(_b);
    }
}
class T_parser_wrapper {
    @:keep
    public function _parseOctal(_b:Slice<GoByte>):GoInt64 {
        var _p = __t__;
        _p;
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
    @:keep
    public function _parseNumeric(_b:Slice<GoByte>):GoInt64 {
        var _p = __t__;
        _p;
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
    @:keep
    public function _parseString(_b:Slice<GoByte>):GoString {
        var _ = __t__;
        {
            var _i:GoInt = stdgo.bytes.Bytes.indexByte(_b, ((0 : GoUInt8)));
            if (_i >= ((0 : GoInt))) {
                return ((((_b.__slice__(0, _i) : Slice<GoUInt8>)) : GoString));
            };
        };
        return ((_b : GoString));
    }
    public var __t__ : T_parser;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_parser_static_extension {
    @:keep
    public static function _parseOctal(_p:Ref<T_parser>, _b:Slice<GoByte>):GoInt64 {
        _p;
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
    @:keep
    public static function _parseNumeric(_p:Ref<T_parser>, _b:Slice<GoByte>):GoInt64 {
        _p;
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
    @:keep
    public static function _parseString(_:Ref<T_parser>, _b:Slice<GoByte>):GoString {
        {
            var _i:GoInt = stdgo.bytes.Bytes.indexByte(_b, ((0 : GoUInt8)));
            if (_i >= ((0 : GoInt))) {
                return ((((_b.__slice__(0, _i) : Slice<GoUInt8>)) : GoString));
            };
        };
        return ((_b : GoString));
    }
}
class T_formatter_wrapper {
    @:keep
    public function _formatOctal(_b:Slice<GoByte>, _x:GoInt64):Void {
        var _f = __t__;
        _f;
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
    @:keep
    public function _formatNumeric(_b:Slice<GoByte>, _x:GoInt64):Void {
        var _f = __t__;
        _f;
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
    @:keep
    public function _formatString(_b:Slice<GoByte>, _s:GoString):Void {
        var _f = __t__;
        _f;
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
    public var __t__ : T_formatter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_formatter_static_extension {
    @:keep
    public static function _formatOctal(_f:Ref<T_formatter>, _b:Slice<GoByte>, _x:GoInt64):Void {
        _f;
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
    @:keep
    public static function _formatNumeric(_f:Ref<T_formatter>, _b:Slice<GoByte>, _x:GoInt64):Void {
        _f;
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
    @:keep
    public static function _formatString(_f:Ref<T_formatter>, _b:Slice<GoByte>, _s:GoString):Void {
        _f;
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
class T_testError_wrapper {
    public var __t__ : T_testError;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_testFile_wrapper {
    @:keep
    public function seek(_pos:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : Error; } {
        var _f = __t__;
        _f;
        if ((_pos == ((0 : GoInt64))) && (_whence == ((1 : GoInt)))) {
            return { _0 : _f._pos, _1 : ((null : stdgo.Error)) };
        };
        if ((_f._ops != null ? _f._ops.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt64)), _1 : stdgo.errors.Errors.new_(((("unexpected Seek operation" : GoString)))) };
        };
        var __tmp__ = try {
            { value : (((_f._ops != null ? _f._ops[((0 : GoInt))] : ((null : AnyInterface))).value : GoInt64)), ok : true };
        } catch(_) {
            { value : ((0 : GoInt64)), ok : false };
        }, _s = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return { _0 : ((0 : GoInt64)), _1 : stdgo.errors.Errors.new_(((("unexpected Seek operation" : GoString)))) };
        };
        if ((_s != _pos) || (_whence != ((1 : GoInt)))) {
            return { _0 : ((0 : GoInt64)), _1 : ((new T_testError(stdgo.fmt.Fmt.errorf(((("got Seek(%d, %d), want Seek(%d, %d)" : GoString))), Go.toInterface(_pos), Go.toInterface(_whence), Go.toInterface(_s), Go.toInterface(((1 : GoInt))))) : T_testError)) };
        };
        _f._pos = _f._pos + (_s);
        _f._ops = (((_f._ops.__slice__(((1 : GoInt))) : T_fileOps)) == null ? null : ((_f._ops.__slice__(((1 : GoInt))) : T_fileOps)).__copy__());
        return { _0 : _f._pos, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _f = __t__;
        _f;
        if ((_b != null ? _b.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        if ((_f._ops != null ? _f._ops.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("unexpected Write operation" : GoString)))) };
        };
        var __tmp__ = try {
            { value : (((_f._ops != null ? _f._ops[((0 : GoInt))] : ((null : AnyInterface))).value : GoString)), ok : true };
        } catch(_) {
            { value : (("" : GoString)), ok : false };
        }, _s = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("unexpected Write operation" : GoString)))) };
        };
        if (!stdgo.strings.Strings.hasPrefix(_s, ((_b : GoString)))) {
            return { _0 : ((0 : GoInt)), _1 : ((new T_testError(stdgo.fmt.Fmt.errorf(((("got Write(%q), want Write(%q)" : GoString))), Go.toInterface(_b), Go.toInterface(_s))) : T_testError)) };
        };
        if ((_s != null ? _s.length : ((0 : GoInt))) > (_b != null ? _b.length : ((0 : GoInt)))) {
            if (_f._ops != null) _f._ops[((0 : GoInt))] = Go.toInterface(((_s.__slice__((_b != null ? _b.length : ((0 : GoInt)))) : GoString)));
        } else {
            _f._ops = (((_f._ops.__slice__(((1 : GoInt))) : T_fileOps)) == null ? null : ((_f._ops.__slice__(((1 : GoInt))) : T_fileOps)).__copy__());
        };
        _f._pos = _f._pos + ((((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)));
        return { _0 : (_b != null ? _b.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _f = __t__;
        _f;
        if ((_b != null ? _b.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        if ((_f._ops != null ? _f._ops.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        var __tmp__ = try {
            { value : (((_f._ops != null ? _f._ops[((0 : GoInt))] : ((null : AnyInterface))).value : GoString)), ok : true };
        } catch(_) {
            { value : (("" : GoString)), ok : false };
        }, _s = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("unexpected Read operation" : GoString)))) };
        };
        var _n:GoInt = Go.copySlice(_b, _s);
        if ((_s != null ? _s.length : ((0 : GoInt))) > _n) {
            if (_f._ops != null) _f._ops[((0 : GoInt))] = Go.toInterface(((_s.__slice__(_n) : GoString)));
        } else {
            _f._ops = (((_f._ops.__slice__(((1 : GoInt))) : T_fileOps)) == null ? null : ((_f._ops.__slice__(((1 : GoInt))) : T_fileOps)).__copy__());
        };
        _f._pos = _f._pos + ((((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)));
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    public var __t__ : T_testFile;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_testFile_static_extension {
    @:keep
    public static function seek(_f:Ref<T_testFile>, _pos:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : Error; } {
        _f;
        if ((_pos == ((0 : GoInt64))) && (_whence == ((1 : GoInt)))) {
            return { _0 : _f._pos, _1 : ((null : stdgo.Error)) };
        };
        if ((_f._ops != null ? _f._ops.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt64)), _1 : stdgo.errors.Errors.new_(((("unexpected Seek operation" : GoString)))) };
        };
        var __tmp__ = try {
            { value : (((_f._ops != null ? _f._ops[((0 : GoInt))] : ((null : AnyInterface))).value : GoInt64)), ok : true };
        } catch(_) {
            { value : ((0 : GoInt64)), ok : false };
        }, _s = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return { _0 : ((0 : GoInt64)), _1 : stdgo.errors.Errors.new_(((("unexpected Seek operation" : GoString)))) };
        };
        if ((_s != _pos) || (_whence != ((1 : GoInt)))) {
            return { _0 : ((0 : GoInt64)), _1 : ((new T_testError(stdgo.fmt.Fmt.errorf(((("got Seek(%d, %d), want Seek(%d, %d)" : GoString))), Go.toInterface(_pos), Go.toInterface(_whence), Go.toInterface(_s), Go.toInterface(((1 : GoInt))))) : T_testError)) };
        };
        _f._pos = _f._pos + (_s);
        _f._ops = (((_f._ops.__slice__(((1 : GoInt))) : T_fileOps)) == null ? null : ((_f._ops.__slice__(((1 : GoInt))) : T_fileOps)).__copy__());
        return { _0 : _f._pos, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function write(_f:Ref<T_testFile>, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _f;
        if ((_b != null ? _b.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        if ((_f._ops != null ? _f._ops.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("unexpected Write operation" : GoString)))) };
        };
        var __tmp__ = try {
            { value : (((_f._ops != null ? _f._ops[((0 : GoInt))] : ((null : AnyInterface))).value : GoString)), ok : true };
        } catch(_) {
            { value : (("" : GoString)), ok : false };
        }, _s = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("unexpected Write operation" : GoString)))) };
        };
        if (!stdgo.strings.Strings.hasPrefix(_s, ((_b : GoString)))) {
            return { _0 : ((0 : GoInt)), _1 : ((new T_testError(stdgo.fmt.Fmt.errorf(((("got Write(%q), want Write(%q)" : GoString))), Go.toInterface(_b), Go.toInterface(_s))) : T_testError)) };
        };
        if ((_s != null ? _s.length : ((0 : GoInt))) > (_b != null ? _b.length : ((0 : GoInt)))) {
            if (_f._ops != null) _f._ops[((0 : GoInt))] = Go.toInterface(((_s.__slice__((_b != null ? _b.length : ((0 : GoInt)))) : GoString)));
        } else {
            _f._ops = (((_f._ops.__slice__(((1 : GoInt))) : T_fileOps)) == null ? null : ((_f._ops.__slice__(((1 : GoInt))) : T_fileOps)).__copy__());
        };
        _f._pos = _f._pos + ((((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)));
        return { _0 : (_b != null ? _b.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function read(_f:Ref<T_testFile>, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _f;
        if ((_b != null ? _b.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        if ((_f._ops != null ? _f._ops.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        var __tmp__ = try {
            { value : (((_f._ops != null ? _f._ops[((0 : GoInt))] : ((null : AnyInterface))).value : GoString)), ok : true };
        } catch(_) {
            { value : (("" : GoString)), ok : false };
        }, _s = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("unexpected Read operation" : GoString)))) };
        };
        var _n:GoInt = Go.copySlice(_b, _s);
        if ((_s != null ? _s.length : ((0 : GoInt))) > _n) {
            if (_f._ops != null) _f._ops[((0 : GoInt))] = Go.toInterface(((_s.__slice__(_n) : GoString)));
        } else {
            _f._ops = (((_f._ops.__slice__(((1 : GoInt))) : T_fileOps)) == null ? null : ((_f._ops.__slice__(((1 : GoInt))) : T_fileOps)).__copy__());
        };
        _f._pos = _f._pos + ((((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)));
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
}
class T_headerRoundTripTest_wrapper {
    public var __t__ : T_headerRoundTripTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class Writer_wrapper {
    @:keep
    public function close():Error {
        var _tw = __t__;
        _tw;
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
    @:keep
    public function _readFrom(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } {
        var _tw = __t__;
        _tw;
        if (_tw._err != null) {
            return { _0 : ((0 : GoInt64)), _1 : _tw._err };
        };
        var __tmp__ = _tw._curr.readFrom(_r), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) && (_err != errWriteTooLong)) {
            _tw._err = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _tw = __t__;
        _tw;
        if (_tw._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _tw._err };
        };
        var __tmp__ = _tw._curr.write(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) && (_err != errWriteTooLong)) {
            _tw._err = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function _writeRawHeader(_blk:T_block, _size:GoInt64, _flag:GoByte):Error {
        var _tw = __t__;
        _tw;
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
    @:keep
    public function _writeRawFile(_name:GoString, _data:GoString, _flag:GoByte, _format:Format):Error {
        var _tw = __t__;
        _tw;
        _tw._blk._reset();
        _name = _toASCII(_name);
        if ((_name != null ? _name.length : ((0 : GoInt))) > ((100 : GoInt))) {
            _name = ((_name.__slice__(0, ((100 : GoInt))) : GoString));
        };
        _name = stdgo.strings.Strings.trimRight(_name, ((("/" : GoString))));
        var _f:T_formatter = new T_formatter();
        var _v7:Ref<T_headerV7> = _tw._blk._toV7();
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
    @:keep
    public function _templateV7Plus(_hdr:Header, _fmtStr:T_stringFormatter, _fmtNum:T_numberFormatter):T_block {
        var _tw = __t__;
        _tw;
        _tw._blk._reset();
        var _modTime:stdgo.time.Time.Time = (_hdr.modTime == null ? null : _hdr.modTime.__copy__());
        if (_modTime.isZero()) {
            _modTime = (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__());
        };
        var _v7:Ref<T_headerV7> = _tw._blk._toV7();
        if (_v7._typeFlag() != null) _v7._typeFlag()[((0 : GoInt))] = _hdr.typeflag;
        _fmtStr(_v7._name(), _hdr.name);
        _fmtStr(_v7._linkName(), _hdr.linkname);
        _fmtNum(_v7._mode(), _hdr.mode);
        _fmtNum(_v7._uid(), ((_hdr.uid : GoInt64)));
        _fmtNum(_v7._gid(), ((_hdr.gid : GoInt64)));
        _fmtNum(_v7._size(), _hdr.size);
        _fmtNum(_v7._modTime(), _modTime.unix());
        var _ustar:Ref<T_headerUSTAR> = _tw._blk._toUSTAR();
        _fmtStr(_ustar._userName(), _hdr.uname);
        _fmtStr(_ustar._groupName(), _hdr.gname);
        _fmtNum(_ustar._devMajor(), _hdr.devmajor);
        _fmtNum(_ustar._devMinor(), _hdr.devminor);
        return _tw._blk;
    }
    @:keep
    public function _writeGNUHeader(_hdr:Header):Error {
        var _tw = __t__;
        _tw;
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
        var _blk:Ref<T_block> = _tw._templateV7Plus(_hdr, _f._formatString, _f._formatNumeric);
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
            _tw._curr = ((new T_sparseFileWriter(_tw._curr, (_spd == null ? null : _spd.__copy__()), ((0 : GoInt64))) : T_sparseFileWriter));
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public function _writePAXHeader(_hdr:Header, _paxHdrs:GoMap<GoString, GoString>):Error {
        var _tw = __t__;
        _tw;
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
        var _fmtStr:(Slice<GoUInt8>, GoString) -> Void = function(_b:Slice<GoByte>, _s:GoString):Void {
            _f._formatString(_b, _toASCII(_s));
        };
        var _blk:Ref<T_block> = _tw._templateV7Plus(_hdr, _fmtStr, _f._formatOctal);
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
    public function _writeUSTARHeader(_hdr:Header):Error {
        var _tw = __t__;
        _tw;
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
        var _blk:Ref<T_block> = _tw._templateV7Plus(_hdr, _f._formatString, _f._formatOctal);
        _f._formatString(_blk._toUSTAR()._prefix(), _namePrefix);
        _blk._setFormat(((2 : GoInt)));
        if (_f._err != null) {
            return _f._err;
        };
        return _tw._writeRawHeader(_blk, _hdr.size, _hdr.typeflag);
    }
    @:keep
    public function writeHeader(_hdr:Header):Error {
        var _tw = __t__;
        _tw;
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
    @:keep
    public function flush():Error {
        var _tw = __t__;
        _tw;
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
    public var __t__ : Writer;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class Writer_static_extension {
    @:keep
    public static function close(_tw:Ref<Writer>):Error {
        _tw;
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
    @:keep
    public static function _readFrom(_tw:Ref<Writer>, _r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } {
        _tw;
        if (_tw._err != null) {
            return { _0 : ((0 : GoInt64)), _1 : _tw._err };
        };
        var __tmp__ = _tw._curr.readFrom(_r), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) && (_err != errWriteTooLong)) {
            _tw._err = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public static function write(_tw:Ref<Writer>, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _tw;
        if (_tw._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _tw._err };
        };
        var __tmp__ = _tw._curr.write(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) && (_err != errWriteTooLong)) {
            _tw._err = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public static function _writeRawHeader(_tw:Ref<Writer>, _blk:T_block, _size:GoInt64, _flag:GoByte):Error {
        _tw;
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
    @:keep
    public static function _writeRawFile(_tw:Ref<Writer>, _name:GoString, _data:GoString, _flag:GoByte, _format:Format):Error {
        _tw;
        _tw._blk._reset();
        _name = _toASCII(_name);
        if ((_name != null ? _name.length : ((0 : GoInt))) > ((100 : GoInt))) {
            _name = ((_name.__slice__(0, ((100 : GoInt))) : GoString));
        };
        _name = stdgo.strings.Strings.trimRight(_name, ((("/" : GoString))));
        var _f:T_formatter = new T_formatter();
        var _v7:Ref<T_headerV7> = _tw._blk._toV7();
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
    @:keep
    public static function _templateV7Plus(_tw:Ref<Writer>, _hdr:Header, _fmtStr:T_stringFormatter, _fmtNum:T_numberFormatter):T_block {
        _tw;
        _tw._blk._reset();
        var _modTime:stdgo.time.Time.Time = (_hdr.modTime == null ? null : _hdr.modTime.__copy__());
        if (_modTime.isZero()) {
            _modTime = (stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__());
        };
        var _v7:Ref<T_headerV7> = _tw._blk._toV7();
        if (_v7._typeFlag() != null) _v7._typeFlag()[((0 : GoInt))] = _hdr.typeflag;
        _fmtStr(_v7._name(), _hdr.name);
        _fmtStr(_v7._linkName(), _hdr.linkname);
        _fmtNum(_v7._mode(), _hdr.mode);
        _fmtNum(_v7._uid(), ((_hdr.uid : GoInt64)));
        _fmtNum(_v7._gid(), ((_hdr.gid : GoInt64)));
        _fmtNum(_v7._size(), _hdr.size);
        _fmtNum(_v7._modTime(), _modTime.unix());
        var _ustar:Ref<T_headerUSTAR> = _tw._blk._toUSTAR();
        _fmtStr(_ustar._userName(), _hdr.uname);
        _fmtStr(_ustar._groupName(), _hdr.gname);
        _fmtNum(_ustar._devMajor(), _hdr.devmajor);
        _fmtNum(_ustar._devMinor(), _hdr.devminor);
        return _tw._blk;
    }
    @:keep
    public static function _writeGNUHeader(_tw:Ref<Writer>, _hdr:Header):Error {
        _tw;
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
        var _blk:Ref<T_block> = _tw._templateV7Plus(_hdr, _f._formatString, _f._formatNumeric);
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
            _tw._curr = ((new T_sparseFileWriter(_tw._curr, (_spd == null ? null : _spd.__copy__()), ((0 : GoInt64))) : T_sparseFileWriter));
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public static function _writePAXHeader(_tw:Ref<Writer>, _hdr:Header, _paxHdrs:GoMap<GoString, GoString>):Error {
        _tw;
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
        var _fmtStr:(Slice<GoUInt8>, GoString) -> Void = function(_b:Slice<GoByte>, _s:GoString):Void {
            _f._formatString(_b, _toASCII(_s));
        };
        var _blk:Ref<T_block> = _tw._templateV7Plus(_hdr, _fmtStr, _f._formatOctal);
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
    public static function _writeUSTARHeader(_tw:Ref<Writer>, _hdr:Header):Error {
        _tw;
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
        var _blk:Ref<T_block> = _tw._templateV7Plus(_hdr, _f._formatString, _f._formatOctal);
        _f._formatString(_blk._toUSTAR()._prefix(), _namePrefix);
        _blk._setFormat(((2 : GoInt)));
        if (_f._err != null) {
            return _f._err;
        };
        return _tw._writeRawHeader(_blk, _hdr.size, _hdr.typeflag);
    }
    @:keep
    public static function writeHeader(_tw:Ref<Writer>, _hdr:Header):Error {
        _tw;
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
    @:keep
    public static function flush(_tw:Ref<Writer>):Error {
        _tw;
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
class T_regFileWriter_wrapper {
    @:keep
    public function _physicalRemaining():GoInt64 {
        var _fw = __t__;
        (_fw == null ? null : _fw.__copy__());
        return _fw._nb;
    }
    @:keep
    public function _logicalRemaining():GoInt64 {
        var _fw = __t__;
        (_fw == null ? null : _fw.__copy__());
        return _fw._nb;
    }
    @:keep
    public function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } {
        var _fw = __t__;
        _fw;
        return stdgo.io.Io.copy(((new T_testNonEmptyWriter(_fw) : T_testNonEmptyWriter)), _r);
    }
    @:keep
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _fw = __t__;
        _fw;
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
    public var __t__ : T_regFileWriter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_regFileWriter_static_extension {
    @:keep
    public static function _physicalRemaining(_fw:T_regFileWriter):GoInt64 {
        (_fw == null ? null : _fw.__copy__());
        return _fw._nb;
    }
    @:keep
    public static function _logicalRemaining(_fw:T_regFileWriter):GoInt64 {
        (_fw == null ? null : _fw.__copy__());
        return _fw._nb;
    }
    @:keep
    public static function readFrom(_fw:Ref<T_regFileWriter>, _r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } {
        _fw;
        return stdgo.io.Io.copy(((new T_testNonEmptyWriter(_fw) : T_testNonEmptyWriter)), _r);
    }
    @:keep
    public static function write(_fw:Ref<T_regFileWriter>, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _fw;
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
class T_sparseFileWriter_wrapper {
    @:keep
    public function _physicalRemaining():GoInt64 {
        var _sw = __t__;
        (_sw == null ? null : _sw.__copy__());
        return _sw._fw._physicalRemaining();
    }
    @:keep
    public function _logicalRemaining():GoInt64 {
        var _sw = __t__;
        (_sw == null ? null : _sw.__copy__());
        return (_sw._sp != null ? _sw._sp[(_sw._sp != null ? _sw._sp.length : ((0 : GoInt))) - ((1 : GoInt))] : new T_sparseEntry())._endOffset() - _sw._pos;
    }
    @:keep
    public function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } {
        var _sw = __t__;
        _sw;
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
            return stdgo.io.Io.copy(((new T_testNonEmptyWriter(_sw) : T_testNonEmptyWriter)), _r);
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
                _sw._sp = (((_sw._sp.__slice__(((1 : GoInt))) : T_sparseDatas)) == null ? null : ((_sw._sp.__slice__(((1 : GoInt))) : T_sparseDatas)).__copy__());
            };
        };
        if (_readLastByte && (_err == null)) {
            {
                var __tmp__ = _mustReadFull(_rs, ((new Slice<GoUInt8>(((0 : GoUInt8))) : Slice<GoUInt8>)));
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
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _sw = __t__;
        _sw;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _overwrite:Bool = (((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)) > _sw._logicalRemaining();
        if (_overwrite) {
            _b = ((_b.__slice__(0, _sw._logicalRemaining()) : Slice<GoUInt8>));
        };
        var _b0:Slice<GoUInt8> = _b;
        var _endPos:GoInt64 = _sw._pos + (((_b != null ? _b.length : ((0 : GoInt))) : GoInt64));
        while ((_endPos > _sw._pos) && (_err == null)) {
            var _nf:GoInt = ((0 : GoInt));
            var _dataStart:GoInt64 = (_sw._sp != null ? _sw._sp[((0 : GoInt))] : new T_sparseEntry()).offset, _dataEnd:GoInt64 = (_sw._sp != null ? _sw._sp[((0 : GoInt))] : new T_sparseEntry())._endOffset();
            if (_sw._pos < _dataStart) {
                var _bf:Slice<GoUInt8> = ((_b.__slice__(0, _min((((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)), _dataStart - _sw._pos)) : Slice<GoUInt8>));
                {
                    var __tmp__ = ((new T_zeroWriter() : T_zeroWriter)).write(_bf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else {
                var _bf:Slice<GoUInt8> = ((_b.__slice__(0, _min((((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)), _dataEnd - _sw._pos)) : Slice<GoUInt8>));
                {
                    var __tmp__ = _sw._fw.write(_bf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
            _b = ((_b.__slice__(_nf) : Slice<GoUInt8>));
            _sw._pos = _sw._pos + (((_nf : GoInt64)));
            if ((_sw._pos >= _dataEnd) && ((_sw._sp != null ? _sw._sp.length : ((0 : GoInt))) > ((1 : GoInt)))) {
                _sw._sp = (((_sw._sp.__slice__(((1 : GoInt))) : T_sparseDatas)) == null ? null : ((_sw._sp.__slice__(((1 : GoInt))) : T_sparseDatas)).__copy__());
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
    public var __t__ : T_sparseFileWriter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_sparseFileWriter_static_extension {
    @:keep
    public static function _physicalRemaining(_sw:T_sparseFileWriter):GoInt64 {
        (_sw == null ? null : _sw.__copy__());
        return _sw._fw._physicalRemaining();
    }
    @:keep
    public static function _logicalRemaining(_sw:T_sparseFileWriter):GoInt64 {
        (_sw == null ? null : _sw.__copy__());
        return (_sw._sp != null ? _sw._sp[(_sw._sp != null ? _sw._sp.length : ((0 : GoInt))) - ((1 : GoInt))] : new T_sparseEntry())._endOffset() - _sw._pos;
    }
    @:keep
    public static function readFrom(_sw:Ref<T_sparseFileWriter>, _r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } {
        _sw;
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
            return stdgo.io.Io.copy(((new T_testNonEmptyWriter(_sw) : T_testNonEmptyWriter)), _r);
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
                _sw._sp = (((_sw._sp.__slice__(((1 : GoInt))) : T_sparseDatas)) == null ? null : ((_sw._sp.__slice__(((1 : GoInt))) : T_sparseDatas)).__copy__());
            };
        };
        if (_readLastByte && (_err == null)) {
            {
                var __tmp__ = _mustReadFull(_rs, ((new Slice<GoUInt8>(((0 : GoUInt8))) : Slice<GoUInt8>)));
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
    public static function write(_sw:Ref<T_sparseFileWriter>, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _sw;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _overwrite:Bool = (((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)) > _sw._logicalRemaining();
        if (_overwrite) {
            _b = ((_b.__slice__(0, _sw._logicalRemaining()) : Slice<GoUInt8>));
        };
        var _b0:Slice<GoUInt8> = _b;
        var _endPos:GoInt64 = _sw._pos + (((_b != null ? _b.length : ((0 : GoInt))) : GoInt64));
        while ((_endPos > _sw._pos) && (_err == null)) {
            var _nf:GoInt = ((0 : GoInt));
            var _dataStart:GoInt64 = (_sw._sp != null ? _sw._sp[((0 : GoInt))] : new T_sparseEntry()).offset, _dataEnd:GoInt64 = (_sw._sp != null ? _sw._sp[((0 : GoInt))] : new T_sparseEntry())._endOffset();
            if (_sw._pos < _dataStart) {
                var _bf:Slice<GoUInt8> = ((_b.__slice__(0, _min((((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)), _dataStart - _sw._pos)) : Slice<GoUInt8>));
                {
                    var __tmp__ = ((new T_zeroWriter() : T_zeroWriter)).write(_bf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else {
                var _bf:Slice<GoUInt8> = ((_b.__slice__(0, _min((((_b != null ? _b.length : ((0 : GoInt))) : GoInt64)), _dataEnd - _sw._pos)) : Slice<GoUInt8>));
                {
                    var __tmp__ = _sw._fw.write(_bf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
            _b = ((_b.__slice__(_nf) : Slice<GoUInt8>));
            _sw._pos = _sw._pos + (((_nf : GoInt64)));
            if ((_sw._pos >= _dataEnd) && ((_sw._sp != null ? _sw._sp.length : ((0 : GoInt))) > ((1 : GoInt)))) {
                _sw._sp = (((_sw._sp.__slice__(((1 : GoInt))) : T_sparseDatas)) == null ? null : ((_sw._sp.__slice__(((1 : GoInt))) : T_sparseDatas)).__copy__());
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
class T_zeroWriter_wrapper {
    @:keep
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _ = __t__;
        for (_i => _c in _b) {
            if (_c != ((0 : GoUInt8))) {
                return { _0 : _i, _1 : _errWriteHole };
            };
        };
        return { _0 : (_b != null ? _b.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    public var __t__ : T_zeroWriter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_zeroWriter_static_extension {
    @:keep
    public static function write(_:T_zeroWriter, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        for (_i => _c in _b) {
            if (_c != ((0 : GoUInt8))) {
                return { _0 : _i, _1 : _errWriteHole };
            };
        };
        return { _0 : (_b != null ? _b.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
}
class T_testNonEmptyWriter_wrapper {
    @:keep
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = __t__;
        (_w == null ? null : _w.__copy__());
        if ((_b != null ? _b.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("unexpected empty Write call" : GoString)))) };
        };
        return _w.writer.write(_b);
    }
    public var __t__ : T_testNonEmptyWriter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_testNonEmptyWriter_static_extension {
    @:keep
    public static function write(_w:T_testNonEmptyWriter, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        (_w == null ? null : _w.__copy__());
        if ((_b != null ? _b.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("unexpected empty Write call" : GoString)))) };
        };
        return _w.writer.write(_b);
    }
}
class T__struct_0_wrapper {
    public var __t__ : T__struct_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_1_wrapper {
    public var __t__ : T__struct_1;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_2_wrapper {
    public var __t__ : T__struct_2;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_3_wrapper {
    public var __t__ : T__struct_3;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_4_wrapper {
    public var __t__ : T__struct_4;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_5_wrapper {
    public var __t__ : T__struct_5;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_6_wrapper {
    public var __t__ : T__struct_6;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_7_wrapper {
    public var __t__ : T__struct_7;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_8_wrapper {
    public var __t__ : T__struct_8;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_9_wrapper {
    public var __t__ : T__struct_9;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_10_wrapper {
    public var __t__ : T__struct_10;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_11_wrapper {
    public var __t__ : T__struct_11;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_12_wrapper {
    public var __t__ : T__struct_12;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_13_wrapper {
    public var __t__ : T__struct_13;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_14_wrapper {
    public var __t__ : T__struct_14;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_15_wrapper {
    public var __t__ : T__struct_15;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_16_wrapper {
    public var __t__ : T__struct_16;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_17_wrapper {
    public var __t__ : T__struct_17;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_18_wrapper {
    public var __t__ : T__struct_18;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_19_wrapper {
    public var __t__ : T__struct_19;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_20_wrapper {
    public var __t__ : T__struct_20;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_21_wrapper {
    public var __t__ : T__struct_21;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_22_wrapper {
    public var __t__ : T__struct_22;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_headerError_wrapper {
    @:keep
    public function error():GoString {
        var _he = __t__;
        (_he == null ? null : _he.__copy__());
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
    public var __t__ : T_headerError;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_headerError_static_extension {
    @:keep
    public static function error(_he:T_headerError):GoString {
        (_he == null ? null : _he.__copy__());
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
class T_sparseDatas_wrapper {
    public var __t__ : T_sparseDatas;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_sparseHoles_wrapper {
    public var __t__ : T_sparseHoles;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class Format_wrapper {
    @:keep
    public function toString():GoString {
        var _f = __t__;
        _f;
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
    public function _mustNotBe(_f2:Format):Void {
        var _f = __t__;
        _f.value = _f.value & ((_f2) ^ ((-1 : GoUnTypedInt)));
    }
    @:keep
    @:pointer
    public function _mayOnlyBe(_f2:Format):Void {
        var _f = __t__;
        _f.value = _f.value & (_f2);
    }
    @:keep
    @:pointer
    public function _mayBe(_f2:Format):Void {
        var _f = __t__;
        _f.value = _f.value | (_f2);
    }
    @:keep
    public function _has(_f2:Format):Bool {
        var _f = __t__;
        _f;
        return (_f & _f2) != ((0 : GoInt));
    }
    public var __t__ : Format;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class Format_static_extension {
    @:keep
    public static function toString(_f:Format):GoString {
        _f;
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
    public static function _mustNotBe(_f:Pointer<Format>, _f2:Format):Void {
        _f.value = _f.value & ((_f2) ^ ((-1 : GoUnTypedInt)));
    }
    @:keep
    @:pointer
    public static function _mayOnlyBe(_f:Pointer<Format>, _f2:Format):Void {
        _f.value = _f.value & (_f2);
    }
    @:keep
    @:pointer
    public static function _mayBe(_f:Pointer<Format>, _f2:Format):Void {
        _f.value = _f.value | (_f2);
    }
    @:keep
    public static function _has(_f:Format, _f2:Format):Bool {
        _f;
        return (_f & _f2) != ((0 : GoInt));
    }
}
class T_block_wrapper {
    @:keep
    public function _reset():Void {
        var _b = __t__;
        _b;
        _b = ((new GoArray<GoUInt8>(...([].concat([for (i in 0 ... 512) 0]))) : T_block));
    }
    @:keep
    public function _computeChecksum():{ var _0 : GoInt64; var _1 : GoInt64; } {
        var _b = __t__;
        _b;
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
    @:keep
    public function _setFormat(_format:Format):Void {
        var _b = __t__;
        _b;
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
        var _field:Slice<GoUInt8> = _b._toV7()._chksum();
        var __tmp__ = _b._computeChecksum(), _chksum:GoInt64 = __tmp__._0, _0:GoInt64 = __tmp__._1;
        _f._formatOctal(((_field.__slice__(0, ((7 : GoInt))) : Slice<GoUInt8>)), _chksum);
        if (_field != null) _field[((7 : GoInt))] = (((((" " : GoString))).code : GoRune));
    }
    @:keep
    public function _getFormat():Format {
        var _b = __t__;
        _b;
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
    public function _toSparse():T_sparseArray {
        var _b = __t__;
        _b;
        return (((((_b.__slice__(0) : Slice<GoUInt8>)) : T_sparseArray)) == null ? null : ((((_b.__slice__(0) : Slice<GoUInt8>)) : T_sparseArray)).__copy__());
    }
    @:keep
    public function _toUSTAR():T_headerUSTAR {
        var _b = __t__;
        _b;
        return ((_b : T_headerUSTAR));
    }
    @:keep
    public function _toSTAR():T_headerSTAR {
        var _b = __t__;
        _b;
        return ((_b : T_headerSTAR));
    }
    @:keep
    public function _toGNU():T_headerGNU {
        var _b = __t__;
        _b;
        return ((_b : T_headerGNU));
    }
    @:keep
    public function _toV7():T_headerV7 {
        var _b = __t__;
        _b;
        return ((_b : T_headerV7));
    }
    public var __t__ : T_block;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_block_static_extension {
    @:keep
    public static function _reset(_b:Ref<T_block>):Void {
        _b;
        _b = ((new GoArray<GoUInt8>(...([].concat([for (i in 0 ... 512) 0]))) : T_block));
    }
    @:keep
    public static function _computeChecksum(_b:Ref<T_block>):{ var _0 : GoInt64; var _1 : GoInt64; } {
        _b;
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
    @:keep
    public static function _setFormat(_b:Ref<T_block>, _format:Format):Void {
        _b;
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
        var _field:Slice<GoUInt8> = _b._toV7()._chksum();
        var __tmp__ = _b._computeChecksum(), _chksum:GoInt64 = __tmp__._0, _0:GoInt64 = __tmp__._1;
        _f._formatOctal(((_field.__slice__(0, ((7 : GoInt))) : Slice<GoUInt8>)), _chksum);
        if (_field != null) _field[((7 : GoInt))] = (((((" " : GoString))).code : GoRune));
    }
    @:keep
    public static function _getFormat(_b:Ref<T_block>):Format {
        _b;
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
    public static function _toSparse(_b:Ref<T_block>):T_sparseArray {
        _b;
        return (((((_b.__slice__(0) : Slice<GoUInt8>)) : T_sparseArray)) == null ? null : ((((_b.__slice__(0) : Slice<GoUInt8>)) : T_sparseArray)).__copy__());
    }
    @:keep
    public static function _toUSTAR(_b:Ref<T_block>):T_headerUSTAR {
        _b;
        return ((_b : T_headerUSTAR));
    }
    @:keep
    public static function _toSTAR(_b:Ref<T_block>):T_headerSTAR {
        _b;
        return ((_b : T_headerSTAR));
    }
    @:keep
    public static function _toGNU(_b:Ref<T_block>):T_headerGNU {
        _b;
        return ((_b : T_headerGNU));
    }
    @:keep
    public static function _toV7(_b:Ref<T_block>):T_headerV7 {
        _b;
        return ((_b : T_headerV7));
    }
}
class T_headerV7_wrapper {
    @:keep
    public function _linkName():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((157 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((100 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _typeFlag():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((156 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _chksum():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((148 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _modTime():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((136 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _size():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((124 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _gid():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((116 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _uid():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((108 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _mode():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((100 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _name():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((0 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((100 : GoInt))) : Slice<GoUInt8>));
    }
    public var __t__ : T_headerV7;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_headerV7_static_extension {
    @:keep
    public static function _linkName(_h:Ref<T_headerV7>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((157 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((100 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _typeFlag(_h:Ref<T_headerV7>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((156 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _chksum(_h:Ref<T_headerV7>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((148 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _modTime(_h:Ref<T_headerV7>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((136 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _size(_h:Ref<T_headerV7>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((124 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _gid(_h:Ref<T_headerV7>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((116 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _uid(_h:Ref<T_headerV7>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((108 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _mode(_h:Ref<T_headerV7>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((100 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _name(_h:Ref<T_headerV7>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((0 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((100 : GoInt))) : Slice<GoUInt8>));
    }
}
class T_headerGNU_wrapper {
    @:keep
    public function _realSize():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((483 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _sparse():T_sparseArray {
        var _h = __t__;
        _h;
        return (((((((_h.__slice__(((386 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((97 : GoInt))) : Slice<GoUInt8>)) : T_sparseArray)) == null ? null : ((((((_h.__slice__(((386 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((97 : GoInt))) : Slice<GoUInt8>)) : T_sparseArray)).__copy__());
    }
    @:keep
    public function _changeTime():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((357 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _accessTime():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((345 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _devMinor():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((337 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _devMajor():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((329 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _groupName():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((297 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _userName():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((265 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _version():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((263 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((2 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _magic():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((257 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((6 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _v7():T_headerV7 {
        var _h = __t__;
        _h;
        return ((_h : T_headerV7));
    }
    public var __t__ : T_headerGNU;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_headerGNU_static_extension {
    @:keep
    public static function _realSize(_h:Ref<T_headerGNU>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((483 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _sparse(_h:Ref<T_headerGNU>):T_sparseArray {
        _h;
        return (((((((_h.__slice__(((386 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((97 : GoInt))) : Slice<GoUInt8>)) : T_sparseArray)) == null ? null : ((((((_h.__slice__(((386 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((97 : GoInt))) : Slice<GoUInt8>)) : T_sparseArray)).__copy__());
    }
    @:keep
    public static function _changeTime(_h:Ref<T_headerGNU>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((357 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _accessTime(_h:Ref<T_headerGNU>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((345 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _devMinor(_h:Ref<T_headerGNU>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((337 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _devMajor(_h:Ref<T_headerGNU>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((329 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _groupName(_h:Ref<T_headerGNU>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((297 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _userName(_h:Ref<T_headerGNU>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((265 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _version(_h:Ref<T_headerGNU>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((263 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((2 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _magic(_h:Ref<T_headerGNU>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((257 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((6 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _v7(_h:Ref<T_headerGNU>):T_headerV7 {
        _h;
        return ((_h : T_headerV7));
    }
}
class T_headerSTAR_wrapper {
    @:keep
    public function _trailer():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((508 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((4 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _changeTime():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((488 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _accessTime():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((476 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _prefix():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((345 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((131 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _devMinor():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((337 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _devMajor():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((329 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _groupName():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((297 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _userName():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((265 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _version():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((263 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((2 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _magic():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((257 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((6 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _v7():T_headerV7 {
        var _h = __t__;
        _h;
        return ((_h : T_headerV7));
    }
    public var __t__ : T_headerSTAR;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_headerSTAR_static_extension {
    @:keep
    public static function _trailer(_h:Ref<T_headerSTAR>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((508 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((4 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _changeTime(_h:Ref<T_headerSTAR>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((488 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _accessTime(_h:Ref<T_headerSTAR>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((476 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((12 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _prefix(_h:Ref<T_headerSTAR>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((345 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((131 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _devMinor(_h:Ref<T_headerSTAR>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((337 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _devMajor(_h:Ref<T_headerSTAR>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((329 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _groupName(_h:Ref<T_headerSTAR>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((297 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _userName(_h:Ref<T_headerSTAR>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((265 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _version(_h:Ref<T_headerSTAR>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((263 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((2 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _magic(_h:Ref<T_headerSTAR>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((257 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((6 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _v7(_h:Ref<T_headerSTAR>):T_headerV7 {
        _h;
        return ((_h : T_headerV7));
    }
}
class T_headerUSTAR_wrapper {
    @:keep
    public function _prefix():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((345 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((155 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _devMinor():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((337 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _devMajor():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((329 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _groupName():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((297 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _userName():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((265 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _version():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((263 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((2 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _magic():Slice<GoByte> {
        var _h = __t__;
        _h;
        return ((((_h.__slice__(((257 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((6 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public function _v7():T_headerV7 {
        var _h = __t__;
        _h;
        return ((_h : T_headerV7));
    }
    public var __t__ : T_headerUSTAR;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_headerUSTAR_static_extension {
    @:keep
    public static function _prefix(_h:Ref<T_headerUSTAR>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((345 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((155 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _devMinor(_h:Ref<T_headerUSTAR>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((337 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _devMajor(_h:Ref<T_headerUSTAR>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((329 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _groupName(_h:Ref<T_headerUSTAR>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((297 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _userName(_h:Ref<T_headerUSTAR>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((265 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _version(_h:Ref<T_headerUSTAR>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((263 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((2 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _magic(_h:Ref<T_headerUSTAR>):Slice<GoByte> {
        _h;
        return ((((_h.__slice__(((257 : GoInt))) : Slice<GoUInt8>)).__slice__(0, ((6 : GoInt))) : Slice<GoUInt8>));
    }
    @:keep
    public static function _v7(_h:Ref<T_headerUSTAR>):T_headerV7 {
        _h;
        return ((_h : T_headerV7));
    }
}
class T_sparseArray_wrapper {
    @:keep
    public function _maxEntries():GoInt {
        var _s = __t__;
        (_s == null ? null : _s.__copy__());
        return (_s != null ? _s.length : ((0 : GoInt))) / ((24 : GoInt));
    }
    @:keep
    public function _isExtended():Slice<GoByte> {
        var _s = __t__;
        (_s == null ? null : _s.__copy__());
        return ((((_s.__slice__(((24 : GoInt)) * _s._maxEntries()) : T_sparseArray)).__slice__(0, ((1 : GoInt))) : T_sparseArray));
    }
    @:keep
    public function _entry(_i:GoInt):T_sparseElem {
        var _s = __t__;
        (_s == null ? null : _s.__copy__());
        return (((((_s.__slice__(_i * ((24 : GoInt))) : T_sparseArray)) : T_sparseElem)) == null ? null : ((((_s.__slice__(_i * ((24 : GoInt))) : T_sparseArray)) : T_sparseElem)).__copy__());
    }
    public var __t__ : T_sparseArray;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_sparseArray_static_extension {
    @:keep
    public static function _maxEntries(_s:T_sparseArray):GoInt {
        (_s == null ? null : _s.__copy__());
        return (_s != null ? _s.length : ((0 : GoInt))) / ((24 : GoInt));
    }
    @:keep
    public static function _isExtended(_s:T_sparseArray):Slice<GoByte> {
        (_s == null ? null : _s.__copy__());
        return ((((_s.__slice__(((24 : GoInt)) * _s._maxEntries()) : T_sparseArray)).__slice__(0, ((1 : GoInt))) : T_sparseArray));
    }
    @:keep
    public static function _entry(_s:T_sparseArray, _i:GoInt):T_sparseElem {
        (_s == null ? null : _s.__copy__());
        return (((((_s.__slice__(_i * ((24 : GoInt))) : T_sparseArray)) : T_sparseElem)) == null ? null : ((((_s.__slice__(_i * ((24 : GoInt))) : T_sparseArray)) : T_sparseElem)).__copy__());
    }
}
class T_sparseElem_wrapper {
    @:keep
    public function _length():Slice<GoByte> {
        var _s = __t__;
        (_s == null ? null : _s.__copy__());
        return ((((_s.__slice__(((12 : GoInt))) : T_sparseElem)).__slice__(0, ((12 : GoInt))) : T_sparseElem));
    }
    @:keep
    public function _offset():Slice<GoByte> {
        var _s = __t__;
        (_s == null ? null : _s.__copy__());
        return ((((_s.__slice__(((0 : GoInt))) : T_sparseElem)).__slice__(0, ((12 : GoInt))) : T_sparseElem));
    }
    public var __t__ : T_sparseElem;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_sparseElem_static_extension {
    @:keep
    public static function _length(_s:T_sparseElem):Slice<GoByte> {
        (_s == null ? null : _s.__copy__());
        return ((((_s.__slice__(((12 : GoInt))) : T_sparseElem)).__slice__(0, ((12 : GoInt))) : T_sparseElem));
    }
    @:keep
    public static function _offset(_s:T_sparseElem):Slice<GoByte> {
        (_s == null ? null : _s.__copy__());
        return ((((_s.__slice__(((0 : GoInt))) : T_sparseElem)).__slice__(0, ((12 : GoInt))) : T_sparseElem));
    }
}
class T_fileOps_wrapper {
    public var __t__ : T_fileOps;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_stringFormatter_wrapper {
    public var __t__ : T_stringFormatter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_numberFormatter_wrapper {
    public var __t__ : T_numberFormatter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_failOnceWriter_wrapper {
    @:keep
    @:pointer
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = __t__;
        if (!_w.value) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.errShortWrite };
        };
        _w.value = true;
        return { _0 : (_b != null ? _b.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    public var __t__ : T_failOnceWriter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_failOnceWriter_static_extension {
    @:keep
    @:pointer
    public static function write(_w:Pointer<T_failOnceWriter>, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        if (!_w.value) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.errShortWrite };
        };
        _w.value = true;
        return { _0 : (_b != null ? _b.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
}
class T_file_fuzzReader_0_wrapper {
    public var __t__ : T_file_fuzzReader_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_testCase_testPartialRead_0_wrapper {
    public var __t__ : T_testCase_testPartialRead_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_testRead_testFileReader_0_wrapper {
    public var __t__ : T_testRead_testFileReader_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_testWriteTo_testFileReader_1_wrapper {
    public var __t__ : T_testWriteTo_testFileReader_1;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_testRemaining_testFileReader_2_wrapper {
    public var __t__ : T_testRemaining_testFileReader_2;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_testFnc_testFileReader_3_wrapper {
    public var __t__ : T_testFnc_testFileReader_3;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_makeReg_testFileReader_4_wrapper {
    public var __t__ : T_makeReg_testFileReader_4;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_makeSparse_testFileReader_5_wrapper {
    public var __t__ : T_makeSparse_testFileReader_5;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_fileMaker_testFileReader_6_wrapper {
    public var __t__ : T_fileMaker_testFileReader_6;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_file_benchmark_0_wrapper {
    public var __t__ : T_file_benchmark_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_testHeader_testWriter_0_wrapper {
    public var __t__ : T_testHeader_testWriter_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_testWrite_testWriter_1_wrapper {
    public var __t__ : T_testWrite_testWriter_1;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_testReadFrom_testWriter_2_wrapper {
    public var __t__ : T_testReadFrom_testWriter_2;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_testClose_testWriter_3_wrapper {
    public var __t__ : T_testClose_testWriter_3;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_testFnc_testWriter_4_wrapper {
    public var __t__ : T_testFnc_testWriter_4;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_testWrite_testFileWriter_0_wrapper {
    public var __t__ : T_testWrite_testFileWriter_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_testReadFrom_testFileWriter_1_wrapper {
    public var __t__ : T_testReadFrom_testFileWriter_1;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_testRemaining_testFileWriter_2_wrapper {
    public var __t__ : T_testRemaining_testFileWriter_2;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_testFnc_testFileWriter_3_wrapper {
    public var __t__ : T_testFnc_testFileWriter_3;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_makeReg_testFileWriter_4_wrapper {
    public var __t__ : T_makeReg_testFileWriter_4;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_makeSparse_testFileWriter_5_wrapper {
    public var __t__ : T_makeSparse_testFileWriter_5;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_fileMaker_testFileWriter_6_wrapper {
    public var __t__ : T_fileMaker_testFileWriter_6;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
