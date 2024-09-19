package stdgo._internal.encoding.gob;
function testIgnoreRecursiveType(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data = (new stdgo.Slice<stdgo.GoUInt8>(38, 38, ...[
(29 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(211 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(114 : stdgo.GoUInt8),
(101 : stdgo.GoUInt8),
(99 : stdgo.GoUInt8),
(117 : stdgo.GoUInt8),
(114 : stdgo.GoUInt8),
(115 : stdgo.GoUInt8),
(105 : stdgo.GoUInt8),
(118 : stdgo.GoUInt8),
(101 : stdgo.GoUInt8),
(83 : stdgo.GoUInt8),
(108 : stdgo.GoUInt8),
(105 : stdgo.GoUInt8),
(99 : stdgo.GoUInt8),
(101 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(212 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(212 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(212 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_data)));
        var _err = (_dec.decode((null : stdgo.AnyInterface)) : stdgo.Error);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
    }