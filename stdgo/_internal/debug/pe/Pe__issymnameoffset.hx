package stdgo._internal.debug.pe;
function _isSymNameOffset(_name:stdgo.GoArray<stdgo.GoUInt8>):{ var _0 : Bool; var _1 : stdgo.GoUInt32; } {
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/symbol.go#L100"
        if ((((_name[(0 : stdgo.GoInt)] == ((0 : stdgo.GoUInt8)) && _name[(1 : stdgo.GoInt)] == ((0 : stdgo.GoUInt8)) : Bool) && _name[(2 : stdgo.GoInt)] == ((0 : stdgo.GoUInt8)) : Bool) && (_name[(3 : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/symbol.go#L101"
            return { _0 : true, _1 : stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_name.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/symbol.go#L103"
        return { _0 : false, _1 : (0u32 : stdgo.GoUInt32) };
    }
