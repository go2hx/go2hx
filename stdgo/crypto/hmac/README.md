# Module: `stdgo.crypto.hmac`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Hmac](<#class-hmac>)

  - [`function equal(_mac1:Array<UInt>, _mac2:Array<UInt>):Bool`](<#hmac-function-equal>)

  - [`function new_(_h:():stdgo._internal.hash.Hash, _key:Array<UInt>):stdgo._internal.hash.Hash`](<#hmac-function-new_>)

- [typedef T\_marshalable](<#typedef-t_marshalable>)

- [abstract T\_hmac](<#abstract-t_hmac>)

# Classes


```haxe
import
```


## class Hmac



Package hmac implements the Keyed\-Hash Message Authentication Code \(HMAC\) as
defined in U.S. Federal Information Processing Standards Publication 198.
An HMAC is a cryptographic hash that uses a key to sign a message.
The receiver verifies the hash by recomputing it using the same key.  


Receivers should be careful to use Equal to compare MACs in order to avoid
timing side\-channels:  

```
 ValidMAC reports whether messageMAC is a valid HMAC tag for message.
    	func ValidMAC(message, messageMAC, key []byte) bool {
    		mac := hmac.New(sha256.New, key)
    		mac.Write(message)
    		expectedMAC := mac.Sum(nil)
    		return hmac.Equal(messageMAC, expectedMAC)
}
```
### Hmac function equal


```haxe
function equal(_mac1:Array<UInt>, _mac2:Array<UInt>):Bool
```



Equal compares two MACs for equality without leaking timing information.  

[\(view code\)](<./Hmac.hx#L108>)


### Hmac function new\_


```haxe
function new_(_h:():stdgo._internal.hash.Hash, _key:Array<UInt>):stdgo._internal.hash.Hash
```


```
New returns a new HMAC hash using the given hash.Hash type and key.
        New functions like sha256.New from crypto/sha256 can be used as h.
        h must return a new Hash every time it is called.
        Note that unlike other hash implementations in the standard library,
        the returned Hash does not implement encoding.BinaryMarshaler
        or encoding.BinaryUnmarshaler.
```
[\(view code\)](<./Hmac.hx#L100>)


# Typedefs


```haxe
import
```


## typedef T\_marshalable


```haxe
typedef T_marshalable = stdgo._internal.crypto.hmac.T_marshalable;
```


# Abstracts


## abstract T\_hmac


[\(view file containing code\)](<./Hmac.hx>)


