package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.Header_asInterface) class Header_static_extension {
    @:keep
    @:tdfield
    static public function fileInfo( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>):stdgo._internal.io.fs.Fs_fileinfo.FileInfo {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header> = _h;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L539"
        return stdgo.Go.asInterface((new stdgo._internal.archive.tar.Tar_t_headerfileinfo.T_headerFileInfo(_h) : stdgo._internal.archive.tar.Tar_t_headerfileinfo.T_headerFileInfo));
    }
    @:keep
    @:tdfield
    static public function _allowedFormats( _h:stdgo._internal.archive.tar.Tar_header.Header):{ var _0 : stdgo._internal.archive.tar.Tar_format.Format; var _1 : stdgo.GoMap<stdgo.GoString, stdgo.GoString>; var _2 : stdgo.Error; } {
        @:recv var _h:stdgo._internal.archive.tar.Tar_header.Header = _h?.__copy__();
        var _format = ((0 : stdgo.GoInt) : stdgo._internal.archive.tar.Tar_format.Format), _paxHdrs = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _err = (null : stdgo.Error);
        _format = (14 : stdgo._internal.archive.tar.Tar_format.Format);
        _paxHdrs = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        var _whyNoUSTAR:stdgo.GoString = ("" : stdgo.GoString), _whyNoPAX:stdgo.GoString = ("" : stdgo.GoString), _whyNoGNU:stdgo.GoString = ("" : stdgo.GoString);
        var _preferPAX:Bool = false;
        var _verifyString = (function(_s:stdgo.GoString, _size:stdgo.GoInt, _name:stdgo.GoString, _paxKey:stdgo.GoString):Void {
            var _tooLong = ((_s.length) > _size : Bool);
            var _allowLongGNU = ((_paxKey == ("path" : stdgo.GoString)) || (_paxKey == ("linkpath" : stdgo.GoString)) : Bool);
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L354"
            if ((stdgo._internal.archive.tar.Tar__hasnul._hasNUL(_s?.__copy__()) || ((_tooLong && !_allowLongGNU : Bool)) : Bool)) {
                _whyNoGNU = stdgo._internal.fmt.Fmt_sprintf.sprintf(("GNU cannot encode %s=%q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_s))?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L356"
                (stdgo.Go.pointer(_format) : stdgo._internal.archive.tar.Tar_formatpointer.FormatPointer)._mustNotBe((8 : stdgo._internal.archive.tar.Tar_format.Format));
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L358"
            if ((!stdgo._internal.archive.tar.Tar__isascii._isASCII(_s?.__copy__()) || _tooLong : Bool)) {
                var _canSplitUSTAR = (_paxKey == (("path" : stdgo.GoString)) : Bool);
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L360"
                {
                    var __tmp__ = stdgo._internal.archive.tar.Tar__splitustarpath._splitUSTARPath(_s?.__copy__()), __1:stdgo.GoString = __tmp__._0, __2:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                    if ((!_canSplitUSTAR || !_ok : Bool)) {
                        _whyNoUSTAR = stdgo._internal.fmt.Fmt_sprintf.sprintf(("USTAR cannot encode %s=%q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_s))?.__copy__();
                        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L362"
                        (stdgo.Go.pointer(_format) : stdgo._internal.archive.tar.Tar_formatpointer.FormatPointer)._mustNotBe((2 : stdgo._internal.archive.tar.Tar_format.Format));
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L364"
                if (_paxKey == ((stdgo.Go.str() : stdgo.GoString))) {
                    _whyNoPAX = stdgo._internal.fmt.Fmt_sprintf.sprintf(("PAX cannot encode %s=%q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_s))?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L366"
                    (stdgo.Go.pointer(_format) : stdgo._internal.archive.tar.Tar_formatpointer.FormatPointer)._mustNotBe((4 : stdgo._internal.archive.tar.Tar_format.Format));
                } else {
                    _paxHdrs[_paxKey] = _s?.__copy__();
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L371"
            {
                var __tmp__ = (_h.pAXRecords != null && _h.pAXRecords.__exists__(_paxKey?.__copy__()) ? { _0 : _h.pAXRecords[_paxKey?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((_ok && (_v == _s) : Bool)) {
                    _paxHdrs[_paxKey] = _v?.__copy__();
                };
            };
        } : (stdgo.GoString, stdgo.GoInt, stdgo.GoString, stdgo.GoString) -> Void);
        var _verifyNumeric = (function(_n:stdgo.GoInt64, _size:stdgo.GoInt, _name:stdgo.GoString, _paxKey:stdgo.GoString):Void {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L376"
            if (!stdgo._internal.archive.tar.Tar__fitsinbase256._fitsInBase256(_size, _n)) {
                _whyNoGNU = stdgo._internal.fmt.Fmt_sprintf.sprintf(("GNU cannot encode %s=%d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_n))?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L378"
                (stdgo.Go.pointer(_format) : stdgo._internal.archive.tar.Tar_formatpointer.FormatPointer)._mustNotBe((8 : stdgo._internal.archive.tar.Tar_format.Format));
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L380"
            if (!stdgo._internal.archive.tar.Tar__fitsinoctal._fitsInOctal(_size, _n)) {
                _whyNoUSTAR = stdgo._internal.fmt.Fmt_sprintf.sprintf(("USTAR cannot encode %s=%d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_n))?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L382"
                (stdgo.Go.pointer(_format) : stdgo._internal.archive.tar.Tar_formatpointer.FormatPointer)._mustNotBe((2 : stdgo._internal.archive.tar.Tar_format.Format));
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L383"
                if (_paxKey == ((stdgo.Go.str() : stdgo.GoString))) {
                    _whyNoPAX = stdgo._internal.fmt.Fmt_sprintf.sprintf(("PAX cannot encode %s=%d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_n))?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L385"
                    (stdgo.Go.pointer(_format) : stdgo._internal.archive.tar.Tar_formatpointer.FormatPointer)._mustNotBe((4 : stdgo._internal.archive.tar.Tar_format.Format));
                } else {
                    _paxHdrs[_paxKey] = stdgo._internal.strconv.Strconv_formatint.formatInt(_n, (10 : stdgo.GoInt))?.__copy__();
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L390"
            {
                var __tmp__ = (_h.pAXRecords != null && _h.pAXRecords.__exists__(_paxKey?.__copy__()) ? { _0 : _h.pAXRecords[_paxKey?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((_ok && (_v == stdgo._internal.strconv.Strconv_formatint.formatInt(_n, (10 : stdgo.GoInt))) : Bool)) {
                    _paxHdrs[_paxKey] = _v?.__copy__();
                };
            };
        } : (stdgo.GoInt64, stdgo.GoInt, stdgo.GoString, stdgo.GoString) -> Void);
        var _verifyTime = (function(_ts:stdgo._internal.time.Time_time.Time, _size:stdgo.GoInt, _name:stdgo.GoString, _paxKey:stdgo.GoString):Void {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L395"
            if (_ts.isZero()) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L396"
                return;
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L398"
            if (!stdgo._internal.archive.tar.Tar__fitsinbase256._fitsInBase256(_size, _ts.unix())) {
                _whyNoGNU = stdgo._internal.fmt.Fmt_sprintf.sprintf(("GNU cannot encode %s=%v" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(stdgo.Go.asInterface(_ts)))?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L400"
                (stdgo.Go.pointer(_format) : stdgo._internal.archive.tar.Tar_formatpointer.FormatPointer)._mustNotBe((8 : stdgo._internal.archive.tar.Tar_format.Format));
            };
            var _isMtime = (_paxKey == (("mtime" : stdgo.GoString)) : Bool);
            var _fitsOctal = (stdgo._internal.archive.tar.Tar__fitsinoctal._fitsInOctal(_size, _ts.unix()) : Bool);
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L404"
            if ((((_isMtime && !_fitsOctal : Bool)) || !_isMtime : Bool)) {
                _whyNoUSTAR = stdgo._internal.fmt.Fmt_sprintf.sprintf(("USTAR cannot encode %s=%v" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(stdgo.Go.asInterface(_ts)))?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L406"
                (stdgo.Go.pointer(_format) : stdgo._internal.archive.tar.Tar_formatpointer.FormatPointer)._mustNotBe((2 : stdgo._internal.archive.tar.Tar_format.Format));
            };
            var _needsNano = (_ts.nanosecond() != ((0 : stdgo.GoInt)) : Bool);
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L409"
            if (((!_isMtime || !_fitsOctal : Bool) || _needsNano : Bool)) {
                _preferPAX = true;
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L411"
                if (_paxKey == ((stdgo.Go.str() : stdgo.GoString))) {
                    _whyNoPAX = stdgo._internal.fmt.Fmt_sprintf.sprintf(("PAX cannot encode %s=%v" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(stdgo.Go.asInterface(_ts)))?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L413"
                    (stdgo.Go.pointer(_format) : stdgo._internal.archive.tar.Tar_formatpointer.FormatPointer)._mustNotBe((4 : stdgo._internal.archive.tar.Tar_format.Format));
                } else {
                    _paxHdrs[_paxKey] = stdgo._internal.archive.tar.Tar__formatpaxtime._formatPAXTime(_ts?.__copy__())?.__copy__();
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L418"
            {
                var __tmp__ = (_h.pAXRecords != null && _h.pAXRecords.__exists__(_paxKey?.__copy__()) ? { _0 : _h.pAXRecords[_paxKey?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((_ok && (_v == stdgo._internal.archive.tar.Tar__formatpaxtime._formatPAXTime(_ts?.__copy__())) : Bool)) {
                    _paxHdrs[_paxKey] = _v?.__copy__();
                };
            };
        } : (stdgo._internal.time.Time_time.Time, stdgo.GoInt, stdgo.GoString, stdgo.GoString) -> Void);
        var _blk:stdgo._internal.archive.tar.Tar_t_block.T_block = new stdgo._internal.archive.tar.Tar_t_block.T_block(512, 512, ...[for (i in 0 ... 512) (0 : stdgo.GoUInt8)]);
        var _v7 = _blk._toV7();
        var _ustar = _blk._toUSTAR();
        var _gnu = _blk._toGNU();
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L428"
        _verifyString(_h.name?.__copy__(), (_v7._name().length), ("Name" : stdgo.GoString), ("path" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L429"
        _verifyString(_h.linkname?.__copy__(), (_v7._linkName().length), ("Linkname" : stdgo.GoString), ("linkpath" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L430"
        _verifyString(_h.uname?.__copy__(), (_ustar._userName().length), ("Uname" : stdgo.GoString), ("uname" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L431"
        _verifyString(_h.gname?.__copy__(), (_ustar._groupName().length), ("Gname" : stdgo.GoString), ("gname" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L432"
        _verifyNumeric(_h.mode, (_v7._mode().length), ("Mode" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L433"
        _verifyNumeric((_h.uid : stdgo.GoInt64), (_v7._uid().length), ("Uid" : stdgo.GoString), ("uid" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L434"
        _verifyNumeric((_h.gid : stdgo.GoInt64), (_v7._gid().length), ("Gid" : stdgo.GoString), ("gid" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L435"
        _verifyNumeric(_h.size, (_v7._size().length), ("Size" : stdgo.GoString), ("size" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L436"
        _verifyNumeric(_h.devmajor, (_ustar._devMajor().length), ("Devmajor" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L437"
        _verifyNumeric(_h.devminor, (_ustar._devMinor().length), ("Devminor" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L438"
        _verifyTime(_h.modTime?.__copy__(), (_v7._modTime().length), ("ModTime" : stdgo.GoString), ("mtime" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L439"
        _verifyTime(_h.accessTime?.__copy__(), (_gnu._accessTime().length), ("AccessTime" : stdgo.GoString), ("atime" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L440"
        _verifyTime(_h.changeTime?.__copy__(), (_gnu._changeTime().length), ("ChangeTime" : stdgo.GoString), ("ctime" : stdgo.GoString));
        var _whyOnlyPAX:stdgo.GoString = ("" : stdgo.GoString), _whyOnlyGNU:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L444"
        {
            final __value__ = _h.typeflag;
            if (__value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((83 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L447"
                if (stdgo._internal.strings.Strings_hassuffix.hasSuffix(_h.name?.__copy__(), ("/" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L448"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.archive.tar.Tar_format.Format; var _1 : stdgo.GoMap<stdgo.GoString, stdgo.GoString>; var _2 : stdgo.Error; } = { _0 : (0 : stdgo._internal.archive.tar.Tar_format.Format), _1 : (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _2 : stdgo.Go.asInterface((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("filename may not have trailing slash" : stdgo.GoString)]).__setString__() : stdgo._internal.archive.tar.Tar_t_headererror.T_headerError)) };
                        _format = __tmp__._0;
                        _paxHdrs = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
            } else if (__value__ == ((120 : stdgo.GoUInt8)) || __value__ == ((76 : stdgo.GoUInt8)) || __value__ == ((75 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L451"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.archive.tar.Tar_format.Format; var _1 : stdgo.GoMap<stdgo.GoString, stdgo.GoString>; var _2 : stdgo.Error; } = { _0 : (0 : stdgo._internal.archive.tar.Tar_format.Format), _1 : (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _2 : stdgo.Go.asInterface((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("cannot manually encode TypeXHeader, TypeGNULongName, or TypeGNULongLink headers" : stdgo.GoString)]).__setString__() : stdgo._internal.archive.tar.Tar_t_headererror.T_headerError)) };
                    _format = __tmp__._0;
                    _paxHdrs = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            } else if (__value__ == ((103 : stdgo.GoUInt8))) {
                var _h2 = ({ name : _h.name?.__copy__(), typeflag : _h.typeflag, xattrs : _h.xattrs, pAXRecords : _h.pAXRecords, format : _h.format } : stdgo._internal.archive.tar.Tar_header.Header);
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L454"
                if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_h)), stdgo.Go.toInterface(stdgo.Go.asInterface(_h2)))) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L455"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.archive.tar.Tar_format.Format; var _1 : stdgo.GoMap<stdgo.GoString, stdgo.GoString>; var _2 : stdgo.Error; } = { _0 : (0 : stdgo._internal.archive.tar.Tar_format.Format), _1 : (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _2 : stdgo.Go.asInterface((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("only PAXRecords should be set for TypeXGlobalHeader" : stdgo.GoString)]).__setString__() : stdgo._internal.archive.tar.Tar_t_headererror.T_headerError)) };
                        _format = __tmp__._0;
                        _paxHdrs = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                _whyOnlyPAX = ("only PAX supports TypeXGlobalHeader" : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L458"
                (stdgo.Go.pointer(_format) : stdgo._internal.archive.tar.Tar_formatpointer.FormatPointer)._mayOnlyBe((4 : stdgo._internal.archive.tar.Tar_format.Format));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L460"
        if ((!stdgo._internal.archive.tar.Tar__isheaderonlytype._isHeaderOnlyType(_h.typeflag) && (_h.size < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L461"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.archive.tar.Tar_format.Format; var _1 : stdgo.GoMap<stdgo.GoString, stdgo.GoString>; var _2 : stdgo.Error; } = { _0 : (0 : stdgo._internal.archive.tar.Tar_format.Format), _1 : (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _2 : stdgo.Go.asInterface((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("negative size on header-only type" : stdgo.GoString)]).__setString__() : stdgo._internal.archive.tar.Tar_t_headererror.T_headerError)) };
                _format = __tmp__._0;
                _paxHdrs = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L465"
        if (((_h.xattrs.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L466"
            for (_k => _v in _h.xattrs) {
                _paxHdrs[(("SCHILY.xattr." : stdgo.GoString) + _k?.__copy__() : stdgo.GoString)] = _v?.__copy__();
            };
            _whyOnlyPAX = ("only PAX supports Xattrs" : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L470"
            (stdgo.Go.pointer(_format) : stdgo._internal.archive.tar.Tar_formatpointer.FormatPointer)._mayOnlyBe((4 : stdgo._internal.archive.tar.Tar_format.Format));
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L472"
        if (((_h.pAXRecords.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L473"
            for (_k => _v in _h.pAXRecords) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L474"
                {
                    var __tmp__ = (_paxHdrs != null && _paxHdrs.__exists__(_k?.__copy__()) ? { _0 : _paxHdrs[_k?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), __1:stdgo.GoString = __tmp__._0, _exists:Bool = __tmp__._1;
                    if (_exists) {
                        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L476"
                        continue;
                    } else if (_h.typeflag == ((103 : stdgo.GoUInt8))) {
                        _paxHdrs[_k] = _v?.__copy__();
                    } else if ((!(stdgo._internal.archive.tar.Tar__basickeys._basicKeys[_k] ?? false) && !stdgo._internal.strings.Strings_hasprefix.hasPrefix(_k?.__copy__(), ("GNU.sparse." : stdgo.GoString)) : Bool)) {
                        _paxHdrs[_k] = _v?.__copy__();
                    };
                };
            };
            _whyOnlyPAX = ("only PAX supports PAXRecords" : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L484"
            (stdgo.Go.pointer(_format) : stdgo._internal.archive.tar.Tar_formatpointer.FormatPointer)._mayOnlyBe((4 : stdgo._internal.archive.tar.Tar_format.Format));
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L486"
        for (_k => _v in _paxHdrs) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L487"
            if (!stdgo._internal.archive.tar.Tar__validpaxrecord._validPAXRecord(_k?.__copy__(), _v?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L488"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.archive.tar.Tar_format.Format; var _1 : stdgo.GoMap<stdgo.GoString, stdgo.GoString>; var _2 : stdgo.Error; } = { _0 : (0 : stdgo._internal.archive.tar.Tar_format.Format), _1 : (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _2 : stdgo.Go.asInterface((new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid PAX record: %q" : stdgo.GoString), stdgo.Go.toInterface(((_k + (" = " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _v?.__copy__() : stdgo.GoString)))?.__copy__()]).__setString__() : stdgo._internal.archive.tar.Tar_t_headererror.T_headerError)) };
                    _format = __tmp__._0;
                    _paxHdrs = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L516"
        {
            var _wantFormat = (_h.format : stdgo._internal.archive.tar.Tar_format.Format);
            if (_wantFormat != ((0 : stdgo._internal.archive.tar.Tar_format.Format))) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L517"
                if ((_wantFormat._has((4 : stdgo._internal.archive.tar.Tar_format.Format)) && !_preferPAX : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L518"
                    (stdgo.Go.pointer(_wantFormat) : stdgo._internal.archive.tar.Tar_formatpointer.FormatPointer)._mayBe((2 : stdgo._internal.archive.tar.Tar_format.Format));
                };
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L520"
                (stdgo.Go.pointer(_format) : stdgo._internal.archive.tar.Tar_formatpointer.FormatPointer)._mayOnlyBe(_wantFormat);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L522"
        if (_format == ((0 : stdgo._internal.archive.tar.Tar_format.Format))) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L523"
            {
                final __value__ = _h.format;
                if (__value__ == ((2 : stdgo._internal.archive.tar.Tar_format.Format))) {
                    _err = stdgo.Go.asInterface((new stdgo.Slice<stdgo.GoString>(4, 4, ...[("Format specifies USTAR" : stdgo.GoString), _whyNoUSTAR?.__copy__(), _whyOnlyPAX?.__copy__(), _whyOnlyGNU?.__copy__()]).__setString__() : stdgo._internal.archive.tar.Tar_t_headererror.T_headerError));
                } else if (__value__ == ((4 : stdgo._internal.archive.tar.Tar_format.Format))) {
                    _err = stdgo.Go.asInterface((new stdgo.Slice<stdgo.GoString>(3, 3, ...[("Format specifies PAX" : stdgo.GoString), _whyNoPAX?.__copy__(), _whyOnlyGNU?.__copy__()]).__setString__() : stdgo._internal.archive.tar.Tar_t_headererror.T_headerError));
                } else if (__value__ == ((8 : stdgo._internal.archive.tar.Tar_format.Format))) {
                    _err = stdgo.Go.asInterface((new stdgo.Slice<stdgo.GoString>(3, 3, ...[("Format specifies GNU" : stdgo.GoString), _whyNoGNU?.__copy__(), _whyOnlyPAX?.__copy__()]).__setString__() : stdgo._internal.archive.tar.Tar_t_headererror.T_headerError));
                } else {
                    _err = stdgo.Go.asInterface((new stdgo.Slice<stdgo.GoString>(5, 5, ...[_whyNoUSTAR?.__copy__(), _whyNoPAX?.__copy__(), _whyNoGNU?.__copy__(), _whyOnlyPAX?.__copy__(), _whyOnlyGNU?.__copy__()]).__setString__() : stdgo._internal.archive.tar.Tar_t_headererror.T_headerError));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L534"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.archive.tar.Tar_format.Format; var _1 : stdgo.GoMap<stdgo.GoString, stdgo.GoString>; var _2 : stdgo.Error; } = { _0 : _format, _1 : _paxHdrs, _2 : _err };
            _format = __tmp__._0;
            _paxHdrs = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
}
