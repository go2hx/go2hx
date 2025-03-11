package stdgo._internal.internal.pkgbits;
@:keep @:allow(stdgo._internal.internal.pkgbits.Pkgbits.PkgEncoder_asInterface) class PkgEncoder_static_extension {
    @:keep
    @:tdfield
    static public function newEncoderRaw( _pw:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgencoder.PkgEncoder>, _k:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind):stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder {
        @:recv var _pw:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgencoder.PkgEncoder> = _pw;
        var _idx = ((@:checkr _pw ?? throw "null pointer dereference")._elems[(_k : stdgo.GoInt)].length : stdgo._internal.internal.pkgbits.Pkgbits_index.Index);
        (@:checkr _pw ?? throw "null pointer dereference")._elems[(_k : stdgo.GoInt)] = ((@:checkr _pw ?? throw "null pointer dereference")._elems[(_k : stdgo.GoInt)].__append__((stdgo.Go.str() : stdgo.GoString)?.__copy__()));
        return ({ _p : _pw, _k : _k, idx : _idx } : stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder);
    }
    @:keep
    @:tdfield
    static public function newEncoder( _pw:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgencoder.PkgEncoder>, _k:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _marker:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder {
        @:recv var _pw:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgencoder.PkgEncoder> = _pw;
        var _e = (@:check2r _pw.newEncoderRaw(_k)?.__copy__() : stdgo._internal.internal.pkgbits.Pkgbits_encoder.Encoder);
        @:check2 _e.sync(_marker);
        return _e?.__copy__();
    }
    @:keep
    @:tdfield
    static public function stringIdx( _pw:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgencoder.PkgEncoder>, _s:stdgo.GoString):stdgo._internal.internal.pkgbits.Pkgbits_index.Index {
        @:recv var _pw:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgencoder.PkgEncoder> = _pw;
        {
            var __tmp__ = ((@:checkr _pw ?? throw "null pointer dereference")._stringsIdx != null && (@:checkr _pw ?? throw "null pointer dereference")._stringsIdx.__exists__(_s?.__copy__()) ? { _0 : (@:checkr _pw ?? throw "null pointer dereference")._stringsIdx[_s?.__copy__()], _1 : true } : { _0 : ((0 : stdgo.GoInt32) : stdgo._internal.internal.pkgbits.Pkgbits_index.Index), _1 : false }), _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                stdgo._internal.internal.pkgbits.Pkgbits__assert._assert((@:checkr _pw ?? throw "null pointer dereference")._elems[((0 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind) : stdgo.GoInt)][(_idx : stdgo.GoInt)] == (_s));
                return _idx;
            };
        };
        var _idx = ((@:checkr _pw ?? throw "null pointer dereference")._elems[((0 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind) : stdgo.GoInt)].length : stdgo._internal.internal.pkgbits.Pkgbits_index.Index);
        (@:checkr _pw ?? throw "null pointer dereference")._elems[((0 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind) : stdgo.GoInt)] = ((@:checkr _pw ?? throw "null pointer dereference")._elems[((0 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind) : stdgo.GoInt)].__append__(_s?.__copy__()));
        (@:checkr _pw ?? throw "null pointer dereference")._stringsIdx[_s] = _idx;
        return _idx;
    }
    @:keep
    @:tdfield
    static public function dumpTo( _pw:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgencoder.PkgEncoder>, _out0:stdgo._internal.io.Io_writer.Writer):stdgo.GoArray<stdgo.GoUInt8> {
        @:recv var _pw:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgencoder.PkgEncoder> = _pw;
        var _fingerprint = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
        var _h = (stdgo._internal.crypto.md5.Md5_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        var _out = (stdgo._internal.io.Io_multiwriter.multiWriter(_out0, _h) : stdgo._internal.io.Io_writer.Writer);
        var _writeUint32 = (function(_x:stdgo.GoUInt32):Void {
            stdgo._internal.internal.pkgbits.Pkgbits__assert._assert(stdgo._internal.encoding.binary.Binary_write.write(_out, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(_x)) == null);
        } : stdgo.GoUInt32 -> Void);
        _writeUint32((1u32 : stdgo.GoUInt32));
        var _flags:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        if (@:check2r _pw.syncMarkers()) {
            _flags = (_flags | ((1u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        _writeUint32(_flags);
        var _sum:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        for (__2 => _elems in (stdgo.Go.setRef((@:checkr _pw ?? throw "null pointer dereference")._elems) : stdgo.Ref<stdgo.GoArray<stdgo.Slice<stdgo.GoString>>>)) {
            _sum = (_sum + ((_elems.length : stdgo.GoUInt32)) : stdgo.GoUInt32);
            _writeUint32(_sum);
        };
        _sum = (0u32 : stdgo.GoUInt32);
        for (__3 => _elems in (stdgo.Go.setRef((@:checkr _pw ?? throw "null pointer dereference")._elems) : stdgo.Ref<stdgo.GoArray<stdgo.Slice<stdgo.GoString>>>)) {
            for (__4 => _elem in _elems) {
                _sum = (_sum + ((_elem.length : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _writeUint32(_sum);
            };
        };
        for (__4 => _elems in (stdgo.Go.setRef((@:checkr _pw ?? throw "null pointer dereference")._elems) : stdgo.Ref<stdgo.GoArray<stdgo.Slice<stdgo.GoString>>>)) {
            for (__5 => _elem in _elems) {
                var __tmp__ = stdgo._internal.io.Io_writestring.writeString(_out, _elem?.__copy__()), __6:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                stdgo._internal.internal.pkgbits.Pkgbits__assert._assert(_err == null);
            };
        };
        (_fingerprint.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_h.sum((null : stdgo.Slice<stdgo.GoUInt8>)));
        var __tmp__ = _out0.write((_fingerprint.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __5:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        stdgo._internal.internal.pkgbits.Pkgbits__assert._assert(_err == null);
        return _fingerprint;
    }
    @:keep
    @:tdfield
    static public function syncMarkers( _pw:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgencoder.PkgEncoder>):Bool {
        @:recv var _pw:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_pkgencoder.PkgEncoder> = _pw;
        return ((@:checkr _pw ?? throw "null pointer dereference")._syncFrames >= (0 : stdgo.GoInt) : Bool);
    }
}
