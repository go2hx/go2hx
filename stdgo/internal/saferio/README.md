# Module: `stdgo.internal.saferio`

[(view library index)](../../stdgo.md)


# Overview


Package saferio provides I/O functions that avoid allocating large  
amounts of memory unnecessarily. This is intended for packages that  
read data from an \[io.Reader\] where the size is part of the input  
data but the input may be corrupt, or may be provided by an  
untrustworthy attacker.  



# Index


- [`function readData(_r:stdgo.io.Reader, _n:stdgo.GoUInt64):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}`](<#function-readdata>)

- [`function readDataAt(_r:stdgo.io.ReaderAt, _n:stdgo.GoUInt64, _off:stdgo.GoInt64):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}`](<#function-readdataat>)

- [`function sliceCap(_v:stdgo.AnyInterface, _c:stdgo.GoUInt64):stdgo.GoInt`](<#function-slicecap>)

# Functions


```haxe
import stdgo.internal.saferio.Saferio
```


## function readData


```haxe
function readData(_r:stdgo.io.Reader, _n:stdgo.GoUInt64):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}
```


ReadData reads n bytes from the input stream, but avoids allocating  
all n bytes if n is large. This avoids crashing the program by  
allocating all n bytes in cases where n is incorrect.  



The error is io.EOF only if no bytes were read.  
If an io.EOF happens after reading some but not all the bytes,  
ReadData returns io.ErrUnexpectedEOF.  



[\(view code\)](<./Saferio.hx#L35>)


## function readDataAt


```haxe
function readDataAt(_r:stdgo.io.ReaderAt, _n:stdgo.GoUInt64, _off:stdgo.GoInt64):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}
```


ReadDataAt reads n bytes from the input stream at off, but avoids  
allocating all n bytes if n is large. This avoids crashing the program  
by allocating all n bytes in cases where n is incorrect.  



[\(view code\)](<./Saferio.hx#L71>)


## function sliceCap


```haxe
function sliceCap(_v:stdgo.AnyInterface, _c:stdgo.GoUInt64):stdgo.GoInt
```


SliceCap returns the capacity to use when allocating a slice.  
After the slice is allocated with the capacity, it should be  
built using append. This will avoid allocating too much memory  
if the capacity is large and incorrect.  



A negative result means that the value is always too big.  



The element type is described by passing a pointer to a value of that type.  
This would ideally use generics, but this code is built with  
the bootstrap compiler which need not support generics.  
We use a pointer so that we can handle slices of interface type.  



[\(view code\)](<./Saferio.hx#L115>)


