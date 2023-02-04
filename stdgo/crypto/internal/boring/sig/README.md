# Module: `stdgo.crypto.internal.boring.sig`

[(view library index)](../../../../stdgo.md)


# Overview


Package sig holds “code signatures” that can be called  and will result in certain code sequences being linked into  the final binary. The functions themselves are no\-ops. 


# Index


- [`function boringCrypto():Void`](<#function-boringcrypto>)

- [`function fipsonly():Void`](<#function-fipsonly>)

- [`function standardCrypto():Void`](<#function-standardcrypto>)

# Functions


```haxe
import stdgo.crypto.internal.boring.sig.Sig
```


## function boringCrypto


```haxe
function boringCrypto():Void
```


BoringCrypto indicates that the BoringCrypto module is present. 


[\(view code\)](<./Sig.hx#L23>)


## function fipsonly


```haxe
function fipsonly():Void
```


FIPSOnly indicates that package crypto/tls/fipsonly is present. 


[\(view code\)](<./Sig.hx#L28>)


## function standardCrypto


```haxe
function standardCrypto():Void
```


StandardCrypto indicates that standard Go crypto is present. 


[\(view code\)](<./Sig.hx#L33>)


