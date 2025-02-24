package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function close( _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>):stdgo.Error {
        @:recv var _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer> = _tw;
        if (stdgo.Go.toInterface((@:checkr _tw ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.archive.tar.Tar_errwriteafterclose.errWriteAfterClose))) {
            return (null : stdgo.Error);
        };
        if ((@:checkr _tw ?? throw "null pointer dereference")._err != null) {
            return (@:checkr _tw ?? throw "null pointer dereference")._err;
        };
        var _err = (@:check2r _tw.flush() : stdgo.Error);
        {
            var _i = (0 : stdgo.GoInt);
            while (((_i < (2 : stdgo.GoInt) : Bool) && (_err == null) : Bool)) {
                {
                    var __tmp__ = (@:checkr _tw ?? throw "null pointer dereference")._w.write((stdgo._internal.archive.tar.Tar__zeroblock._zeroBlock.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                    _err = @:tmpset0 __tmp__._1;
                };
                _i++;
            };
        };
        (@:checkr _tw ?? throw "null pointer dereference")._err = stdgo._internal.archive.tar.Tar_errwriteafterclose.errWriteAfterClose;
        return _err;
    }
    @:keep
    @:tdfield
    static public function _readFrom( _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>, _r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer> = _tw;
        if ((@:checkr _tw ?? throw "null pointer dereference")._err != null) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : (@:checkr _tw ?? throw "null pointer dereference")._err };
        };
        var __tmp__ = (@:checkr _tw ?? throw "null pointer dereference")._curr.readFrom(_r), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.archive.tar.Tar_errwritetoolong.errWriteTooLong)) : Bool)) {
            (@:checkr _tw ?? throw "null pointer dereference")._err = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function write( _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer> = _tw;
        if ((@:checkr _tw ?? throw "null pointer dereference")._err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _tw ?? throw "null pointer dereference")._err };
        };
        var __tmp__ = (@:checkr _tw ?? throw "null pointer dereference")._curr.write(_b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.archive.tar.Tar_errwritetoolong.errWriteTooLong)) : Bool)) {
            (@:checkr _tw ?? throw "null pointer dereference")._err = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _writeRawHeader( _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>, _blk:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>, _size:stdgo.GoInt64, _flag:stdgo.GoUInt8):stdgo.Error {
        @:recv var _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer> = _tw;
        {
            var _err = (@:check2r _tw.flush() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = (@:checkr _tw ?? throw "null pointer dereference")._w.write((_blk.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        if (stdgo._internal.archive.tar.Tar__isheaderonlytype._isHeaderOnlyType(_flag)) {
            _size = (0i64 : stdgo.GoInt64);
        };
        (@:checkr _tw ?? throw "null pointer dereference")._curr = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.archive.tar.Tar_t_regfilewriter.T_regFileWriter((@:checkr _tw ?? throw "null pointer dereference")._w, _size) : stdgo._internal.archive.tar.Tar_t_regfilewriter.T_regFileWriter)) : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_regfilewriter.T_regFileWriter>));
        (@:checkr _tw ?? throw "null pointer dereference")._pad = stdgo._internal.archive.tar.Tar__blockpadding._blockPadding(_size);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _writeRawFile( _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>, _name:stdgo.GoString, _data:stdgo.GoString, _flag:stdgo.GoUInt8, _format:stdgo._internal.archive.tar.Tar_format.Format):stdgo.Error {
        @:recv var _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer> = _tw;
        @:check2 (@:checkr _tw ?? throw "null pointer dereference")._blk._reset();
        _name = stdgo._internal.archive.tar.Tar__toascii._toASCII(_name?.__copy__())?.__copy__();
        if (((_name.length) > (100 : stdgo.GoInt) : Bool)) {
            _name = (_name.__slice__(0, (100 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        _name = stdgo._internal.strings.Strings_trimright.trimRight(_name?.__copy__(), ("/" : stdgo.GoString))?.__copy__();
        var _f:stdgo._internal.archive.tar.Tar_t_formatter.T_formatter = ({} : stdgo._internal.archive.tar.Tar_t_formatter.T_formatter);
        var _v7 = @:check2 (@:checkr _tw ?? throw "null pointer dereference")._blk._toV7();
        @:check2r _v7._typeFlag()[(0 : stdgo.GoInt)] = _flag;
        @:check2 _f._formatString(@:check2r _v7._name(), _name?.__copy__());
        @:check2 _f._formatOctal(@:check2r _v7._mode(), (0i64 : stdgo.GoInt64));
        @:check2 _f._formatOctal(@:check2r _v7._uid(), (0i64 : stdgo.GoInt64));
        @:check2 _f._formatOctal(@:check2r _v7._gid(), (0i64 : stdgo.GoInt64));
        @:check2 _f._formatOctal(@:check2r _v7._size(), (_data.length : stdgo.GoInt64));
        @:check2 _f._formatOctal(@:check2r _v7._modTime(), (0i64 : stdgo.GoInt64));
        @:check2 (@:checkr _tw ?? throw "null pointer dereference")._blk._setFormat(_format);
        if (_f._err != null) {
            return _f._err;
        };
        {
            var _err = (@:check2r _tw._writeRawHeader((stdgo.Go.setRef((@:checkr _tw ?? throw "null pointer dereference")._blk) : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>), (_data.length : stdgo.GoInt64), _flag) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = stdgo._internal.io.Io_writestring.writeString(stdgo.Go.asInterface(_tw), _data?.__copy__()), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:tdfield
    static public function _templateV7Plus( _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>, _hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>, _fmtStr:stdgo._internal.archive.tar.Tar_t_stringformatter.T_stringFormatter, _fmtNum:stdgo._internal.archive.tar.Tar_t_numberformatter.T_numberFormatter):stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block> {
        @:recv var _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer> = _tw;
        @:check2 (@:checkr _tw ?? throw "null pointer dereference")._blk._reset();
        var _modTime = ((@:checkr _hdr ?? throw "null pointer dereference").modTime?.__copy__() : stdgo._internal.time.Time_time.Time);
        if (_modTime.isZero()) {
            _modTime = stdgo._internal.time.Time_unix.unix((0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__();
        };
        var _v7 = @:check2 (@:checkr _tw ?? throw "null pointer dereference")._blk._toV7();
        @:check2r _v7._typeFlag()[(0 : stdgo.GoInt)] = (@:checkr _hdr ?? throw "null pointer dereference").typeflag;
        _fmtStr(@:check2r _v7._name(), (@:checkr _hdr ?? throw "null pointer dereference").name?.__copy__());
        _fmtStr(@:check2r _v7._linkName(), (@:checkr _hdr ?? throw "null pointer dereference").linkname?.__copy__());
        _fmtNum(@:check2r _v7._mode(), (@:checkr _hdr ?? throw "null pointer dereference").mode);
        _fmtNum(@:check2r _v7._uid(), ((@:checkr _hdr ?? throw "null pointer dereference").uid : stdgo.GoInt64));
        _fmtNum(@:check2r _v7._gid(), ((@:checkr _hdr ?? throw "null pointer dereference").gid : stdgo.GoInt64));
        _fmtNum(@:check2r _v7._size(), (@:checkr _hdr ?? throw "null pointer dereference").size);
        _fmtNum(@:check2r _v7._modTime(), _modTime.unix());
        var _ustar = @:check2 (@:checkr _tw ?? throw "null pointer dereference")._blk._toUSTAR();
        _fmtStr(@:check2r _ustar._userName(), (@:checkr _hdr ?? throw "null pointer dereference").uname?.__copy__());
        _fmtStr(@:check2r _ustar._groupName(), (@:checkr _hdr ?? throw "null pointer dereference").gname?.__copy__());
        _fmtNum(@:check2r _ustar._devMajor(), (@:checkr _hdr ?? throw "null pointer dereference").devmajor);
        _fmtNum(@:check2r _ustar._devMinor(), (@:checkr _hdr ?? throw "null pointer dereference").devminor);
        return (stdgo.Go.setRef((@:checkr _tw ?? throw "null pointer dereference")._blk) : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>);
    }
    @:keep
    @:tdfield
    static public function _writeGNUHeader( _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>, _hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>):stdgo.Error {
        @:recv var _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer> = _tw;
        {};
        if ((((@:checkr _hdr ?? throw "null pointer dereference").name.length) > (100 : stdgo.GoInt) : Bool)) {
            var _data = (((@:checkr _hdr ?? throw "null pointer dereference").name + (stdgo.Go.str(0) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            {
                var _err = (@:check2r _tw._writeRawFile(("././@LongLink" : stdgo.GoString), _data?.__copy__(), (76 : stdgo.GoUInt8), (8 : stdgo._internal.archive.tar.Tar_format.Format)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        if ((((@:checkr _hdr ?? throw "null pointer dereference").linkname.length) > (100 : stdgo.GoInt) : Bool)) {
            var _data = (((@:checkr _hdr ?? throw "null pointer dereference").linkname + (stdgo.Go.str(0) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            {
                var _err = (@:check2r _tw._writeRawFile(("././@LongLink" : stdgo.GoString), _data?.__copy__(), (75 : stdgo.GoUInt8), (8 : stdgo._internal.archive.tar.Tar_format.Format)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _f:stdgo._internal.archive.tar.Tar_t_formatter.T_formatter = ({} : stdgo._internal.archive.tar.Tar_t_formatter.T_formatter);
        var _spd:stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas = (new stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas(0, 0) : stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas);
        var _spb:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _blk = @:check2r _tw._templateV7Plus(_hdr, @:check2 _f._formatString, @:check2 _f._formatNumeric);
        if (!(@:checkr _hdr ?? throw "null pointer dereference").accessTime.isZero()) {
            @:check2 _f._formatNumeric(@:check2r @:check2r _blk._toGNU()._accessTime(), (@:checkr _hdr ?? throw "null pointer dereference").accessTime.unix());
        };
        if (!(@:checkr _hdr ?? throw "null pointer dereference").changeTime.isZero()) {
            @:check2 _f._formatNumeric(@:check2r @:check2r _blk._toGNU()._changeTime(), (@:checkr _hdr ?? throw "null pointer dereference").changeTime.unix());
        };
        @:check2r _blk._setFormat((8 : stdgo._internal.archive.tar.Tar_format.Format));
        {
            var _err = (@:check2r _tw._writeRawHeader(_blk, (@:checkr _hdr ?? throw "null pointer dereference").size, (@:checkr _hdr ?? throw "null pointer dereference").typeflag) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if (((_spd.length) > (0 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = (@:checkr _tw ?? throw "null pointer dereference")._w.write(_spb), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            (@:checkr _tw ?? throw "null pointer dereference")._curr = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.archive.tar.Tar_t_sparsefilewriter.T_sparseFileWriter((@:checkr _tw ?? throw "null pointer dereference")._curr, _spd, (0i64 : stdgo.GoInt64)) : stdgo._internal.archive.tar.Tar_t_sparsefilewriter.T_sparseFileWriter)) : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_sparsefilewriter.T_sparseFileWriter>));
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _writePAXHeader( _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>, _hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>, _paxHdrs:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.Error {
        @:recv var _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer> = _tw;
        var __0 = ((@:checkr _hdr ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString), __1 = ((@:checkr _hdr ?? throw "null pointer dereference").size : stdgo.GoInt64);
var _realSize = __1, _realName = __0;
        var __blank__ = _realSize;
        var _isGlobal = ((@:checkr _hdr ?? throw "null pointer dereference").typeflag == ((103 : stdgo.GoUInt8)) : Bool);
        if ((((_paxHdrs.length) > (0 : stdgo.GoInt) : Bool) || _isGlobal : Bool)) {
            var _keys:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            for (_k => _ in _paxHdrs) {
                _keys = (_keys.__append__(_k?.__copy__()));
            };
            stdgo._internal.sort.Sort_strings.strings(_keys);
            var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
            for (__1 => _k in _keys) {
                var __tmp__ = stdgo._internal.archive.tar.Tar__formatpaxrecord._formatPAXRecord(_k?.__copy__(), (_paxHdrs[_k] ?? ("" : stdgo.GoString))?.__copy__()), _rec:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                @:check2 _buf.writeString(_rec?.__copy__());
            };
            var _name:stdgo.GoString = ("" : stdgo.GoString);
            var _flag:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
            if (_isGlobal) {
                _name = _realName?.__copy__();
                if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
                    _name = ("GlobalHead.0.0" : stdgo.GoString);
                };
                _flag = (103 : stdgo.GoUInt8);
            } else {
                var __tmp__ = stdgo._internal.path.Path_split.split(_realName?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _file:stdgo.GoString = __tmp__._1;
                _name = stdgo._internal.path.Path_join.join(_dir?.__copy__(), ("PaxHeaders.0" : stdgo.GoString), _file?.__copy__())?.__copy__();
                _flag = (120 : stdgo.GoUInt8);
            };
            var _data = ((@:check2 _buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (((_data.length) > (1048576 : stdgo.GoInt) : Bool)) {
                return stdgo._internal.archive.tar.Tar_errfieldtoolong.errFieldTooLong;
            };
            {
                var _err = (@:check2r _tw._writeRawFile(_name?.__copy__(), _data?.__copy__(), _flag, (4 : stdgo._internal.archive.tar.Tar_format.Format)) : stdgo.Error);
                if (((_err != null) || _isGlobal : Bool)) {
                    return _err;
                };
            };
        };
        var _f:stdgo._internal.archive.tar.Tar_t_formatter.T_formatter = ({} : stdgo._internal.archive.tar.Tar_t_formatter.T_formatter);
        var _fmtStr = function(_b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):Void {
            @:check2 _f._formatString(_b, stdgo._internal.archive.tar.Tar__toascii._toASCII(_s?.__copy__())?.__copy__());
        };
        var _blk = @:check2r _tw._templateV7Plus(_hdr, _fmtStr, @:check2 _f._formatOctal);
        @:check2r _blk._setFormat((4 : stdgo._internal.archive.tar.Tar_format.Format));
        {
            var _err = (@:check2r _tw._writeRawHeader(_blk, (@:checkr _hdr ?? throw "null pointer dereference").size, (@:checkr _hdr ?? throw "null pointer dereference").typeflag) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _writeUSTARHeader( _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>, _hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>):stdgo.Error {
        @:recv var _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer> = _tw;
        var _namePrefix:stdgo.GoString = ("" : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.archive.tar.Tar__splitustarpath._splitUSTARPath((@:checkr _hdr ?? throw "null pointer dereference").name?.__copy__()), _prefix:stdgo.GoString = __tmp__._0, _suffix:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                {
                    final __tmp__0 = _prefix?.__copy__();
                    final __tmp__1 = _suffix?.__copy__();
                    _namePrefix = __tmp__0;
                    (@:checkr _hdr ?? throw "null pointer dereference").name = __tmp__1;
                };
            };
        };
        var _f:stdgo._internal.archive.tar.Tar_t_formatter.T_formatter = ({} : stdgo._internal.archive.tar.Tar_t_formatter.T_formatter);
        var _blk = @:check2r _tw._templateV7Plus(_hdr, @:check2 _f._formatString, @:check2 _f._formatOctal);
        @:check2 _f._formatString(@:check2r @:check2r _blk._toUSTAR()._prefix(), _namePrefix?.__copy__());
        @:check2r _blk._setFormat((2 : stdgo._internal.archive.tar.Tar_format.Format));
        if (_f._err != null) {
            return _f._err;
        };
        return @:check2r _tw._writeRawHeader(_blk, (@:checkr _hdr ?? throw "null pointer dereference").size, (@:checkr _hdr ?? throw "null pointer dereference").typeflag);
    }
    @:keep
    @:tdfield
    static public function writeHeader( _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>, _hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>):stdgo.Error {
        @:recv var _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer> = _tw;
        {
            var _err = (@:check2r _tw.flush() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        (@:checkr _tw ?? throw "null pointer dereference")._hdr = (_hdr : stdgo._internal.archive.tar.Tar_header.Header)?.__copy__();
        if ((@:checkr _tw ?? throw "null pointer dereference")._hdr.typeflag == ((0 : stdgo.GoUInt8))) {
            if (stdgo._internal.strings.Strings_hassuffix.hasSuffix((@:checkr _tw ?? throw "null pointer dereference")._hdr.name?.__copy__(), ("/" : stdgo.GoString))) {
                (@:checkr _tw ?? throw "null pointer dereference")._hdr.typeflag = (53 : stdgo.GoUInt8);
            } else {
                (@:checkr _tw ?? throw "null pointer dereference")._hdr.typeflag = (48 : stdgo.GoUInt8);
            };
        };
        if ((@:checkr _tw ?? throw "null pointer dereference")._hdr.format == ((0 : stdgo._internal.archive.tar.Tar_format.Format))) {
            (@:checkr _tw ?? throw "null pointer dereference")._hdr.modTime = (@:checkr _tw ?? throw "null pointer dereference")._hdr.modTime.round((1000000000i64 : stdgo._internal.time.Time_duration.Duration))?.__copy__();
            (@:checkr _tw ?? throw "null pointer dereference")._hdr.accessTime = (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time);
            (@:checkr _tw ?? throw "null pointer dereference")._hdr.changeTime = (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time);
        };
        var __tmp__ = (@:checkr _tw ?? throw "null pointer dereference")._hdr._allowedFormats(), _allowedFormats:stdgo._internal.archive.tar.Tar_format.Format = __tmp__._0, _paxHdrs:stdgo.GoMap<stdgo.GoString, stdgo.GoString> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_allowedFormats._has((2 : stdgo._internal.archive.tar.Tar_format.Format))) {
            (@:checkr _tw ?? throw "null pointer dereference")._err = @:check2r _tw._writeUSTARHeader((stdgo.Go.setRef((@:checkr _tw ?? throw "null pointer dereference")._hdr) : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>));
            return (@:checkr _tw ?? throw "null pointer dereference")._err;
        } else if (_allowedFormats._has((4 : stdgo._internal.archive.tar.Tar_format.Format))) {
            (@:checkr _tw ?? throw "null pointer dereference")._err = @:check2r _tw._writePAXHeader((stdgo.Go.setRef((@:checkr _tw ?? throw "null pointer dereference")._hdr) : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>), _paxHdrs);
            return (@:checkr _tw ?? throw "null pointer dereference")._err;
        } else if (_allowedFormats._has((8 : stdgo._internal.archive.tar.Tar_format.Format))) {
            (@:checkr _tw ?? throw "null pointer dereference")._err = @:check2r _tw._writeGNUHeader((stdgo.Go.setRef((@:checkr _tw ?? throw "null pointer dereference")._hdr) : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>));
            return (@:checkr _tw ?? throw "null pointer dereference")._err;
        } else {
            return _err;
        };
    }
    @:keep
    @:tdfield
    static public function flush( _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>):stdgo.Error {
        @:recv var _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer> = _tw;
        if ((@:checkr _tw ?? throw "null pointer dereference")._err != null) {
            return (@:checkr _tw ?? throw "null pointer dereference")._err;
        };
        {
            var _nb = ((@:checkr _tw ?? throw "null pointer dereference")._curr._logicalRemaining() : stdgo.GoInt64);
            if ((_nb > (0i64 : stdgo.GoInt64) : Bool)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("archive/tar: missed writing %d bytes" : stdgo.GoString), stdgo.Go.toInterface(_nb));
            };
        };
        {
            {
                var __tmp__ = (@:checkr _tw ?? throw "null pointer dereference")._w.write((stdgo._internal.archive.tar.Tar__zeroblock._zeroBlock.__slice__(0, (@:checkr _tw ?? throw "null pointer dereference")._pad) : stdgo.Slice<stdgo.GoUInt8>));
                (@:checkr _tw ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
            };
            if ((@:checkr _tw ?? throw "null pointer dereference")._err != null) {
                return (@:checkr _tw ?? throw "null pointer dereference")._err;
            };
        };
        (@:checkr _tw ?? throw "null pointer dereference")._pad = (0i64 : stdgo.GoInt64);
        return (null : stdgo.Error);
    }
}
