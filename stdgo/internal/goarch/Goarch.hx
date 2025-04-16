package stdgo.internal.goarch;
var aMD64 : ArchFamilyType = 0i32;
var aRM : ArchFamilyType = 1i32;
var aRM64 : ArchFamilyType = 2i32;
var i386 : ArchFamilyType = 3i32;
var lOONG64 : ArchFamilyType = 4i32;
var mIPS : ArchFamilyType = 5i32;
var mIPS64 : ArchFamilyType = 6i32;
var pPC64 : ArchFamilyType = 7i32;
var rISCV64 : ArchFamilyType = 8i32;
var s390X : ArchFamilyType = 9i32;
var wASM : ArchFamilyType = 10i32;
var ptrSize : stdgo.GoUInt64 = 4i32;
var archFamily : ArchFamilyType = 10i32;
var bigEndian : Bool = false;
var defaultPhysPageSize : stdgo.GoUInt64 = 65536i32;
var pCQuantum : stdgo.GoUInt64 = 1i32;
var int64Align : stdgo.GoUInt64 = 4i32;
var minFrameSize : stdgo.GoUInt64 = 0i32;
var stackAlign : stdgo.GoUInt64 = 4i32;
var gOARCH : stdgo.GoString = ("wasm" : stdgo.GoString);
var is386 : stdgo.GoUInt64 = 0i32;
var isAmd64 : stdgo.GoUInt64 = 0i32;
var isAmd64p32 : stdgo.GoUInt64 = 0i32;
var isArm : stdgo.GoUInt64 = 0i32;
var isArmbe : stdgo.GoUInt64 = 0i32;
var isArm64 : stdgo.GoUInt64 = 0i32;
var isArm64be : stdgo.GoUInt64 = 0i32;
var isLoong64 : stdgo.GoUInt64 = 0i32;
var isMips : stdgo.GoUInt64 = 0i32;
var isMipsle : stdgo.GoUInt64 = 0i32;
var isMips64 : stdgo.GoUInt64 = 0i32;
var isMips64le : stdgo.GoUInt64 = 0i32;
var isMips64p32 : stdgo.GoUInt64 = 0i32;
var isMips64p32le : stdgo.GoUInt64 = 0i32;
var isPpc : stdgo.GoUInt64 = 0i32;
var isPpc64 : stdgo.GoUInt64 = 0i32;
var isPpc64le : stdgo.GoUInt64 = 0i32;
var isRiscv : stdgo.GoUInt64 = 0i32;
var isRiscv64 : stdgo.GoUInt64 = 0i32;
var isS390 : stdgo.GoUInt64 = 0i32;
var isS390x : stdgo.GoUInt64 = 0i32;
var isSparc : stdgo.GoUInt64 = 0i32;
var isSparc64 : stdgo.GoUInt64 = 0i32;
var isWasm : stdgo.GoUInt64 = 1i32;
typedef ArchFamilyType = stdgo._internal.internal.goarch.Goarch_archfamilytype.ArchFamilyType;
typedef ArchFamilyTypePointer = stdgo._internal.internal.goarch.Goarch_archfamilytypepointer.ArchFamilyTypePointer;
/**
    * package goarch contains GOARCH-specific constants.
**/
class Goarch {

}
