package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
var unreadRuneErrorTests : stdgo.Slice<_internal.bytes_test.Bytes_test_T__struct_17.T__struct_17> = (new stdgo.Slice<_internal.bytes_test.Bytes_test_T__struct_17.T__struct_17>(5, 5, ...[({ _name : ("Read" : stdgo.GoString), _f : function(_r:stdgo.Ref<stdgo._internal.bytes.Bytes_Reader.Reader>):Void {
        _r.read((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
    } } : _internal.bytes_test.Bytes_test_T__struct_17.T__struct_17), ({ _name : ("ReadByte" : stdgo.GoString), _f : function(_r:stdgo.Ref<stdgo._internal.bytes.Bytes_Reader.Reader>):Void {
        _r.readByte();
    } } : _internal.bytes_test.Bytes_test_T__struct_17.T__struct_17), ({ _name : ("UnreadRune" : stdgo.GoString), _f : function(_r:stdgo.Ref<stdgo._internal.bytes.Bytes_Reader.Reader>):Void {
        _r.unreadRune();
    } } : _internal.bytes_test.Bytes_test_T__struct_17.T__struct_17), ({ _name : ("Seek" : stdgo.GoString), _f : function(_r:stdgo.Ref<stdgo._internal.bytes.Bytes_Reader.Reader>):Void {
        _r.seek((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt));
    } } : _internal.bytes_test.Bytes_test_T__struct_17.T__struct_17), ({ _name : ("WriteTo" : stdgo.GoString), _f : function(_r:stdgo.Ref<stdgo._internal.bytes.Bytes_Reader.Reader>):Void {
        _r.writeTo(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_Buffer.Buffer() : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
    } } : _internal.bytes_test.Bytes_test_T__struct_17.T__struct_17)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _f : null } : _internal.bytes_test.Bytes_test_T__struct_17.T__struct_17)])) : stdgo.Slice<_internal.bytes_test.Bytes_test_T__struct_17.T__struct_17>);
