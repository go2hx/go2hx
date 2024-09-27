# Module: `stdgo.encoding.pem`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Pem](<#class-pem>)

  - [`function decode(_data:Array<UInt>):stdgo.Tuple<stdgo.encoding.pem.Block, Array<UInt>>`](<#pem-function-decode>)

  - [`function encode(_out:stdgo._internal.io.Writer, _b:stdgo.encoding.pem.Block):stdgo.Error`](<#pem-function-encode>)

  - [`function encodeToMemory(_b:stdgo.encoding.pem.Block):Array<UInt>`](<#pem-function-encodetomemory>)

- [abstract Block](<#abstract-block>)

- [abstract T\_lineBreaker](<#abstract-t_linebreaker>)

# Classes


```haxe
import
```


## class Pem


```
Package pem implements the PEM data encoding, which originated in Privacy
    Enhanced Mail. The most common use of PEM encoding today is in TLS keys and
    certificates. See RFC 1421.
```
### Pem function decode


```haxe
function decode(_data:Array<UInt>):stdgo.Tuple<stdgo.encoding.pem.Block, Array<UInt>>
```


```
Decode will find the next PEM formatted block (certificate, private key
        etc) in the input. It returns that block and the remainder of the input. If
        no PEM data is found, p is nil and the whole of the input is returned in
        rest.
```
[\(view code\)](<./Pem.hx#L72>)


### Pem function encode


```haxe
function encode(_out:stdgo._internal.io.Writer, _b:stdgo.encoding.pem.Block):stdgo.Error
```



Encode writes the PEM encoding of b to out.  

[\(view code\)](<./Pem.hx#L82>)


### Pem function encodeToMemory


```haxe
function encodeToMemory(_b:stdgo.encoding.pem.Block):Array<UInt>
```



EncodeToMemory returns the PEM encoding of b.  


If b has invalid headers and cannot be encoded,
EncodeToMemory returns nil. If it is important to
report details about this error case, use Encode instead.  

[\(view code\)](<./Pem.hx#L92>)


# Abstracts


## abstract Block


[\(view file containing code\)](<./Pem.hx>)


## abstract T\_lineBreaker


[\(view file containing code\)](<./Pem.hx>)


