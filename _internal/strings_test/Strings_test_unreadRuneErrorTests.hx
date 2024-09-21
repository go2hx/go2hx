package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
var unreadRuneErrorTests : stdgo.Slice<_internal.strings_test.Strings_test_T__struct_20.T__struct_20> = (new stdgo.Slice<_internal.strings_test.Strings_test_T__struct_20.T__struct_20>(5, 5, ...[({ _name : ("Read" : stdgo.GoString), _f : function(_r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>):Void {
        _r.read((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
    } } : _internal.strings_test.Strings_test_T__struct_20.T__struct_20), ({ _name : ("ReadByte" : stdgo.GoString), _f : function(_r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>):Void {
        _r.readByte();
    } } : _internal.strings_test.Strings_test_T__struct_20.T__struct_20), ({ _name : ("UnreadRune" : stdgo.GoString), _f : function(_r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>):Void {
        _r.unreadRune();
    } } : _internal.strings_test.Strings_test_T__struct_20.T__struct_20), ({ _name : ("Seek" : stdgo.GoString), _f : function(_r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>):Void {
        _r.seek((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt));
    } } : _internal.strings_test.Strings_test_T__struct_20.T__struct_20), ({ _name : ("WriteTo" : stdgo.GoString), _f : function(_r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>):Void {
        _r.writeTo(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_Buffer.Buffer() : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
    } } : _internal.strings_test.Strings_test_T__struct_20.T__struct_20)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _f : null } : _internal.strings_test.Strings_test_T__struct_20.T__struct_20)])) : stdgo.Slice<_internal.strings_test.Strings_test_T__struct_20.T__struct_20>);
