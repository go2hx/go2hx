package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function log(_w:stdgo._internal.io.Io_Writer.Writer, _key:stdgo.GoString, _val:stdgo.GoString):Void {
        var _b = (stdgo.Go.typeAssert((_internal.sync_test.Sync_test__bufPool._bufPool.get() : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        _b.reset();
        _b.writeString(_internal.sync_test.Sync_test__timeNow._timeNow().utc().format(("2006-01-02T15:04:05Z07:00" : stdgo.GoString))?.__copy__());
        _b.writeByte((32 : stdgo.GoUInt8));
        _b.writeString(_key?.__copy__());
        _b.writeByte((61 : stdgo.GoUInt8));
        _b.writeString(_val?.__copy__());
        _w.write(_b.bytes());
        _internal.sync_test.Sync_test__bufPool._bufPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_b)));
    }
