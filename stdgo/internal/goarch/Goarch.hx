package stdgo.internal.goarch;
var aMD64 : ArchFamilyType = 0i64;
var aRM : ArchFamilyType = 1i64;
var aRM64 : ArchFamilyType = 2i64;
var i386 : ArchFamilyType = 3i64;
var lOONG64 : ArchFamilyType = 4i64;
var mIPS : ArchFamilyType = 5i64;
var mIPS64 : ArchFamilyType = 6i64;
var pPC64 : ArchFamilyType = 7i64;
var rISCV64 : ArchFamilyType = 8i64;
var s390X : ArchFamilyType = 9i64;
var wASM : ArchFamilyType = 10i64;
var ptrSize : stdgo.GoUInt64 = 4i64;
var archFamily : ArchFamilyType = 10i64;
var bigEndian : Bool = false;
var defaultPhysPageSize : stdgo.GoUInt64 = 65536i64;
var pCQuantum : stdgo.GoUInt64 = 1i64;
var int64Align : stdgo.GoUInt64 = 4i64;
var minFrameSize : stdgo.GoUInt64 = 0i64;
var stackAlign : stdgo.GoUInt64 = 4i64;
var gOARCH : stdgo.GoString = ("wasm" : stdgo.GoString);
var is386 : stdgo.GoUInt64 = 0i64;
var isAmd64 : stdgo.GoUInt64 = 0i64;
var isAmd64p32 : stdgo.GoUInt64 = 0i64;
var isArm : stdgo.GoUInt64 = 0i64;
var isArmbe : stdgo.GoUInt64 = 0i64;
var isArm64 : stdgo.GoUInt64 = 0i64;
var isArm64be : stdgo.GoUInt64 = 0i64;
var isLoong64 : stdgo.GoUInt64 = 0i64;
var isMips : stdgo.GoUInt64 = 0i64;
var isMipsle : stdgo.GoUInt64 = 0i64;
var isMips64 : stdgo.GoUInt64 = 0i64;
var isMips64le : stdgo.GoUInt64 = 0i64;
var isMips64p32 : stdgo.GoUInt64 = 0i64;
var isMips64p32le : stdgo.GoUInt64 = 0i64;
var isPpc : stdgo.GoUInt64 = 0i64;
var isPpc64 : stdgo.GoUInt64 = 0i64;
var isPpc64le : stdgo.GoUInt64 = 0i64;
var isRiscv : stdgo.GoUInt64 = 0i64;
var isRiscv64 : stdgo.GoUInt64 = 0i64;
var isS390 : stdgo.GoUInt64 = 0i64;
var isS390x : stdgo.GoUInt64 = 0i64;
var isSparc : stdgo.GoUInt64 = 0i64;
var isSparc64 : stdgo.GoUInt64 = 0i64;
var isWasm : stdgo.GoUInt64 = 1i64;
typedef ArchFamilyType = stdgo._internal.internal.goarch.Goarch_archfamilytype.ArchFamilyType;
typedef ArchFamilyTypePointer = stdgo._internal.internal.goarch.Goarch_archfamilytypepointer.ArchFamilyTypePointer;
/**
    * package goarch contains GOARCH-specific constants.
**/
class Goarch {

}
