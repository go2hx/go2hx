# Module: `stdgo.internal.goarch`

[(view library index)](../../stdgo.md)


# Overview


package goarch contains GOARCH\-specific constants. 


# Index


- [Constants](<#constants>)

- [typedef ArchFamilyType](<#typedef-archfamilytype>)

# Constants


```haxe
import stdgo.internal.goarch.Goarch
```


```haxe
final amd64:stdgo.internal.goarch.ArchFamilyType = ((((0 : GoInt)) : ArchFamilyType))
```


```haxe
final archFamily:stdgo.internal.goarch.ArchFamilyType = ((((0 : GoInt)) : ArchFamilyType))
```


ArchFamily is the architecture family \(AMD64, ARM, ...\) 


```haxe
final arm:stdgo.internal.goarch.ArchFamilyType = ((((0 : GoInt)) : ArchFamilyType))
```


```haxe
final arm64:stdgo.internal.goarch.ArchFamilyType = ((((0 : GoInt)) : ArchFamilyType))
```


```haxe
final bigEndian:stdgo.InvalidType = null
```


BigEndian reports whether the architecture is big\-endian. 


```haxe
final defaultPhysPageSize:stdgo.GoUInt64 = ((0 : GoUInt64))
```


DefaultPhysPageSize is the default physical page size. 


```haxe
final goarch:stdgo.GoString = (("" : GoString))
```


```haxe
final i386:stdgo.internal.goarch.ArchFamilyType = ((((0 : GoInt)) : ArchFamilyType))
```


```haxe
final int64Align:stdgo.GoUInt64 = ((0 : GoUInt64))
```


Int64Align is the required alignment for a 64\-bit integer \(4 on 32\-bit systems, 8 on 64\-bit\). 


```haxe
final is386:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final isAmd64:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final isAmd64p32:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final isArm:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final isArm64:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final isArm64be:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final isArmbe:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final isLoong64:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final isMips:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final isMips64:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final isMips64le:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final isMips64p32:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final isMips64p32le:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final isMipsle:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final isPpc:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final isPpc64:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final isPpc64le:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final isRiscv:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final isRiscv64:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final isS390:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final isS390x:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final isSparc:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final isSparc64:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final isWasm:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final loong64:stdgo.internal.goarch.ArchFamilyType = ((((0 : GoInt)) : ArchFamilyType))
```


```haxe
final minFrameSize:stdgo.GoUInt64 = ((0 : GoUInt64))
```


MinFrameSize is the size of the system\-reserved words at the bottom of a frame \(just above the architectural stack pointer\). It is zero on x86 and PtrSize on most non\-x86 \(LR\-based\) systems. On PowerPC it is larger, to cover three more reserved words: the compiler word, the link editor word, and the TOC save word. 


```haxe
final mips:stdgo.internal.goarch.ArchFamilyType = ((((0 : GoInt)) : ArchFamilyType))
```


```haxe
final mips64:stdgo.internal.goarch.ArchFamilyType = ((((0 : GoInt)) : ArchFamilyType))
```


```haxe
final pcquantum:stdgo.GoUInt64 = ((0 : GoUInt64))
```


PCQuantum is the minimal unit for a program counter \(1 on x86, 4 on most other systems\). The various PC tables record PC deltas pre\-divided by PCQuantum. 


```haxe
final ppc64:stdgo.internal.goarch.ArchFamilyType = ((((0 : GoInt)) : ArchFamilyType))
```


```haxe
final ptrSize:stdgo.GoUInt64 = ((0 : GoUInt64))
```


PtrSize is the size of a pointer in bytes \- unsafe.Sizeof\(uintptr\(0\)\) but as an ideal constant. It is also the size of the machine's native word size \(that is, 4 on 32\-bit systems, 8 on 64\-bit\). 


```haxe
final riscv64:stdgo.internal.goarch.ArchFamilyType = ((((0 : GoInt)) : ArchFamilyType))
```


```haxe
final s390x:stdgo.internal.goarch.ArchFamilyType = ((((0 : GoInt)) : ArchFamilyType))
```


```haxe
final stackAlign:stdgo.GoUInt64 = ((0 : GoUInt64))
```


StackAlign is the required alignment of the SP register. The stack must be at least word aligned, but some architectures require more. 


```haxe
final wasm:stdgo.internal.goarch.ArchFamilyType = ((((0 : GoInt)) : ArchFamilyType))
```


# Typedefs


```haxe
import stdgo.internal.goarch.*
```


## typedef ArchFamilyType


```haxe
typedef ArchFamilyType = var t:{<>}
```


 


