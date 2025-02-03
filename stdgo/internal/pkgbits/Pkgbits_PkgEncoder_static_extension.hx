package stdgo.internal.pkgbits;
class PkgEncoder_static_extension {
    static public function newEncoderRaw(_pw:PkgEncoder, _k:RelocKind):Encoder {
        final _pw = (_pw : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgEncoder.PkgEncoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_PkgEncoder_static_extension.PkgEncoder_static_extension.newEncoderRaw(_pw, _k);
    }
    static public function newEncoder(_pw:PkgEncoder, _k:RelocKind, _marker:SyncMarker):Encoder {
        final _pw = (_pw : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgEncoder.PkgEncoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_PkgEncoder_static_extension.PkgEncoder_static_extension.newEncoder(_pw, _k, _marker);
    }
    static public function stringIdx(_pw:PkgEncoder, _s:String):Index {
        final _pw = (_pw : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgEncoder.PkgEncoder>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.internal.pkgbits.Pkgbits_PkgEncoder_static_extension.PkgEncoder_static_extension.stringIdx(_pw, _s);
    }
    static public function dumpTo(_pw:PkgEncoder, _out0:stdgo._internal.io.Io_Writer.Writer):haxe.ds.Vector<std.UInt> {
        final _pw = (_pw : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgEncoder.PkgEncoder>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.internal.pkgbits.Pkgbits_PkgEncoder_static_extension.PkgEncoder_static_extension.dumpTo(_pw, _out0)) i]);
    }
    static public function syncMarkers(_pw:PkgEncoder):Bool {
        final _pw = (_pw : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgEncoder.PkgEncoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_PkgEncoder_static_extension.PkgEncoder_static_extension.syncMarkers(_pw);
    }
}
