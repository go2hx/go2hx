package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.Reader_asInterface) class Reader_static_extension {
    @:keep
    static public function _writeTo( _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader>, _w:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader> = _tr;
        if (_tr._err != null) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : _tr._err };
        };
        var __tmp__ = _tr._curr.writeTo(_w), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _tr._err = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function read( _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader> = _tr;
        if (_tr._err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : _tr._err };
        };
        var __tmp__ = _tr._curr.read(_b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
            _tr._err = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function _readOldGNUSparseMap( _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader>, _hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>, _blk:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>):{ var _0 : stdgo._internal.archive.tar.Tar_T_sparseDatas.T_sparseDatas; var _1 : stdgo.Error; } {
        @:recv var _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader> = _tr;
        if (_blk._getFormat() != ((8 : stdgo._internal.archive.tar.Tar_Format.Format))) {
            return { _0 : null, _1 : stdgo._internal.archive.tar.Tar_errHeader.errHeader };
        };
        _hdr.format._mayOnlyBe(stdgo.Go.pointer(_hdr.format), (8 : stdgo._internal.archive.tar.Tar_Format.Format));
        var _p:stdgo._internal.archive.tar.Tar_T_parser.T_parser = ({} : stdgo._internal.archive.tar.Tar_T_parser.T_parser);
        _hdr.size = _p._parseNumeric(_blk._toGNU()._realSize());
        if (_p._err != null) {
            return { _0 : null, _1 : _p._err };
        };
        var _s = (_blk._toGNU()._sparse() : stdgo._internal.archive.tar.Tar_T_sparseArray.T_sparseArray);
        var _spd = (new stdgo.Slice<stdgo._internal.archive.tar.Tar_T_sparseEntry.T_sparseEntry>((0 : stdgo.GoInt).toBasic(), _s._maxEntries(), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _s._maxEntries() ? (0 : stdgo.GoInt).toBasic() : _s._maxEntries() : stdgo.GoInt).toBasic()) ({} : stdgo._internal.archive.tar.Tar_T_sparseEntry.T_sparseEntry)]) : stdgo._internal.archive.tar.Tar_T_sparseDatas.T_sparseDatas);
        while (true) {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _s._maxEntries() : Bool), _i++, {
                    if (_s._entry(_i)._offset()[(0 : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                        break;
                    };
                    var _offset = (_p._parseNumeric(_s._entry(_i)._offset()) : stdgo.GoInt64);
                    var _length = (_p._parseNumeric(_s._entry(_i)._length()) : stdgo.GoInt64);
                    if (_p._err != null) {
                        return { _0 : null, _1 : _p._err };
                    };
                    _spd = (_spd.__append__(({ offset : _offset, length_ : _length } : stdgo._internal.archive.tar.Tar_T_sparseEntry.T_sparseEntry)));
                });
            };
            if ((_s._isExtended()[(0 : stdgo.GoInt)] > (0 : stdgo.GoUInt8) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.archive.tar.Tar__mustReadFull._mustReadFull(_tr._r, (_blk.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
                _s = _blk._toSparse();
                continue;
            };
            return { _0 : _spd, _1 : (null : stdgo.Error) };
        };
    }
    @:keep
    static public function _readHeader( _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader>):{ var _0 : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>; var _1 : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>; var _2 : stdgo.Error; } {
        @:recv var _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader> = _tr;
        {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_tr._r, (_tr._blk.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : null, _2 : _err };
            };
        };
        if (stdgo._internal.bytes.Bytes_equal.equal((_tr._blk.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (stdgo._internal.archive.tar.Tar__zeroBlock._zeroBlock.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))) {
            {
                var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_tr._r, (_tr._blk.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : null, _2 : _err };
                };
            };
            if (stdgo._internal.bytes.Bytes_equal.equal((_tr._blk.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (stdgo._internal.archive.tar.Tar__zeroBlock._zeroBlock.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))) {
                return { _0 : null, _1 : null, _2 : stdgo._internal.io.Io_eof.eof };
            };
            return { _0 : null, _1 : null, _2 : stdgo._internal.archive.tar.Tar_errHeader.errHeader };
        };
        var _format = (_tr._blk._getFormat() : stdgo._internal.archive.tar.Tar_Format.Format);
        if (_format == ((0 : stdgo._internal.archive.tar.Tar_Format.Format))) {
            return { _0 : null, _1 : null, _2 : stdgo._internal.archive.tar.Tar_errHeader.errHeader };
        };
        var _p:stdgo._internal.archive.tar.Tar_T_parser.T_parser = ({} : stdgo._internal.archive.tar.Tar_T_parser.T_parser);
        var _hdr = (stdgo.Go.setRef(({} : stdgo._internal.archive.tar.Tar_Header.Header)) : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>);
        var _v7 = _tr._blk._toV7();
        _hdr.typeflag = _v7._typeFlag()[(0 : stdgo.GoInt)];
        _hdr.name = _p._parseString(_v7._name())?.__copy__();
        _hdr.linkname = _p._parseString(_v7._linkName())?.__copy__();
        _hdr.size = _p._parseNumeric(_v7._size());
        _hdr.mode = _p._parseNumeric(_v7._mode());
        _hdr.uid = (_p._parseNumeric(_v7._uid()) : stdgo.GoInt);
        _hdr.gid = (_p._parseNumeric(_v7._gid()) : stdgo.GoInt);
        _hdr.modTime = stdgo._internal.time.Time_unix.unix(_p._parseNumeric(_v7._modTime()), (0i64 : stdgo.GoInt64))?.__copy__();
        if ((_format > (1 : stdgo._internal.archive.tar.Tar_Format.Format) : Bool)) {
            var _ustar = _tr._blk._toUSTAR();
            _hdr.uname = _p._parseString(_ustar._userName())?.__copy__();
            _hdr.gname = _p._parseString(_ustar._groupName())?.__copy__();
            _hdr.devmajor = _p._parseNumeric(_ustar._devMajor());
            _hdr.devminor = _p._parseNumeric(_ustar._devMinor());
            var _prefix:stdgo.GoString = ("" : stdgo.GoString);
            if (_format._has((6 : stdgo._internal.archive.tar.Tar_Format.Format))) {
                _hdr.format = _format;
                var _ustar = _tr._blk._toUSTAR();
                _prefix = _p._parseString(_ustar._prefix())?.__copy__();
                var _notASCII = (function(_r:stdgo.GoInt32):Bool {
                    return (_r >= (128 : stdgo.GoInt32) : Bool);
                } : stdgo.GoInt32 -> Bool);
                if ((stdgo._internal.bytes.Bytes_indexFunc.indexFunc((_tr._blk.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _notASCII) >= (0 : stdgo.GoInt) : Bool)) {
                    _hdr.format = (0 : stdgo._internal.archive.tar.Tar_Format.Format);
                };
                var _nul = function(_b:stdgo.Slice<stdgo.GoUInt8>):Bool {
                    return (_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) == ((0 : stdgo.GoInt));
                };
                if (!(((((((_nul(_v7._size()) && _nul(_v7._mode()) : Bool) && _nul(_v7._uid()) : Bool) && _nul(_v7._gid()) : Bool) && _nul(_v7._modTime()) : Bool) && _nul(_ustar._devMajor()) : Bool) && _nul(_ustar._devMinor()) : Bool))) {
                    _hdr.format = (0 : stdgo._internal.archive.tar.Tar_Format.Format);
                };
            } else if (_format._has((16 : stdgo._internal.archive.tar.Tar_Format.Format))) {
                var _star = _tr._blk._toSTAR();
                _prefix = _p._parseString(_star._prefix())?.__copy__();
                _hdr.accessTime = stdgo._internal.time.Time_unix.unix(_p._parseNumeric(_star._accessTime()), (0i64 : stdgo.GoInt64))?.__copy__();
                _hdr.changeTime = stdgo._internal.time.Time_unix.unix(_p._parseNumeric(_star._changeTime()), (0i64 : stdgo.GoInt64))?.__copy__();
            } else if (_format._has((8 : stdgo._internal.archive.tar.Tar_Format.Format))) {
                _hdr.format = _format;
                var _p2:stdgo._internal.archive.tar.Tar_T_parser.T_parser = ({} : stdgo._internal.archive.tar.Tar_T_parser.T_parser);
                var _gnu = _tr._blk._toGNU();
                {
                    var _b = _gnu._accessTime();
                    if (_b[(0 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                        _hdr.accessTime = stdgo._internal.time.Time_unix.unix(_p2._parseNumeric(_b), (0i64 : stdgo.GoInt64))?.__copy__();
                    };
                };
                {
                    var _b = _gnu._changeTime();
                    if (_b[(0 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                        _hdr.changeTime = stdgo._internal.time.Time_unix.unix(_p2._parseNumeric(_b), (0i64 : stdgo.GoInt64))?.__copy__();
                    };
                };
                if (_p2._err != null) {
                    {
                        final __tmp__0 = (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time);
                        final __tmp__1 = (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time);
                        _hdr.accessTime = __tmp__0;
                        _hdr.changeTime = __tmp__1;
                    };
                    var _ustar = _tr._blk._toUSTAR();
                    {
                        var _s = (_p._parseString(_ustar._prefix())?.__copy__() : stdgo.GoString);
                        if (stdgo._internal.archive.tar.Tar__isASCII._isASCII(_s?.__copy__())) {
                            _prefix = _s?.__copy__();
                        };
                    };
                    _hdr.format = (0 : stdgo._internal.archive.tar.Tar_Format.Format);
                };
            };
            if (((_prefix.length) > (0 : stdgo.GoInt) : Bool)) {
                _hdr.name = ((_prefix + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _hdr.name?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        return { _0 : _hdr, _1 : (stdgo.Go.setRef(_tr._blk) : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>), _2 : _p._err };
    }
    @:keep
    static public function _readGNUSparsePAXHeaders( _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader>, _hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>):{ var _0 : stdgo._internal.archive.tar.Tar_T_sparseDatas.T_sparseDatas; var _1 : stdgo.Error; } {
        @:recv var _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader> = _tr;
        var _is1x0:Bool = false;
        var __0 = ((_hdr.paxrecords[("GNU.sparse.major" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString), __1 = ((_hdr.paxrecords[("GNU.sparse.minor" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
var _minor = __1, _major = __0;
        if (((_major == ("0" : stdgo.GoString)) && (((_minor == ("0" : stdgo.GoString)) || (_minor == ("1" : stdgo.GoString)) : Bool)) : Bool)) {
            _is1x0 = false;
        } else if (((_major == ("1" : stdgo.GoString)) && (_minor == ("0" : stdgo.GoString)) : Bool)) {
            _is1x0 = true;
        } else if (((_major != stdgo.Go.str()) || (_minor != stdgo.Go.str()) : Bool)) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        } else if ((_hdr.paxrecords[("GNU.sparse.map" : stdgo.GoString)] ?? ("" : stdgo.GoString)) != (stdgo.Go.str())) {
            _is1x0 = false;
        } else {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        _hdr.format._mayOnlyBe(stdgo.Go.pointer(_hdr.format), (4 : stdgo._internal.archive.tar.Tar_Format.Format));
        {
            var _name = ((_hdr.paxrecords[("GNU.sparse.name" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_name != (stdgo.Go.str())) {
                _hdr.name = _name?.__copy__();
            };
        };
        var _size = ((_hdr.paxrecords[("GNU.sparse.size" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_size == (stdgo.Go.str())) {
            _size = (_hdr.paxrecords[("GNU.sparse.realsize" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__();
        };
        if (_size != (stdgo.Go.str())) {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_size?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : stdgo._internal.archive.tar.Tar_errHeader.errHeader };
            };
            _hdr.size = _n;
        };
        if (_is1x0) {
            return stdgo._internal.archive.tar.Tar__readGNUSparseMap1x0._readGNUSparseMap1x0(_tr._curr);
        };
        return stdgo._internal.archive.tar.Tar__readGNUSparseMap0x1._readGNUSparseMap0x1(_hdr.paxrecords);
    }
    @:keep
    static public function _handleSparseFile( _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader>, _hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>, _rawHdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>):stdgo.Error {
        @:recv var _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader> = _tr;
        var _spd:stdgo._internal.archive.tar.Tar_T_sparseDatas.T_sparseDatas = new stdgo._internal.archive.tar.Tar_T_sparseDatas.T_sparseDatas(0, 0);
        var _err:stdgo.Error = (null : stdgo.Error);
        if (_hdr.typeflag == ((83 : stdgo.GoUInt8))) {
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
        if (((_err == null) && (_spd != null) : Bool)) {
            if ((stdgo._internal.archive.tar.Tar__isHeaderOnlyType._isHeaderOnlyType(_hdr.typeflag) || !stdgo._internal.archive.tar.Tar__validateSparseEntries._validateSparseEntries(_spd, _hdr.size) : Bool)) {
                return stdgo._internal.archive.tar.Tar_errHeader.errHeader;
            };
            var _sph = stdgo._internal.archive.tar.Tar__invertSparseEntries._invertSparseEntries(_spd, _hdr.size);
            _tr._curr = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.archive.tar.Tar_T_sparseFileReader.T_sparseFileReader(_tr._curr, _sph, (0i64 : stdgo.GoInt64)) : stdgo._internal.archive.tar.Tar_T_sparseFileReader.T_sparseFileReader)) : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_sparseFileReader.T_sparseFileReader>));
        };
        return _err;
    }
    @:keep
    static public function _handleRegularFile( _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader>, _hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>):stdgo.Error {
        @:recv var _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader> = _tr;
        var _nb = (_hdr.size : stdgo.GoInt64);
        if (stdgo._internal.archive.tar.Tar__isHeaderOnlyType._isHeaderOnlyType(_hdr.typeflag)) {
            _nb = (0i64 : stdgo.GoInt64);
        };
        if ((_nb < (0i64 : stdgo.GoInt64) : Bool)) {
            return stdgo._internal.archive.tar.Tar_errHeader.errHeader;
        };
        _tr._pad = stdgo._internal.archive.tar.Tar__blockPadding._blockPadding(_nb);
        _tr._curr = stdgo.Go.asInterface((stdgo.Go.setRef(({ _r : _tr._r, _nb : _nb } : stdgo._internal.archive.tar.Tar_T_regFileReader.T_regFileReader)) : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_regFileReader.T_regFileReader>));
        return (null : stdgo.Error);
    }
    @:keep
    static public function _next( _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader>):{ var _0 : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>; var _1 : stdgo.Error; } {
        @:recv var _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader> = _tr;
        var _paxHdrs:stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString);
var _gnuLongLink = __1, _gnuLongName = __0;
        var _format = (14 : stdgo._internal.archive.tar.Tar_Format.Format);
        while (true) {
            {
                var _err = (stdgo._internal.archive.tar.Tar__discard._discard(_tr._r, _tr._curr._physicalRemaining()) : stdgo.Error);
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            {
                var __tmp__ = stdgo._internal.archive.tar.Tar__tryReadFull._tryReadFull(_tr._r, (_tr._blk.__slice__(0, _tr._pad) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            _tr._pad = (0i64 : stdgo.GoInt64);
            var __tmp__ = _tr._readHeader(), _hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header> = __tmp__._0, _rawHdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            {
                var _err = (_tr._handleRegularFile(_hdr) : stdgo.Error);
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            _format._mayOnlyBe(stdgo.Go.pointer(_format), _hdr.format);
            {
                final __value__ = _hdr.typeflag;
                if (__value__ == ((120 : stdgo.GoUInt8)) || __value__ == ((103 : stdgo.GoUInt8))) {
                    _format._mayOnlyBe(stdgo.Go.pointer(_format), (4 : stdgo._internal.archive.tar.Tar_Format.Format));
                    {
                        var __tmp__ = stdgo._internal.archive.tar.Tar__parsePAX._parsePAX(stdgo.Go.asInterface(_tr));
                        _paxHdrs = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                    if (_hdr.typeflag == ((103 : stdgo.GoUInt8))) {
                        stdgo._internal.archive.tar.Tar__mergePAX._mergePAX(_hdr, _paxHdrs);
                        return { _0 : (stdgo.Go.setRef(({ name : _hdr.name?.__copy__(), typeflag : _hdr.typeflag, xattrs : _hdr.xattrs, paxrecords : _hdr.paxrecords, format : _format } : stdgo._internal.archive.tar.Tar_Header.Header)) : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>), _1 : (null : stdgo.Error) };
                    };
                    continue;
                } else if (__value__ == ((76 : stdgo.GoUInt8)) || __value__ == ((75 : stdgo.GoUInt8))) {
                    _format._mayOnlyBe(stdgo.Go.pointer(_format), (8 : stdgo._internal.archive.tar.Tar_Format.Format));
                    var __tmp__ = stdgo._internal.archive.tar.Tar__readSpecialFile._readSpecialFile(stdgo.Go.asInterface(_tr)), _realname:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                    var _p:stdgo._internal.archive.tar.Tar_T_parser.T_parser = ({} : stdgo._internal.archive.tar.Tar_T_parser.T_parser);
                    {
                        final __value__ = _hdr.typeflag;
                        if (__value__ == ((76 : stdgo.GoUInt8))) {
                            _gnuLongName = _p._parseString(_realname)?.__copy__();
                        } else if (__value__ == ((75 : stdgo.GoUInt8))) {
                            _gnuLongLink = _p._parseString(_realname)?.__copy__();
                        };
                    };
                    continue;
                } else {
                    {
                        var _err = (stdgo._internal.archive.tar.Tar__mergePAX._mergePAX(_hdr, _paxHdrs) : stdgo.Error);
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                    };
                    if (_gnuLongName != (stdgo.Go.str())) {
                        _hdr.name = _gnuLongName?.__copy__();
                    };
                    if (_gnuLongLink != (stdgo.Go.str())) {
                        _hdr.linkname = _gnuLongLink?.__copy__();
                    };
                    if (_hdr.typeflag == ((0 : stdgo.GoUInt8))) {
                        if (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_hdr.name?.__copy__(), ("/" : stdgo.GoString))) {
                            _hdr.typeflag = (53 : stdgo.GoUInt8);
                        } else {
                            _hdr.typeflag = (48 : stdgo.GoUInt8);
                        };
                    };
                    {
                        var _err = (_tr._handleRegularFile(_hdr) : stdgo.Error);
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                    };
                    {
                        var _err = (_tr._handleSparseFile(_hdr, _rawHdr) : stdgo.Error);
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                    };
                    if ((_format._has((2 : stdgo._internal.archive.tar.Tar_Format.Format)) && _format._has((4 : stdgo._internal.archive.tar.Tar_Format.Format)) : Bool)) {
                        _format._mayOnlyBe(stdgo.Go.pointer(_format), (2 : stdgo._internal.archive.tar.Tar_Format.Format));
                    };
                    _hdr.format = _format;
                    return { _0 : _hdr, _1 : (null : stdgo.Error) };
                };
            };
        };
    }
    @:keep
    static public function next( _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader>):{ var _0 : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>; var _1 : stdgo.Error; } {
        @:recv var _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Reader.Reader> = _tr;
        if (_tr._err != null) {
            return { _0 : null, _1 : _tr._err };
        };
        var __tmp__ = _tr._next(), _hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _tr._err = _err;
        if (((_err == null) && !stdgo._internal.path.filepath.Filepath_isLocal.isLocal(_hdr.name?.__copy__()) : Bool)) {
            if (stdgo._internal.archive.tar.Tar__tarinsecurepath._tarinsecurepath.value() == (("0" : stdgo.GoString))) {
                stdgo._internal.archive.tar.Tar__tarinsecurepath._tarinsecurepath.incNonDefault();
                _err = stdgo._internal.archive.tar.Tar_errInsecurePath.errInsecurePath;
            };
        };
        return { _0 : _hdr, _1 : _err };
    }
}
