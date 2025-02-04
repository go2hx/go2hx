package stdgo._internal.internal.coverage.encodemeta;
function newCoverageMetaDataBuilder(_pkgpath:stdgo.GoString, _pkgname:stdgo.GoString, _modulepath:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder>; var _1 : stdgo.Error; } {
        if (_pkgpath == ((stdgo.Go.str() : stdgo.GoString))) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid empty package path" : stdgo.GoString)) };
        };
        var _x = (stdgo.Go.setRef(({ _tmp : (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (256 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _h : stdgo._internal.crypto.md5.Md5_new_.new_() } : stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder)) : stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder>);
        @:check2 (@:checkr _x ?? throw "null pointer dereference")._stab.initWriter();
        @:check2 (@:checkr _x ?? throw "null pointer dereference")._stab.lookup((stdgo.Go.str() : stdgo.GoString)?.__copy__());
        (@:checkr _x ?? throw "null pointer dereference")._pkgpath = @:check2 (@:checkr _x ?? throw "null pointer dereference")._stab.lookup(_pkgpath?.__copy__());
        (@:checkr _x ?? throw "null pointer dereference")._pkgname = @:check2 (@:checkr _x ?? throw "null pointer dereference")._stab.lookup(_pkgname?.__copy__());
        (@:checkr _x ?? throw "null pointer dereference")._modpath = @:check2 (@:checkr _x ?? throw "null pointer dereference")._stab.lookup(_modulepath?.__copy__());
        stdgo._internal.io.Io_writestring.writeString((@:checkr _x ?? throw "null pointer dereference")._h, _pkgpath?.__copy__());
        stdgo._internal.io.Io_writestring.writeString((@:checkr _x ?? throw "null pointer dereference")._h, _pkgname?.__copy__());
        stdgo._internal.io.Io_writestring.writeString((@:checkr _x ?? throw "null pointer dereference")._h, _modulepath?.__copy__());
        return { _0 : _x, _1 : (null : stdgo.Error) };
    }
