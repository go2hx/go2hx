package stdgo._internal.encoding.base32;
function testDecoderIssue4779(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _encoded = (("JRXXEZLNEBUXA43VNUQGI33MN5ZCA43JOQQGC3LFOQWCAY3PNZZWKY3UMV2HK4\nRAMFSGS4DJONUWG2LOM4QGK3DJOQWCA43FMQQGI3YKMVUXK43NN5SCA5DFNVYG64RANFXGG2LENFSH\nK3TUEB2XIIDMMFRG64TFEBSXIIDEN5WG64TFEBWWCZ3OMEQGC3DJOF2WCLRAKV2CAZLONFWQUYLEEB\nWWS3TJNUQHMZLONFQW2LBAOF2WS4ZANZXXG5DSOVSCAZLYMVZGG2LUMF2GS33OEB2WY3DBNVRW6IDM\nMFRG64TJOMQG42LTNEQHK5AKMFWGS4LVNFYCAZLYEBSWCIDDN5WW233EN4QGG33OONSXC5LBOQXCAR\nDVNFZSAYLVORSSA2LSOVZGKIDEN5WG64RANFXAU4TFOBZGK2DFNZSGK4TJOQQGS3RAOZXWY5LQORQX\nIZJAOZSWY2LUEBSXG43FEBRWS3DMOVWSAZDPNRXXEZJAMV2SAZTVM5UWC5BANZ2WY3DBBJYGC4TJMF\n2HK4ROEBCXQY3FOB2GK5LSEBZWS3TUEBXWGY3BMVRWC5BAMN2XA2LEMF2GC5BANZXW4IDQOJXWSZDF\nNZ2CYIDTOVXHIIDJNYFGG5LMOBQSA4LVNEQG6ZTGNFRWSYJAMRSXGZLSOVXHIIDNN5WGY2LUEBQW42\nLNEBUWIIDFON2CA3DBMJXXE5LNFY==\n====" : stdgo.GoString) : stdgo.GoString);
        var _encodedShort = (stdgo._internal.strings.Strings_replaceall.replaceAll(_encoded?.__copy__(), ("\n" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
        var _dec = (stdgo._internal.encoding.base32.Base32_newdecoder.newDecoder(stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding, stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(_encoded?.__copy__()))) : stdgo._internal.io.Io_reader.Reader);
        var __tmp__ = stdgo._internal.io.Io_readall.readAll(_dec), _res1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.errorf(("ReadAll failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _dec = stdgo._internal.encoding.base32.Base32_newdecoder.newDecoder(stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding, stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(_encodedShort?.__copy__())));
        var _res2:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.io.Io_readall.readAll(_dec);
            _res2 = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            @:check2r _t.errorf(("ReadAll failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.bytes.Bytes_equal.equal(_res1, _res2)) {
            @:check2r _t.error(stdgo.Go.toInterface(("Decoded results not equal" : stdgo.GoString)));
        };
    }
