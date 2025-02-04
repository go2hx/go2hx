package stdgo._internal.runtime.coverage;
function _writeMetaData(_w:stdgo._internal.io.Io_writer.Writer, _metalist:stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablob.CovMetaBlob>, _cmode:stdgo._internal.internal.coverage.Coverage_countermode.CounterMode, _gran:stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity, _finalHash:stdgo.GoArray<stdgo.GoUInt8>):stdgo.Error {
        var _mfw = stdgo._internal.internal.coverage.encodemeta.Encodemeta_newcoveragemetafilewriter.newCoverageMetaFileWriter(("<io.Writer>" : stdgo.GoString), _w);
        var _sd:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _bufHdr = ((stdgo.Go.toInterface((stdgo.Go.setRef(_sd) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_sliceheader.SliceHeader", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "len", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "cap", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.reflect.Reflect_sliceheader.SliceHeader>);
        var _blobs:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        for (__0 => _e in _metalist) {
            (@:checkr _bufHdr ?? throw "null pointer dereference").data = (new stdgo.GoUIntptr((stdgo.Go.toInterface(_e.p) : stdgo._internal.unsafe.Unsafe.UnsafePointer)) : stdgo.GoUIntptr);
            (@:checkr _bufHdr ?? throw "null pointer dereference").len = (_e.len : stdgo.GoInt);
            (@:checkr _bufHdr ?? throw "null pointer dereference").cap = (_e.len : stdgo.GoInt);
            _blobs = (_blobs.__append__(_sd));
        };
        return @:check2r _mfw.write(_finalHash?.__copy__(), _blobs, _cmode, _gran);
    }
