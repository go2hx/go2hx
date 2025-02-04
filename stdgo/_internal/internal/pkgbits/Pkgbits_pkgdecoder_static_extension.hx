package stdgo._internal.internal.pkgbits;
@:keep @:allow(stdgo._internal.internal.pkgbits.Pkgbits.PkgDecoder_asInterface) class PkgDecoder_static_extension {
    @:keep
    @:tdfield
    static public function peekObj( _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder>, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo._internal.internal.pkgbits.Pkgbits_codeobj.CodeObj; } {
        @:recv var _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder> = _pr;
        var _ridx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index = ((0 : stdgo.GoInt32) : stdgo._internal.internal.pkgbits.Pkgbits_index.Index);
        var _name:stdgo.GoString = ("" : stdgo.GoString);
        var _rcode:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _r = (@:check2r _pr.tempDecoder((4 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind), _idx, (15 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker))?.__copy__() : stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder);
            @:check2 _r.sync((26 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
            @:check2 _r.sync((16 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
            _ridx = @:check2 _r.reloc((3 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind));
            _name = (@:check2 _r.string() : stdgo.GoString)?.__copy__();
            _rcode = @:check2 _r.code((25 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
            @:check2r _pr.retireDecoder((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>));
        };
        var _path = (@:check2r _pr.peekPkgPath(_ridx)?.__copy__() : stdgo.GoString);
        stdgo._internal.internal.pkgbits.Pkgbits__assert._assert(_name != ((stdgo.Go.str() : stdgo.GoString)));
        var _tag = (_rcode : stdgo._internal.internal.pkgbits.Pkgbits_codeobj.CodeObj);
        return { _0 : _path?.__copy__(), _1 : _name?.__copy__(), _2 : _tag };
    }
    @:keep
    @:tdfield
    static public function peekPkgPath( _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder>, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo.GoString {
        @:recv var _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder> = _pr;
        var _path:stdgo.GoString = ("" : stdgo.GoString);
        {
            var _r = (@:check2r _pr.tempDecoder((3 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind), _idx, (17 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker))?.__copy__() : stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder);
            _path = (@:check2 _r.string() : stdgo.GoString)?.__copy__();
            @:check2r _pr.retireDecoder((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>));
        };
        if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
            _path = (@:checkr _pr ?? throw "null pointer dereference")._pkgPath?.__copy__();
        };
        return _path?.__copy__();
    }
    @:keep
    @:tdfield
    static public function tempDecoderRaw( _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder>, _k:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder {
        @:recv var _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder> = _pr;
        var _r = ({ _common : _pr, _k : _k, idx : _idx } : stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder);
        @:check2 _r.data.reset(@:check2r _pr.dataIdx(_k, _idx)?.__copy__());
        @:check2 _r.sync((8 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        var _l = (@:check2 _r.len() : stdgo.GoInt);
        if (((@:checkr _pr ?? throw "null pointer dereference")._scratchRelocEnt.capacity >= _l : Bool)) {
            _r.relocs = ((@:checkr _pr ?? throw "null pointer dereference")._scratchRelocEnt.__slice__(0, _l) : stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt>);
            (@:checkr _pr ?? throw "null pointer dereference")._scratchRelocEnt = (null : stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt>);
        } else {
            _r.relocs = (new stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt>((_l : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_l : stdgo.GoInt).toBasic() > 0 ? (_l : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt)]) : stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt>);
        };
        for (_i => _ in _r.relocs) {
            @:check2 _r.sync((9 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
            _r.relocs[(_i : stdgo.GoInt)] = (new stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt((@:check2 _r.len() : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind), (@:check2 _r.len() : stdgo._internal.internal.pkgbits.Pkgbits_index.Index)) : stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt);
        };
        return _r?.__copy__();
    }
    @:keep
    @:tdfield
    static public function newDecoderRaw( _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder>, _k:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder {
        @:recv var _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder> = _pr;
        var _r = ({ _common : _pr, _k : _k, idx : _idx } : stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder);
        @:check2 _r.data.reset(@:check2r _pr.dataIdx(_k, _idx)?.__copy__());
        @:check2 _r.sync((8 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        _r.relocs = (new stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt>((@:check2 _r.len() : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((@:check2 _r.len() : stdgo.GoInt).toBasic() > 0 ? (@:check2 _r.len() : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt)]) : stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt>);
        for (_i => _ in _r.relocs) {
            @:check2 _r.sync((9 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
            _r.relocs[(_i : stdgo.GoInt)] = (new stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt((@:check2 _r.len() : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind), (@:check2 _r.len() : stdgo._internal.internal.pkgbits.Pkgbits_index.Index)) : stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt);
        };
        return _r?.__copy__();
    }
    @:keep
    @:tdfield
    static public function retireDecoder( _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder>, _d:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>):Void {
        @:recv var _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder> = _pr;
        (@:checkr _pr ?? throw "null pointer dereference")._scratchRelocEnt = (@:checkr _d ?? throw "null pointer dereference").relocs;
        (@:checkr _d ?? throw "null pointer dereference").relocs = (null : stdgo.Slice<stdgo._internal.internal.pkgbits.Pkgbits_relocent.RelocEnt>);
    }
    @:keep
    @:tdfield
    static public function tempDecoder( _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder>, _k:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index, _marker:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder {
        @:recv var _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder> = _pr;
        var _r = (@:check2r _pr.tempDecoderRaw(_k, _idx)?.__copy__() : stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder);
        @:check2 _r.sync(_marker);
        return _r?.__copy__();
    }
    @:keep
    @:tdfield
    static public function newDecoder( _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder>, _k:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index, _marker:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder {
        @:recv var _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder> = _pr;
        var _r = (@:check2r _pr.newDecoderRaw(_k, _idx)?.__copy__() : stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder);
        @:check2 _r.sync(_marker);
        return _r?.__copy__();
    }
    @:keep
    @:tdfield
    static public function stringIdx( _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder>, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo.GoString {
        @:recv var _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder> = _pr;
        return @:check2r _pr.dataIdx((0 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind), _idx)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function dataIdx( _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder>, _k:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo.GoString {
        @:recv var _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder> = _pr;
        var _absIdx = (@:check2r _pr.absIdx(_k, _idx) : stdgo.GoInt);
        var _start:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        if ((_absIdx > (0 : stdgo.GoInt) : Bool)) {
            _start = (@:checkr _pr ?? throw "null pointer dereference")._elemEnds[(_absIdx - (1 : stdgo.GoInt) : stdgo.GoInt)];
        };
        var _end = ((@:checkr _pr ?? throw "null pointer dereference")._elemEnds[(_absIdx : stdgo.GoInt)] : stdgo.GoUInt32);
        return ((@:checkr _pr ?? throw "null pointer dereference")._elemData.__slice__(_start, _end) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function absIdx( _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder>, _k:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo.GoInt {
        @:recv var _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder> = _pr;
        var _absIdx = (_idx : stdgo.GoInt);
        if ((_k > (0 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind) : Bool)) {
            _absIdx = (_absIdx + (((@:checkr _pr ?? throw "null pointer dereference")._elemEndsEnds[((_k - (1 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind) : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind) : stdgo.GoInt)] : stdgo.GoInt)) : stdgo.GoInt);
        };
        if ((_absIdx >= ((@:checkr _pr ?? throw "null pointer dereference")._elemEndsEnds[(_k : stdgo.GoInt)] : stdgo.GoInt) : Bool)) {
            stdgo._internal.internal.pkgbits.Pkgbits__errorf._errorf(("%v:%v is out of bounds; %v" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_idx), stdgo.Go.toInterface((@:checkr _pr ?? throw "null pointer dereference")._elemEndsEnds));
        };
        return _absIdx;
    }
    @:keep
    @:tdfield
    static public function fingerprint( _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder>):stdgo.GoArray<stdgo.GoUInt8> {
        @:recv var _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder> = _pr;
        var _fp:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
        (_fp.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _pr ?? throw "null pointer dereference")._elemData.__slice__((((@:checkr _pr ?? throw "null pointer dereference")._elemData.length) - (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString));
        return _fp?.__copy__();
    }
    @:keep
    @:tdfield
    static public function totalElems( _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder>):stdgo.GoInt {
        @:recv var _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder> = _pr;
        return ((@:checkr _pr ?? throw "null pointer dereference")._elemEnds.length);
    }
    @:keep
    @:tdfield
    static public function numElems( _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder>, _k:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind):stdgo.GoInt {
        @:recv var _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder> = _pr;
        var _count = ((@:checkr _pr ?? throw "null pointer dereference")._elemEndsEnds[(_k : stdgo.GoInt)] : stdgo.GoInt);
        if ((_k > (0 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind) : Bool)) {
            _count = (_count - (((@:checkr _pr ?? throw "null pointer dereference")._elemEndsEnds[((_k - (1 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind) : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind) : stdgo.GoInt)] : stdgo.GoInt)) : stdgo.GoInt);
        };
        return _count;
    }
    @:keep
    @:tdfield
    static public function syncMarkers( _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder>):Bool {
        @:recv var _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder> = _pr;
        return (@:checkr _pr ?? throw "null pointer dereference")._sync;
    }
    @:keep
    @:tdfield
    static public function pkgPath( _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder>):stdgo.GoString {
        @:recv var _pr:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder> = _pr;
        return (@:checkr _pr ?? throw "null pointer dereference")._pkgPath?.__copy__();
    }
}
