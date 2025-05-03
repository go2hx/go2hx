package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T_block_asInterface) class T_block_static_extension {
    @:keep
    @:tdfield
    static public function _reset( _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block> = _b;
        (_b : stdgo._internal.archive.tar.Tar_t_block.T_block).__setData__((new stdgo.GoArray<stdgo.GoUInt8>(512, 512, ...[]).__setNumber32__() : stdgo._internal.archive.tar.Tar_t_block.T_block)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _computeChecksum( _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block> = _b;
        var _unsigned = (0 : stdgo.GoInt64), _signed = (0 : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L232"
        for (_i => _c in _b) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L233"
            if ((((148 : stdgo.GoInt) <= _i : Bool) && (_i < (156 : stdgo.GoInt) : Bool) : Bool)) {
                _c = (32 : stdgo.GoUInt8);
            };
            _unsigned = (_unsigned + ((_c : stdgo.GoInt64)) : stdgo.GoInt64);
            _signed = (_signed + (((_c : stdgo.GoInt8) : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L239"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; } = { _0 : _unsigned, _1 : _signed };
            _unsigned = __tmp__._0;
            _signed = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _setFormat( _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>, _format:stdgo._internal.archive.tar.Tar_format.Format):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block> = _b;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L201"
        if (_format._has((1 : stdgo._internal.archive.tar.Tar_format.Format))) {} else if (_format._has((8 : stdgo._internal.archive.tar.Tar_format.Format))) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L205"
            _b._toGNU()._magic().__copyTo__(("ustar " : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L206"
            _b._toGNU()._version().__copyTo__((stdgo.Go.str(" ", 0) : stdgo.GoString));
        } else if (_format._has((16 : stdgo._internal.archive.tar.Tar_format.Format))) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L208"
            _b._toSTAR()._magic().__copyTo__((stdgo.Go.str("ustar", 0) : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L209"
            _b._toSTAR()._version().__copyTo__(("00" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L210"
            _b._toSTAR()._trailer().__copyTo__((stdgo.Go.str("tar", 0) : stdgo.GoString));
        } else if (_format._has((6 : stdgo._internal.archive.tar.Tar_format.Format))) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L212"
            _b._toUSTAR()._magic().__copyTo__((stdgo.Go.str("ustar", 0) : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L213"
            _b._toUSTAR()._version().__copyTo__(("00" : stdgo.GoString));
        } else {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L215"
            throw stdgo.Go.toInterface(("invalid format" : stdgo.GoString));
        };
        var _f:stdgo._internal.archive.tar.Tar_t_formatter.T_formatter = ({} : stdgo._internal.archive.tar.Tar_t_formatter.T_formatter);
        var _field = _b._toV7()._chksum();
        var __tmp__ = _b._computeChecksum(), _chksum:stdgo.GoInt64 = __tmp__._0, __1:stdgo.GoInt64 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L223"
        _f._formatOctal((_field.__slice__(0, (7 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _chksum);
        _field[(7 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function _getFormat( _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>):stdgo._internal.archive.tar.Tar_format.Format {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block> = _b;
        var _p:stdgo._internal.archive.tar.Tar_t_parser.T_parser = ({} : stdgo._internal.archive.tar.Tar_t_parser.T_parser);
        var _value = (_p._parseOctal(_b._toV7()._chksum()) : stdgo.GoInt64);
        var __tmp__ = _b._computeChecksum(), _chksum1:stdgo.GoInt64 = __tmp__._0, _chksum2:stdgo.GoInt64 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L177"
        if (((_p._err != null) || (((_value != _chksum1) && (_value != _chksum2) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L178"
            return (0 : stdgo._internal.archive.tar.Tar_format.Format);
        };
        var _magic = ((_b._toUSTAR()._magic() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _version = ((_b._toUSTAR()._version() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _trailer = ((_b._toSTAR()._trailer() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L185"
        if (((_magic == (stdgo.Go.str("ustar", 0) : stdgo.GoString)) && (_trailer == (stdgo.Go.str("tar", 0) : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L187"
            return (16 : stdgo._internal.archive.tar.Tar_format.Format);
        } else if (_magic == ((stdgo.Go.str("ustar", 0) : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L189"
            return (6 : stdgo._internal.archive.tar.Tar_format.Format);
        } else if (((_magic == ("ustar " : stdgo.GoString)) && (_version == (stdgo.Go.str(" ", 0) : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L191"
            return (8 : stdgo._internal.archive.tar.Tar_format.Format);
        } else {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L193"
            return (1 : stdgo._internal.archive.tar.Tar_format.Format);
        };
    }
    @:keep
    @:tdfield
    static public function _toSparse( _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>):stdgo._internal.archive.tar.Tar_t_sparsearray.T_sparseArray {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block> = _b;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L167"
        return ((_b.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.tar.Tar_t_sparsearray.T_sparseArray);
    }
    @:keep
    @:tdfield
    static public function _toUSTAR( _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>):stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR> {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block> = _b;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L166"
        return (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR>);
    }
    @:keep
    @:tdfield
    static public function _toSTAR( _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>):stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerstar.T_headerSTAR> {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block> = _b;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L165"
        return (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerstar.T_headerSTAR>);
    }
    @:keep
    @:tdfield
    static public function _toGNU( _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>):stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU> {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block> = _b;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L164"
        return (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU>);
    }
    @:keep
    @:tdfield
    static public function _toV7( _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>):stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerv7.T_headerV7> {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block> = _b;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L163"
        return (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerv7.T_headerV7>);
    }
}
