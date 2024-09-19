package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.Header_asInterface) class Header_static_extension {
    @:keep
    static public function fileInfo( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>):stdgo._internal.io.fs.Fs_FileInfo.FileInfo {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header> = _h;
        return stdgo.Go.asInterface((new stdgo._internal.archive.tar.Tar_T_headerFileInfo.T_headerFileInfo(_h) : stdgo._internal.archive.tar.Tar_T_headerFileInfo.T_headerFileInfo));
    }
    @:keep
    static public function _allowedFormats( _h:stdgo._internal.archive.tar.Tar_Header.Header):{ var _0 : stdgo._internal.archive.tar.Tar_Format.Format; var _1 : stdgo.GoMap<stdgo.GoString, stdgo.GoString>; var _2 : stdgo.Error; } {
        @:recv var _h:stdgo._internal.archive.tar.Tar_Header.Header = _h?.__copy__();
        var _format = ((0 : stdgo.GoInt) : stdgo._internal.archive.tar.Tar_Format.Format), _paxHdrs = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _err = (null : stdgo.Error);
        _format = (14 : stdgo._internal.archive.tar.Tar_Format.Format);
        _paxHdrs = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString), __2:stdgo.GoString = ("" : stdgo.GoString);
var _whyNoGNU = __2, _whyNoPAX = __1, _whyNoUSTAR = __0;
        var _preferPAX:Bool = false;
        var _verifyString = (function(_s:stdgo.GoString, _size:stdgo.GoInt, _name:stdgo.GoString, _paxKey:stdgo.GoString):Void {
            var _tooLong = ((_s.length) > _size : Bool);
            var _allowLongGNU = ((_paxKey == ("path" : stdgo.GoString)) || (_paxKey == ("linkpath" : stdgo.GoString)) : Bool);
            if ((stdgo._internal.archive.tar.Tar__hasNUL._hasNUL(_s?.__copy__()) || ((_tooLong && !_allowLongGNU : Bool)) : Bool)) {
                _whyNoGNU = stdgo._internal.fmt.Fmt_sprintf.sprintf(("GNU cannot encode %s=%q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_s))?.__copy__();
                _format._mustNotBe(stdgo.Go.pointer(_format), (8 : stdgo._internal.archive.tar.Tar_Format.Format));
            };
            if ((!stdgo._internal.archive.tar.Tar__isASCII._isASCII(_s?.__copy__()) || _tooLong : Bool)) {
                var _canSplitUSTAR = (_paxKey == (("path" : stdgo.GoString)) : Bool);
                {
                    var __tmp__ = stdgo._internal.archive.tar.Tar__splitUSTARPath._splitUSTARPath(_s?.__copy__()), __1:stdgo.GoString = __tmp__._0, __2:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                    if ((!_canSplitUSTAR || !_ok : Bool)) {
                        _whyNoUSTAR = stdgo._internal.fmt.Fmt_sprintf.sprintf(("USTAR cannot encode %s=%q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_s))?.__copy__();
                        _format._mustNotBe(stdgo.Go.pointer(_format), (2 : stdgo._internal.archive.tar.Tar_Format.Format));
                    };
                };
                if (_paxKey == (stdgo.Go.str())) {
                    _whyNoPAX = stdgo._internal.fmt.Fmt_sprintf.sprintf(("PAX cannot encode %s=%q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_s))?.__copy__();
                    _format._mustNotBe(stdgo.Go.pointer(_format), (4 : stdgo._internal.archive.tar.Tar_Format.Format));
                } else {
                    _paxHdrs[_paxKey] = _s?.__copy__();
                };
            };
            {
                var __tmp__ = (_h.paxrecords != null && _h.paxrecords.exists(_paxKey?.__copy__()) ? { _0 : _h.paxrecords[_paxKey?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((_ok && (_v == _s) : Bool)) {
                    _paxHdrs[_paxKey] = _v?.__copy__();
                };
            };
        } : (stdgo.GoString, stdgo.GoInt, stdgo.GoString, stdgo.GoString) -> Void);
        var _verifyNumeric = (function(_n:stdgo.GoInt64, _size:stdgo.GoInt, _name:stdgo.GoString, _paxKey:stdgo.GoString):Void {
            if (!stdgo._internal.archive.tar.Tar__fitsInBase256._fitsInBase256(_size, _n)) {
                _whyNoGNU = stdgo._internal.fmt.Fmt_sprintf.sprintf(("GNU cannot encode %s=%d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_n))?.__copy__();
                _format._mustNotBe(stdgo.Go.pointer(_format), (8 : stdgo._internal.archive.tar.Tar_Format.Format));
            };
            if (!stdgo._internal.archive.tar.Tar__fitsInOctal._fitsInOctal(_size, _n)) {
                _whyNoUSTAR = stdgo._internal.fmt.Fmt_sprintf.sprintf(("USTAR cannot encode %s=%d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_n))?.__copy__();
                _format._mustNotBe(stdgo.Go.pointer(_format), (2 : stdgo._internal.archive.tar.Tar_Format.Format));
                if (_paxKey == (stdgo.Go.str())) {
                    _whyNoPAX = stdgo._internal.fmt.Fmt_sprintf.sprintf(("PAX cannot encode %s=%d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_n))?.__copy__();
                    _format._mustNotBe(stdgo.Go.pointer(_format), (4 : stdgo._internal.archive.tar.Tar_Format.Format));
                } else {
                    _paxHdrs[_paxKey] = stdgo._internal.strconv.Strconv_formatInt.formatInt(_n, (10 : stdgo.GoInt))?.__copy__();
                };
            };
            {
                var __tmp__ = (_h.paxrecords != null && _h.paxrecords.exists(_paxKey?.__copy__()) ? { _0 : _h.paxrecords[_paxKey?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((_ok && (_v == stdgo._internal.strconv.Strconv_formatInt.formatInt(_n, (10 : stdgo.GoInt))) : Bool)) {
                    _paxHdrs[_paxKey] = _v?.__copy__();
                };
            };
        } : (stdgo.GoInt64, stdgo.GoInt, stdgo.GoString, stdgo.GoString) -> Void);
        var _verifyTime = (function(_ts:stdgo._internal.time.Time_Time.Time, _size:stdgo.GoInt, _name:stdgo.GoString, _paxKey:stdgo.GoString):Void {
            if (_ts.isZero()) {
                return;
            };
            if (!stdgo._internal.archive.tar.Tar__fitsInBase256._fitsInBase256(_size, _ts.unix())) {
                _whyNoGNU = stdgo._internal.fmt.Fmt_sprintf.sprintf(("GNU cannot encode %s=%v" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(stdgo.Go.asInterface(_ts)))?.__copy__();
                _format._mustNotBe(stdgo.Go.pointer(_format), (8 : stdgo._internal.archive.tar.Tar_Format.Format));
            };
            var _isMtime = (_paxKey == (("mtime" : stdgo.GoString)) : Bool);
            var _fitsOctal = (stdgo._internal.archive.tar.Tar__fitsInOctal._fitsInOctal(_size, _ts.unix()) : Bool);
            if ((((_isMtime && !_fitsOctal : Bool)) || !_isMtime : Bool)) {
                _whyNoUSTAR = stdgo._internal.fmt.Fmt_sprintf.sprintf(("USTAR cannot encode %s=%v" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(stdgo.Go.asInterface(_ts)))?.__copy__();
                _format._mustNotBe(stdgo.Go.pointer(_format), (2 : stdgo._internal.archive.tar.Tar_Format.Format));
            };
            var _needsNano = (_ts.nanosecond() != ((0 : stdgo.GoInt)) : Bool);
            if (((!_isMtime || !_fitsOctal : Bool) || _needsNano : Bool)) {
                _preferPAX = true;
                if (_paxKey == (stdgo.Go.str())) {
                    _whyNoPAX = stdgo._internal.fmt.Fmt_sprintf.sprintf(("PAX cannot encode %s=%v" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(stdgo.Go.asInterface(_ts)))?.__copy__();
                    _format._mustNotBe(stdgo.Go.pointer(_format), (4 : stdgo._internal.archive.tar.Tar_Format.Format));
                } else {
                    _paxHdrs[_paxKey] = stdgo._internal.archive.tar.Tar__formatPAXTime._formatPAXTime(_ts?.__copy__())?.__copy__();
                };
            };
            {
                var __tmp__ = (_h.paxrecords != null && _h.paxrecords.exists(_paxKey?.__copy__()) ? { _0 : _h.paxrecords[_paxKey?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((_ok && (_v == stdgo._internal.archive.tar.Tar__formatPAXTime._formatPAXTime(_ts?.__copy__())) : Bool)) {
                    _paxHdrs[_paxKey] = _v?.__copy__();
                };
            };
        } : (stdgo._internal.time.Time_Time.Time, stdgo.GoInt, stdgo.GoString, stdgo.GoString) -> Void);
        var _blk:stdgo._internal.archive.tar.Tar_T_block.T_block = new stdgo._internal.archive.tar.Tar_T_block.T_block(512, 512, ...[for (i in 0 ... 512) (0 : stdgo.GoUInt8)]);
        var _v7 = _blk._toV7();
        var _ustar = _blk._toUSTAR();
        var _gnu = _blk._toGNU();
        _verifyString(_h.name?.__copy__(), (_v7._name().length), ("Name" : stdgo.GoString), ("path" : stdgo.GoString));
        _verifyString(_h.linkname?.__copy__(), (_v7._linkName().length), ("Linkname" : stdgo.GoString), ("linkpath" : stdgo.GoString));
        _verifyString(_h.uname?.__copy__(), (_ustar._userName().length), ("Uname" : stdgo.GoString), ("uname" : stdgo.GoString));
        _verifyString(_h.gname?.__copy__(), (_ustar._groupName().length), ("Gname" : stdgo.GoString), ("gname" : stdgo.GoString));
        _verifyNumeric(_h.mode, (_v7._mode().length), ("Mode" : stdgo.GoString), stdgo.Go.str()?.__copy__());
        _verifyNumeric((_h.uid : stdgo.GoInt64), (_v7._uid().length), ("Uid" : stdgo.GoString), ("uid" : stdgo.GoString));
        _verifyNumeric((_h.gid : stdgo.GoInt64), (_v7._gid().length), ("Gid" : stdgo.GoString), ("gid" : stdgo.GoString));
        _verifyNumeric(_h.size, (_v7._size().length), ("Size" : stdgo.GoString), ("size" : stdgo.GoString));
        _verifyNumeric(_h.devmajor, (_ustar._devMajor().length), ("Devmajor" : stdgo.GoString), stdgo.Go.str()?.__copy__());
        _verifyNumeric(_h.devminor, (_ustar._devMinor().length), ("Devminor" : stdgo.GoString), stdgo.Go.str()?.__copy__());
        _verifyTime(_h.modTime?.__copy__(), (_v7._modTime().length), ("ModTime" : stdgo.GoString), ("mtime" : stdgo.GoString));
        _verifyTime(_h.accessTime?.__copy__(), (_gnu._accessTime().length), ("AccessTime" : stdgo.GoString), ("atime" : stdgo.GoString));
        _verifyTime(_h.changeTime?.__copy__(), (_gnu._changeTime().length), ("ChangeTime" : stdgo.GoString), ("ctime" : stdgo.GoString));
        var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString);
var _whyOnlyGNU = __1, _whyOnlyPAX = __0;
        {
            final __value__ = _h.typeflag;
            if (__value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((83 : stdgo.GoUInt8))) {
                if (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_h.name?.__copy__(), ("/" : stdgo.GoString))) {
                    return { _0 : (0 : stdgo._internal.archive.tar.Tar_Format.Format), _1 : (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _2 : stdgo.Go.asInterface((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("filename may not have trailing slash" : stdgo.GoString)]).__setString__() : stdgo._internal.archive.tar.Tar_T_headerError.T_headerError)) };
                };
            } else if (__value__ == ((120 : stdgo.GoUInt8)) || __value__ == ((76 : stdgo.GoUInt8)) || __value__ == ((75 : stdgo.GoUInt8))) {
                return { _0 : (0 : stdgo._internal.archive.tar.Tar_Format.Format), _1 : (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _2 : stdgo.Go.asInterface((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("cannot manually encode TypeXHeader, TypeGNULongName, or TypeGNULongLink headers" : stdgo.GoString)]).__setString__() : stdgo._internal.archive.tar.Tar_T_headerError.T_headerError)) };
            } else if (__value__ == ((103 : stdgo.GoUInt8))) {
                var _h2 = ({ name : _h.name?.__copy__(), typeflag : _h.typeflag, xattrs : _h.xattrs, paxrecords : _h.paxrecords, format : _h.format } : stdgo._internal.archive.tar.Tar_Header.Header);
                if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_h)), stdgo.Go.toInterface(stdgo.Go.asInterface(_h2)))) {
                    return { _0 : (0 : stdgo._internal.archive.tar.Tar_Format.Format), _1 : (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _2 : stdgo.Go.asInterface((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("only PAXRecords should be set for TypeXGlobalHeader" : stdgo.GoString)]).__setString__() : stdgo._internal.archive.tar.Tar_T_headerError.T_headerError)) };
                };
                _whyOnlyPAX = ("only PAX supports TypeXGlobalHeader" : stdgo.GoString);
                _format._mayOnlyBe(stdgo.Go.pointer(_format), (4 : stdgo._internal.archive.tar.Tar_Format.Format));
            };
        };
        if ((!stdgo._internal.archive.tar.Tar__isHeaderOnlyType._isHeaderOnlyType(_h.typeflag) && (_h.size < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
            return { _0 : (0 : stdgo._internal.archive.tar.Tar_Format.Format), _1 : (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _2 : stdgo.Go.asInterface((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("negative size on header-only type" : stdgo.GoString)]).__setString__() : stdgo._internal.archive.tar.Tar_T_headerError.T_headerError)) };
        };
        if (((_h.xattrs.length) > (0 : stdgo.GoInt) : Bool)) {
            for (_k => _v in _h.xattrs) {
                _paxHdrs[(("SCHILY.xattr." : stdgo.GoString) + _k?.__copy__() : stdgo.GoString)] = _v?.__copy__();
            };
            _whyOnlyPAX = ("only PAX supports Xattrs" : stdgo.GoString);
            _format._mayOnlyBe(stdgo.Go.pointer(_format), (4 : stdgo._internal.archive.tar.Tar_Format.Format));
        };
        if (((_h.paxrecords.length) > (0 : stdgo.GoInt) : Bool)) {
            for (_k => _v in _h.paxrecords) {
                {
                    var __tmp__ = (_paxHdrs != null && _paxHdrs.exists(_k?.__copy__()) ? { _0 : _paxHdrs[_k?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), __1:stdgo.GoString = __tmp__._0, _exists:Bool = __tmp__._1;
                    if (_exists) {
                        continue;
                    } else if (_h.typeflag == ((103 : stdgo.GoUInt8))) {
                        _paxHdrs[_k] = _v?.__copy__();
                    } else if ((!(stdgo._internal.archive.tar.Tar__basicKeys._basicKeys[_k] ?? false) && !stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_k?.__copy__(), ("GNU.sparse." : stdgo.GoString)) : Bool)) {
                        _paxHdrs[_k] = _v?.__copy__();
                    };
                };
            };
            _whyOnlyPAX = ("only PAX supports PAXRecords" : stdgo.GoString);
            _format._mayOnlyBe(stdgo.Go.pointer(_format), (4 : stdgo._internal.archive.tar.Tar_Format.Format));
        };
        for (_k => _v in _paxHdrs) {
            if (!stdgo._internal.archive.tar.Tar__validPAXRecord._validPAXRecord(_k?.__copy__(), _v?.__copy__())) {
                return { _0 : (0 : stdgo._internal.archive.tar.Tar_Format.Format), _1 : (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _2 : stdgo.Go.asInterface((new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid PAX record: %q" : stdgo.GoString), stdgo.Go.toInterface(((_k + (" = " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _v?.__copy__() : stdgo.GoString)))?.__copy__()]).__setString__() : stdgo._internal.archive.tar.Tar_T_headerError.T_headerError)) };
            };
        };
        {
            var _wantFormat = (_h.format : stdgo._internal.archive.tar.Tar_Format.Format);
            if (_wantFormat != ((0 : stdgo._internal.archive.tar.Tar_Format.Format))) {
                if ((_wantFormat._has((4 : stdgo._internal.archive.tar.Tar_Format.Format)) && !_preferPAX : Bool)) {
                    _wantFormat._mayBe(stdgo.Go.pointer(_wantFormat), (2 : stdgo._internal.archive.tar.Tar_Format.Format));
                };
                _format._mayOnlyBe(stdgo.Go.pointer(_format), _wantFormat);
            };
        };
        if (_format == ((0 : stdgo._internal.archive.tar.Tar_Format.Format))) {
            {
                final __value__ = _h.format;
                if (__value__ == ((2 : stdgo._internal.archive.tar.Tar_Format.Format))) {
                    _err = stdgo.Go.asInterface((new stdgo.Slice<stdgo.GoString>(4, 4, ...[("Format specifies USTAR" : stdgo.GoString), _whyNoUSTAR?.__copy__(), _whyOnlyPAX?.__copy__(), _whyOnlyGNU?.__copy__()]).__setString__() : stdgo._internal.archive.tar.Tar_T_headerError.T_headerError));
                } else if (__value__ == ((4 : stdgo._internal.archive.tar.Tar_Format.Format))) {
                    _err = stdgo.Go.asInterface((new stdgo.Slice<stdgo.GoString>(3, 3, ...[("Format specifies PAX" : stdgo.GoString), _whyNoPAX?.__copy__(), _whyOnlyGNU?.__copy__()]).__setString__() : stdgo._internal.archive.tar.Tar_T_headerError.T_headerError));
                } else if (__value__ == ((8 : stdgo._internal.archive.tar.Tar_Format.Format))) {
                    _err = stdgo.Go.asInterface((new stdgo.Slice<stdgo.GoString>(3, 3, ...[("Format specifies GNU" : stdgo.GoString), _whyNoGNU?.__copy__(), _whyOnlyPAX?.__copy__()]).__setString__() : stdgo._internal.archive.tar.Tar_T_headerError.T_headerError));
                } else {
                    _err = stdgo.Go.asInterface((new stdgo.Slice<stdgo.GoString>(5, 5, ...[_whyNoUSTAR?.__copy__(), _whyNoPAX?.__copy__(), _whyNoGNU?.__copy__(), _whyOnlyPAX?.__copy__(), _whyOnlyGNU?.__copy__()]).__setString__() : stdgo._internal.archive.tar.Tar_T_headerError.T_headerError));
                };
            };
        };
        return { _0 : _format, _1 : _paxHdrs, _2 : _err };
    }
}
