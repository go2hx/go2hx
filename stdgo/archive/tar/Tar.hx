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
typedef T_fileState = StructType & {
    public function logicalRemaining():GoInt64;
    public function physicalRemaining():GoInt64;
};
typedef T_fileReader = StructType & {
    > stdgo.io.Io.Reader,
    > T_fileState,
    public function writeTo(arg0:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; };
};
typedef T_fileWriter = StructType & {
    > stdgo.io.Io.Writer,
    > T_fileState,
    public function readFrom(arg0:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; };
};
@:named class T_headerError {
    public function error():GoString {
        var _he = this.__copy__();
        final _prefix:GoString = "archive/tar: cannot encode header";
        var _ss:Slice<GoString> = new Slice<GoString>().nil();
        for (_s in _he.__t__) {
            if (_s != (("" : GoString))) {
                _ss = _ss.__append__(_s);
            };
        };
        if (_ss.length == ((0 : GoInt))) {
            return _prefix;
        };
        return stdgo.fmt.Fmt.sprintf("%s: %v", Go.toInterface(_prefix), Go.toInterface(stdgo.strings.Strings.join(_ss, "; and ")));
    }
    public var __t__ : Slice<GoString>;
    public function new(?t:Slice<GoString>) {
        __t__ = t == null ? new Slice<GoString>().nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_headerError(__t__);
    public function __append__(args:haxe.Rest<GoString>) return new T_headerError(this.__t__.__append__(...args));
    public function __slice__(low:GoInt, high:GoInt = -1) return new T_headerError(this.__t__.__slice__(low, high));
}
@:structInit class Header {
    public function fileInfo():stdgo.io.fs.Fs.FileInfo {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return new T_headerFileInfo(_h).__copy__();
    }
    public function _allowedFormats():{ var _0 : Format; var _1 : GoMap<GoString, GoString>; var _2 : Error; } {
        var _h = this.__copy__();
        var _format:Format = new Format(), _paxHdrs:GoMap<GoString, GoString> = new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil(), _err:Error = ((null : stdgo.Error));
        _format = new Format(new Format(formatUSTAR.__t__ | formatPAX.__t__).__t__ | formatGNU.__t__);
        _paxHdrs = new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))));
        var _whyNoUSTAR:GoString = (("" : GoString)), _whyNoPAX:GoString = (("" : GoString)), _whyNoGNU:GoString = (("" : GoString));
        var _preferPAX:Bool = false;
        var _verifyString:(GoString, GoInt, GoString, GoString) -> Void = function(_s:GoString, _size:GoInt, _name:GoString, _paxKey:GoString):Void {
            var _tooLong:Bool = _s.length > _size;
            var _allowLongGNU:Bool = _paxKey == _paxPath || _paxKey == _paxLinkpath;
            if (_hasNUL(_s) || (_tooLong && !_allowLongGNU)) {
                _whyNoGNU = stdgo.fmt.Fmt.sprintf("GNU cannot encode %s=%q", Go.toInterface(_name), Go.toInterface(_s));
                _format._mustNotBe(formatGNU);
            };
            if (!_isASCII(_s) || _tooLong) {
                var _canSplitUSTAR:Bool = _paxKey == _paxPath;
                {
                    var __tmp__ = _splitUSTARPath(_s), _:GoString = __tmp__._0, _:GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                    if (!_canSplitUSTAR || !_ok) {
                        _whyNoUSTAR = stdgo.fmt.Fmt.sprintf("USTAR cannot encode %s=%q", Go.toInterface(_name), Go.toInterface(_s));
                        _format._mustNotBe(formatUSTAR);
                    };
                };
                if (_paxKey == _paxNone) {
                    _whyNoPAX = stdgo.fmt.Fmt.sprintf("PAX cannot encode %s=%q", Go.toInterface(_name), Go.toInterface(_s));
                    _format._mustNotBe(formatPAX);
                } else {
                    _paxHdrs[_paxKey] = _s;
                };
            };
            {
                var __tmp__ = _h.paxrecords.exists(_paxKey) ? { value : _h.paxrecords[_paxKey], ok : true } : { value : _h.paxrecords.defaultValue(), ok : false }, _v:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (_ok && _v == _s) {
                    _paxHdrs[_paxKey] = _v;
                };
            };
        };
        var _verifyNumeric:(GoInt64, GoInt, GoString, GoString) -> Void = function(_n:GoInt64, _size:GoInt, _name:GoString, _paxKey:GoString):Void {
            if (!_fitsInBase256(_size, _n)) {
                _whyNoGNU = stdgo.fmt.Fmt.sprintf("GNU cannot encode %s=%d", Go.toInterface(_name), Go.toInterface(_n));
                _format._mustNotBe(formatGNU);
            };
            if (!_fitsInOctal(_size, _n)) {
                _whyNoUSTAR = stdgo.fmt.Fmt.sprintf("USTAR cannot encode %s=%d", Go.toInterface(_name), Go.toInterface(_n));
                _format._mustNotBe(formatUSTAR);
                if (_paxKey == _paxNone) {
                    _whyNoPAX = stdgo.fmt.Fmt.sprintf("PAX cannot encode %s=%d", Go.toInterface(_name), Go.toInterface(_n));
                    _format._mustNotBe(formatPAX);
                } else {
                    _paxHdrs[_paxKey] = stdgo.strconv.Strconv.formatInt(_n, ((10 : GoInt)));
                };
            };
            {
                var __tmp__ = _h.paxrecords.exists(_paxKey) ? { value : _h.paxrecords[_paxKey], ok : true } : { value : _h.paxrecords.defaultValue(), ok : false }, _v:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (_ok && _v == stdgo.strconv.Strconv.formatInt(_n, ((10 : GoInt)))) {
                    _paxHdrs[_paxKey] = _v;
                };
            };
        };
        var _verifyTime:(stdgo.time.Time.Time, GoInt, GoString, GoString) -> Void = function(_ts:stdgo.time.Time.Time, _size:GoInt, _name:GoString, _paxKey:GoString):Void {
            if (_ts.isZero()) {
                return;
            };
            if (!_fitsInBase256(_size, _ts.unix())) {
                _whyNoGNU = stdgo.fmt.Fmt.sprintf("GNU cannot encode %s=%v", Go.toInterface(_name), Go.toInterface(_ts.__copy__()));
                _format._mustNotBe(formatGNU);
            };
            var _isMtime:Bool = _paxKey == _paxMtime;
            var _fitsOctal:Bool = _fitsInOctal(_size, _ts.unix());
            if ((_isMtime && !_fitsOctal) || !_isMtime) {
                _whyNoUSTAR = stdgo.fmt.Fmt.sprintf("USTAR cannot encode %s=%v", Go.toInterface(_name), Go.toInterface(_ts.__copy__()));
                _format._mustNotBe(formatUSTAR);
            };
            var _needsNano:Bool = _ts.nanosecond() != ((0 : GoInt));
            if (!_isMtime || !_fitsOctal || _needsNano) {
                _preferPAX = true;
                if (_paxKey == _paxNone) {
                    _whyNoPAX = stdgo.fmt.Fmt.sprintf("PAX cannot encode %s=%v", Go.toInterface(_name), Go.toInterface(_ts.__copy__()));
                    _format._mustNotBe(formatPAX);
                } else {
                    _paxHdrs[_paxKey] = _formatPAXTime(_ts.__copy__());
                };
            };
            {
                var __tmp__ = _h.paxrecords.exists(_paxKey) ? { value : _h.paxrecords[_paxKey], ok : true } : { value : _h.paxrecords.defaultValue(), ok : false }, _v:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (_ok && _v == _formatPAXTime(_ts.__copy__())) {
                    _paxHdrs[_paxKey] = _v;
                };
            };
        };
        var _blk:T_block = new T_block();
        var _v7:Pointer<T_headerV7> = _blk.v7();
        var _ustar:Pointer<T_headerUSTAR> = _blk.ustar();
        var _gnu:Pointer<T_headerGNU> = _blk.gnu();
        _verifyString(_h.name, _v7.value.name().length, "Name", _paxPath);
        _verifyString(_h.linkname, _v7.value.linkName().length, "Linkname", _paxLinkpath);
        _verifyString(_h.uname, _ustar.value.userName().length, "Uname", _paxUname);
        _verifyString(_h.gname, _ustar.value.groupName().length, "Gname", _paxGname);
        _verifyNumeric(_h.mode, _v7.value.mode().length, "Mode", _paxNone);
        _verifyNumeric(((_h.uid : GoInt64)), _v7.value.uid().length, "Uid", _paxUid);
        _verifyNumeric(((_h.gid : GoInt64)), _v7.value.gid().length, "Gid", _paxGid);
        _verifyNumeric(_h.size, _v7.value.size().length, "Size", _paxSize);
        _verifyNumeric(_h.devmajor, _ustar.value.devMajor().length, "Devmajor", _paxNone);
        _verifyNumeric(_h.devminor, _ustar.value.devMinor().length, "Devminor", _paxNone);
        _verifyTime(_h.modTime.__copy__(), _v7.value.modTime().length, "ModTime", _paxMtime);
        _verifyTime(_h.accessTime.__copy__(), _gnu.value.accessTime().length, "AccessTime", _paxAtime);
        _verifyTime(_h.changeTime.__copy__(), _gnu.value.changeTime().length, "ChangeTime", _paxCtime);
        var _whyOnlyPAX:GoString = (("" : GoString)), _whyOnlyGNU:GoString = (("" : GoString));
        if (_h.typeflag == typeReg || _h.typeflag == typeChar || _h.typeflag == typeBlock || _h.typeflag == typeFifo || _h.typeflag == typeGNUSparse) {
            if (stdgo.strings.Strings.hasSuffix(_h.name, "/")) {
                return { _0 : formatUnknown, _1 : new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil(), _2 : new T_headerError(new Slice<GoString>("filename may not have trailing slash")).__copy__() };
            };
        } else if (_h.typeflag == typeXHeader || _h.typeflag == typeGNULongName || _h.typeflag == typeGNULongLink) {
            return { _0 : formatUnknown, _1 : new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil(), _2 : new T_headerError(new Slice<GoString>("cannot manually encode TypeXHeader, TypeGNULongName, or TypeGNULongLink headers")).__copy__() };
        } else if (_h.typeflag == typeXGlobalHeader) {
            var _h2:Header = (({ name : _h.name, typeflag : _h.typeflag, xattrs : _h.xattrs, paxrecords : _h.paxrecords, format : _h.format, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0 } : Header)).__copy__();
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_h.__copy__()), Go.toInterface(_h2.__copy__()))) {
                return { _0 : formatUnknown, _1 : new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil(), _2 : new T_headerError(new Slice<GoString>("only PAXRecords should be set for TypeXGlobalHeader")).__copy__() };
            };
            _whyOnlyPAX = "only PAX supports TypeXGlobalHeader";
            _format._mayOnlyBe(formatPAX);
        };
        if (!_isHeaderOnlyType(_h.typeflag) && _h.size < ((0 : GoInt64))) {
            return { _0 : formatUnknown, _1 : new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil(), _2 : new T_headerError(new Slice<GoString>("negative size on header-only type")).__copy__() };
        };
        if ((_h.xattrs == null ? 0 : _h.xattrs.length) > ((0 : GoInt))) {
            {
                var _k;
                var _v;
                for (_obj in _h.xattrs.keyValueIterator()) {
                    _k = _obj.key;
                    _v = _obj.value;
                    _paxHdrs[_paxSchilyXattr + _k] = _v;
                };
            };
            _whyOnlyPAX = "only PAX supports Xattrs";
            _format._mayOnlyBe(formatPAX);
        };
        if ((_h.paxrecords == null ? 0 : _h.paxrecords.length) > ((0 : GoInt))) {
            {
                var _k;
                var _v;
                for (_obj in _h.paxrecords.keyValueIterator()) {
                    _k = _obj.key;
                    _v = _obj.value;
                    {
                        var __tmp__ = _paxHdrs.exists(_k) ? { value : _paxHdrs[_k], ok : true } : { value : _paxHdrs.defaultValue(), ok : false }, _:GoString = __tmp__.value, _exists:Bool = __tmp__.ok;
                        if (_exists) {
                            continue;
                        } else if (_h.typeflag == typeXGlobalHeader) {
                            _paxHdrs[_k] = _v;
                        } else if (!_basicKeys[_k] && !stdgo.strings.Strings.hasPrefix(_k, _paxGNUSparse)) {
                            _paxHdrs[_k] = _v;
                        };
                    };
                };
            };
            _whyOnlyPAX = "only PAX supports PAXRecords";
            _format._mayOnlyBe(formatPAX);
        };
        {
            var _k;
            var _v;
            for (_obj in _paxHdrs.keyValueIterator()) {
                _k = _obj.key;
                _v = _obj.value;
                if (!_validPAXRecord(_k, _v)) {
                    return { _0 : formatUnknown, _1 : new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil(), _2 : new T_headerError(new Slice<GoString>(stdgo.fmt.Fmt.sprintf("invalid PAX record: %q", Go.toInterface(_k + ((" = " : GoString)) + _v)))).__copy__() };
                };
            };
        };
        {
            var _wantFormat:Format = _h.format;
            if (_wantFormat.__t__ != formatUnknown.__t__) {
                if (_wantFormat._has(formatPAX) && !_preferPAX) {
                    _wantFormat._mayBe(formatUSTAR);
                };
                _format._mayOnlyBe(_wantFormat);
            };
        };
        if (_format.__t__ == formatUnknown.__t__) {
            if (_h.format.__t__ == formatUSTAR.__t__) {
                _err = new T_headerError(new Slice<GoString>("Format specifies USTAR", _whyNoUSTAR, _whyOnlyPAX, _whyOnlyGNU)).__copy__();
            } else if (_h.format.__t__ == formatPAX.__t__) {
                _err = new T_headerError(new Slice<GoString>("Format specifies PAX", _whyNoPAX, _whyOnlyGNU)).__copy__();
            } else if (_h.format.__t__ == formatGNU.__t__) {
                _err = new T_headerError(new Slice<GoString>("Format specifies GNU", _whyNoGNU, _whyOnlyPAX)).__copy__();
            } else {
                _err = new T_headerError(new Slice<GoString>(_whyNoUSTAR, _whyNoPAX, _whyNoGNU, _whyOnlyPAX, _whyOnlyGNU)).__copy__();
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
    public var xattrs : GoMap<GoString, GoString> = new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil();
    public var paxrecords : GoMap<GoString, GoString> = new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil();
    public var format : Format = new Format();
    public function new(?typeflag:GoUInt8, ?name:GoString, ?linkname:GoString, ?size:GoInt64, ?mode:GoInt64, ?uid:GoInt, ?gid:GoInt, ?uname:GoString, ?gname:GoString, ?modTime:stdgo.time.Time.Time, ?accessTime:stdgo.time.Time.Time, ?changeTime:stdgo.time.Time.Time, ?devmajor:GoInt64, ?devminor:GoInt64, ?xattrs:GoMap<GoString, GoString>, ?paxrecords:GoMap<GoString, GoString>, ?format:Format) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(typeflag) + " " + Go.string(name) + " " + Go.string(linkname) + " " + Go.string(size) + " " + Go.string(mode) + " " + Go.string(uid) + " " + Go.string(gid) + " " + Go.string(uname) + " " + Go.string(gname) + " " + Go.string(modTime) + " " + Go.string(accessTime) + " " + Go.string(changeTime) + " " + Go.string(devmajor) + " " + Go.string(devminor) + " " + Go.string(xattrs) + " " + Go.string(paxrecords) + " " + Go.string(format) + "}";
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
    public function __set__(__tmp__) {
        this.typeflag = __tmp__.typeflag;
        this.name = __tmp__.name;
        this.linkname = __tmp__.linkname;
        this.size = __tmp__.size;
        this.mode = __tmp__.mode;
        this.uid = __tmp__.uid;
        this.gid = __tmp__.gid;
        this.uname = __tmp__.uname;
        this.gname = __tmp__.gname;
        this.modTime = __tmp__.modTime;
        this.accessTime = __tmp__.accessTime;
        this.changeTime = __tmp__.changeTime;
        this.devmajor = __tmp__.devmajor;
        this.devminor = __tmp__.devminor;
        this.xattrs = __tmp__.xattrs;
        this.paxrecords = __tmp__.paxrecords;
        this.format = __tmp__.format;
        return this;
    }
}
@:structInit class T_sparseEntry {
    public function _endOffset():GoInt64 {
        var _s = this.__copy__();
        return _s.offset + _s.length;
    }
    public var offset : GoInt64 = ((0 : GoInt64));
    public var length : GoInt64 = ((0 : GoInt64));
    public function new(?offset:GoInt64, ?length:GoInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(offset) + " " + Go.string(length) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_sparseEntry(offset, length);
    }
    public function __set__(__tmp__) {
        this.offset = __tmp__.offset;
        this.length = __tmp__.length;
        return this;
    }
}
@:named class T_sparseDatas {
    public var __t__ : Slice<T_sparseEntry>;
    public function new(?t:Slice<T_sparseEntry>) {
        __t__ = t == null ? new Slice<T_sparseEntry>().nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_sparseDatas(__t__);
    public function __append__(args:haxe.Rest<T_sparseEntry>) return new T_sparseDatas(this.__t__.__append__(...args));
    public function __slice__(low:GoInt, high:GoInt = -1) return new T_sparseDatas(this.__t__.__slice__(low, high));
}
@:named class T_sparseHoles {
    public var __t__ : Slice<T_sparseEntry>;
    public function new(?t:Slice<T_sparseEntry>) {
        __t__ = t == null ? new Slice<T_sparseEntry>().nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_sparseHoles(__t__);
    public function __append__(args:haxe.Rest<T_sparseEntry>) return new T_sparseHoles(this.__t__.__append__(...args));
    public function __slice__(low:GoInt, high:GoInt = -1) return new T_sparseHoles(this.__t__.__slice__(low, high));
}
@:structInit class T_headerFileInfo {
    public function mode():stdgo.io.fs.Fs.FileMode {
        var _fi = this.__copy__();
        var _mode:stdgo.io.fs.Fs.FileMode = new stdgo.io.fs.Fs.FileMode();
        _mode = new stdgo.io.fs.Fs.FileMode(_fi._h.value.mode).perm();
        if (_fi._h.value.mode & _c_ISUID != ((0 : GoInt64))) {
            _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeSetuid).__t__);
        };
        if (_fi._h.value.mode & _c_ISGID != ((0 : GoInt64))) {
            _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeSetgid).__t__);
        };
        if (_fi._h.value.mode & _c_ISVTX != ((0 : GoInt64))) {
            _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeSticky).__t__);
        };
        {
            var _m:stdgo.io.fs.Fs.FileMode = new stdgo.io.fs.Fs.FileMode((new stdgo.io.fs.Fs.FileMode(new stdgo.io.fs.Fs.FileMode(_fi._h.value.mode).__t__ & ((4095 : GoUInt32)))).__t__ ^ ((-1 : GoUnTypedInt)));
            if (_m.__t__ == _c_ISDIR) {
                _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeDir).__t__);
            } else if (_m.__t__ == _c_ISFIFO) {
                _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeNamedPipe).__t__);
            } else if (_m.__t__ == _c_ISLNK) {
                _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeSymlink).__t__);
            } else if (_m.__t__ == _c_ISBLK) {
                _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeDevice).__t__);
            } else if (_m.__t__ == _c_ISCHR) {
                _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeDevice).__t__);
                _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeCharDevice).__t__);
            } else if (_m.__t__ == _c_ISSOCK) {
                _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeSocket).__t__);
            };
        };
        if (_fi._h.value.typeflag == typeSymlink) {
            _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeSymlink).__t__);
        } else if (_fi._h.value.typeflag == typeChar) {
            _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeDevice).__t__);
            _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeCharDevice).__t__);
        } else if (_fi._h.value.typeflag == typeBlock) {
            _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeDevice).__t__);
        } else if (_fi._h.value.typeflag == typeDir) {
            _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeDir).__t__);
        } else if (_fi._h.value.typeflag == typeFifo) {
            _mode = new stdgo.io.fs.Fs.FileMode(_mode.__t__ | (stdgo.io.fs.Fs.modeNamedPipe).__t__);
        };
        return _mode;
    }
    public function name():GoString {
        var _fi = this.__copy__();
        if (_fi.isDir()) {
            return stdgo.path.Path.base(stdgo.path.Path.clean(_fi._h.value.name));
        };
        return stdgo.path.Path.base(_fi._h.value.name);
    }
    public function sys():AnyInterface {
        var _fi = this.__copy__();
        return Go.toInterface(_fi._h);
    }
    public function modTime():stdgo.time.Time.Time {
        var _fi = this.__copy__();
        return _fi._h.value.modTime.__copy__();
    }
    public function isDir():Bool {
        var _fi = this.__copy__();
        return _fi.mode().isDir();
    }
    public function size():GoInt64 {
        var _fi = this.__copy__();
        return _fi._h.value.size;
    }
    public var _h : Pointer<Header> = new Pointer<Header>().nil();
    public function new(?_h:Pointer<Header>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_h) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_headerFileInfo(_h);
    }
    public function __set__(__tmp__) {
        this._h = __tmp__._h;
        return this;
    }
}
@:named class Format {
    public function toString():GoString {
        var _f = this.__copy__();
        var _ss:Slice<GoString> = new Slice<GoString>().nil();
        {
            var _f2:Format = new Format(((1 : GoInt)));
            Go.cfor(_f2.__t__ < _formatMax.__t__, _f2 = (new Format(_f2.__t__ << (((1 : GoUnTypedInt))))), {
                if (_f._has(_f2)) {
                    _ss = _ss.__append__(_formatNames[_f2]);
                };
            });
        };
        if (_ss.length == ((0 : GoInt))) {
            return "<unknown>";
        } else if (_ss.length == ((1 : GoInt))) {
            return _ss[((0 : GoInt))];
        } else {
            return (("(" : GoString)) + stdgo.strings.Strings.join(_ss, " | ") + ((")" : GoString));
        };
    }
    public function _mustNotBe(_f2:Format):Void {
        var _f = new Pointer(() -> new Format(this.__t__), __tmp__ -> new Format(this.__t__ = __tmp__.__t__));
        _f.value = new Format((new Format(_f.value.__t__ & (_f2).__t__)).__t__ ^ ((-1 : GoUnTypedInt)));
    }
    public function _mayOnlyBe(_f2:Format):Void {
        var _f = new Pointer(() -> new Format(this.__t__), __tmp__ -> new Format(this.__t__ = __tmp__.__t__));
        _f.value = new Format(_f.value.__t__ & (_f2).__t__);
    }
    public function _mayBe(_f2:Format):Void {
        var _f = new Pointer(() -> new Format(this.__t__), __tmp__ -> new Format(this.__t__ = __tmp__.__t__));
        _f.value = new Format(_f.value.__t__ | (_f2).__t__);
    }
    public function _has(_f2:Format):Bool {
        var _f = this.__copy__();
        return new Format(_f.__t__ & _f2.__t__).__t__ != ((0 : GoInt));
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new Format(__t__);
}
@:named class T_block {
    public function reset():Void {
        var _b = new Pointer(() -> new T_block(this.__t__), __tmp__ -> new T_block(this.__t__ = __tmp__.__t__));
        _b.value = new T_block(new GoArray<GoUInt8>(...([].concat([for (i in 0 ... 512) 0])))).__copy__();
    }
    public function computeChecksum():{ var _0 : GoInt64; var _1 : GoInt64; } {
        var _b = new Pointer(() -> new T_block(this.__t__), __tmp__ -> new T_block(this.__t__ = __tmp__.__t__));
        var _unsigned:GoInt64 = ((0 : GoInt64)), _signed:GoInt64 = ((0 : GoInt64));
        {
            var _i;
            var _c;
            for (_obj in _b.value.__t__.keyValueIterator()) {
                _i = _obj.key;
                _c = _obj.value;
                if (((148 : GoInt)) <= _i && _i < ((156 : GoInt))) {
                    _c = ((" ".code : GoRune));
                };
                _unsigned = _unsigned + (((_c : GoInt64)));
                _signed = _signed + (((((_c : GoInt8)) : GoInt64)));
            };
        };
        return { _0 : _unsigned, _1 : _signed };
    }
    public function setFormat(_format:Format):Void {
        var _b = new Pointer(() -> new T_block(this.__t__), __tmp__ -> new T_block(this.__t__ = __tmp__.__t__));
        if (_format._has(_formatV7)) {} else if (_format._has(formatGNU)) {
            Go.copy(_b.value.gnu().value.magic(), _magicGNU);
            Go.copy(_b.value.gnu().value.version(), _versionGNU);
        } else if (_format._has(_formatSTAR)) {
            Go.copy(_b.value.star().value.magic(), _magicUSTAR);
            Go.copy(_b.value.star().value.version(), _versionUSTAR);
            Go.copy(_b.value.star().value.trailer(), _trailerSTAR);
        } else if (_format._has(new Format(formatUSTAR.__t__ | formatPAX.__t__))) {
            Go.copy(_b.value.ustar().value.magic(), _magicUSTAR);
            Go.copy(_b.value.ustar().value.version(), _versionUSTAR);
        } else {
            throw "invalid format";
        };
        var _f:T_formatter = new T_formatter();
        var _field:Slice<GoUInt8> = _b.value.v7().value.chksum();
        var __tmp__ = _b.value.computeChecksum(), _chksum:GoInt64 = __tmp__._0, _:GoInt64 = __tmp__._1;
        _f._formatOctal(_field.__slice__(0, ((7 : GoInt))), _chksum);
        _field[((7 : GoInt))] = ((" ".code : GoRune));
    }
    public function getFormat():Format {
        var _b = new Pointer(() -> new T_block(this.__t__), __tmp__ -> new T_block(this.__t__ = __tmp__.__t__));
        var _p:T_parser = new T_parser();
        var _value:GoInt64 = _p._parseOctal(_b.value.v7().value.chksum());
        var __tmp__ = _b.value.computeChecksum(), _chksum1:GoInt64 = __tmp__._0, _chksum2:GoInt64 = __tmp__._1;
        if (_p._err != null || (_value != _chksum1 && _value != _chksum2)) {
            return formatUnknown;
        };
        var _magic:GoString = ((_b.value.ustar().value.magic() : GoString));
        var _version:GoString = ((_b.value.ustar().value.version() : GoString));
        var _trailer:GoString = ((_b.value.star().value.trailer() : GoString));
        if (_magic == _magicUSTAR && _trailer == _trailerSTAR) {
            return _formatSTAR;
        } else if (_magic == _magicUSTAR) {
            return new Format(formatUSTAR.__t__ | formatPAX.__t__);
        } else if (_magic == _magicGNU && _version == _versionGNU) {
            return formatGNU;
        } else {
            return _formatV7;
        };
    }
    public function sparse():T_sparseArray {
        var _b = new Pointer(() -> new T_block(this.__t__), __tmp__ -> new T_block(this.__t__ = __tmp__.__t__));
        return new T_sparseArray(_b.value.__slice__(0)).__copy__();
    }
    public function ustar():Pointer<T_headerUSTAR> {
        var _b = new Pointer(() -> new T_block(this.__t__), __tmp__ -> new T_block(this.__t__ = __tmp__.__t__));
        return new Pointer<T_headerUSTAR>(() -> new T_headerUSTAR(_b.value.__copy__().__t__), v -> new T_headerUSTAR((_b.value = new T_block(v.__copy__().__t__)).__copy__().__t__));
    }
    public function star():Pointer<T_headerSTAR> {
        var _b = new Pointer(() -> new T_block(this.__t__), __tmp__ -> new T_block(this.__t__ = __tmp__.__t__));
        return new Pointer<T_headerSTAR>(() -> new T_headerSTAR(_b.value.__copy__().__t__), v -> new T_headerSTAR((_b.value = new T_block(v.__copy__().__t__)).__copy__().__t__));
    }
    public function gnu():Pointer<T_headerGNU> {
        var _b = new Pointer(() -> new T_block(this.__t__), __tmp__ -> new T_block(this.__t__ = __tmp__.__t__));
        return new Pointer<T_headerGNU>(() -> new T_headerGNU(_b.value.__copy__().__t__), v -> new T_headerGNU((_b.value = new T_block(v.__copy__().__t__)).__copy__().__t__));
    }
    public function v7():Pointer<T_headerV7> {
        var _b = new Pointer(() -> new T_block(this.__t__), __tmp__ -> new T_block(this.__t__ = __tmp__.__t__));
        return new Pointer<T_headerV7>(() -> new T_headerV7(_b.value.__copy__().__t__), v -> new T_headerV7((_b.value = new T_block(v.__copy__().__t__)).__copy__().__t__));
    }
    public var __t__ : GoArray<GoUInt8>;
    public function new(?t:GoArray<GoUInt8>) {
        __t__ = t == null ? new GoArray<GoUInt8>(...[for (i in 0 ... 512) ((0 : GoUInt8))]) : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_block(__t__.copy());
    public function __slice__(low:GoInt, high:GoInt = -1) return this.__t__.__slice__(low, high);
}
@:named class T_headerV7 {
    public function linkName():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerV7(this.__t__), __tmp__ -> new T_headerV7(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((157 : GoInt))).__slice__(0, ((100 : GoInt)));
    }
    public function typeFlag():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerV7(this.__t__), __tmp__ -> new T_headerV7(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((156 : GoInt))).__slice__(0, ((1 : GoInt)));
    }
    public function chksum():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerV7(this.__t__), __tmp__ -> new T_headerV7(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((148 : GoInt))).__slice__(0, ((8 : GoInt)));
    }
    public function modTime():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerV7(this.__t__), __tmp__ -> new T_headerV7(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((136 : GoInt))).__slice__(0, ((12 : GoInt)));
    }
    public function size():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerV7(this.__t__), __tmp__ -> new T_headerV7(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((124 : GoInt))).__slice__(0, ((12 : GoInt)));
    }
    public function gid():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerV7(this.__t__), __tmp__ -> new T_headerV7(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((116 : GoInt))).__slice__(0, ((8 : GoInt)));
    }
    public function uid():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerV7(this.__t__), __tmp__ -> new T_headerV7(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((108 : GoInt))).__slice__(0, ((8 : GoInt)));
    }
    public function mode():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerV7(this.__t__), __tmp__ -> new T_headerV7(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((100 : GoInt))).__slice__(0, ((8 : GoInt)));
    }
    public function name():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerV7(this.__t__), __tmp__ -> new T_headerV7(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((0 : GoInt))).__slice__(0, ((100 : GoInt)));
    }
    public var __t__ : GoArray<GoUInt8>;
    public function new(?t:GoArray<GoUInt8>) {
        __t__ = t == null ? new GoArray<GoUInt8>(...[for (i in 0 ... 512) ((0 : GoUInt8))]) : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_headerV7(__t__.copy());
    public function __slice__(low:GoInt, high:GoInt = -1) return this.__t__.__slice__(low, high);
}
@:named class T_headerGNU {
    public function realSize():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerGNU(this.__t__), __tmp__ -> new T_headerGNU(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((483 : GoInt))).__slice__(0, ((12 : GoInt)));
    }
    public function sparse():T_sparseArray {
        var _h = new Pointer(() -> new T_headerGNU(this.__t__), __tmp__ -> new T_headerGNU(this.__t__ = __tmp__.__t__));
        return new T_sparseArray(_h.value.__slice__(((386 : GoInt))).__slice__(0, ((24 : GoUnTypedInt)) * ((4 : GoUnTypedInt)) + ((1 : GoUnTypedInt)))).__copy__();
    }
    public function changeTime():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerGNU(this.__t__), __tmp__ -> new T_headerGNU(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((357 : GoInt))).__slice__(0, ((12 : GoInt)));
    }
    public function accessTime():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerGNU(this.__t__), __tmp__ -> new T_headerGNU(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((345 : GoInt))).__slice__(0, ((12 : GoInt)));
    }
    public function devMinor():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerGNU(this.__t__), __tmp__ -> new T_headerGNU(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((337 : GoInt))).__slice__(0, ((8 : GoInt)));
    }
    public function devMajor():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerGNU(this.__t__), __tmp__ -> new T_headerGNU(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((329 : GoInt))).__slice__(0, ((8 : GoInt)));
    }
    public function groupName():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerGNU(this.__t__), __tmp__ -> new T_headerGNU(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((297 : GoInt))).__slice__(0, ((32 : GoInt)));
    }
    public function userName():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerGNU(this.__t__), __tmp__ -> new T_headerGNU(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((265 : GoInt))).__slice__(0, ((32 : GoInt)));
    }
    public function version():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerGNU(this.__t__), __tmp__ -> new T_headerGNU(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((263 : GoInt))).__slice__(0, ((2 : GoInt)));
    }
    public function magic():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerGNU(this.__t__), __tmp__ -> new T_headerGNU(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((257 : GoInt))).__slice__(0, ((6 : GoInt)));
    }
    public function v7():Pointer<T_headerV7> {
        var _h = new Pointer(() -> new T_headerGNU(this.__t__), __tmp__ -> new T_headerGNU(this.__t__ = __tmp__.__t__));
        return new Pointer<T_headerV7>(() -> new T_headerV7(_h.value.__copy__().__t__), v -> new T_headerV7((_h.value = new T_headerGNU(v.__copy__().__t__)).__copy__().__t__));
    }
    public var __t__ : GoArray<GoUInt8>;
    public function new(?t:GoArray<GoUInt8>) {
        __t__ = t == null ? new GoArray<GoUInt8>(...[for (i in 0 ... 512) ((0 : GoUInt8))]) : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_headerGNU(__t__.copy());
    public function __slice__(low:GoInt, high:GoInt = -1) return this.__t__.__slice__(low, high);
}
@:named class T_headerSTAR {
    public function trailer():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerSTAR(this.__t__), __tmp__ -> new T_headerSTAR(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((508 : GoInt))).__slice__(0, ((4 : GoInt)));
    }
    public function changeTime():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerSTAR(this.__t__), __tmp__ -> new T_headerSTAR(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((488 : GoInt))).__slice__(0, ((12 : GoInt)));
    }
    public function accessTime():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerSTAR(this.__t__), __tmp__ -> new T_headerSTAR(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((476 : GoInt))).__slice__(0, ((12 : GoInt)));
    }
    public function prefix():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerSTAR(this.__t__), __tmp__ -> new T_headerSTAR(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((345 : GoInt))).__slice__(0, ((131 : GoInt)));
    }
    public function devMinor():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerSTAR(this.__t__), __tmp__ -> new T_headerSTAR(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((337 : GoInt))).__slice__(0, ((8 : GoInt)));
    }
    public function devMajor():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerSTAR(this.__t__), __tmp__ -> new T_headerSTAR(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((329 : GoInt))).__slice__(0, ((8 : GoInt)));
    }
    public function groupName():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerSTAR(this.__t__), __tmp__ -> new T_headerSTAR(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((297 : GoInt))).__slice__(0, ((32 : GoInt)));
    }
    public function userName():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerSTAR(this.__t__), __tmp__ -> new T_headerSTAR(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((265 : GoInt))).__slice__(0, ((32 : GoInt)));
    }
    public function version():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerSTAR(this.__t__), __tmp__ -> new T_headerSTAR(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((263 : GoInt))).__slice__(0, ((2 : GoInt)));
    }
    public function magic():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerSTAR(this.__t__), __tmp__ -> new T_headerSTAR(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((257 : GoInt))).__slice__(0, ((6 : GoInt)));
    }
    public function v7():Pointer<T_headerV7> {
        var _h = new Pointer(() -> new T_headerSTAR(this.__t__), __tmp__ -> new T_headerSTAR(this.__t__ = __tmp__.__t__));
        return new Pointer<T_headerV7>(() -> new T_headerV7(_h.value.__copy__().__t__), v -> new T_headerV7((_h.value = new T_headerSTAR(v.__copy__().__t__)).__copy__().__t__));
    }
    public var __t__ : GoArray<GoUInt8>;
    public function new(?t:GoArray<GoUInt8>) {
        __t__ = t == null ? new GoArray<GoUInt8>(...[for (i in 0 ... 512) ((0 : GoUInt8))]) : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_headerSTAR(__t__.copy());
    public function __slice__(low:GoInt, high:GoInt = -1) return this.__t__.__slice__(low, high);
}
@:named class T_headerUSTAR {
    public function prefix():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerUSTAR(this.__t__), __tmp__ -> new T_headerUSTAR(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((345 : GoInt))).__slice__(0, ((155 : GoInt)));
    }
    public function devMinor():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerUSTAR(this.__t__), __tmp__ -> new T_headerUSTAR(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((337 : GoInt))).__slice__(0, ((8 : GoInt)));
    }
    public function devMajor():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerUSTAR(this.__t__), __tmp__ -> new T_headerUSTAR(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((329 : GoInt))).__slice__(0, ((8 : GoInt)));
    }
    public function groupName():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerUSTAR(this.__t__), __tmp__ -> new T_headerUSTAR(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((297 : GoInt))).__slice__(0, ((32 : GoInt)));
    }
    public function userName():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerUSTAR(this.__t__), __tmp__ -> new T_headerUSTAR(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((265 : GoInt))).__slice__(0, ((32 : GoInt)));
    }
    public function version():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerUSTAR(this.__t__), __tmp__ -> new T_headerUSTAR(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((263 : GoInt))).__slice__(0, ((2 : GoInt)));
    }
    public function magic():Slice<GoByte> {
        var _h = new Pointer(() -> new T_headerUSTAR(this.__t__), __tmp__ -> new T_headerUSTAR(this.__t__ = __tmp__.__t__));
        return _h.value.__slice__(((257 : GoInt))).__slice__(0, ((6 : GoInt)));
    }
    public function v7():Pointer<T_headerV7> {
        var _h = new Pointer(() -> new T_headerUSTAR(this.__t__), __tmp__ -> new T_headerUSTAR(this.__t__ = __tmp__.__t__));
        return new Pointer<T_headerV7>(() -> new T_headerV7(_h.value.__copy__().__t__), v -> new T_headerV7((_h.value = new T_headerUSTAR(v.__copy__().__t__)).__copy__().__t__));
    }
    public var __t__ : GoArray<GoUInt8>;
    public function new(?t:GoArray<GoUInt8>) {
        __t__ = t == null ? new GoArray<GoUInt8>(...[for (i in 0 ... 512) ((0 : GoUInt8))]) : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_headerUSTAR(__t__.copy());
    public function __slice__(low:GoInt, high:GoInt = -1) return this.__t__.__slice__(low, high);
}
@:named class T_sparseArray {
    public function maxEntries():GoInt {
        var _s = this.__copy__();
        return _s.__t__.length / ((24 : GoInt));
    }
    public function isExtended():Slice<GoByte> {
        var _s = this.__copy__();
        return _s.__slice__(((24 : GoInt)) * _s.maxEntries()).__slice__(0, ((1 : GoInt))).__copy__().__t__;
    }
    public function entry(_i:GoInt):T_sparseElem {
        var _s = this.__copy__();
        return new T_sparseElem(_s.__slice__(_i * ((24 : GoInt))).__copy__().__t__).__copy__();
    }
    public var __t__ : Slice<GoUInt8>;
    public function new(?t:Slice<GoUInt8>) {
        __t__ = t == null ? new Slice<GoUInt8>().nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_sparseArray(__t__);
    public function __append__(args:haxe.Rest<GoUInt8>) return new T_sparseArray(this.__t__.__append__(...args));
    public function __slice__(low:GoInt, high:GoInt = -1) return new T_sparseArray(this.__t__.__slice__(low, high));
}
@:named class T_sparseElem {
    public function length():Slice<GoByte> {
        var _s = this.__copy__();
        return _s.__slice__(((12 : GoInt))).__slice__(0, ((12 : GoInt))).__copy__().__t__;
    }
    public function offset():Slice<GoByte> {
        var _s = this.__copy__();
        return _s.__slice__(((0 : GoInt))).__slice__(0, ((12 : GoInt))).__copy__().__t__;
    }
    public var __t__ : Slice<GoUInt8>;
    public function new(?t:Slice<GoUInt8>) {
        __t__ = t == null ? new Slice<GoUInt8>().nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_sparseElem(__t__);
    public function __append__(args:haxe.Rest<GoUInt8>) return new T_sparseElem(this.__t__.__append__(...args));
    public function __slice__(low:GoInt, high:GoInt = -1) return new T_sparseElem(this.__t__.__slice__(low, high));
}
@:structInit class Reader {
    public function _writeTo(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        var _tr = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_tr.value._err != null) {
            return { _0 : ((0 : GoInt64)), _1 : _tr.value._err };
        };
        var __tmp__ = _tr.value._curr.writeTo(_w), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _tr.value._err = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _tr = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_tr.value._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _tr.value._err };
        };
        var __tmp__ = _tr.value._curr.read(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null && Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof)) {
            _tr.value._err = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    public function _readOldGNUSparseMap(_hdr:Pointer<Header>, _blk:Pointer<T_block>):{ var _0 : T_sparseDatas; var _1 : Error; } {
        var _tr = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_blk.value.getFormat().__t__ != formatGNU.__t__) {
            return { _0 : new T_sparseDatas(), _1 : errHeader };
        };
        _hdr.value.format._mayOnlyBe(formatGNU);
        var _p:T_parser = new T_parser();
        _hdr.value.size = _p._parseNumeric(_blk.value.gnu().value.realSize());
        if (_p._err != null) {
            return { _0 : new T_sparseDatas(), _1 : _p._err };
        };
        var _s:T_sparseArray = _blk.value.gnu().value.sparse().__copy__();
        var _spd:T_sparseDatas = new T_sparseDatas(new Slice<T_sparseEntry>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_sparseEntry()]).setCap(((_s.maxEntries() : GoInt)).toBasic())).__copy__();
        while (true) {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _s.maxEntries(), _i++, {
                    if (_s.entry(_i).offset()[((0 : GoInt))] == ((0 : GoUInt8))) {
                        break;
                    };
                    var _offset:GoInt64 = _p._parseNumeric(_s.entry(_i).offset());
                    var _length:GoInt64 = _p._parseNumeric(_s.entry(_i).length());
                    if (_p._err != null) {
                        return { _0 : new T_sparseDatas(), _1 : _p._err };
                    };
                    _spd = _spd.__append__((({ offset : _offset, length : _length } : T_sparseEntry)).__copy__()).__copy__();
                });
            };
            if (_s.isExtended()[((0 : GoInt))] > ((0 : GoUInt8))) {
                {
                    var __tmp__ = _mustReadFull(_tr.value._r, _blk.value.__slice__(0)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : new T_sparseDatas(), _1 : _err };
                    };
                };
                _s = _blk.value.sparse().__copy__();
                continue;
            };
            return { _0 : _spd.__copy__(), _1 : ((null : stdgo.Error)) };
        };
    }
    public function _readHeader():{ var _0 : Pointer<Header>; var _1 : Pointer<T_block>; var _2 : Error; } {
        var _tr = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = stdgo.io.Io.readFull(_tr.value._r, _tr.value._blk.__slice__(0)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new Pointer<Header>().nil(), _1 : new Pointer<T_block>().nil(), _2 : _err };
            };
        };
        if (stdgo.bytes.Bytes.equal(_tr.value._blk.__slice__(0), _zeroBlock.__slice__(0))) {
            {
                var __tmp__ = stdgo.io.Io.readFull(_tr.value._r, _tr.value._blk.__slice__(0)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : new Pointer<Header>().nil(), _1 : new Pointer<T_block>().nil(), _2 : _err };
                };
            };
            if (stdgo.bytes.Bytes.equal(_tr.value._blk.__slice__(0), _zeroBlock.__slice__(0))) {
                return { _0 : new Pointer<Header>().nil(), _1 : new Pointer<T_block>().nil(), _2 : stdgo.io.Io.eof };
            };
            return { _0 : new Pointer<Header>().nil(), _1 : new Pointer<T_block>().nil(), _2 : errHeader };
        };
        var _format:Format = _tr.value._blk.getFormat();
        if (_format.__t__ == formatUnknown.__t__) {
            return { _0 : new Pointer<Header>().nil(), _1 : new Pointer<T_block>().nil(), _2 : errHeader };
        };
        var _p:T_parser = new T_parser();
        var _hdr:Pointer<Header> = Go.pointer(new Header());
        var _v7:Pointer<T_headerV7> = _tr.value._blk.v7();
        _hdr.value.typeflag = _v7.value.typeFlag()[((0 : GoInt))];
        _hdr.value.name = _p._parseString(_v7.value.name());
        _hdr.value.linkname = _p._parseString(_v7.value.linkName());
        _hdr.value.size = _p._parseNumeric(_v7.value.size());
        _hdr.value.mode = _p._parseNumeric(_v7.value.mode());
        _hdr.value.uid = ((_p._parseNumeric(_v7.value.uid()) : GoInt));
        _hdr.value.gid = ((_p._parseNumeric(_v7.value.gid()) : GoInt));
        _hdr.value.modTime = stdgo.time.Time.unix(_p._parseNumeric(_v7.value.modTime()), ((0 : GoInt64))).__copy__();
        if (_format.__t__ > _formatV7.__t__) {
            var _ustar:Pointer<T_headerUSTAR> = _tr.value._blk.ustar();
            _hdr.value.uname = _p._parseString(_ustar.value.userName());
            _hdr.value.gname = _p._parseString(_ustar.value.groupName());
            _hdr.value.devmajor = _p._parseNumeric(_ustar.value.devMajor());
            _hdr.value.devminor = _p._parseNumeric(_ustar.value.devMinor());
            var _prefix:GoString = (("" : GoString));
            if (_format._has(new Format(formatUSTAR.__t__ | formatPAX.__t__))) {
                _hdr.value.format = _format;
                var _ustar:Pointer<T_headerUSTAR> = _tr.value._blk.ustar();
                _prefix = _p._parseString(_ustar.value.prefix());
                var _notASCII:GoInt32 -> Bool = function(_r:GoRune):Bool {
                    return _r >= ((128 : GoInt32));
                };
                if (stdgo.bytes.Bytes.indexFunc(_tr.value._blk.__slice__(0), _notASCII) >= ((0 : GoInt))) {
                    _hdr.value.format = formatUnknown;
                };
                var _nul:Slice<GoUInt8> -> Bool = function(_b:Slice<GoByte>):Bool {
                    return ((_b[_b.length - ((1 : GoInt))] : GoInt)) == ((0 : GoInt));
                };
                if (!(_nul(_v7.value.size()) && _nul(_v7.value.mode()) && _nul(_v7.value.uid()) && _nul(_v7.value.gid()) && _nul(_v7.value.modTime()) && _nul(_ustar.value.devMajor()) && _nul(_ustar.value.devMinor()))) {
                    _hdr.value.format = formatUnknown;
                };
            } else if (_format._has(_formatSTAR)) {
                var _star:Pointer<T_headerSTAR> = _tr.value._blk.star();
                _prefix = _p._parseString(_star.value.prefix());
                _hdr.value.accessTime = stdgo.time.Time.unix(_p._parseNumeric(_star.value.accessTime()), ((0 : GoInt64))).__copy__();
                _hdr.value.changeTime = stdgo.time.Time.unix(_p._parseNumeric(_star.value.changeTime()), ((0 : GoInt64))).__copy__();
            } else if (_format._has(formatGNU)) {
                _hdr.value.format = _format;
                var _p2:T_parser = new T_parser();
                var _gnu:Pointer<T_headerGNU> = _tr.value._blk.gnu();
                {
                    var _b:Slice<GoUInt8> = _gnu.value.accessTime();
                    if (_b[((0 : GoInt))] != ((0 : GoUInt8))) {
                        _hdr.value.accessTime = stdgo.time.Time.unix(_p2._parseNumeric(_b), ((0 : GoInt64))).__copy__();
                    };
                };
                {
                    var _b:Slice<GoUInt8> = _gnu.value.changeTime();
                    if (_b[((0 : GoInt))] != ((0 : GoUInt8))) {
                        _hdr.value.changeTime = stdgo.time.Time.unix(_p2._parseNumeric(_b), ((0 : GoInt64))).__copy__();
                    };
                };
                if (_p2._err != null) {
                    {
                        final __tmp__0 = new stdgo.time.Time.Time().__copy__();
                        final __tmp__1 = new stdgo.time.Time.Time().__copy__();
                        _hdr.value.accessTime = __tmp__0;
                        _hdr.value.changeTime = __tmp__1;
                    };
                    var _ustar:Pointer<T_headerUSTAR> = _tr.value._blk.ustar();
                    {
                        var _s:GoString = _p._parseString(_ustar.value.prefix());
                        if (_isASCII(_s)) {
                            _prefix = _s;
                        };
                    };
                    _hdr.value.format = formatUnknown;
                };
            };
            if (_prefix.length > ((0 : GoInt))) {
                _hdr.value.name = _prefix + (("/" : GoString)) + _hdr.value.name;
            };
        };
        return { _0 : _hdr, _1 : Go.pointer(_tr.value._blk), _2 : _p._err };
    }
    public function _readGNUSparsePAXHeaders(_hdr:Pointer<Header>):{ var _0 : T_sparseDatas; var _1 : Error; } {
        var _tr = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _is1x0:Bool = false;
        var _major:GoString = _hdr.value.paxrecords[_paxGNUSparseMajor], _minor:GoString = _hdr.value.paxrecords[_paxGNUSparseMinor];
        if (_major == (("0" : GoString)) && (_minor == (("0" : GoString)) || _minor == (("1" : GoString)))) {
            _is1x0 = false;
        } else if (_major == (("1" : GoString)) && _minor == (("0" : GoString))) {
            _is1x0 = true;
        } else if (_major != (("" : GoString)) || _minor != (("" : GoString))) {
            return { _0 : new T_sparseDatas(), _1 : ((null : stdgo.Error)) };
        } else if (_hdr.value.paxrecords[_paxGNUSparseMap] != (("" : GoString))) {
            _is1x0 = false;
        } else {
            return { _0 : new T_sparseDatas(), _1 : ((null : stdgo.Error)) };
        };
        _hdr.value.format._mayOnlyBe(formatPAX);
        {
            var _name:GoString = _hdr.value.paxrecords[_paxGNUSparseName];
            if (_name != (("" : GoString))) {
                _hdr.value.name = _name;
            };
        };
        var _size:GoString = _hdr.value.paxrecords[_paxGNUSparseSize];
        if (_size == (("" : GoString))) {
            _size = _hdr.value.paxrecords[_paxGNUSparseRealSize];
        };
        if (_size != (("" : GoString))) {
            var __tmp__ = stdgo.strconv.Strconv.parseInt(_size, ((10 : GoInt)), ((64 : GoInt))), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new T_sparseDatas(), _1 : errHeader };
            };
            _hdr.value.size = _n;
        };
        if (_is1x0) {
            return _readGNUSparseMap1x0(_tr.value._curr);
        };
        return _readGNUSparseMap0x1(_hdr.value.paxrecords);
    }
    public function _handleSparseFile(_hdr:Pointer<Header>, _rawHdr:Pointer<T_block>):Error {
        var _tr = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _spd:T_sparseDatas = new T_sparseDatas();
        var _err:Error = ((null : stdgo.Error));
        if (_hdr.value.typeflag == typeGNUSparse) {
            {
                var __tmp__ = _tr.value._readOldGNUSparseMap(_hdr, _rawHdr);
                _spd = __tmp__._0.__copy__();
                _err = __tmp__._1;
            };
        } else {
            {
                var __tmp__ = _tr.value._readGNUSparsePAXHeaders(_hdr);
                _spd = __tmp__._0.__copy__();
                _err = __tmp__._1;
            };
        };
        if (_err == null && _spd.__t__ != null && !_spd.__t__.isNil()) {
            if (_isHeaderOnlyType(_hdr.value.typeflag) || !_validateSparseEntries(_spd.__copy__().__t__, _hdr.value.size)) {
                return errHeader;
            };
            var _sph:Slice<T_sparseEntry> = _invertSparseEntries(_spd.__copy__().__t__, _hdr.value.size);
            _tr.value._curr = Go.pointer(new T_sparseFileReader(_tr.value._curr, new T_sparseHoles(_sph), ((0 : GoInt64)))).value;
        };
        return _err;
    }
    public function _handleRegularFile(_hdr:Pointer<Header>):Error {
        var _tr = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _nb:GoInt64 = _hdr.value.size;
        if (_isHeaderOnlyType(_hdr.value.typeflag)) {
            _nb = ((0 : GoInt64));
        };
        if (_nb < ((0 : GoInt64))) {
            return errHeader;
        };
        _tr.value._pad = _blockPadding(_nb);
        _tr.value._curr = Go.pointer((({ _r : _tr.value._r, _nb : _nb } : T_regFileReader))).value;
        return ((null : stdgo.Error));
    }
    public function _next():{ var _0 : Pointer<Header>; var _1 : Error; } {
        var _tr = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _paxHdrs:GoMap<GoString, GoString> = new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil();
        var _gnuLongName:GoString = (("" : GoString)), _gnuLongLink:GoString = (("" : GoString));
        var _format:Format = new Format(new Format(formatUSTAR.__t__ | formatPAX.__t__).__t__ | formatGNU.__t__);
        while (true) {
            {
                var _err:stdgo.Error = _discard(_tr.value._r, _tr.value._curr.physicalRemaining());
                if (_err != null) {
                    return { _0 : new Pointer<Header>().nil(), _1 : _err };
                };
            };
            {
                var __tmp__ = _tryReadFull(_tr.value._r, _tr.value._blk.__slice__(0, _tr.value._pad)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : new Pointer<Header>().nil(), _1 : _err };
                };
            };
            _tr.value._pad = ((0 : GoInt64));
            var __tmp__ = _tr.value._readHeader(), _hdr:Pointer<Header> = __tmp__._0, _rawHdr:Pointer<T_block> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : new Pointer<Header>().nil(), _1 : _err };
            };
            {
                var _err:stdgo.Error = _tr.value._handleRegularFile(_hdr);
                if (_err != null) {
                    return { _0 : new Pointer<Header>().nil(), _1 : _err };
                };
            };
            _format._mayOnlyBe(_hdr.value.format);
            if (_hdr.value.typeflag == typeXHeader || _hdr.value.typeflag == typeXGlobalHeader) {
                _format._mayOnlyBe(formatPAX);
                {
                    var __tmp__ = _parsePAX(_tr.value);
                    _paxHdrs = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : new Pointer<Header>().nil(), _1 : _err };
                };
                if (_hdr.value.typeflag == typeXGlobalHeader) {
                    _mergePAX(_hdr, _paxHdrs);
                    return { _0 : Go.pointer((({ name : _hdr.value.name, typeflag : _hdr.value.typeflag, xattrs : _hdr.value.xattrs, paxrecords : _hdr.value.paxrecords, format : _format, linkname : "", size : 0, mode : 0, uid : 0, gid : 0, uname : "", gname : "", modTime : new stdgo.time.Time.Time(), accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0 } : Header))), _1 : ((null : stdgo.Error)) };
                };
                continue;
            } else if (_hdr.value.typeflag == typeGNULongName || _hdr.value.typeflag == typeGNULongLink) {
                _format._mayOnlyBe(formatGNU);
                var __tmp__ = stdgo.io.Io.readAll(_tr.value), _realname:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : new Pointer<Header>().nil(), _1 : _err };
                };
                var _p:T_parser = new T_parser();
                if (_hdr.value.typeflag == typeGNULongName) {
                    _gnuLongName = _p._parseString(_realname);
                } else if (_hdr.value.typeflag == typeGNULongLink) {
                    _gnuLongLink = _p._parseString(_realname);
                };
                continue;
            } else {
                {
                    var _err:stdgo.Error = _mergePAX(_hdr, _paxHdrs);
                    if (_err != null) {
                        return { _0 : new Pointer<Header>().nil(), _1 : _err };
                    };
                };
                if (_gnuLongName != (("" : GoString))) {
                    _hdr.value.name = _gnuLongName;
                };
                if (_gnuLongLink != (("" : GoString))) {
                    _hdr.value.linkname = _gnuLongLink;
                };
                if (_hdr.value.typeflag == typeRegA) {
                    if (stdgo.strings.Strings.hasSuffix(_hdr.value.name, "/")) {
                        _hdr.value.typeflag = typeDir;
                    } else {
                        _hdr.value.typeflag = typeReg;
                    };
                };
                {
                    var _err:stdgo.Error = _tr.value._handleRegularFile(_hdr);
                    if (_err != null) {
                        return { _0 : new Pointer<Header>().nil(), _1 : _err };
                    };
                };
                {
                    var _err:stdgo.Error = _tr.value._handleSparseFile(_hdr, _rawHdr);
                    if (_err != null) {
                        return { _0 : new Pointer<Header>().nil(), _1 : _err };
                    };
                };
                if (_format._has(formatUSTAR) && _format._has(formatPAX)) {
                    _format._mayOnlyBe(formatUSTAR);
                };
                _hdr.value.format = _format;
                return { _0 : _hdr, _1 : ((null : stdgo.Error)) };
            };
        };
    }
    public function next():{ var _0 : Pointer<Header>; var _1 : Error; } {
        var _tr = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_tr.value._err != null) {
            return { _0 : new Pointer<Header>().nil(), _1 : _tr.value._err };
        };
        var __tmp__ = _tr.value._next(), _hdr:Pointer<Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _tr.value._err = _err;
        return { _0 : _hdr, _1 : _err };
    }
    public var _r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var _pad : GoInt64 = ((0 : GoInt64));
    public var _curr : T_fileReader = ((null : T_fileReader));
    public var _blk : T_block = new T_block();
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_r:stdgo.io.Io.Reader, ?_pad:GoInt64, ?_curr:T_fileReader, ?_blk:T_block, ?_err:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_r) + " " + Go.string(_pad) + " " + Go.string(_curr) + " " + Go.string(_blk) + " " + Go.string(_err) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Reader(_r, _pad, _curr, _blk, _err);
    }
    public function __set__(__tmp__) {
        this._r = __tmp__._r;
        this._pad = __tmp__._pad;
        this._curr = __tmp__._curr;
        this._blk = __tmp__._blk;
        this._err = __tmp__._err;
        return this;
    }
}
@:structInit class T_regFileReader {
    public function physicalRemaining():GoInt64 {
        var _fr = this.__copy__();
        return _fr._nb;
    }
    public function logicalRemaining():GoInt64 {
        var _fr = this.__copy__();
        return _fr._nb;
    }
    public function writeTo(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        var _fr = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.io.Io.copy(_w, new T__struct_43(_fr.value).__copy__());
    }
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _fr = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (((_b.length : GoInt64)) > _fr.value._nb) {
            _b = _b.__slice__(0, _fr.value._nb);
        };
        if (_b.length > ((0 : GoInt))) {
            {
                var __tmp__ = _fr.value._r.read(_b);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            _fr.value._nb = _fr.value._nb - (((_n : GoInt64)));
        };
        if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof) && _fr.value._nb > ((0 : GoInt64))) {
            return { _0 : _n, _1 : stdgo.io.Io.errUnexpectedEOF };
        } else if (_err == null && _fr.value._nb == ((0 : GoInt64))) {
            return { _0 : _n, _1 : stdgo.io.Io.eof };
        } else {
            return { _0 : _n, _1 : _err };
        };
    }
    public var _r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var _nb : GoInt64 = ((0 : GoInt64));
    public function new(?_r:stdgo.io.Io.Reader, ?_nb:GoInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_r) + " " + Go.string(_nb) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_regFileReader(_r, _nb);
    }
    public function __set__(__tmp__) {
        this._r = __tmp__._r;
        this._nb = __tmp__._nb;
        return this;
    }
}
@:structInit class T_sparseFileReader {
    public function physicalRemaining():GoInt64 {
        var _sr = this.__copy__();
        return _sr._fr.physicalRemaining();
    }
    public function logicalRemaining():GoInt64 {
        var _sr = this.__copy__();
        return _sr._sp.__t__[_sr._sp.__t__.length - ((1 : GoInt))]._endOffset() - _sr._pos;
    }
    public function writeTo(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        var _sr = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        var __tmp__ = try {
            { value : ((_w.__underlying__().value : stdgo.io.Io.WriteSeeker)), ok : true };
        } catch(_) {
            { value : ((null : stdgo.io.Io.WriteSeeker)), ok : false };
        }, _ws = __tmp__.value, _ok = __tmp__.ok;
        if (_ok) {
            {
                var __tmp__ = _ws.seek(((0 : GoInt64)), stdgo.io.Io.seekCurrent), _:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _ok = false;
                };
            };
        };
        if (!_ok) {
            return stdgo.io.Io.copy(_w, new T__struct_43(_sr.value).__copy__());
        };
        var _writeLastByte:Bool = false;
        var _pos0:GoInt64 = _sr.value._pos;
        while (_sr.value.logicalRemaining() > ((0 : GoInt64)) && !_writeLastByte && _err == null) {
            var _nf:GoInt64 = ((0 : GoInt64));
            var _holeStart:GoInt64 = _sr.value._sp.__t__[((0 : GoInt))].offset, _holeEnd:GoInt64 = _sr.value._sp.__t__[((0 : GoInt))]._endOffset();
            if (_sr.value._pos < _holeStart) {
                _nf = _holeStart - _sr.value._pos;
                {
                    var __tmp__ = stdgo.io.Io.copyN(_ws, _sr.value._fr, _nf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else {
                _nf = _holeEnd - _sr.value._pos;
                if (_sr.value.physicalRemaining() == ((0 : GoInt64))) {
                    _writeLastByte = true;
                    _nf--;
                };
                {
                    var __tmp__ = _ws.seek(_nf, stdgo.io.Io.seekCurrent);
                    _err = __tmp__._1;
                };
            };
            _sr.value._pos = _sr.value._pos + (_nf);
            if (_sr.value._pos >= _holeEnd && _sr.value._sp.__t__.length > ((1 : GoInt))) {
                _sr.value._sp = _sr.value._sp.__slice__(((1 : GoInt))).__copy__();
            };
        };
        if (_writeLastByte && _err == null) {
            {
                var __tmp__ = _ws.write(new Slice<GoUInt8>(((0 : GoUInt8))));
                _err = __tmp__._1;
            };
            _sr.value._pos++;
        };
        _n = _sr.value._pos - _pos0;
        if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
            return { _0 : _n, _1 : _errMissData };
        } else if (_err != null) {
            return { _0 : _n, _1 : _err };
        } else if (_sr.value.logicalRemaining() == ((0 : GoInt64)) && _sr.value.physicalRemaining() > ((0 : GoInt64))) {
            return { _0 : _n, _1 : _errUnrefData };
        } else {
            return { _0 : _n, _1 : ((null : stdgo.Error)) };
        };
    }
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _sr = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _finished:Bool = ((_b.length : GoInt64)) >= _sr.value.logicalRemaining();
        if (_finished) {
            _b = _b.__slice__(0, _sr.value.logicalRemaining());
        };
        var _b0:Slice<GoUInt8> = _b;
        var _endPos:GoInt64 = _sr.value._pos + ((_b.length : GoInt64));
        while (_endPos > _sr.value._pos && _err == null) {
            var _nf:GoInt = ((0 : GoInt));
            var _holeStart:GoInt64 = _sr.value._sp.__t__[((0 : GoInt))].offset, _holeEnd:GoInt64 = _sr.value._sp.__t__[((0 : GoInt))]._endOffset();
            if (_sr.value._pos < _holeStart) {
                var _bf:Slice<GoUInt8> = _b.__slice__(0, _min(((_b.length : GoInt64)), _holeStart - _sr.value._pos));
                {
                    var __tmp__ = _tryReadFull(_sr.value._fr, _bf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else {
                var _bf:Slice<GoUInt8> = _b.__slice__(0, _min(((_b.length : GoInt64)), _holeEnd - _sr.value._pos));
                {
                    var __tmp__ = _tryReadFull(new T_zeroReader().__copy__(), _bf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
            _b = _b.__slice__(_nf);
            _sr.value._pos = _sr.value._pos + (((_nf : GoInt64)));
            if (_sr.value._pos >= _holeEnd && _sr.value._sp.__t__.length > ((1 : GoInt))) {
                _sr.value._sp = _sr.value._sp.__slice__(((1 : GoInt))).__copy__();
            };
        };
        _n = _b0.length - _b.length;
        if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
            return { _0 : _n, _1 : _errMissData };
        } else if (_err != null) {
            return { _0 : _n, _1 : _err };
        } else if (_sr.value.logicalRemaining() == ((0 : GoInt64)) && _sr.value.physicalRemaining() > ((0 : GoInt64))) {
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
    public function new(?_fr:T_fileReader, ?_sp:T_sparseHoles, ?_pos:GoInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_fr) + " " + Go.string(_sp) + " " + Go.string(_pos) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_sparseFileReader(_fr, _sp, _pos);
    }
    public function __set__(__tmp__) {
        this._fr = __tmp__._fr;
        this._sp = __tmp__._sp;
        this._pos = __tmp__._pos;
        return this;
    }
}
@:structInit class T_zeroReader {
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        {
            var _i;
            for (_obj in _b.keyValueIterator()) {
                _i = _obj.key;
                _b[_i] = ((0 : GoUInt8));
            };
        };
        return { _0 : _b.length, _1 : ((null : stdgo.Error)) };
    }
    public function new() stdgo.internal.Macro.initLocals();
    public function toString() {
        return "{}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_zeroReader();
    }
    public function __set__(__tmp__) {
        return this;
    }
}
@:structInit class T_parser {
    public function _parseOctal(_b:Slice<GoByte>):GoInt64 {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b = stdgo.bytes.Bytes.trim(_b, " \\x00");
        if (_b.length == ((0 : GoInt))) {
            return ((0 : GoInt64));
        };
        var __tmp__ = stdgo.strconv.Strconv.parseUint(_p.value._parseString(_b), ((8 : GoInt)), ((64 : GoInt))), _x:GoUInt64 = __tmp__._0, _perr:stdgo.Error = __tmp__._1;
        if (_perr != null) {
            _p.value._err = errHeader;
        };
        return ((_x : GoInt64));
    }
    public function _parseNumeric(_b:Slice<GoByte>):GoInt64 {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.length > ((0 : GoInt)) && _b[((0 : GoInt))] & ((128 : GoUInt8)) != ((0 : GoUInt8))) {
            var _inv:GoByte = ((0 : GoUInt8));
            if (_b[((0 : GoInt))] & ((64 : GoUInt8)) != ((0 : GoUInt8))) {
                _inv = ((255 : GoUInt8));
            };
            var _x:GoUInt64 = ((0 : GoUInt64));
            {
                var _i;
                var _c;
                for (_obj in _b.keyValueIterator()) {
                    _i = _obj.key;
                    _c = _obj.value;
                    _c = _c ^ (_inv);
                    if (_i == ((0 : GoInt))) {
                        _c = _c & (((127 : GoUInt8)));
                    };
                    if (((_x >> ((56 : GoUnTypedInt)))) > ((0 : GoUInt64))) {
                        _p.value._err = errHeader;
                        return ((0 : GoInt64));
                    };
                    _x = (_x << ((8 : GoUnTypedInt))) | ((_c : GoUInt64));
                };
            };
            if (((_x >> ((63 : GoUnTypedInt)))) > ((0 : GoUInt64))) {
                _p.value._err = errHeader;
                return ((0 : GoInt64));
            };
            if (_inv == ((255 : GoUInt8))) {
                return -1 ^ ((_x : GoInt64));
            };
            return ((_x : GoInt64));
        };
        return _p.value._parseOctal(_b);
    }
    public function _parseString(_b:Slice<GoByte>):GoString {
        {
            var _i:GoInt = stdgo.bytes.Bytes.indexByte(_b, ((0 : GoUInt8)));
            if (_i >= ((0 : GoInt))) {
                return ((_b.__slice__(0, _i) : GoString));
            };
        };
        return ((_b : GoString));
    }
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_err:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_err) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_parser(_err);
    }
    public function __set__(__tmp__) {
        this._err = __tmp__._err;
        return this;
    }
}
@:structInit class T_formatter {
    public function _formatOctal(_b:Slice<GoByte>, _x:GoInt64):Void {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_fitsInOctal(_b.length, _x)) {
            _x = ((0 : GoInt64));
            _f.value._err = errFieldTooLong;
        };
        var _s:GoString = stdgo.strconv.Strconv.formatInt(_x, ((8 : GoInt)));
        {
            var _n:GoInt = _b.length - _s.length - ((1 : GoInt));
            if (_n > ((0 : GoInt))) {
                _s = stdgo.strings.Strings.repeat("0", _n) + _s;
            };
        };
        _f.value._formatString(_b, _s);
    }
    public function _formatNumeric(_b:Slice<GoByte>, _x:GoInt64):Void {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_fitsInOctal(_b.length, _x)) {
            _f.value._formatOctal(_b, _x);
            return;
        };
        if (_fitsInBase256(_b.length, _x)) {
            {
                var _i:GoInt = _b.length - ((1 : GoInt));
                Go.cfor(_i >= ((0 : GoInt)), _i--, {
                    _b[_i] = ((_x : GoByte));
                    _x = (_x >> (((8 : GoUnTypedInt))));
                });
            };
            _b[((0 : GoInt))] = _b[((0 : GoInt))] | (((128 : GoUInt8)));
            return;
        };
        _f.value._formatOctal(_b, ((0 : GoInt64)));
        _f.value._err = errFieldTooLong;
    }
    public function _formatString(_b:Slice<GoByte>, _s:GoString):Void {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_s.length > _b.length) {
            _f.value._err = errFieldTooLong;
        };
        Go.copy(_b, _s);
        if (_s.length < _b.length) {
            _b[_s.length] = ((0 : GoUInt8));
        };
        if (_s.length > _b.length && _b[_b.length - ((1 : GoInt))] == (("/".code : GoRune))) {
            var _n:GoInt = stdgo.strings.Strings.trimRight(_s.__slice__(0, _b.length), "/").length;
            _b[_n] = ((0 : GoUInt8));
        };
    }
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_err:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_err) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_formatter(_err);
    }
    public function __set__(__tmp__) {
        this._err = __tmp__._err;
        return this;
    }
}
@:structInit class Writer {
    public function close():Error {
        var _tw = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (Go.toInterface(_tw.value._err) == Go.toInterface(errWriteAfterClose)) {
            return ((null : stdgo.Error));
        };
        if (_tw.value._err != null) {
            return _tw.value._err;
        };
        var _err:stdgo.Error = _tw.value.flush();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((2 : GoInt)) && _err == null, _i++, {
                {
                    var __tmp__ = _tw.value._w.write(_zeroBlock.__slice__(0));
                    _err = __tmp__._1;
                };
            });
        };
        _tw.value._err = errWriteAfterClose;
        return _err;
    }
    public function _readFrom(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } {
        var _tw = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_tw.value._err != null) {
            return { _0 : ((0 : GoInt64)), _1 : _tw.value._err };
        };
        var __tmp__ = _tw.value._curr.readFrom(_r), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null && Go.toInterface(_err) != Go.toInterface(errWriteTooLong)) {
            _tw.value._err = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _tw = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_tw.value._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _tw.value._err };
        };
        var __tmp__ = _tw.value._curr.write(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null && Go.toInterface(_err) != Go.toInterface(errWriteTooLong)) {
            _tw.value._err = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    public function _writeRawHeader(_blk:Pointer<T_block>, _size:GoInt64, _flag:GoByte):Error {
        var _tw = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _tw.value.flush();
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = _tw.value._w.write(_blk.value.__slice__(0)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        if (_isHeaderOnlyType(_flag)) {
            _size = ((0 : GoInt64));
        };
        _tw.value._curr = Go.pointer(new T_regFileWriter(_tw.value._w, _size)).value;
        _tw.value._pad = _blockPadding(_size);
        return ((null : stdgo.Error));
    }
    public function _writeRawFile(_name:GoString, _data:GoString, _flag:GoByte, _format:Format):Error {
        var _tw = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _tw.value._blk.reset();
        _name = _toASCII(_name);
        if (_name.length > _nameSize) {
            _name = _name.__slice__(0, _nameSize);
        };
        _name = stdgo.strings.Strings.trimRight(_name, "/");
        var _f:T_formatter = new T_formatter();
        var _v7:Pointer<T_headerV7> = _tw.value._blk.v7();
        _v7.value.typeFlag()[((0 : GoInt))] = _flag;
        _f._formatString(_v7.value.name(), _name);
        _f._formatOctal(_v7.value.mode(), ((0 : GoInt64)));
        _f._formatOctal(_v7.value.uid(), ((0 : GoInt64)));
        _f._formatOctal(_v7.value.gid(), ((0 : GoInt64)));
        _f._formatOctal(_v7.value.size(), ((_data.length : GoInt64)));
        _f._formatOctal(_v7.value.modTime(), ((0 : GoInt64)));
        _tw.value._blk.setFormat(_format);
        if (_f._err != null) {
            return _f._err;
        };
        {
            var _err:stdgo.Error = _tw.value._writeRawHeader(Go.pointer(_tw.value._blk), ((_data.length : GoInt64)), _flag);
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = stdgo.io.Io.writeString(_tw.value, _data), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    public function _templateV7Plus(_hdr:Pointer<Header>, _fmtStr:T_stringFormatter, _fmtNum:T_numberFormatter):Pointer<T_block> {
        var _tw = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _tw.value._blk.reset();
        var _modTime:stdgo.time.Time.Time = _hdr.value.modTime.__copy__();
        if (_modTime.isZero()) {
            _modTime = stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__();
        };
        var _v7:Pointer<T_headerV7> = _tw.value._blk.v7();
        _v7.value.typeFlag()[((0 : GoInt))] = _hdr.value.typeflag;
        _fmtStr.__t__(_v7.value.name(), _hdr.value.name);
        _fmtStr.__t__(_v7.value.linkName(), _hdr.value.linkname);
        _fmtNum.__t__(_v7.value.mode(), _hdr.value.mode);
        _fmtNum.__t__(_v7.value.uid(), ((_hdr.value.uid : GoInt64)));
        _fmtNum.__t__(_v7.value.gid(), ((_hdr.value.gid : GoInt64)));
        _fmtNum.__t__(_v7.value.size(), _hdr.value.size);
        _fmtNum.__t__(_v7.value.modTime(), _modTime.unix());
        var _ustar:Pointer<T_headerUSTAR> = _tw.value._blk.ustar();
        _fmtStr.__t__(_ustar.value.userName(), _hdr.value.uname);
        _fmtStr.__t__(_ustar.value.groupName(), _hdr.value.gname);
        _fmtNum.__t__(_ustar.value.devMajor(), _hdr.value.devmajor);
        _fmtNum.__t__(_ustar.value.devMinor(), _hdr.value.devminor);
        return Go.pointer(_tw.value._blk);
    }
    public function _writeGNUHeader(_hdr:Pointer<Header>):Error {
        var _tw = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        final _longName:GoString = "././@LongLink";
        if (_hdr.value.name.length > _nameSize) {
            var _data:GoString = _hdr.value.name + (("\\x00" : GoString));
            {
                var _err:stdgo.Error = _tw.value._writeRawFile(_longName, _data, typeGNULongName, formatGNU);
                if (_err != null) {
                    return _err;
                };
            };
        };
        if (_hdr.value.linkname.length > _nameSize) {
            var _data:GoString = _hdr.value.linkname + (("\\x00" : GoString));
            {
                var _err:stdgo.Error = _tw.value._writeRawFile(_longName, _data, typeGNULongLink, formatGNU);
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _f:T_formatter = new T_formatter();
        var _spd:T_sparseDatas = new T_sparseDatas();
        var _spb:Slice<GoByte> = new Slice<GoUInt8>().nil();
        var _blk:Pointer<T_block> = _tw.value._templateV7Plus(_hdr, new T_stringFormatter(_f._formatString), new T_numberFormatter(_f._formatNumeric));
        if (!_hdr.value.accessTime.isZero()) {
            _f._formatNumeric(_blk.value.gnu().value.accessTime(), _hdr.value.accessTime.unix());
        };
        if (!_hdr.value.changeTime.isZero()) {
            _f._formatNumeric(_blk.value.gnu().value.changeTime(), _hdr.value.changeTime.unix());
        };
        _blk.value.setFormat(formatGNU);
        {
            var _err:stdgo.Error = _tw.value._writeRawHeader(_blk, _hdr.value.size, _hdr.value.typeflag);
            if (_err != null) {
                return _err;
            };
        };
        if (_spd.__t__.length > ((0 : GoInt))) {
            {
                var __tmp__ = _tw.value._w.write(_spb), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            _tw.value._curr = Go.pointer(new T_sparseFileWriter(_tw.value._curr, _spd.__copy__(), ((0 : GoInt64)))).value;
        };
        return ((null : stdgo.Error));
    }
    public function _writePAXHeader(_hdr:Pointer<Header>, _paxHdrs:GoMap<GoString, GoString>):Error {
        var _tw = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _realName:GoString = _hdr.value.name, _realSize:GoInt64 = _hdr.value.size;
        _realSize;
        var _isGlobal:Bool = _hdr.value.typeflag == typeXGlobalHeader;
        if ((_paxHdrs == null ? 0 : _paxHdrs.length) > ((0 : GoInt)) || _isGlobal) {
            var _keys:Slice<GoString> = new Slice<GoString>().nil();
            {
                var _k;
                for (_obj in _paxHdrs.keyValueIterator()) {
                    _k = _obj.key;
                    _keys = _keys.__append__(_k);
                };
            };
            stdgo.sort.Sort.strings(_keys);
            var _buf:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
            for (_k in _keys) {
                var __tmp__ = _formatPAXRecord(_k, _paxHdrs[_k]), _rec:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                _buf.writeString(_rec);
            };
            var _name:GoString = (("" : GoString));
            var _flag:GoByte = ((0 : GoUInt8));
            if (_isGlobal) {
                _name = _realName;
                if (_name == (("" : GoString))) {
                    _name = "GlobalHead.0.0";
                };
                _flag = typeXGlobalHeader;
            } else {
                var __tmp__ = stdgo.path.Path.split(_realName), _dir:GoString = __tmp__._0, _file:GoString = __tmp__._1;
                _name = stdgo.path.Path.join(_dir, "PaxHeaders.0", _file);
                _flag = typeXHeader;
            };
            var _data:GoString = _buf.toString();
            {
                var _err:stdgo.Error = _tw.value._writeRawFile(_name, _data, _flag, formatPAX);
                if (_err != null || _isGlobal) {
                    return _err;
                };
            };
        };
        var _f:T_formatter = new T_formatter();
        var _fmtStr:(Slice<GoUInt8>, GoString) -> Void = function(_b:Slice<GoByte>, _s:GoString):Void {
            _f._formatString(_b, _toASCII(_s));
        };
        var _blk:Pointer<T_block> = _tw.value._templateV7Plus(_hdr, new T_stringFormatter(_fmtStr), new T_numberFormatter(_f._formatOctal));
        _blk.value.setFormat(formatPAX);
        {
            var _err:stdgo.Error = _tw.value._writeRawHeader(_blk, _hdr.value.size, _hdr.value.typeflag);
            if (_err != null) {
                return _err;
            };
        };
        return ((null : stdgo.Error));
    }
    public function _writeUSTARHeader(_hdr:Pointer<Header>):Error {
        var _tw = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _namePrefix:GoString = (("" : GoString));
        {
            var __tmp__ = _splitUSTARPath(_hdr.value.name), _prefix:GoString = __tmp__._0, _suffix:GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                {
                    final __tmp__0 = _prefix;
                    final __tmp__1 = _suffix;
                    _namePrefix = __tmp__0;
                    _hdr.value.name = __tmp__1;
                };
            };
        };
        var _f:T_formatter = new T_formatter();
        var _blk:Pointer<T_block> = _tw.value._templateV7Plus(_hdr, new T_stringFormatter(_f._formatString), new T_numberFormatter(_f._formatOctal));
        _f._formatString(_blk.value.ustar().value.prefix(), _namePrefix);
        _blk.value.setFormat(formatUSTAR);
        if (_f._err != null) {
            return _f._err;
        };
        return _tw.value._writeRawHeader(_blk, _hdr.value.size, _hdr.value.typeflag);
    }
    public function writeHeader(_hdr:Pointer<Header>):Error {
        var _tw = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _tw.value.flush();
            if (_err != null) {
                return _err;
            };
        };
        _tw.value._hdr = _hdr.value.__copy__();
        if (_tw.value._hdr.typeflag == typeRegA) {
            if (stdgo.strings.Strings.hasSuffix(_tw.value._hdr.name, "/")) {
                _tw.value._hdr.typeflag = typeDir;
            } else {
                _tw.value._hdr.typeflag = typeReg;
            };
        };
        if (_tw.value._hdr.format.__t__ == formatUnknown.__t__) {
            _tw.value._hdr.modTime = _tw.value._hdr.modTime.round(stdgo.time.Time.second).__copy__();
            _tw.value._hdr.accessTime = new stdgo.time.Time.Time().__copy__();
            _tw.value._hdr.changeTime = new stdgo.time.Time.Time().__copy__();
        };
        var __tmp__ = _tw.value._hdr._allowedFormats(), _allowedFormats:Format = __tmp__._0, _paxHdrs:GoMap<GoString, GoString> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_allowedFormats._has(formatUSTAR)) {
            _tw.value._err = _tw.value._writeUSTARHeader(Go.pointer(_tw.value._hdr));
            return _tw.value._err;
        } else if (_allowedFormats._has(formatPAX)) {
            _tw.value._err = _tw.value._writePAXHeader(Go.pointer(_tw.value._hdr), _paxHdrs);
            return _tw.value._err;
        } else if (_allowedFormats._has(formatGNU)) {
            _tw.value._err = _tw.value._writeGNUHeader(Go.pointer(_tw.value._hdr));
            return _tw.value._err;
        } else {
            return _err;
        };
    }
    public function flush():Error {
        var _tw = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_tw.value._err != null) {
            return _tw.value._err;
        };
        {
            var _nb:GoInt64 = _tw.value._curr.logicalRemaining();
            if (_nb > ((0 : GoInt64))) {
                return stdgo.fmt.Fmt.errorf("archive/tar: missed writing %d bytes", Go.toInterface(_nb));
            };
        };
        {
            {
                var __tmp__ = _tw.value._w.write(_zeroBlock.__slice__(0, _tw.value._pad));
                _tw.value._err = __tmp__._1;
            };
            if (_tw.value._err != null) {
                return _tw.value._err;
            };
        };
        _tw.value._pad = ((0 : GoInt64));
        return ((null : stdgo.Error));
    }
    public var _w : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var _pad : GoInt64 = ((0 : GoInt64));
    public var _curr : T_fileWriter = ((null : T_fileWriter));
    public var _hdr : Header = new Header();
    public var _blk : T_block = new T_block();
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_w:stdgo.io.Io.Writer, ?_pad:GoInt64, ?_curr:T_fileWriter, ?_hdr:Header, ?_blk:T_block, ?_err:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_w) + " " + Go.string(_pad) + " " + Go.string(_curr) + " " + Go.string(_hdr) + " " + Go.string(_blk) + " " + Go.string(_err) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Writer(_w, _pad, _curr, _hdr, _blk, _err);
    }
    public function __set__(__tmp__) {
        this._w = __tmp__._w;
        this._pad = __tmp__._pad;
        this._curr = __tmp__._curr;
        this._hdr = __tmp__._hdr;
        this._blk = __tmp__._blk;
        this._err = __tmp__._err;
        return this;
    }
}
@:named class T_stringFormatter {
    public var __t__ : (Slice<GoUInt8>, GoString) -> Void;
    public function new(?t:(Slice<GoUInt8>, GoString) -> Void) {
        __t__ = t == null ? null : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_stringFormatter(__t__);
}
@:named class T_numberFormatter {
    public var __t__ : (Slice<GoUInt8>, GoInt64) -> Void;
    public function new(?t:(Slice<GoUInt8>, GoInt64) -> Void) {
        __t__ = t == null ? null : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_numberFormatter(__t__);
}
@:structInit class T_regFileWriter {
    public function physicalRemaining():GoInt64 {
        var _fw = this.__copy__();
        return _fw._nb;
    }
    public function logicalRemaining():GoInt64 {
        var _fw = this.__copy__();
        return _fw._nb;
    }
    public function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } {
        var _fw = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.io.Io.copy(new T__struct_44(_fw.value).__copy__(), _r);
    }
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _fw = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _overwrite:Bool = ((_b.length : GoInt64)) > _fw.value._nb;
        if (_overwrite) {
            _b = _b.__slice__(0, _fw.value._nb);
        };
        if (_b.length > ((0 : GoInt))) {
            {
                var __tmp__ = _fw.value._w.write(_b);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            _fw.value._nb = _fw.value._nb - (((_n : GoInt64)));
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
    public function new(?_w:stdgo.io.Io.Writer, ?_nb:GoInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_w) + " " + Go.string(_nb) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_regFileWriter(_w, _nb);
    }
    public function __set__(__tmp__) {
        this._w = __tmp__._w;
        this._nb = __tmp__._nb;
        return this;
    }
}
@:structInit class T_sparseFileWriter {
    public function physicalRemaining():GoInt64 {
        var _sw = this.__copy__();
        return _sw._fw.physicalRemaining();
    }
    public function logicalRemaining():GoInt64 {
        var _sw = this.__copy__();
        return _sw._sp.__t__[_sw._sp.__t__.length - ((1 : GoInt))]._endOffset() - _sw._pos;
    }
    public function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } {
        var _sw = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        var __tmp__ = try {
            { value : ((_r.__underlying__().value : stdgo.io.Io.ReadSeeker)), ok : true };
        } catch(_) {
            { value : ((null : stdgo.io.Io.ReadSeeker)), ok : false };
        }, _rs = __tmp__.value, _ok = __tmp__.ok;
        if (_ok) {
            {
                var __tmp__ = _rs.seek(((0 : GoInt64)), stdgo.io.Io.seekCurrent), _:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _ok = false;
                };
            };
        };
        if (!_ok) {
            return stdgo.io.Io.copy(new T__struct_44(_sw.value).__copy__(), _r);
        };
        var _readLastByte:Bool = false;
        var _pos0:GoInt64 = _sw.value._pos;
        while (_sw.value.logicalRemaining() > ((0 : GoInt64)) && !_readLastByte && _err == null) {
            var _nf:GoInt64 = ((0 : GoInt64));
            var _dataStart:GoInt64 = _sw.value._sp.__t__[((0 : GoInt))].offset, _dataEnd:GoInt64 = _sw.value._sp.__t__[((0 : GoInt))]._endOffset();
            if (_sw.value._pos < _dataStart) {
                _nf = _dataStart - _sw.value._pos;
                if (_sw.value.physicalRemaining() == ((0 : GoInt64))) {
                    _readLastByte = true;
                    _nf--;
                };
                {
                    var __tmp__ = _rs.seek(_nf, stdgo.io.Io.seekCurrent);
                    _err = __tmp__._1;
                };
            } else {
                _nf = _dataEnd - _sw.value._pos;
                {
                    var __tmp__ = stdgo.io.Io.copyN(_sw.value._fw, _rs, _nf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
            _sw.value._pos = _sw.value._pos + (_nf);
            if (_sw.value._pos >= _dataEnd && _sw.value._sp.__t__.length > ((1 : GoInt))) {
                _sw.value._sp = _sw.value._sp.__slice__(((1 : GoInt))).__copy__();
            };
        };
        if (_readLastByte && _err == null) {
            {
                var __tmp__ = _mustReadFull(_rs, new Slice<GoUInt8>(((0 : GoUInt8))));
                _err = __tmp__._1;
            };
            _sw.value._pos++;
        };
        _n = _sw.value._pos - _pos0;
        if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
            return { _0 : _n, _1 : stdgo.io.Io.errUnexpectedEOF };
        } else if (Go.toInterface(_err) == Go.toInterface(errWriteTooLong)) {
            return { _0 : _n, _1 : _errMissData };
        } else if (_err != null) {
            return { _0 : _n, _1 : _err };
        } else if (_sw.value.logicalRemaining() == ((0 : GoInt64)) && _sw.value.physicalRemaining() > ((0 : GoInt64))) {
            return { _0 : _n, _1 : _errUnrefData };
        } else {
            return { _0 : _n, _1 : _ensureEOF(_rs) };
        };
    }
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _sw = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _overwrite:Bool = ((_b.length : GoInt64)) > _sw.value.logicalRemaining();
        if (_overwrite) {
            _b = _b.__slice__(0, _sw.value.logicalRemaining());
        };
        var _b0:Slice<GoUInt8> = _b;
        var _endPos:GoInt64 = _sw.value._pos + ((_b.length : GoInt64));
        while (_endPos > _sw.value._pos && _err == null) {
            var _nf:GoInt = ((0 : GoInt));
            var _dataStart:GoInt64 = _sw.value._sp.__t__[((0 : GoInt))].offset, _dataEnd:GoInt64 = _sw.value._sp.__t__[((0 : GoInt))]._endOffset();
            if (_sw.value._pos < _dataStart) {
                var _bf:Slice<GoUInt8> = _b.__slice__(0, _min(((_b.length : GoInt64)), _dataStart - _sw.value._pos));
                {
                    var __tmp__ = new T_zeroWriter().write(_bf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else {
                var _bf:Slice<GoUInt8> = _b.__slice__(0, _min(((_b.length : GoInt64)), _dataEnd - _sw.value._pos));
                {
                    var __tmp__ = _sw.value._fw.write(_bf);
                    _nf = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
            _b = _b.__slice__(_nf);
            _sw.value._pos = _sw.value._pos + (((_nf : GoInt64)));
            if (_sw.value._pos >= _dataEnd && _sw.value._sp.__t__.length > ((1 : GoInt))) {
                _sw.value._sp = _sw.value._sp.__slice__(((1 : GoInt))).__copy__();
            };
        };
        _n = _b0.length - _b.length;
        if (Go.toInterface(_err) == Go.toInterface(errWriteTooLong)) {
            return { _0 : _n, _1 : _errMissData };
        } else if (_err != null) {
            return { _0 : _n, _1 : _err };
        } else if (_sw.value.logicalRemaining() == ((0 : GoInt64)) && _sw.value.physicalRemaining() > ((0 : GoInt64))) {
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
    public function new(?_fw:T_fileWriter, ?_sp:T_sparseDatas, ?_pos:GoInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_fw) + " " + Go.string(_sp) + " " + Go.string(_pos) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_sparseFileWriter(_fw, _sp, _pos);
    }
    public function __set__(__tmp__) {
        this._fw = __tmp__._fw;
        this._sp = __tmp__._sp;
        this._pos = __tmp__._pos;
        return this;
    }
}
@:structInit class T_zeroWriter {
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        {
            var _i;
            var _c;
            for (_obj in _b.keyValueIterator()) {
                _i = _obj.key;
                _c = _obj.value;
                if (_c != ((0 : GoUInt8))) {
                    return { _0 : _i, _1 : _errWriteHole };
                };
            };
        };
        return { _0 : _b.length, _1 : ((null : stdgo.Error)) };
    }
    public function new() stdgo.internal.Macro.initLocals();
    public function toString() {
        return "{}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_zeroWriter();
    }
    public function __set__(__tmp__) {
        return this;
    }
}
@:structInit @:local class T__struct_43 {
    @:embedded
    public var reader : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public function new(?reader:stdgo.io.Io.Reader) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(reader) + "}";
    }
    public function read(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return reader.read(_0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_43(reader);
    }
    public function __set__(__tmp__) {
        this.reader = __tmp__.reader;
        return this;
    }
}
@:structInit @:local class T__struct_44 {
    @:embedded
    public var writer : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public function new(?writer:stdgo.io.Io.Writer) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(writer) + "}";
    }
    public function write(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return writer.write(_0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_44(writer);
    }
    public function __set__(__tmp__) {
        this.writer = __tmp__.writer;
        return this;
    }
}
final _prefixSize : GoInt64 = ((155 : GoUnTypedInt));
final _paxComment : GoString = "comment";
final _paxGNUSparseMinor : GoString = "GNU.sparse.minor";
final _paxGNUSparseName : GoString = "GNU.sparse.name";
final _c_ISREG : GoInt64 = ((32768 : GoUnTypedInt));
final _c_ISDIR : GoInt64 = ((16384 : GoUnTypedInt));
var _errUnrefData : stdgo.Error = stdgo.errors.Errors.new_("archive/tar: sparse file contains unreferenced data");
final _paxGNUSparseNumBytes : GoString = "GNU.sparse.numbytes";
var errHeader : stdgo.Error = stdgo.errors.Errors.new_("archive/tar: invalid tar header");
final _paxSchilyXattr : GoString = "SCHILY.xattr.";
final _formatMax : Format = new Format(((((1 : GoUnTypedInt)) << (7 : GoUnTypedInt))) / ((4 : GoUnTypedInt)));
final typeCont : GoInt32 = (("7".code : GoRune));
final _paxNone : GoString = "";
final _c_ISUID : GoInt64 = ((2048 : GoUnTypedInt));
var _errMissData : stdgo.Error = stdgo.errors.Errors.new_("archive/tar: sparse file references non-existent data");
final _blockSize : GoInt64 = ((512 : GoUnTypedInt));
final _paxUname : GoString = "uname";
final _c_ISLNK : GoInt64 = ((40960 : GoUnTypedInt));
final typeSymlink : GoInt32 = (("2".code : GoRune));
final _c_ISFIFO : GoInt64 = ((4096 : GoUnTypedInt));
final typeGNULongLink : GoInt32 = (("K".code : GoRune));
final _paxCtime : GoString = "ctime";
var _errWriteHole : stdgo.Error = stdgo.errors.Errors.new_("archive/tar: write non-NUL byte in sparse hole");
final _paxGNUSparseNumBlocks : GoString = "GNU.sparse.numblocks";
final _paxGNUSparseRealSize : GoString = "GNU.sparse.realsize";
final typeXHeader : GoInt32 = (("x".code : GoRune));
var _zeroBlock : T_block = new T_block();
final _paxPath : GoString = "path";
final _paxGname : GoString = "gname";
final _c_ISSOCK : GoInt64 = ((49152 : GoUnTypedInt));
final _formatV7 : Format = new Format(((((1 : GoUnTypedInt)) << (2 : GoUnTypedInt))) / ((4 : GoUnTypedInt)));
final formatPAX : Format = new Format(((((1 : GoUnTypedInt)) << (4 : GoUnTypedInt))) / ((4 : GoUnTypedInt)));
final _magicGNU : GoString = "ustar ";
final formatGNU : Format = new Format(((((1 : GoUnTypedInt)) << (5 : GoUnTypedInt))) / ((4 : GoUnTypedInt)));
final _paxAtime : GoString = "atime";
final _paxMtime : GoString = "mtime";
final _paxGNUSparseOffset : GoString = "GNU.sparse.offset";
final typeChar : GoInt32 = (("3".code : GoRune));
final formatUSTAR : Format = new Format(((((1 : GoUnTypedInt)) << (3 : GoUnTypedInt))) / ((4 : GoUnTypedInt)));
final _paxGid : GoString = "gid";
var errWriteTooLong : stdgo.Error = stdgo.errors.Errors.new_("archive/tar: write too long");
final _paxGNUSparse : GoString = "GNU.sparse.";
var _sysStat : (_fi:stdgo.io.fs.Fs.FileInfo, _h:Pointer<Header>) -> Error = null;
final typeBlock : GoInt32 = (("4".code : GoRune));
final typeRegA : GoInt32 = (("\u{0000}".code : GoRune));
final typeReg : GoInt32 = (("0".code : GoRune));
final typeFifo : GoInt32 = (("6".code : GoRune));
var errFieldTooLong : stdgo.Error = stdgo.errors.Errors.new_("archive/tar: header field too long");
final _paxGNUSparseMajor : GoString = "GNU.sparse.major";
final _nameSize : GoInt64 = ((100 : GoUnTypedInt));
final _paxLinkpath : GoString = "linkpath";
final _paxSize : GoString = "size";
final _paxUid : GoString = "uid";
var _basicKeys : GoMap<GoString, Bool> = new GoMap<GoString, Bool>(
new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))),
{ key : _paxPath, value : true },
{ key : _paxLinkpath, value : true },
{ key : _paxSize, value : true },
{ key : _paxUid, value : true },
{ key : _paxGid, value : true },
{ key : _paxUname, value : true },
{ key : _paxGname, value : true },
{ key : _paxMtime, value : true },
{ key : _paxAtime, value : true },
{ key : _paxCtime, value : true });
final _paxGNUSparseSize : GoString = "GNU.sparse.size";
final _paxGNUSparseMap : GoString = "GNU.sparse.map";
final typeDir : GoInt32 = (("5".code : GoRune));
final _c_ISGID : GoInt64 = ((1024 : GoUnTypedInt));
final _formatSTAR : Format = new Format(((((1 : GoUnTypedInt)) << (6 : GoUnTypedInt))) / ((4 : GoUnTypedInt)));
final typeXGlobalHeader : GoInt32 = (("g".code : GoRune));
final typeGNUSparse : GoInt32 = (("S".code : GoRune));
final formatUnknown : Format = new Format(((((1 : GoUnTypedInt)) << (1 : GoUnTypedInt))) / ((4 : GoUnTypedInt)));
final _0 : Format = new Format(((((1 : GoUnTypedInt)) << (0 : GoUnTypedInt))) / ((4 : GoUnTypedInt)));
final typeGNULongName : GoInt32 = (("L".code : GoRune));
final _c_ISBLK : GoInt64 = ((24576 : GoUnTypedInt));
final _paxCharset : GoString = "charset";
var _formatNames : GoMap<Format, GoString> = new GoMap<Format, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("archive/tar.Format", [], stdgo.reflect.Reflect.GoType.basic(int_kind)), stdgo.reflect.Reflect.GoType.basic(string_kind))), { key : _formatV7, value : "V7" }, { key : formatUSTAR, value : "USTAR" }, { key : formatPAX, value : "PAX" }, { key : formatGNU, value : "GNU" }, { key : _formatSTAR, value : "STAR" });
final _trailerSTAR : GoString = "tar\\x00";
var errWriteAfterClose : stdgo.Error = stdgo.errors.Errors.new_("archive/tar: write after close");
final _versionUSTAR : GoString = "00";
final typeLink : GoInt32 = (("1".code : GoRune));
final _magicUSTAR : GoString = "ustar\\x00";
final _versionGNU : GoString = " \\x00";
final _c_ISVTX : GoInt64 = ((512 : GoUnTypedInt));
final _c_ISCHR : GoInt64 = ((8192 : GoUnTypedInt));
/**
    // validateSparseEntries reports whether sp is a valid sparse map.
    // It does not matter whether sp represents data fragments or hole fragments.
**/
function _validateSparseEntries(_sp:Slice<T_sparseEntry>, _size:GoInt64):Bool {
        if (_size < ((0 : GoInt64))) {
            return false;
        };
        var _pre:T_sparseEntry = new T_sparseEntry();
        for (_cur in _sp) {
            if (_cur.offset < ((0 : GoInt64)) || _cur.length < ((0 : GoInt64))) {
                return false;
            } else if (_cur.offset > stdgo.math.Math.maxInt64 - _cur.length) {
                return false;
            } else if (_cur._endOffset() > _size) {
                return false;
            } else if (_pre._endOffset() > _cur.offset) {
                return false;
            };
            _pre = _cur.__copy__();
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
        var _dst:Slice<T_sparseEntry> = _src.__slice__(0, ((0 : GoInt)));
        for (_s in _src) {
            var _pos:GoInt64 = _s.offset, _end:GoInt64 = _s._endOffset();
            _pos = _pos + (_blockPadding(_pos));
            if (_end != _size) {
                _end = _end - (_blockPadding(-_end));
            };
            if (_pos < _end) {
                _dst = _dst.__append__((({ offset : _pos, length : _end - _pos } : T_sparseEntry)).__copy__());
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
        var _dst:Slice<T_sparseEntry> = _src.__slice__(0, ((0 : GoInt)));
        var _pre:T_sparseEntry = new T_sparseEntry();
        for (_cur in _src) {
            if (_cur.length == ((0 : GoInt64))) {
                continue;
            };
            _pre.length = _cur.offset - _pre.offset;
            if (_pre.length > ((0 : GoInt64))) {
                _dst = _dst.__append__(_pre.__copy__());
            };
            _pre.offset = _cur._endOffset();
        };
        _pre.length = _size - _pre.offset;
        return _dst.__append__(_pre.__copy__());
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
function fileInfoHeader(_fi:stdgo.io.fs.Fs.FileInfo, _link:GoString):{ var _0 : Pointer<Header>; var _1 : Error; } {
        if (_fi == null) {
            return { _0 : new Pointer<Header>().nil(), _1 : stdgo.errors.Errors.new_("archive/tar: FileInfo is nil") };
        };
        var _fm:stdgo.io.fs.Fs.FileMode = _fi.mode();
        var _h:Pointer<Header> = Go.pointer((({ name : _fi.name(), modTime : _fi.modTime().__copy__(), mode : _fm.perm().__t__, typeflag : 0, linkname : "", size : 0, uid : 0, gid : 0, uname : "", gname : "", accessTime : new stdgo.time.Time.Time(), changeTime : new stdgo.time.Time.Time(), devmajor : 0, devminor : 0, xattrs : new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil(), paxrecords : new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil(), format : new Format() } : Header)));
        if (_fm.isRegular()) {
            _h.value.typeflag = typeReg;
            _h.value.size = _fi.size();
        } else if (_fi.isDir()) {
            _h.value.typeflag = typeDir;
            _h.value.name = _h.value.name + ("/");
        } else if (new stdgo.io.fs.Fs.FileMode(_fm.__t__ & stdgo.io.fs.Fs.modeSymlink.__t__).__t__ != ((0 : GoUInt32))) {
            _h.value.typeflag = typeSymlink;
            _h.value.linkname = _link;
        } else if (new stdgo.io.fs.Fs.FileMode(_fm.__t__ & stdgo.io.fs.Fs.modeDevice.__t__).__t__ != ((0 : GoUInt32))) {
            if (new stdgo.io.fs.Fs.FileMode(_fm.__t__ & stdgo.io.fs.Fs.modeCharDevice.__t__).__t__ != ((0 : GoUInt32))) {
                _h.value.typeflag = typeChar;
            } else {
                _h.value.typeflag = typeBlock;
            };
        } else if (new stdgo.io.fs.Fs.FileMode(_fm.__t__ & stdgo.io.fs.Fs.modeNamedPipe.__t__).__t__ != ((0 : GoUInt32))) {
            _h.value.typeflag = typeFifo;
        } else if (new stdgo.io.fs.Fs.FileMode(_fm.__t__ & stdgo.io.fs.Fs.modeSocket.__t__).__t__ != ((0 : GoUInt32))) {
            return { _0 : new Pointer<Header>().nil(), _1 : stdgo.fmt.Fmt.errorf("archive/tar: sockets not supported") };
        } else {
            return { _0 : new Pointer<Header>().nil(), _1 : stdgo.fmt.Fmt.errorf("archive/tar: unknown file mode %v", Go.toInterface(_fm)) };
        };
        if (new stdgo.io.fs.Fs.FileMode(_fm.__t__ & stdgo.io.fs.Fs.modeSetuid.__t__).__t__ != ((0 : GoUInt32))) {
            _h.value.mode = _h.value.mode | (_c_ISUID);
        };
        if (new stdgo.io.fs.Fs.FileMode(_fm.__t__ & stdgo.io.fs.Fs.modeSetgid.__t__).__t__ != ((0 : GoUInt32))) {
            _h.value.mode = _h.value.mode | (_c_ISGID);
        };
        if (new stdgo.io.fs.Fs.FileMode(_fm.__t__ & stdgo.io.fs.Fs.modeSticky.__t__).__t__ != ((0 : GoUInt32))) {
            _h.value.mode = _h.value.mode | (_c_ISVTX);
        };
        {
            var __tmp__ = try {
                { value : ((_fi.sys().value : Pointer<Header>)), ok : true };
            } catch(_) {
                { value : new Pointer<Header>().nil(), ok : false };
            }, _sys = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _h.value.uid = _sys.value.uid;
                _h.value.gid = _sys.value.gid;
                _h.value.uname = _sys.value.uname;
                _h.value.gname = _sys.value.gname;
                _h.value.accessTime = _sys.value.accessTime.__copy__();
                _h.value.changeTime = _sys.value.changeTime.__copy__();
                if (_sys.value.xattrs != null && !_sys.value.xattrs.isNil()) {
                    _h.value.xattrs = new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))));
                    {
                        var _k;
                        var _v;
                        for (_obj in _sys.value.xattrs.keyValueIterator()) {
                            _k = _obj.key;
                            _v = _obj.value;
                            _h.value.xattrs[_k] = _v;
                        };
                    };
                };
                if (_sys.value.typeflag == typeLink) {
                    _h.value.typeflag = typeLink;
                    _h.value.size = ((0 : GoInt64));
                    _h.value.linkname = _sys.value.linkname;
                };
                if (_sys.value.paxrecords != null && !_sys.value.paxrecords.isNil()) {
                    _h.value.paxrecords = new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))));
                    {
                        var _k;
                        var _v;
                        for (_obj in _sys.value.paxrecords.keyValueIterator()) {
                            _k = _obj.key;
                            _v = _obj.value;
                            _h.value.paxrecords[_k] = _v;
                        };
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
        if (_flag == typeLink || _flag == typeSymlink || _flag == typeChar || _flag == typeBlock || _flag == typeDir || _flag == typeFifo) {
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
        return -_offset & (_blockSize - ((1 : GoUnTypedInt)));
    }
/**
    // NewReader creates a new Reader reading from r.
**/
function newReader(_r:stdgo.io.Io.Reader):Pointer<Reader> {
        return Go.pointer((({ _r : _r, _curr : Go.pointer(new T_regFileReader(_r, ((0 : GoInt64)))).value, _pad : 0, _blk : new T_block(), _err : ((null : stdgo.Error)) } : Reader)));
    }
/**
    // mergePAX merges paxHdrs into hdr for all relevant fields of Header.
**/
function _mergePAX(_hdr:Pointer<Header>, _paxHdrs:GoMap<GoString, GoString>):Error {
        var _err:Error = ((null : stdgo.Error));
        {
            var _k;
            var _v;
            for (_obj in _paxHdrs.keyValueIterator()) {
                _k = _obj.key;
                _v = _obj.value;
                if (_v == (("" : GoString))) {
                    continue;
                };
                var _id64:GoInt64 = ((0 : GoInt64));
                if (_k == _paxPath) {
                    _hdr.value.name = _v;
                } else if (_k == _paxLinkpath) {
                    _hdr.value.linkname = _v;
                } else if (_k == _paxUname) {
                    _hdr.value.uname = _v;
                } else if (_k == _paxGname) {
                    _hdr.value.gname = _v;
                } else if (_k == _paxUid) {
                    {
                        var __tmp__ = stdgo.strconv.Strconv.parseInt(_v, ((10 : GoInt)), ((64 : GoInt)));
                        _id64 = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    _hdr.value.uid = ((_id64 : GoInt));
                } else if (_k == _paxGid) {
                    {
                        var __tmp__ = stdgo.strconv.Strconv.parseInt(_v, ((10 : GoInt)), ((64 : GoInt)));
                        _id64 = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    _hdr.value.gid = ((_id64 : GoInt));
                } else if (_k == _paxAtime) {
                    {
                        var __tmp__ = _parsePAXTime(_v);
                        _hdr.value.accessTime = __tmp__._0.__copy__();
                        _err = __tmp__._1;
                    };
                } else if (_k == _paxMtime) {
                    {
                        var __tmp__ = _parsePAXTime(_v);
                        _hdr.value.modTime = __tmp__._0.__copy__();
                        _err = __tmp__._1;
                    };
                } else if (_k == _paxCtime) {
                    {
                        var __tmp__ = _parsePAXTime(_v);
                        _hdr.value.changeTime = __tmp__._0.__copy__();
                        _err = __tmp__._1;
                    };
                } else if (_k == _paxSize) {
                    {
                        var __tmp__ = stdgo.strconv.Strconv.parseInt(_v, ((10 : GoInt)), ((64 : GoInt)));
                        _hdr.value.size = __tmp__._0;
                        _err = __tmp__._1;
                    };
                } else {
                    if (stdgo.strings.Strings.hasPrefix(_k, _paxSchilyXattr)) {
                        if (_hdr.value.xattrs == null || _hdr.value.xattrs.isNil()) {
                            _hdr.value.xattrs = new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))));
                        };
                        _hdr.value.xattrs[_k.__slice__(_paxSchilyXattr.length)] = _v;
                    };
                };
                if (_err != null) {
                    return errHeader;
                };
            };
        };
        _hdr.value.paxrecords = _paxHdrs;
        return ((null : stdgo.Error));
    }
/**
    // parsePAX parses PAX headers.
    // If an extended header (type 'x') is invalid, ErrHeader is returned
**/
function _parsePAX(_r:stdgo.io.Io.Reader):{ var _0 : GoMap<GoString, GoString>; var _1 : Error; } {
        var __tmp__ = stdgo.io.Io.readAll(_r), _buf:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil(), _1 : _err };
        };
        var _sbuf:GoString = ((_buf : GoString));
        var _sparseMap:Slice<GoString> = new Slice<GoString>().nil();
        var _paxHdrs:GoMap<GoString, GoString> = new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))));
        while (_sbuf.length > ((0 : GoInt))) {
            var __tmp__ = _parsePAXRecord(_sbuf), _key:GoString = __tmp__._0, _value:GoString = __tmp__._1, _residual:GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
            if (_err != null) {
                return { _0 : new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil(), _1 : errHeader };
            };
            _sbuf = _residual;
            if (_key == _paxGNUSparseOffset || _key == _paxGNUSparseNumBytes) {
                if ((_sparseMap.length % ((2 : GoInt)) == ((0 : GoInt)) && _key != _paxGNUSparseOffset) || (_sparseMap.length % ((2 : GoInt)) == ((1 : GoInt)) && _key != _paxGNUSparseNumBytes) || stdgo.strings.Strings.contains(_value, ",")) {
                    return { _0 : new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil(), _1 : errHeader };
                };
                _sparseMap = _sparseMap.__append__(_value);
            } else {
                _paxHdrs[_key] = _value;
            };
        };
        if (_sparseMap.length > ((0 : GoInt))) {
            _paxHdrs[_paxGNUSparseMap] = stdgo.strings.Strings.join(_sparseMap, ",");
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
                    var __tmp__ = _mustReadFull(_r, _blk.__slice__(0)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
                _buf.write(_blk.__slice__(0));
                for (_c in _blk.__t__) {
                    if (_c == (("\n".code : GoRune))) {
                        _cntNewline++;
                    };
                };
            };
            return ((null : stdgo.Error));
        };
        var _nextToken:() -> GoString = function():GoString {
            _cntNewline--;
            var __tmp__ = _buf.readString((("\n".code : GoRune))), _tok:GoString = __tmp__._0, _:stdgo.Error = __tmp__._1;
            return stdgo.strings.Strings.trimRight(_tok, "\n");
        };
        {
            var _err:stdgo.Error = _feedTokens(((1 : GoInt64)));
            if (_err != null) {
                return { _0 : new T_sparseDatas(), _1 : _err };
            };
        };
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_nextToken(), ((10 : GoInt)), ((0 : GoInt))), _numEntries:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null || _numEntries < ((0 : GoInt64)) || (((((2 : GoInt64)) * _numEntries) : GoInt)) < ((_numEntries : GoInt))) {
            return { _0 : new T_sparseDatas(), _1 : errHeader };
        };
        {
            var _err:stdgo.Error = _feedTokens(((2 : GoInt64)) * _numEntries);
            if (_err != null) {
                return { _0 : new T_sparseDatas(), _1 : _err };
            };
        };
        var _spd:T_sparseDatas = new T_sparseDatas(new Slice<T_sparseEntry>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_sparseEntry()]).setCap(((_numEntries : GoInt)).toBasic())).__copy__();
        {
            var _i:GoInt64 = ((((0 : GoInt64)) : GoInt64));
            Go.cfor(_i < _numEntries, _i++, {
                var __tmp__ = stdgo.strconv.Strconv.parseInt(_nextToken(), ((10 : GoInt)), ((64 : GoInt))), _offset:GoInt64 = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                var __tmp__ = stdgo.strconv.Strconv.parseInt(_nextToken(), ((10 : GoInt)), ((64 : GoInt))), _length:GoInt64 = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
                if (_err1 != null || _err2 != null) {
                    return { _0 : new T_sparseDatas(), _1 : errHeader };
                };
                _spd = _spd.__append__((({ offset : _offset, length : _length } : T_sparseEntry)).__copy__()).__copy__();
            });
        };
        return { _0 : _spd.__copy__(), _1 : ((null : stdgo.Error)) };
    }
/**
    // readGNUSparseMap0x1 reads the sparse map as stored in GNU's PAX sparse format
    // version 0.1. The sparse map is stored in the PAX headers.
**/
function _readGNUSparseMap0x1(_paxHdrs:GoMap<GoString, GoString>):{ var _0 : T_sparseDatas; var _1 : Error; } {
        var _numEntriesStr:GoString = _paxHdrs[_paxGNUSparseNumBlocks];
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_numEntriesStr, ((10 : GoInt)), ((0 : GoInt))), _numEntries:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null || _numEntries < ((0 : GoInt64)) || (((((2 : GoInt64)) * _numEntries) : GoInt)) < ((_numEntries : GoInt))) {
            return { _0 : new T_sparseDatas(), _1 : errHeader };
        };
        var _sparseMap:Slice<GoString> = stdgo.strings.Strings.split(_paxHdrs[_paxGNUSparseMap], ",");
        if (_sparseMap.length == ((1 : GoInt)) && _sparseMap[((0 : GoInt))] == (("" : GoString))) {
            _sparseMap = _sparseMap.__slice__(0, ((0 : GoInt)));
        };
        if (((_sparseMap.length : GoInt64)) != ((2 : GoInt64)) * _numEntries) {
            return { _0 : new T_sparseDatas(), _1 : errHeader };
        };
        var _spd:T_sparseDatas = new T_sparseDatas(new Slice<T_sparseEntry>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_sparseEntry()]).setCap(((_numEntries : GoInt)).toBasic())).__copy__();
        while (_sparseMap.length >= ((2 : GoInt))) {
            var __tmp__ = stdgo.strconv.Strconv.parseInt(_sparseMap[((0 : GoInt))], ((10 : GoInt)), ((64 : GoInt))), _offset:GoInt64 = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
            var __tmp__ = stdgo.strconv.Strconv.parseInt(_sparseMap[((1 : GoInt))], ((10 : GoInt)), ((64 : GoInt))), _length:GoInt64 = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
            if (_err1 != null || _err2 != null) {
                return { _0 : new T_sparseDatas(), _1 : errHeader };
            };
            _spd = _spd.__append__((({ offset : _offset, length : _length } : T_sparseEntry)).__copy__()).__copy__();
            _sparseMap = _sparseMap.__slice__(((2 : GoInt)));
        };
        return { _0 : _spd.__copy__(), _1 : ((null : stdgo.Error)) };
    }
/**
    // mustReadFull is like io.ReadFull except it returns
    // io.ErrUnexpectedEOF when io.EOF is hit before len(b) bytes are read.
**/
function _mustReadFull(_r:stdgo.io.Io.Reader, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var __tmp__ = _tryReadFull(_r, _b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
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
        while (_b.length > _n && _err == null) {
            var _nn:GoInt = ((0 : GoInt));
            {
                var __tmp__ = _r.read(_b.__slice__(_n));
                _nn = __tmp__._0;
                _err = __tmp__._1;
            };
            _n = _n + (_nn);
        };
        if (_b.length == _n && Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
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
                { value : ((_r.__underlying__().value : stdgo.io.Io.Seeker)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.io.Io.Seeker)), ok : false };
            }, _sr = __tmp__.value, _ok = __tmp__.ok;
            if (_ok && _n > ((1 : GoInt64))) {
                var __tmp__ = _sr.seek(((0 : GoInt64)), stdgo.io.Io.seekCurrent), _pos1:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_pos1 >= ((0 : GoInt64)) && _err == null) {
                    var __tmp__ = _sr.seek(_n - ((1 : GoInt64)), stdgo.io.Io.seekCurrent), _pos2:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_pos2 < ((0 : GoInt64)) || _err != null) {
                        return _err;
                    };
                    _seekSkipped = _pos2 - _pos1;
                };
            };
        };
        var __tmp__ = stdgo.io.Io.copyN(stdgo.io.Io.discard, _r, _n - _seekSkipped), _copySkipped:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof) && _seekSkipped + _copySkipped < _n) {
            _err = stdgo.io.Io.errUnexpectedEOF;
        };
        return _err;
    }
/**
    // hasNUL reports whether the NUL character exists within s.
**/
function _hasNUL(_s:GoString):Bool {
        return stdgo.strings.Strings.indexByte(_s, ((0 : GoUInt8))) >= ((0 : GoInt));
    }
/**
    // isASCII reports whether the input is an ASCII C-style string.
**/
function _isASCII(_s:GoString):Bool {
        for (_c in _s) {
            if (_c >= ((128 : GoInt32)) || _c == ((0 : GoInt32))) {
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
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_s.length : GoInt)).toBasic());
        for (_c in _s) {
            if (_c < ((128 : GoInt32)) && _c != ((0 : GoInt32))) {
                _b = _b.__append__(((_c : GoByte)));
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
        return _n >= ((9 : GoInt)) || (_x >= (-((1 : GoUnTypedInt)) << _binBits) && _x < (((1 : GoInt64)) << _binBits));
    }
/**
    // fitsInOctal reports whether the integer x fits in a field n-bytes long
    // using octal encoding with the appropriate NUL terminator.
**/
function _fitsInOctal(_n:GoInt, _x:GoInt64):Bool {
        var _octBits:GoUInt = (((_n - ((1 : GoInt))) : GoUInt)) * ((3 : GoUInt));
        return _x >= ((0 : GoInt64)) && (_n >= ((22 : GoInt)) || _x < (((1 : GoInt64)) << _octBits));
    }
/**
    // parsePAXTime takes a string of the form %d.%d as described in the PAX
    // specification. Note that this implementation allows for negative timestamps,
    // which is allowed for by the PAX specification, but not always portable.
**/
function _parsePAXTime(_s:GoString):{ var _0 : stdgo.time.Time.Time; var _1 : Error; } {
        final _maxNanoSecondDigits:GoUnTypedInt = ((9 : GoUnTypedInt));
        var _ss:GoString = _s, _sn:GoString = "";
        {
            var _pos:GoInt = stdgo.strings.Strings.indexByte(_s, ((".".code : GoRune)));
            if (_pos >= ((0 : GoInt))) {
                {
                    final __tmp__0 = _s.__slice__(0, _pos);
                    final __tmp__1 = _s.__slice__(_pos + ((1 : GoInt)));
                    _ss = __tmp__0;
                    _sn = __tmp__1;
                };
            };
        };
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_ss, ((10 : GoInt)), ((64 : GoInt))), _secs:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new stdgo.time.Time.Time().__copy__(), _1 : errHeader };
        };
        if (_sn.length == ((0 : GoInt))) {
            return { _0 : stdgo.time.Time.unix(_secs, ((0 : GoInt64))).__copy__(), _1 : ((null : stdgo.Error)) };
        };
        if (stdgo.strings.Strings.trim(_sn, "0123456789") != (("" : GoString))) {
            return { _0 : new stdgo.time.Time.Time().__copy__(), _1 : errHeader };
        };
        if (_sn.length < _maxNanoSecondDigits) {
            _sn = _sn + (stdgo.strings.Strings.repeat("0", _maxNanoSecondDigits - _sn.length));
        } else {
            _sn = _sn.__slice__(0, _maxNanoSecondDigits);
        };
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_sn, ((10 : GoInt)), ((64 : GoInt))), _nsecs:GoInt64 = __tmp__._0, _:stdgo.Error = __tmp__._1;
        if (_ss.length > ((0 : GoInt)) && _ss[((0 : GoInt))] == (("-".code : GoRune))) {
            return { _0 : stdgo.time.Time.unix(_secs, -((1 : GoUnTypedInt)) * _nsecs).__copy__(), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : stdgo.time.Time.unix(_secs, _nsecs).__copy__(), _1 : ((null : stdgo.Error)) };
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
        var _sign:GoString = "";
        if (_secs < ((0 : GoInt64))) {
            _sign = "-";
            _secs = -(_secs + ((1 : GoInt64)));
            _nsecs = -(_nsecs - ((1e+09 : GoInt)));
        };
        return stdgo.strings.Strings.trimRight(stdgo.fmt.Fmt.sprintf("%s%d.%09d", Go.toInterface(_sign), Go.toInterface(_secs), Go.toInterface(_nsecs)), "0");
    }
/**
    // parsePAXRecord parses the input PAX record string into a key-value pair.
    // If parsing is successful, it will slice off the currently read record and
    // return the remainder as r.
**/
function _parsePAXRecord(_s:GoString):{ var _0 : GoString; var _1 : GoString; var _2 : GoString; var _3 : Error; } {
        var _k:GoString = (("" : GoString)), _v:GoString = (("" : GoString)), _r:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        var _sp:GoInt = stdgo.strings.Strings.indexByte(_s, ((" ".code : GoRune)));
        if (_sp == -((1 : GoUnTypedInt))) {
            return { _0 : "", _1 : "", _2 : _s, _3 : errHeader };
        };
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_s.__slice__(0, _sp), ((10 : GoInt)), ((0 : GoInt))), _n:GoInt64 = __tmp__._0, _perr:stdgo.Error = __tmp__._1;
        if (_perr != null || _n < ((5 : GoInt64)) || ((_s.length : GoInt64)) < _n) {
            return { _0 : "", _1 : "", _2 : _s, _3 : errHeader };
        };
        var _afterSpace:GoInt64 = (((_sp + ((1 : GoInt))) : GoInt64));
        var _beforeLastNewLine:GoInt64 = _n - ((1 : GoInt64));
        if (_afterSpace >= _beforeLastNewLine) {
            return { _0 : "", _1 : "", _2 : _s, _3 : errHeader };
        };
        var _rec:GoString = _s.__slice__(_afterSpace, _beforeLastNewLine), _nl:GoString = _s.__slice__(_beforeLastNewLine, _n), _rem:GoString = _s.__slice__(_n);
        if (_nl != (("\n" : GoString))) {
            return { _0 : "", _1 : "", _2 : _s, _3 : errHeader };
        };
        var _eq:GoInt = stdgo.strings.Strings.indexByte(_rec, (("=".code : GoRune)));
        if (_eq == -((1 : GoUnTypedInt))) {
            return { _0 : "", _1 : "", _2 : _s, _3 : errHeader };
        };
        {
            final __tmp__0 = _rec.__slice__(0, _eq);
            final __tmp__1 = _rec.__slice__(_eq + ((1 : GoInt)));
            _k = __tmp__0;
            _v = __tmp__1;
        };
        if (!_validPAXRecord(_k, _v)) {
            return { _0 : "", _1 : "", _2 : _s, _3 : errHeader };
        };
        return { _0 : _k, _1 : _v, _2 : _rem, _3 : ((null : stdgo.Error)) };
    }
/**
    // formatPAXRecord formats a single PAX record, prefixing it with the
    // appropriate length.
**/
function _formatPAXRecord(_k:GoString, _v:GoString):{ var _0 : GoString; var _1 : Error; } {
        if (!_validPAXRecord(_k, _v)) {
            return { _0 : "", _1 : errHeader };
        };
        final _padding:GoUnTypedInt = ((3 : GoUnTypedInt));
        var _size:GoInt = _k.length + _v.length + _padding;
        _size = _size + (stdgo.strconv.Strconv.itoa(_size).length);
        var _record:GoString = stdgo.strconv.Strconv.itoa(_size) + ((" " : GoString)) + _k + (("=" : GoString)) + _v + (("\n" : GoString));
        if (_record.length != _size) {
            _size = _record.length;
            _record = stdgo.strconv.Strconv.itoa(_size) + ((" " : GoString)) + _k + (("=" : GoString)) + _v + (("\n" : GoString));
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
        if (_k == (("" : GoString)) || stdgo.strings.Strings.indexByte(_k, (("=".code : GoRune))) >= ((0 : GoInt))) {
            return false;
        };
        if (_k == _paxPath || _k == _paxLinkpath || _k == _paxUname || _k == _paxGname) {
            return !_hasNUL(_v);
        } else {
            return !_hasNUL(_k);
        };
    }
/**
    // NewWriter creates a new Writer writing to w.
**/
function newWriter(_w:stdgo.io.Io.Writer):Pointer<Writer> {
        return Go.pointer((({ _w : _w, _curr : Go.pointer(new T_regFileWriter(_w, ((0 : GoInt64)))).value, _pad : 0, _hdr : new Header(), _blk : new T_block(), _err : ((null : stdgo.Error)) } : Writer)));
    }
/**
    // splitUSTARPath splits a path according to USTAR prefix and suffix rules.
    // If the path is not splittable, then it will return ("", "", false).
**/
function _splitUSTARPath(_name:GoString):{ var _0 : GoString; var _1 : GoString; var _2 : Bool; } {
        var _prefix:GoString = (("" : GoString)), _suffix:GoString = (("" : GoString)), _ok:Bool = false;
        var _length:GoInt = _name.length;
        if (_length <= _nameSize || !_isASCII(_name)) {
            return { _0 : "", _1 : "", _2 : false };
        } else if (_length > _prefixSize + ((1 : GoUnTypedInt))) {
            _length = _prefixSize + ((1 : GoUnTypedInt));
        } else if (_name[_length - ((1 : GoInt))] == (("/".code : GoRune))) {
            _length--;
        };
        var _i:GoInt = stdgo.strings.Strings.lastIndex(_name.__slice__(0, _length), "/");
        var _nlen:GoInt = _name.length - _i - ((1 : GoInt));
        var _plen:GoInt = _i;
        if (_i <= ((0 : GoInt)) || _nlen > _nameSize || _nlen == ((0 : GoInt)) || _plen > _prefixSize) {
            return { _0 : "", _1 : "", _2 : false };
        };
        return { _0 : _name.__slice__(0, _i), _1 : _name.__slice__(_i + ((1 : GoInt))), _2 : true };
    }
/**
    // ensureEOF checks whether r is at EOF, reporting ErrWriteTooLong if not so.
**/
function _ensureEOF(_r:stdgo.io.Io.Reader):Error {
        var __tmp__ = _tryReadFull(_r, new Slice<GoUInt8>(((0 : GoUInt8)))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n > ((0 : GoInt))) {
            return errWriteTooLong;
        } else if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
            return ((null : stdgo.Error));
        } else {
            return _err;
        };
    }
class T_headerError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
class Header_extension_fields {
    public function _allowedFormats(__tmp__):{ var _0 : Format; var _1 : GoMap<GoString, GoString>; var _2 : Error; } return __tmp__._allowedFormats();
    public function fileInfo(__tmp__):stdgo.io.fs.Fs.FileInfo return __tmp__.fileInfo();
}
class T_sparseEntry_extension_fields {
    public function _endOffset(__tmp__):GoInt64 return __tmp__._endOffset();
}
class T_headerFileInfo_extension_fields {
    public function size(__tmp__):GoInt64 return __tmp__.size();
    public function isDir(__tmp__):Bool return __tmp__.isDir();
    public function modTime(__tmp__):stdgo.time.Time.Time return __tmp__.modTime();
    public function sys(__tmp__):AnyInterface return __tmp__.sys();
    public function name(__tmp__):GoString return __tmp__.name();
    public function mode(__tmp__):stdgo.io.fs.Fs.FileMode return __tmp__.mode();
}
class Format_extension_fields {
    public function _has(__tmp__, _f2:Format):Bool return __tmp__._has(_f2);
    public function _mayBe(__tmp__, _f2:Format):Void __tmp__._mayBe(_f2);
    public function _mayOnlyBe(__tmp__, _f2:Format):Void __tmp__._mayOnlyBe(_f2);
    public function _mustNotBe(__tmp__, _f2:Format):Void __tmp__._mustNotBe(_f2);
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class T_block_extension_fields {
    public function v7(__tmp__):Pointer<T_headerV7> return __tmp__.v7();
    public function gnu(__tmp__):Pointer<T_headerGNU> return __tmp__.gnu();
    public function star(__tmp__):Pointer<T_headerSTAR> return __tmp__.star();
    public function ustar(__tmp__):Pointer<T_headerUSTAR> return __tmp__.ustar();
    public function sparse(__tmp__):T_sparseArray return __tmp__.sparse();
    public function getFormat(__tmp__):Format return __tmp__.getFormat();
    public function setFormat(__tmp__, _format:Format):Void __tmp__.setFormat(_format);
    public function computeChecksum(__tmp__):{ var _0 : GoInt64; var _1 : GoInt64; } return __tmp__.computeChecksum();
    public function reset(__tmp__):Void __tmp__.reset();
}
class T_headerV7_extension_fields {
    public function name(__tmp__):Slice<GoByte> return __tmp__.name();
    public function mode(__tmp__):Slice<GoByte> return __tmp__.mode();
    public function uid(__tmp__):Slice<GoByte> return __tmp__.uid();
    public function gid(__tmp__):Slice<GoByte> return __tmp__.gid();
    public function size(__tmp__):Slice<GoByte> return __tmp__.size();
    public function modTime(__tmp__):Slice<GoByte> return __tmp__.modTime();
    public function chksum(__tmp__):Slice<GoByte> return __tmp__.chksum();
    public function typeFlag(__tmp__):Slice<GoByte> return __tmp__.typeFlag();
    public function linkName(__tmp__):Slice<GoByte> return __tmp__.linkName();
}
class T_headerGNU_extension_fields {
    public function v7(__tmp__):Pointer<T_headerV7> return __tmp__.v7();
    public function magic(__tmp__):Slice<GoByte> return __tmp__.magic();
    public function version(__tmp__):Slice<GoByte> return __tmp__.version();
    public function userName(__tmp__):Slice<GoByte> return __tmp__.userName();
    public function groupName(__tmp__):Slice<GoByte> return __tmp__.groupName();
    public function devMajor(__tmp__):Slice<GoByte> return __tmp__.devMajor();
    public function devMinor(__tmp__):Slice<GoByte> return __tmp__.devMinor();
    public function accessTime(__tmp__):Slice<GoByte> return __tmp__.accessTime();
    public function changeTime(__tmp__):Slice<GoByte> return __tmp__.changeTime();
    public function sparse(__tmp__):T_sparseArray return __tmp__.sparse();
    public function realSize(__tmp__):Slice<GoByte> return __tmp__.realSize();
}
class T_headerSTAR_extension_fields {
    public function v7(__tmp__):Pointer<T_headerV7> return __tmp__.v7();
    public function magic(__tmp__):Slice<GoByte> return __tmp__.magic();
    public function version(__tmp__):Slice<GoByte> return __tmp__.version();
    public function userName(__tmp__):Slice<GoByte> return __tmp__.userName();
    public function groupName(__tmp__):Slice<GoByte> return __tmp__.groupName();
    public function devMajor(__tmp__):Slice<GoByte> return __tmp__.devMajor();
    public function devMinor(__tmp__):Slice<GoByte> return __tmp__.devMinor();
    public function prefix(__tmp__):Slice<GoByte> return __tmp__.prefix();
    public function accessTime(__tmp__):Slice<GoByte> return __tmp__.accessTime();
    public function changeTime(__tmp__):Slice<GoByte> return __tmp__.changeTime();
    public function trailer(__tmp__):Slice<GoByte> return __tmp__.trailer();
}
class T_headerUSTAR_extension_fields {
    public function v7(__tmp__):Pointer<T_headerV7> return __tmp__.v7();
    public function magic(__tmp__):Slice<GoByte> return __tmp__.magic();
    public function version(__tmp__):Slice<GoByte> return __tmp__.version();
    public function userName(__tmp__):Slice<GoByte> return __tmp__.userName();
    public function groupName(__tmp__):Slice<GoByte> return __tmp__.groupName();
    public function devMajor(__tmp__):Slice<GoByte> return __tmp__.devMajor();
    public function devMinor(__tmp__):Slice<GoByte> return __tmp__.devMinor();
    public function prefix(__tmp__):Slice<GoByte> return __tmp__.prefix();
}
class T_sparseArray_extension_fields {
    public function entry(__tmp__, _i:GoInt):T_sparseElem return __tmp__.entry(_i);
    public function isExtended(__tmp__):Slice<GoByte> return __tmp__.isExtended();
    public function maxEntries(__tmp__):GoInt return __tmp__.maxEntries();
}
class T_sparseElem_extension_fields {
    public function offset(__tmp__):Slice<GoByte> return __tmp__.offset();
    public function length(__tmp__):Slice<GoByte> return __tmp__.length();
}
class Reader_extension_fields {
    public function next(__tmp__):{ var _0 : Pointer<Header>; var _1 : Error; } return __tmp__.next();
    public function _next(__tmp__):{ var _0 : Pointer<Header>; var _1 : Error; } return __tmp__._next();
    public function _handleRegularFile(__tmp__, _hdr:Pointer<Header>):Error return __tmp__._handleRegularFile(_hdr);
    public function _handleSparseFile(__tmp__, _hdr:Pointer<Header>, _rawHdr:Pointer<T_block>):Error return __tmp__._handleSparseFile(_hdr, _rawHdr);
    public function _readGNUSparsePAXHeaders(__tmp__, _hdr:Pointer<Header>):{ var _0 : T_sparseDatas; var _1 : Error; } return __tmp__._readGNUSparsePAXHeaders(_hdr);
    public function _readHeader(__tmp__):{ var _0 : Pointer<Header>; var _1 : Pointer<T_block>; var _2 : Error; } return __tmp__._readHeader();
    public function _readOldGNUSparseMap(__tmp__, _hdr:Pointer<Header>, _blk:Pointer<T_block>):{ var _0 : T_sparseDatas; var _1 : Error; } return __tmp__._readOldGNUSparseMap(_hdr, _blk);
    public function read(__tmp__, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_b);
    public function _writeTo(__tmp__, _w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } return __tmp__._writeTo(_w);
}
class T_regFileReader_extension_fields {
    public function read(__tmp__, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_b);
    public function writeTo(__tmp__, _w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } return __tmp__.writeTo(_w);
    public function logicalRemaining(__tmp__):GoInt64 return __tmp__.logicalRemaining();
    public function physicalRemaining(__tmp__):GoInt64 return __tmp__.physicalRemaining();
}
class T_sparseFileReader_extension_fields {
    public function read(__tmp__, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_b);
    public function writeTo(__tmp__, _w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } return __tmp__.writeTo(_w);
    public function logicalRemaining(__tmp__):GoInt64 return __tmp__.logicalRemaining();
    public function physicalRemaining(__tmp__):GoInt64 return __tmp__.physicalRemaining();
}
class T_zeroReader_extension_fields {
    public function read(__tmp__, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_b);
}
class T_parser_extension_fields {
    public function _parseString(__tmp__, _b:Slice<GoByte>):GoString return __tmp__._parseString(_b);
    public function _parseNumeric(__tmp__, _b:Slice<GoByte>):GoInt64 return __tmp__._parseNumeric(_b);
    public function _parseOctal(__tmp__, _b:Slice<GoByte>):GoInt64 return __tmp__._parseOctal(_b);
}
class T_formatter_extension_fields {
    public function _formatString(__tmp__, _b:Slice<GoByte>, _s:GoString):Void __tmp__._formatString(_b, _s);
    public function _formatNumeric(__tmp__, _b:Slice<GoByte>, _x:GoInt64):Void __tmp__._formatNumeric(_b, _x);
    public function _formatOctal(__tmp__, _b:Slice<GoByte>, _x:GoInt64):Void __tmp__._formatOctal(_b, _x);
}
class Writer_extension_fields {
    public function flush(__tmp__):Error return __tmp__.flush();
    public function writeHeader(__tmp__, _hdr:Pointer<Header>):Error return __tmp__.writeHeader(_hdr);
    public function _writeUSTARHeader(__tmp__, _hdr:Pointer<Header>):Error return __tmp__._writeUSTARHeader(_hdr);
    public function _writePAXHeader(__tmp__, _hdr:Pointer<Header>, _paxHdrs:GoMap<GoString, GoString>):Error return __tmp__._writePAXHeader(_hdr, _paxHdrs);
    public function _writeGNUHeader(__tmp__, _hdr:Pointer<Header>):Error return __tmp__._writeGNUHeader(_hdr);
    public function _templateV7Plus(__tmp__, _hdr:Pointer<Header>, _fmtStr:T_stringFormatter, _fmtNum:T_numberFormatter):Pointer<T_block> return __tmp__._templateV7Plus(_hdr, _fmtStr, _fmtNum);
    public function _writeRawFile(__tmp__, _name:GoString, _data:GoString, _flag:GoByte, _format:Format):Error return __tmp__._writeRawFile(_name, _data, _flag, _format);
    public function _writeRawHeader(__tmp__, _blk:Pointer<T_block>, _size:GoInt64, _flag:GoByte):Error return __tmp__._writeRawHeader(_blk, _size, _flag);
    public function write(__tmp__, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_b);
    public function _readFrom(__tmp__, _r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } return __tmp__._readFrom(_r);
    public function close(__tmp__):Error return __tmp__.close();
}
class T_regFileWriter_extension_fields {
    public function write(__tmp__, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_b);
    public function readFrom(__tmp__, _r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } return __tmp__.readFrom(_r);
    public function logicalRemaining(__tmp__):GoInt64 return __tmp__.logicalRemaining();
    public function physicalRemaining(__tmp__):GoInt64 return __tmp__.physicalRemaining();
}
class T_sparseFileWriter_extension_fields {
    public function write(__tmp__, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_b);
    public function readFrom(__tmp__, _r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } return __tmp__.readFrom(_r);
    public function logicalRemaining(__tmp__):GoInt64 return __tmp__.logicalRemaining();
    public function physicalRemaining(__tmp__):GoInt64 return __tmp__.physicalRemaining();
}
class T_zeroWriter_extension_fields {
    public function write(__tmp__, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_b);
}
