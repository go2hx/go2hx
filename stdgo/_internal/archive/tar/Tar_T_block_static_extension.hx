package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T_block_asInterface) class T_block_static_extension {
    @:keep
    static public function _reset( _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block> = _b;
        _b = (new stdgo.GoArray<stdgo.GoUInt8>(512, 512, ...[]).__setNumber32__() : stdgo._internal.archive.tar.Tar_T_block.T_block)?.__copy__();
    }
    @:keep
    static public function _computeChecksum( _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block> = _b;
        var _unsigned = (0 : stdgo.GoInt64), _signed = (0 : stdgo.GoInt64);
        for (_i => _c in _b) {
            if ((((148 : stdgo.GoInt) <= _i : Bool) && (_i < (156 : stdgo.GoInt) : Bool) : Bool)) {
                _c = (32 : stdgo.GoUInt8);
            };
            _unsigned = (_unsigned + ((_c : stdgo.GoInt64)) : stdgo.GoInt64);
            _signed = (_signed + (((_c : stdgo.GoInt8) : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; } = { _0 : _unsigned, _1 : _signed };
            _unsigned = __tmp__._0;
            _signed = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    static public function _setFormat( _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>, _format:stdgo._internal.archive.tar.Tar_Format.Format):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block> = _b;
        if (_format._has((1 : stdgo._internal.archive.tar.Tar_Format.Format))) {} else if (_format._has((8 : stdgo._internal.archive.tar.Tar_Format.Format))) {
            stdgo.Go.copySlice(_b._toGNU()._magic(), ("ustar " : stdgo.GoString));
            stdgo.Go.copySlice(_b._toGNU()._version(), stdgo.Go.str(" ", 0));
        } else if (_format._has((16 : stdgo._internal.archive.tar.Tar_Format.Format))) {
            stdgo.Go.copySlice(_b._toSTAR()._magic(), stdgo.Go.str("ustar", 0));
            stdgo.Go.copySlice(_b._toSTAR()._version(), ("00" : stdgo.GoString));
            stdgo.Go.copySlice(_b._toSTAR()._trailer(), stdgo.Go.str("tar", 0));
        } else if (_format._has((6 : stdgo._internal.archive.tar.Tar_Format.Format))) {
            stdgo.Go.copySlice(_b._toUSTAR()._magic(), stdgo.Go.str("ustar", 0));
            stdgo.Go.copySlice(_b._toUSTAR()._version(), ("00" : stdgo.GoString));
        } else {
            throw stdgo.Go.toInterface(("invalid format" : stdgo.GoString));
        };
        var _f:stdgo._internal.archive.tar.Tar_T_formatter.T_formatter = ({} : stdgo._internal.archive.tar.Tar_T_formatter.T_formatter);
        var _field = _b._toV7()._chksum();
        var __tmp__ = _b._computeChecksum(), _chksum:stdgo.GoInt64 = __tmp__._0, __1:stdgo.GoInt64 = __tmp__._1;
        _f._formatOctal((_field.__slice__(0, (7 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _chksum);
        _field[(7 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
    }
    @:keep
    static public function _getFormat( _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>):stdgo._internal.archive.tar.Tar_Format.Format {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block> = _b;
        var _p:stdgo._internal.archive.tar.Tar_T_parser.T_parser = ({} : stdgo._internal.archive.tar.Tar_T_parser.T_parser);
        var _value = (_p._parseOctal(_b._toV7()._chksum()) : stdgo.GoInt64);
        var __tmp__ = _b._computeChecksum(), _chksum1:stdgo.GoInt64 = __tmp__._0, _chksum2:stdgo.GoInt64 = __tmp__._1;
        if (((_p._err != null) || (((_value != _chksum1) && (_value != _chksum2) : Bool)) : Bool)) {
            return (0 : stdgo._internal.archive.tar.Tar_Format.Format);
        };
        var _magic = ((_b._toUSTAR()._magic() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _version = ((_b._toUSTAR()._version() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _trailer = ((_b._toSTAR()._trailer() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (((_magic == stdgo.Go.str("ustar", 0)) && (_trailer == stdgo.Go.str("tar", 0)) : Bool)) {
            return (16 : stdgo._internal.archive.tar.Tar_Format.Format);
        } else if (_magic == (stdgo.Go.str("ustar", 0))) {
            return (6 : stdgo._internal.archive.tar.Tar_Format.Format);
        } else if (((_magic == ("ustar " : stdgo.GoString)) && (_version == stdgo.Go.str(" ", 0)) : Bool)) {
            return (8 : stdgo._internal.archive.tar.Tar_Format.Format);
        } else {
            return (1 : stdgo._internal.archive.tar.Tar_Format.Format);
        };
    }
    @:keep
    static public function _toSparse( _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>):stdgo._internal.archive.tar.Tar_T_sparseArray.T_sparseArray {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block> = _b;
        return ((_b.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.tar.Tar_T_sparseArray.T_sparseArray);
    }
    @:keep
    static public function _toUSTAR( _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>):stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerUSTAR.T_headerUSTAR> {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block> = _b;
        return (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerUSTAR.T_headerUSTAR>);
    }
    @:keep
    static public function _toSTAR( _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>):stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerSTAR.T_headerSTAR> {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block> = _b;
        return (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerSTAR.T_headerSTAR>);
    }
    @:keep
    static public function _toGNU( _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>):stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerGNU.T_headerGNU> {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block> = _b;
        return (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerGNU.T_headerGNU>);
    }
    @:keep
    static public function _toV7( _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>):stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerV7.T_headerV7> {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block> = _b;
        return (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerV7.T_headerV7>);
    }
}
