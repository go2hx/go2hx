package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function close( _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>):stdgo.Error {
        @:recv var _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer> = _tw;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L470"
        if (stdgo.Go.toInterface((@:checkr _tw ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.archive.tar.Tar_errwriteafterclose.errWriteAfterClose))) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L471"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L473"
        if ((@:checkr _tw ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L474"
            return (@:checkr _tw ?? throw "null pointer dereference")._err;
        };
        var _err = (_tw.flush() : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L479"
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
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L485"
        return _err;
    }
    @:keep
    @:tdfield
    static public function _readFrom( _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>, _r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer> = _tw;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L456"
        if ((@:checkr _tw ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L457"
            return { _0 : (0i64 : stdgo.GoInt64), _1 : (@:checkr _tw ?? throw "null pointer dereference")._err };
        };
        var __tmp__ = (@:checkr _tw ?? throw "null pointer dereference")._curr.readFrom(_r), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L460"
        if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.archive.tar.Tar_errwritetoolong.errWriteTooLong)) : Bool)) {
            (@:checkr _tw ?? throw "null pointer dereference")._err = _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L463"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function write( _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer> = _tw;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L435"
        if ((@:checkr _tw ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L436"
            return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _tw ?? throw "null pointer dereference")._err };
        };
        var __tmp__ = (@:checkr _tw ?? throw "null pointer dereference")._curr.write(_b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L439"
        if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.archive.tar.Tar_errwritetoolong.errWriteTooLong)) : Bool)) {
            (@:checkr _tw ?? throw "null pointer dereference")._err = _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L442"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _writeRawHeader( _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>, _blk:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>, _size:stdgo.GoInt64, _flag:stdgo.GoUInt8):stdgo.Error {
        @:recv var _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer> = _tw;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L392"
        {
            var _err = (_tw.flush() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L393"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L395"
        {
            var __tmp__ = (@:checkr _tw ?? throw "null pointer dereference")._w.write((_blk.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L396"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L398"
        if (stdgo._internal.archive.tar.Tar__isheaderonlytype._isHeaderOnlyType(_flag)) {
            _size = (0i64 : stdgo.GoInt64);
        };
        (@:checkr _tw ?? throw "null pointer dereference")._curr = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.archive.tar.Tar_t_regfilewriter.T_regFileWriter((@:checkr _tw ?? throw "null pointer dereference")._w, _size) : stdgo._internal.archive.tar.Tar_t_regfilewriter.T_regFileWriter)) : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_regfilewriter.T_regFileWriter>));
        (@:checkr _tw ?? throw "null pointer dereference")._pad = stdgo._internal.archive.tar.Tar__blockpadding._blockPadding(_size);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L403"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _writeRawFile( _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>, _name:stdgo.GoString, _data:stdgo.GoString, _flag:stdgo.GoUInt8, _format:stdgo._internal.archive.tar.Tar_format.Format):stdgo.Error {
        @:recv var _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer> = _tw;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L357"
        (@:checkr _tw ?? throw "null pointer dereference")._blk._reset();
        _name = stdgo._internal.archive.tar.Tar__toascii._toASCII(_name?.__copy__())?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L361"
        if (((_name.length) > (100 : stdgo.GoInt) : Bool)) {
            _name = (_name.__slice__(0, (100 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        _name = stdgo._internal.strings.Strings_trimright.trimRight(_name?.__copy__(), ("/" : stdgo.GoString))?.__copy__();
        var _f:stdgo._internal.archive.tar.Tar_t_formatter.T_formatter = ({} : stdgo._internal.archive.tar.Tar_t_formatter.T_formatter);
        var _v7 = (@:checkr _tw ?? throw "null pointer dereference")._blk._toV7();
        _v7._typeFlag()[(0 : stdgo.GoInt)] = _flag;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L369"
        _f._formatString(_v7._name(), _name?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L370"
        _f._formatOctal(_v7._mode(), (0i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L371"
        _f._formatOctal(_v7._uid(), (0i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L372"
        _f._formatOctal(_v7._gid(), (0i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L373"
        _f._formatOctal(_v7._size(), (_data.length : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L374"
        _f._formatOctal(_v7._modTime(), (0i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L375"
        (@:checkr _tw ?? throw "null pointer dereference")._blk._setFormat(_format);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L376"
        if (_f._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L377"
            return _f._err;
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L381"
        {
            var _err = (_tw._writeRawHeader((stdgo.Go.setRef((@:checkr _tw ?? throw "null pointer dereference")._blk) : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>), (_data.length : stdgo.GoInt64), _flag) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L382"
                return _err;
            };
        };
        var __tmp__ = stdgo._internal.io.Io_writestring.writeString(stdgo.Go.asInterface(_tw), _data?.__copy__()), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L385"
        return _err;
    }
    @:keep
    @:tdfield
    static public function _templateV7Plus( _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>, _hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>, _fmtStr:stdgo._internal.archive.tar.Tar_t_stringformatter.T_stringFormatter, _fmtNum:stdgo._internal.archive.tar.Tar_t_numberformatter.T_numberFormatter):stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block> {
        @:recv var _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer> = _tw;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L327"
        (@:checkr _tw ?? throw "null pointer dereference")._blk._reset();
        var _modTime = ((@:checkr _hdr ?? throw "null pointer dereference").modTime?.__copy__() : stdgo._internal.time.Time_time.Time);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L330"
        if (_modTime.isZero()) {
            _modTime = stdgo._internal.time.Time_unix.unix((0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__();
        };
        var _v7 = (@:checkr _tw ?? throw "null pointer dereference")._blk._toV7();
        _v7._typeFlag()[(0 : stdgo.GoInt)] = (@:checkr _hdr ?? throw "null pointer dereference").typeflag;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L336"
        _fmtStr(_v7._name(), (@:checkr _hdr ?? throw "null pointer dereference").name?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L337"
        _fmtStr(_v7._linkName(), (@:checkr _hdr ?? throw "null pointer dereference").linkname?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L338"
        _fmtNum(_v7._mode(), (@:checkr _hdr ?? throw "null pointer dereference").mode);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L339"
        _fmtNum(_v7._uid(), ((@:checkr _hdr ?? throw "null pointer dereference").uid : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L340"
        _fmtNum(_v7._gid(), ((@:checkr _hdr ?? throw "null pointer dereference").gid : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L341"
        _fmtNum(_v7._size(), (@:checkr _hdr ?? throw "null pointer dereference").size);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L342"
        _fmtNum(_v7._modTime(), _modTime.unix());
        var _ustar = (@:checkr _tw ?? throw "null pointer dereference")._blk._toUSTAR();
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L345"
        _fmtStr(_ustar._userName(), (@:checkr _hdr ?? throw "null pointer dereference").uname?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L346"
        _fmtStr(_ustar._groupName(), (@:checkr _hdr ?? throw "null pointer dereference").gname?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L347"
        _fmtNum(_ustar._devMajor(), (@:checkr _hdr ?? throw "null pointer dereference").devmajor);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L348"
        _fmtNum(_ustar._devMinor(), (@:checkr _hdr ?? throw "null pointer dereference").devminor);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L350"
        return (stdgo.Go.setRef((@:checkr _tw ?? throw "null pointer dereference")._blk) : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>);
    }
    @:keep
    @:tdfield
    static public function _writeGNUHeader( _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>, _hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>):stdgo.Error {
        @:recv var _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer> = _tw;
        {};
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L237"
        if ((((@:checkr _hdr ?? throw "null pointer dereference").name.length) > (100 : stdgo.GoInt) : Bool)) {
            var _data = (((@:checkr _hdr ?? throw "null pointer dereference").name + (stdgo.Go.str(0) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L239"
            {
                var _err = (_tw._writeRawFile(("././@LongLink" : stdgo.GoString), _data?.__copy__(), (76 : stdgo.GoUInt8), (8 : stdgo._internal.archive.tar.Tar_format.Format)) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L240"
                    return _err;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L243"
        if ((((@:checkr _hdr ?? throw "null pointer dereference").linkname.length) > (100 : stdgo.GoInt) : Bool)) {
            var _data = (((@:checkr _hdr ?? throw "null pointer dereference").linkname + (stdgo.Go.str(0) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L245"
            {
                var _err = (_tw._writeRawFile(("././@LongLink" : stdgo.GoString), _data?.__copy__(), (75 : stdgo.GoUInt8), (8 : stdgo._internal.archive.tar.Tar_format.Format)) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L246"
                    return _err;
                };
            };
        };
        var _f:stdgo._internal.archive.tar.Tar_t_formatter.T_formatter = ({} : stdgo._internal.archive.tar.Tar_t_formatter.T_formatter);
        var _spd:stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas = (new stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas(0, 0) : stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas);
        var _spb:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _blk = _tw._templateV7Plus(_hdr, _f._formatString, _f._formatNumeric);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L255"
        if (!(@:checkr _hdr ?? throw "null pointer dereference").accessTime.isZero()) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L256"
            _f._formatNumeric(_blk._toGNU()._accessTime(), (@:checkr _hdr ?? throw "null pointer dereference").accessTime.unix());
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L258"
        if (!(@:checkr _hdr ?? throw "null pointer dereference").changeTime.isZero()) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L259"
            _f._formatNumeric(_blk._toGNU()._changeTime(), (@:checkr _hdr ?? throw "null pointer dereference").changeTime.unix());
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L299"
        _blk._setFormat((8 : stdgo._internal.archive.tar.Tar_format.Format));
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L300"
        {
            var _err = (_tw._writeRawHeader(_blk, (@:checkr _hdr ?? throw "null pointer dereference").size, (@:checkr _hdr ?? throw "null pointer dereference").typeflag) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L301"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L305"
        if (((_spd.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L307"
            {
                var __tmp__ = (@:checkr _tw ?? throw "null pointer dereference")._w.write(_spb), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L308"
                    return _err;
                };
            };
            (@:checkr _tw ?? throw "null pointer dereference")._curr = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.archive.tar.Tar_t_sparsefilewriter.T_sparseFileWriter((@:checkr _tw ?? throw "null pointer dereference")._curr, _spd, (0i64 : stdgo.GoInt64)) : stdgo._internal.archive.tar.Tar_t_sparsefilewriter.T_sparseFileWriter)) : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_sparsefilewriter.T_sparseFileWriter>));
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L312"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _writePAXHeader( _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>, _hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>, _paxHdrs:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.Error {
        @:recv var _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer> = _tw;
        var __0 = ((@:checkr _hdr ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString), __1 = ((@:checkr _hdr ?? throw "null pointer dereference").size : stdgo.GoInt64);
var _realSize = __1, _realName = __0;
        _realSize;
        var _isGlobal = ((@:checkr _hdr ?? throw "null pointer dereference").typeflag == ((103 : stdgo.GoUInt8)) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L169"
        if ((((_paxHdrs.length) > (0 : stdgo.GoInt) : Bool) || _isGlobal : Bool)) {
            var _keys:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L172"
            for (_k => _ in _paxHdrs) {
                _keys = (_keys.__append__(_k?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L175"
            stdgo._internal.sort.Sort_strings.strings(_keys);
            var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L179"
            for (__1 => _k in _keys) {
                var __tmp__ = stdgo._internal.archive.tar.Tar__formatpaxrecord._formatPAXRecord(_k?.__copy__(), (_paxHdrs[_k] ?? ("" : stdgo.GoString))?.__copy__()), _rec:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L181"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L182"
                    return _err;
                };
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L184"
                _buf.writeString(_rec?.__copy__());
            };
            var _name:stdgo.GoString = ("" : stdgo.GoString);
            var _flag:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L190"
            if (_isGlobal) {
                _name = _realName?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L192"
                if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
                    _name = ("GlobalHead.0.0" : stdgo.GoString);
                };
                _flag = (103 : stdgo.GoUInt8);
            } else {
                var __tmp__ = stdgo._internal.path.Path_split.split(_realName?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _file:stdgo.GoString = __tmp__._1;
                _name = stdgo._internal.path.Path_join.join(_dir?.__copy__(), ("PaxHeaders.0" : stdgo.GoString), _file?.__copy__())?.__copy__();
                _flag = (120 : stdgo.GoUInt8);
            };
            var _data = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L202"
            if (((_data.length) > (1048576 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L203"
                return stdgo._internal.archive.tar.Tar_errfieldtoolong.errFieldTooLong;
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L205"
            {
                var _err = (_tw._writeRawFile(_name?.__copy__(), _data?.__copy__(), _flag, (4 : stdgo._internal.archive.tar.Tar_format.Format)) : stdgo.Error);
                if (((_err != null) || _isGlobal : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L206"
                    return _err;
                };
            };
        };
        var _f:stdgo._internal.archive.tar.Tar_t_formatter.T_formatter = ({} : stdgo._internal.archive.tar.Tar_t_formatter.T_formatter);
        var _fmtStr = function(_b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):Void {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L212"
            _f._formatString(_b, stdgo._internal.archive.tar.Tar__toascii._toASCII(_s?.__copy__())?.__copy__());
        };
        var _blk = _tw._templateV7Plus(_hdr, _fmtStr, _f._formatOctal);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L214"
        _blk._setFormat((4 : stdgo._internal.archive.tar.Tar_format.Format));
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L215"
        {
            var _err = (_tw._writeRawHeader(_blk, (@:checkr _hdr ?? throw "null pointer dereference").size, (@:checkr _hdr ?? throw "null pointer dereference").typeflag) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L216"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L231"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _writeUSTARHeader( _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>, _hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>):stdgo.Error {
        @:recv var _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer> = _tw;
        var _namePrefix:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L113"
        {
            var __tmp__ = stdgo._internal.archive.tar.Tar__splitustarpath._splitUSTARPath((@:checkr _hdr ?? throw "null pointer dereference").name?.__copy__()), _prefix:stdgo.GoString = __tmp__._0, _suffix:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                {
                    final __tmp__0 = _prefix?.__copy__();
                    final __tmp__1 = _suffix?.__copy__();
                    _namePrefix = @:binopAssign __tmp__0;
                    (@:checkr _hdr ?? throw "null pointer dereference").name = @:binopAssign __tmp__1;
                };
            };
        };
        var _f:stdgo._internal.archive.tar.Tar_t_formatter.T_formatter = ({} : stdgo._internal.archive.tar.Tar_t_formatter.T_formatter);
        var _blk = _tw._templateV7Plus(_hdr, _f._formatString, _f._formatOctal);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L120"
        _f._formatString(_blk._toUSTAR()._prefix(), _namePrefix?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L121"
        _blk._setFormat((2 : stdgo._internal.archive.tar.Tar_format.Format));
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L122"
        if (_f._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L123"
            return _f._err;
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L125"
        return _tw._writeRawHeader(_blk, (@:checkr _hdr ?? throw "null pointer dereference").size, (@:checkr _hdr ?? throw "null pointer dereference").typeflag);
    }
    @:keep
    @:tdfield
    static public function writeHeader( _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>, _hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>):stdgo.Error {
        @:recv var _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer> = _tw;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L68"
        {
            var _err = (_tw.flush() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L69"
                return _err;
            };
        };
        (@:checkr _tw ?? throw "null pointer dereference")._hdr = (_hdr : stdgo._internal.archive.tar.Tar_header.Header)?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L75"
        if ((@:checkr _tw ?? throw "null pointer dereference")._hdr.typeflag == ((0 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L76"
            if (stdgo._internal.strings.Strings_hassuffix.hasSuffix((@:checkr _tw ?? throw "null pointer dereference")._hdr.name?.__copy__(), ("/" : stdgo.GoString))) {
                (@:checkr _tw ?? throw "null pointer dereference")._hdr.typeflag = (53 : stdgo.GoUInt8);
            } else {
                (@:checkr _tw ?? throw "null pointer dereference")._hdr.typeflag = (48 : stdgo.GoUInt8);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L88"
        if ((@:checkr _tw ?? throw "null pointer dereference")._hdr.format == ((0 : stdgo._internal.archive.tar.Tar_format.Format))) {
            (@:checkr _tw ?? throw "null pointer dereference")._hdr.modTime = (@:checkr _tw ?? throw "null pointer dereference")._hdr.modTime.round((1000000000i64 : stdgo._internal.time.Time_duration.Duration))?.__copy__();
            (@:checkr _tw ?? throw "null pointer dereference")._hdr.accessTime = (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time);
            (@:checkr _tw ?? throw "null pointer dereference")._hdr.changeTime = (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time);
        };
        var __tmp__ = (@:checkr _tw ?? throw "null pointer dereference")._hdr._allowedFormats(), _allowedFormats:stdgo._internal.archive.tar.Tar_format.Format = __tmp__._0, _paxHdrs:stdgo.GoMap<stdgo.GoString, stdgo.GoString> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L95"
        if (_allowedFormats._has((2 : stdgo._internal.archive.tar.Tar_format.Format))) {
            (@:checkr _tw ?? throw "null pointer dereference")._err = _tw._writeUSTARHeader((stdgo.Go.setRef((@:checkr _tw ?? throw "null pointer dereference")._hdr) : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>));
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L98"
            return (@:checkr _tw ?? throw "null pointer dereference")._err;
        } else if (_allowedFormats._has((4 : stdgo._internal.archive.tar.Tar_format.Format))) {
            (@:checkr _tw ?? throw "null pointer dereference")._err = _tw._writePAXHeader((stdgo.Go.setRef((@:checkr _tw ?? throw "null pointer dereference")._hdr) : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>), _paxHdrs);
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L101"
            return (@:checkr _tw ?? throw "null pointer dereference")._err;
        } else if (_allowedFormats._has((8 : stdgo._internal.archive.tar.Tar_format.Format))) {
            (@:checkr _tw ?? throw "null pointer dereference")._err = _tw._writeGNUHeader((stdgo.Go.setRef((@:checkr _tw ?? throw "null pointer dereference")._hdr) : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>));
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L104"
            return (@:checkr _tw ?? throw "null pointer dereference")._err;
        } else {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L106"
            return _err;
        };
    }
    @:keep
    @:tdfield
    static public function flush( _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer>):stdgo.Error {
        @:recv var _tw:stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer> = _tw;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L50"
        if ((@:checkr _tw ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L51"
            return (@:checkr _tw ?? throw "null pointer dereference")._err;
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L53"
        {
            var _nb = ((@:checkr _tw ?? throw "null pointer dereference")._curr._logicalRemaining() : stdgo.GoInt64);
            if ((_nb > (0i64 : stdgo.GoInt64) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L54"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("archive/tar: missed writing %d bytes" : stdgo.GoString), stdgo.Go.toInterface(_nb));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L56"
        {
            {
                var __tmp__ = (@:checkr _tw ?? throw "null pointer dereference")._w.write((stdgo._internal.archive.tar.Tar__zeroblock._zeroBlock.__slice__(0, (@:checkr _tw ?? throw "null pointer dereference")._pad) : stdgo.Slice<stdgo.GoUInt8>));
                (@:checkr _tw ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
            };
            if ((@:checkr _tw ?? throw "null pointer dereference")._err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L57"
                return (@:checkr _tw ?? throw "null pointer dereference")._err;
            };
        };
        (@:checkr _tw ?? throw "null pointer dereference")._pad = (0i64 : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L60"
        return (null : stdgo.Error);
    }
}
