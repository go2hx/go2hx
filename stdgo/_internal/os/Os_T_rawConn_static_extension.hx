package stdgo._internal.os;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.os.Os.T_rawConn_asInterface) class T_rawConn_static_extension {
    @:keep
    static public function write( _c:stdgo.Ref<stdgo._internal.os.Os_T_rawConn.T_rawConn>, _f:stdgo.GoUIntptr -> Bool):stdgo.Error throw "T_rawConn:os.write is not yet implemented";
    @:keep
    static public function read( _c:stdgo.Ref<stdgo._internal.os.Os_T_rawConn.T_rawConn>, _f:stdgo.GoUIntptr -> Bool):stdgo.Error throw "T_rawConn:os.read is not yet implemented";
    @:keep
    static public function control( _c:stdgo.Ref<stdgo._internal.os.Os_T_rawConn.T_rawConn>, _f:stdgo.GoUIntptr -> Void):stdgo.Error throw "T_rawConn:os.control is not yet implemented";
}