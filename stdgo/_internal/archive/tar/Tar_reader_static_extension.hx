package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function _writeTo( _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader>, _w:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader> = _tr;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L656"
        if ((@:checkr _tr ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L657"
            return { _0 : (0i64 : stdgo.GoInt64), _1 : (@:checkr _tr ?? throw "null pointer dereference")._err };
        };
        var __tmp__ = (@:checkr _tr ?? throw "null pointer dereference")._curr.writeTo(_w), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L660"
        if (_err != null) {
            (@:checkr _tr ?? throw "null pointer dereference")._err = _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L663"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function read( _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader> = _tr;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L635"
        if ((@:checkr _tr ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L636"
            return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _tr ?? throw "null pointer dereference")._err };
        };
        var __tmp__ = (@:checkr _tr ?? throw "null pointer dereference")._curr.read(_b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L639"
        if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
            (@:checkr _tr ?? throw "null pointer dereference")._err = _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L642"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _readOldGNUSparseMap( _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader>, _hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>, _blk:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>):{ var _0 : stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas; var _1 : stdgo.Error; } {
        @:recv var _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader> = _tr;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L481"
        if (_blk._getFormat() != ((8 : stdgo._internal.archive.tar.Tar_format.Format))) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L482"
            return { _0 : null, _1 : stdgo._internal.archive.tar.Tar_errheader.errHeader };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L484"
        (stdgo.Go.pointer((@:checkr _hdr ?? throw "null pointer dereference").format) : stdgo._internal.archive.tar.Tar_formatpointer.FormatPointer)._mayOnlyBe((8 : stdgo._internal.archive.tar.Tar_format.Format));
        var _p:stdgo._internal.archive.tar.Tar_t_parser.T_parser = ({} : stdgo._internal.archive.tar.Tar_t_parser.T_parser);
        (@:checkr _hdr ?? throw "null pointer dereference").size = _p._parseNumeric(_blk._toGNU()._realSize());
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L488"
        if (_p._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L489"
            return { _0 : null, _1 : _p._err };
        };
        var _s = (_blk._toGNU()._sparse() : stdgo._internal.archive.tar.Tar_t_sparsearray.T_sparseArray);
        var _spd = (new stdgo.Slice<stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry>((0 : stdgo.GoInt).toBasic(), _s._maxEntries(), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _s._maxEntries() ? (0 : stdgo.GoInt).toBasic() : _s._maxEntries() : stdgo.GoInt).toBasic()) ({} : stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry)]) : stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L493"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L494"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _s._maxEntries() : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L496"
                    if (_s._entry(_i)._offset()[(0 : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L497"
                        break;
                    };
var _offset = (_p._parseNumeric(_s._entry(_i)._offset()) : stdgo.GoInt64);
var _length = (_p._parseNumeric(_s._entry(_i)._length()) : stdgo.GoInt64);
//"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L501"
                    if (_p._err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L502"
                        return { _0 : null, _1 : _p._err };
                    };
_spd = (_spd.__append__(({ offset : _offset, length_ : _length } : stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry)) : stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas);
                    _i++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L507"
            if ((_s._isExtended()[(0 : stdgo.GoInt)] > (0 : stdgo.GoUInt8) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L509"
                {
                    var __tmp__ = stdgo._internal.archive.tar.Tar__mustreadfull._mustReadFull((@:checkr _tr ?? throw "null pointer dereference")._r, (_blk.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L510"
                        return { _0 : null, _1 : _err };
                    };
                };
                _s = _blk._toSparse();
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L513"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L515"
            return { _0 : _spd, _1 : (null : stdgo.Error) };
        };
    }
    @:keep
    @:tdfield
    static public function _readHeader( _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader>):{ var _0 : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>; var _1 : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>; var _2 : stdgo.Error; } {
        @:recv var _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader> = _tr;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L357"
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _tr ?? throw "null pointer dereference")._r, ((@:checkr _tr ?? throw "null pointer dereference")._blk.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L358"
                return { _0 : null, _1 : null, _2 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L360"
        if (stdgo._internal.bytes.Bytes_equal.equal(((@:checkr _tr ?? throw "null pointer dereference")._blk.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (stdgo._internal.archive.tar.Tar__zeroblock._zeroBlock.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L361"
            {
                var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _tr ?? throw "null pointer dereference")._r, ((@:checkr _tr ?? throw "null pointer dereference")._blk.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L362"
                    return { _0 : null, _1 : null, _2 : _err };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L364"
            if (stdgo._internal.bytes.Bytes_equal.equal(((@:checkr _tr ?? throw "null pointer dereference")._blk.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (stdgo._internal.archive.tar.Tar__zeroblock._zeroBlock.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L365"
                return { _0 : null, _1 : null, _2 : stdgo._internal.io.Io_eof.eOF };
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L367"
            return { _0 : null, _1 : null, _2 : stdgo._internal.archive.tar.Tar_errheader.errHeader };
        };
        var _format = ((@:checkr _tr ?? throw "null pointer dereference")._blk._getFormat() : stdgo._internal.archive.tar.Tar_format.Format);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L372"
        if (_format == ((0 : stdgo._internal.archive.tar.Tar_format.Format))) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L373"
            return { _0 : null, _1 : null, _2 : stdgo._internal.archive.tar.Tar_errheader.errHeader };
        };
        var _p:stdgo._internal.archive.tar.Tar_t_parser.T_parser = ({} : stdgo._internal.archive.tar.Tar_t_parser.T_parser);
        var _hdr = (stdgo.Go.setRef(({} : stdgo._internal.archive.tar.Tar_header.Header)) : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>);
        var _v7 = (@:checkr _tr ?? throw "null pointer dereference")._blk._toV7();
        (@:checkr _hdr ?? throw "null pointer dereference").typeflag = _v7._typeFlag()[(0 : stdgo.GoInt)];
        (@:checkr _hdr ?? throw "null pointer dereference").name = _p._parseString(_v7._name())?.__copy__();
        (@:checkr _hdr ?? throw "null pointer dereference").linkname = _p._parseString(_v7._linkName())?.__copy__();
        (@:checkr _hdr ?? throw "null pointer dereference").size = _p._parseNumeric(_v7._size());
        (@:checkr _hdr ?? throw "null pointer dereference").mode = _p._parseNumeric(_v7._mode());
        (@:checkr _hdr ?? throw "null pointer dereference").uid = (_p._parseNumeric(_v7._uid()) : stdgo.GoInt);
        (@:checkr _hdr ?? throw "null pointer dereference").gid = (_p._parseNumeric(_v7._gid()) : stdgo.GoInt);
        (@:checkr _hdr ?? throw "null pointer dereference").modTime = stdgo._internal.time.Time_unix.unix(_p._parseNumeric(_v7._modTime()), (0i64 : stdgo.GoInt64))?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L391"
        if ((_format > (1 : stdgo._internal.archive.tar.Tar_format.Format) : Bool)) {
            var _ustar = (@:checkr _tr ?? throw "null pointer dereference")._blk._toUSTAR();
            (@:checkr _hdr ?? throw "null pointer dereference").uname = _p._parseString(_ustar._userName())?.__copy__();
            (@:checkr _hdr ?? throw "null pointer dereference").gname = _p._parseString(_ustar._groupName())?.__copy__();
            (@:checkr _hdr ?? throw "null pointer dereference").devmajor = _p._parseNumeric(_ustar._devMajor());
            (@:checkr _hdr ?? throw "null pointer dereference").devminor = _p._parseNumeric(_ustar._devMinor());
            var _prefix:stdgo.GoString = ("" : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L399"
            if (_format._has((6 : stdgo._internal.archive.tar.Tar_format.Format))) {
                (@:checkr _hdr ?? throw "null pointer dereference").format = _format;
                var _ustar = (@:checkr _tr ?? throw "null pointer dereference")._blk._toUSTAR();
                _prefix = _p._parseString(_ustar._prefix())?.__copy__();
                var _notASCII = (function(_r:stdgo.GoInt32):Bool {
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L407"
                    return (_r >= (128 : stdgo.GoInt32) : Bool);
                } : stdgo.GoInt32 -> Bool);
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L408"
                if ((stdgo._internal.bytes.Bytes_indexfunc.indexFunc(((@:checkr _tr ?? throw "null pointer dereference")._blk.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _notASCII) >= (0 : stdgo.GoInt) : Bool)) {
                    (@:checkr _hdr ?? throw "null pointer dereference").format = (0 : stdgo._internal.archive.tar.Tar_format.Format);
                };
                var _nul = function(_b:stdgo.Slice<stdgo.GoUInt8>):Bool {
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L411"
                    return (_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) == ((0 : stdgo.GoInt));
                };
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L412"
                if (!(((((((_nul(_v7._size()) && _nul(_v7._mode()) : Bool) && _nul(_v7._uid()) : Bool) && _nul(_v7._gid()) : Bool) && _nul(_v7._modTime()) : Bool) && _nul(_ustar._devMajor()) : Bool) && _nul(_ustar._devMinor()) : Bool))) {
                    (@:checkr _hdr ?? throw "null pointer dereference").format = (0 : stdgo._internal.archive.tar.Tar_format.Format);
                };
            } else if (_format._has((16 : stdgo._internal.archive.tar.Tar_format.Format))) {
                var _star = (@:checkr _tr ?? throw "null pointer dereference")._blk._toSTAR();
                _prefix = _p._parseString(_star._prefix())?.__copy__();
                (@:checkr _hdr ?? throw "null pointer dereference").accessTime = stdgo._internal.time.Time_unix.unix(_p._parseNumeric(_star._accessTime()), (0i64 : stdgo.GoInt64))?.__copy__();
                (@:checkr _hdr ?? throw "null pointer dereference").changeTime = stdgo._internal.time.Time_unix.unix(_p._parseNumeric(_star._changeTime()), (0i64 : stdgo.GoInt64))?.__copy__();
            } else if (_format._has((8 : stdgo._internal.archive.tar.Tar_format.Format))) {
                (@:checkr _hdr ?? throw "null pointer dereference").format = _format;
                var _p2:stdgo._internal.archive.tar.Tar_t_parser.T_parser = ({} : stdgo._internal.archive.tar.Tar_t_parser.T_parser);
                var _gnu = (@:checkr _tr ?? throw "null pointer dereference")._blk._toGNU();
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L425"
                {
                    var _b = _gnu._accessTime();
                    if (_b[(0 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                        (@:checkr _hdr ?? throw "null pointer dereference").accessTime = stdgo._internal.time.Time_unix.unix(_p2._parseNumeric(_b), (0i64 : stdgo.GoInt64))?.__copy__();
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L428"
                {
                    var _b = _gnu._changeTime();
                    if (_b[(0 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                        (@:checkr _hdr ?? throw "null pointer dereference").changeTime = stdgo._internal.time.Time_unix.unix(_p2._parseNumeric(_b), (0i64 : stdgo.GoInt64))?.__copy__();
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L453"
                if (_p2._err != null) {
                    {
                        final __tmp__0 = (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time);
                        final __tmp__1 = (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time);
                        (@:checkr _hdr ?? throw "null pointer dereference").accessTime = @:binopAssign __tmp__0;
                        (@:checkr _hdr ?? throw "null pointer dereference").changeTime = @:binopAssign __tmp__1;
                    };
                    var _ustar = (@:checkr _tr ?? throw "null pointer dereference")._blk._toUSTAR();
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L456"
                    {
                        var _s = (_p._parseString(_ustar._prefix())?.__copy__() : stdgo.GoString);
                        if (stdgo._internal.archive.tar.Tar__isascii._isASCII(_s?.__copy__())) {
                            _prefix = _s?.__copy__();
                        };
                    };
                    (@:checkr _hdr ?? throw "null pointer dereference").format = (0 : stdgo._internal.archive.tar.Tar_format.Format);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L462"
            if (((_prefix.length) > (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _hdr ?? throw "null pointer dereference").name = ((_prefix + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _hdr ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L466"
        return { _0 : _hdr, _1 : (stdgo.Go.setRef((@:checkr _tr ?? throw "null pointer dereference")._blk) : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>), _2 : _p._err };
    }
    @:keep
    @:tdfield
    static public function _readGNUSparsePAXHeaders( _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader>, _hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>):{ var _0 : stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas; var _1 : stdgo.Error; } {
        @:recv var _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader> = _tr;
        var _is1x0:Bool = false;
        var __0 = (((@:checkr _hdr ?? throw "null pointer dereference").pAXRecords[("GNU.sparse.major" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString), __1 = (((@:checkr _hdr ?? throw "null pointer dereference").pAXRecords[("GNU.sparse.minor" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
var _minor = __1, _major = __0;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L223"
        if (((_major == ("0" : stdgo.GoString)) && (((_minor == ("0" : stdgo.GoString)) || (_minor == ("1" : stdgo.GoString)) : Bool)) : Bool)) {
            _is1x0 = false;
        } else if (((_major == ("1" : stdgo.GoString)) && (_minor == ("0" : stdgo.GoString)) : Bool)) {
            _is1x0 = true;
        } else if (((_major != (stdgo.Go.str() : stdgo.GoString)) || (_minor != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L229"
            return { _0 : null, _1 : (null : stdgo.Error) };
        } else if (((@:checkr _hdr ?? throw "null pointer dereference").pAXRecords[("GNU.sparse.map" : stdgo.GoString)] ?? ("" : stdgo.GoString)) != ((stdgo.Go.str() : stdgo.GoString))) {
            _is1x0 = false;
        } else {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L233"
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L235"
        (stdgo.Go.pointer((@:checkr _hdr ?? throw "null pointer dereference").format) : stdgo._internal.archive.tar.Tar_formatpointer.FormatPointer)._mayOnlyBe((4 : stdgo._internal.archive.tar.Tar_format.Format));
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L238"
        {
            var _name = (((@:checkr _hdr ?? throw "null pointer dereference").pAXRecords[("GNU.sparse.name" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_name != ((stdgo.Go.str() : stdgo.GoString))) {
                (@:checkr _hdr ?? throw "null pointer dereference").name = _name?.__copy__();
            };
        };
        var _size = (((@:checkr _hdr ?? throw "null pointer dereference").pAXRecords[("GNU.sparse.size" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L242"
        if (_size == ((stdgo.Go.str() : stdgo.GoString))) {
            _size = ((@:checkr _hdr ?? throw "null pointer dereference").pAXRecords[("GNU.sparse.realsize" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L245"
        if (_size != ((stdgo.Go.str() : stdgo.GoString))) {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_size?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L247"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L248"
                return { _0 : null, _1 : stdgo._internal.archive.tar.Tar_errheader.errHeader };
            };
            (@:checkr _hdr ?? throw "null pointer dereference").size = _n;
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L254"
        if (_is1x0) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L255"
            return stdgo._internal.archive.tar.Tar__readgnusparsemap1x0._readGNUSparseMap1x0((@:checkr _tr ?? throw "null pointer dereference")._curr);
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L257"
        return stdgo._internal.archive.tar.Tar__readgnusparsemap0x1._readGNUSparseMap0x1((@:checkr _hdr ?? throw "null pointer dereference").pAXRecords);
    }
    @:keep
    @:tdfield
    static public function _handleSparseFile( _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader>, _hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>, _rawHdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>):stdgo.Error {
        @:recv var _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader> = _tr;
        var _spd:stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas = (new stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas(0, 0) : stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L197"
        if ((@:checkr _hdr ?? throw "null pointer dereference").typeflag == ((83 : stdgo.GoUInt8))) {
            {
                var __tmp__ = _tr._readOldGNUSparseMap(_hdr, _rawHdr);
                _spd = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        } else {
            {
                var __tmp__ = _tr._readGNUSparsePAXHeaders(_hdr);
                _spd = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L205"
        if (((_err == null) && (_spd != null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L206"
            if ((stdgo._internal.archive.tar.Tar__isheaderonlytype._isHeaderOnlyType((@:checkr _hdr ?? throw "null pointer dereference").typeflag) || !stdgo._internal.archive.tar.Tar__validatesparseentries._validateSparseEntries(_spd, (@:checkr _hdr ?? throw "null pointer dereference").size) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L207"
                return stdgo._internal.archive.tar.Tar_errheader.errHeader;
            };
            var _sph = stdgo._internal.archive.tar.Tar__invertsparseentries._invertSparseEntries(_spd, (@:checkr _hdr ?? throw "null pointer dereference").size);
            (@:checkr _tr ?? throw "null pointer dereference")._curr = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.archive.tar.Tar_t_sparsefilereader.T_sparseFileReader((@:checkr _tr ?? throw "null pointer dereference")._curr, _sph, (0i64 : stdgo.GoInt64)) : stdgo._internal.archive.tar.Tar_t_sparsefilereader.T_sparseFileReader)) : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_sparsefilereader.T_sparseFileReader>));
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L212"
        return _err;
    }
    @:keep
    @:tdfield
    static public function _handleRegularFile( _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader>, _hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>):stdgo.Error {
        @:recv var _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader> = _tr;
        var _nb = ((@:checkr _hdr ?? throw "null pointer dereference").size : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L180"
        if (stdgo._internal.archive.tar.Tar__isheaderonlytype._isHeaderOnlyType((@:checkr _hdr ?? throw "null pointer dereference").typeflag)) {
            _nb = (0i64 : stdgo.GoInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L183"
        if ((_nb < (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L184"
            return stdgo._internal.archive.tar.Tar_errheader.errHeader;
        };
        (@:checkr _tr ?? throw "null pointer dereference")._pad = stdgo._internal.archive.tar.Tar__blockpadding._blockPadding(_nb);
        (@:checkr _tr ?? throw "null pointer dereference")._curr = stdgo.Go.asInterface((stdgo.Go.setRef(({ _r : (@:checkr _tr ?? throw "null pointer dereference")._r, _nb : _nb } : stdgo._internal.archive.tar.Tar_t_regfilereader.T_regFileReader)) : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_regfilereader.T_regFileReader>));
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L189"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _next( _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader>):{ var _0 : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>; var _1 : stdgo.Error; } {
        @:recv var _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader> = _tr;
        var _paxHdrs:stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        var _gnuLongName:stdgo.GoString = ("" : stdgo.GoString), _gnuLongLink:stdgo.GoString = ("" : stdgo.GoString);
        var _format = (14 : stdgo._internal.archive.tar.Tar_format.Format);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L79"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L81"
            {
                var _err = (stdgo._internal.archive.tar.Tar__discard._discard((@:checkr _tr ?? throw "null pointer dereference")._r, (@:checkr _tr ?? throw "null pointer dereference")._curr._physicalRemaining()) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L82"
                    return { _0 : null, _1 : _err };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L84"
            {
                var __tmp__ = stdgo._internal.archive.tar.Tar__tryreadfull._tryReadFull((@:checkr _tr ?? throw "null pointer dereference")._r, ((@:checkr _tr ?? throw "null pointer dereference")._blk.__slice__(0, (@:checkr _tr ?? throw "null pointer dereference")._pad) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L85"
                    return { _0 : null, _1 : _err };
                };
            };
            (@:checkr _tr ?? throw "null pointer dereference")._pad = (0i64 : stdgo.GoInt64);
            var __tmp__ = _tr._readHeader(), _hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header> = __tmp__._0, _rawHdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L90"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L91"
                return { _0 : null, _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L93"
            {
                var _err = (_tr._handleRegularFile(_hdr) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L94"
                    return { _0 : null, _1 : _err };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L96"
            (stdgo.Go.pointer(_format) : stdgo._internal.archive.tar.Tar_formatpointer.FormatPointer)._mayOnlyBe((@:checkr _hdr ?? throw "null pointer dereference").format);
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L99"
            {
                final __value__ = (@:checkr _hdr ?? throw "null pointer dereference").typeflag;
                if (__value__ == ((120 : stdgo.GoUInt8)) || __value__ == ((103 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L101"
                    (stdgo.Go.pointer(_format) : stdgo._internal.archive.tar.Tar_formatpointer.FormatPointer)._mayOnlyBe((4 : stdgo._internal.archive.tar.Tar_format.Format));
                    {
                        var __tmp__ = stdgo._internal.archive.tar.Tar__parsepax._parsePAX(stdgo.Go.asInterface(_tr));
                        _paxHdrs = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L103"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L104"
                        return { _0 : null, _1 : _err };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L106"
                    if ((@:checkr _hdr ?? throw "null pointer dereference").typeflag == ((103 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L107"
                        stdgo._internal.archive.tar.Tar__mergepax._mergePAX(_hdr, _paxHdrs);
                        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L108"
                        return { _0 : (stdgo.Go.setRef(({ name : (@:checkr _hdr ?? throw "null pointer dereference").name?.__copy__(), typeflag : (@:checkr _hdr ?? throw "null pointer dereference").typeflag, xattrs : (@:checkr _hdr ?? throw "null pointer dereference").xattrs, pAXRecords : (@:checkr _hdr ?? throw "null pointer dereference").pAXRecords, format : _format } : stdgo._internal.archive.tar.Tar_header.Header)) : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>), _1 : (null : stdgo.Error) };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L116"
                    continue;
                } else if (__value__ == ((76 : stdgo.GoUInt8)) || __value__ == ((75 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L118"
                    (stdgo.Go.pointer(_format) : stdgo._internal.archive.tar.Tar_formatpointer.FormatPointer)._mayOnlyBe((8 : stdgo._internal.archive.tar.Tar_format.Format));
                    var __tmp__ = stdgo._internal.archive.tar.Tar__readspecialfile._readSpecialFile(stdgo.Go.asInterface(_tr)), _realname:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L120"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L121"
                        return { _0 : null, _1 : _err };
                    };
                    var _p:stdgo._internal.archive.tar.Tar_t_parser.T_parser = ({} : stdgo._internal.archive.tar.Tar_t_parser.T_parser);
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L125"
                    {
                        final __value__ = (@:checkr _hdr ?? throw "null pointer dereference").typeflag;
                        if (__value__ == ((76 : stdgo.GoUInt8))) {
                            _gnuLongName = _p._parseString(_realname)?.__copy__();
                        } else if (__value__ == ((75 : stdgo.GoUInt8))) {
                            _gnuLongLink = _p._parseString(_realname)?.__copy__();
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L131"
                    continue;
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L136"
                    {
                        var _err = (stdgo._internal.archive.tar.Tar__mergepax._mergePAX(_hdr, _paxHdrs) : stdgo.Error);
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L137"
                            return { _0 : null, _1 : _err };
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L139"
                    if (_gnuLongName != ((stdgo.Go.str() : stdgo.GoString))) {
                        (@:checkr _hdr ?? throw "null pointer dereference").name = _gnuLongName?.__copy__();
                    };
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L142"
                    if (_gnuLongLink != ((stdgo.Go.str() : stdgo.GoString))) {
                        (@:checkr _hdr ?? throw "null pointer dereference").linkname = _gnuLongLink?.__copy__();
                    };
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L145"
                    if ((@:checkr _hdr ?? throw "null pointer dereference").typeflag == ((0 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L146"
                        if (stdgo._internal.strings.Strings_hassuffix.hasSuffix((@:checkr _hdr ?? throw "null pointer dereference").name?.__copy__(), ("/" : stdgo.GoString))) {
                            (@:checkr _hdr ?? throw "null pointer dereference").typeflag = (53 : stdgo.GoUInt8);
                        } else {
                            (@:checkr _hdr ?? throw "null pointer dereference").typeflag = (48 : stdgo.GoUInt8);
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L155"
                    {
                        var _err = (_tr._handleRegularFile(_hdr) : stdgo.Error);
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L156"
                            return { _0 : null, _1 : _err };
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L161"
                    {
                        var _err = (_tr._handleSparseFile(_hdr, _rawHdr) : stdgo.Error);
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L162"
                            return { _0 : null, _1 : _err };
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L166"
                    if ((_format._has((2 : stdgo._internal.archive.tar.Tar_format.Format)) && _format._has((4 : stdgo._internal.archive.tar.Tar_format.Format)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L167"
                        (stdgo.Go.pointer(_format) : stdgo._internal.archive.tar.Tar_formatpointer.FormatPointer)._mayOnlyBe((2 : stdgo._internal.archive.tar.Tar_format.Format));
                    };
                    (@:checkr _hdr ?? throw "null pointer dereference").format = _format;
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L170"
                    return { _0 : _hdr, _1 : (null : stdgo.Error) };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function next( _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader>):{ var _0 : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>; var _1 : stdgo.Error; } {
        @:recv var _tr:stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader> = _tr;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L55"
        if ((@:checkr _tr ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L56"
            return { _0 : null, _1 : (@:checkr _tr ?? throw "null pointer dereference")._err };
        };
        var __tmp__ = _tr._next(), _hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        (@:checkr _tr ?? throw "null pointer dereference")._err = _err;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L60"
        if (((_err == null) && !stdgo._internal.path.filepath.Filepath_islocal.isLocal((@:checkr _hdr ?? throw "null pointer dereference").name?.__copy__()) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L61"
            if (stdgo._internal.archive.tar.Tar__tarinsecurepath._tarinsecurepath.value() == (("0" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L62"
                stdgo._internal.archive.tar.Tar__tarinsecurepath._tarinsecurepath.incNonDefault();
                _err = stdgo._internal.archive.tar.Tar_errinsecurepath.errInsecurePath;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L66"
        return { _0 : _hdr, _1 : _err };
    }
}
